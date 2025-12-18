-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.userid, 
  badges_1.id
from 
  posts as posts_1
    inner join users as users_1
      inner join badges as badges_1
      on (users_1.id = badges_1.id )
    on (posts_1.id = users_1.id )
where posts_1.posttypeid is not NULL
limit 2;
-- meta {"num_joins":6,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_2.creationdate, 
  count(
    posthistory_1.comment), 
  posthistory_1.postid, 
  posthistory_1.userid, 
  badges_1.id, 
  count(
    badges_1.id), 
  max(
    votes_2.creationdate), 
  posts_1.id, 
  votes_2.userid, 
  votes_2.postid, 
  badges_1.class
from 
  badges as badges_1
        inner join postlinks as postlinks_1
        on (badges_1.id = postlinks_1.id )
      inner join badges as badges_2
        inner join votes as votes_1
        on (badges_2.id = votes_1.id )
      on (postlinks_1.id = badges_2.id )
    inner join posts as posts_1
      inner join posthistory as posthistory_1
        inner join votes as votes_2
        on (posthistory_1.id = votes_2.id )
      on (posts_1.id = posthistory_1.id )
    on (votes_1.id = posts_1.id )
where postlinks_1.id is not NULL
group by badges_1.class, badges_1.id, posthistory_1.postid, posthistory_1.userid, posts_1.id, votes_2.creationdate, votes_2.postid, votes_2.userid
limit 41;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_2.userdisplayname, 
  posthistory_2.userid
from 
  posthistory as posthistory_1
    inner join posthistory as posthistory_2
    on (posthistory_1.id = posthistory_2.id )
where posthistory_2.text is not NULL
limit 19;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.creationdate, 
  users_2.id, 
  users_2.displayname, 
  users_1.location, 
  users_1.aboutme, 
  users_2.websiteurl, 
  postlinks_1.postid, 
  min(
    users_2.creationdate), 
  users_1.displayname, 
  users_1.websiteurl, 
  postlinks_1.linktypeid
from 
  postlinks as postlinks_1
      inner join users as users_1
      on (postlinks_1.id = users_1.id )
    inner join users as users_2
    on (postlinks_1.id = users_2.id )
where users_1.websiteurl is not NULL
group by postlinks_1.creationdate, postlinks_1.linktypeid, postlinks_1.postid, users_1.aboutme, users_1.displayname, users_1.location, users_1.websiteurl, users_2.displayname, users_2.id, users_2.websiteurl
limit 9;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.class, 
  badges_1.name, 
  min(
    badges_1.date), 
  badges_1.userid, 
  badges_1.date, 
  badges_1.tagbased
from 
  badges as badges_1
where badges_1.id is not NULL
group by badges_1.class, badges_1.date, badges_1.name, badges_1.tagbased, badges_1.userid
limit 14;
-- meta {"num_joins":4,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    votes_3.id), 
  votes_3.postid, 
  postlinks_2.linktypeid, 
  votes_2.userid, 
  postlinks_2.relatedpostid, 
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid, 
  min(
    votes_3.postid), 
  postlinks_2.id, 
  votes_1.creationdate, 
  votes_1.id, 
  postlinks_2.creationdate, 
  postlinks_1.id
from 
  postlinks as postlinks_1
        inner join postlinks as postlinks_2
          inner join votes as votes_1
          on (postlinks_2.id = votes_1.id )
        on (postlinks_1.id = votes_1.id )
      inner join votes as votes_2
      on (postlinks_2.id = votes_2.id )
    inner join votes as votes_3
    on (votes_1.id = votes_3.id )
where votes_2.votetypeid is not NULL
group by postlinks_1.id, postlinks_1.linktypeid, postlinks_1.relatedpostid, postlinks_2.creationdate, postlinks_2.id, postlinks_2.linktypeid, postlinks_2.relatedpostid, votes_1.creationdate, votes_1.id, votes_2.userid, votes_3.postid
limit 40;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.votetypeid, 
  votes_1.userid, 
  votes_1.postid, 
  votes_1.id, 
  sum(
    votes_1.postid), 
  max(
    votes_1.creationdate), 
  max(
    votes_1.postid), 
  min(
    votes_1.creationdate), 
  votes_1.creationdate, 
  max(
    votes_1.creationdate)
from 
  votes as votes_1
where votes_1.postid is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 17;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.contentlicense
from 
  comments as comments_1
where comments_1.text is not NULL
limit 19;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.class, 
  badges_1.date
from 
  badges as badges_1
where badges_1.id is not NULL
limit 35;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*)
from 
  badges as badges_1
where badges_1.name = badges_1.name
limit 9;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.location
from 
  users as users_1
    inner join posthistory as posthistory_1
    on (users_1.id = posthistory_1.id )
where users_1.creationdate > posthistory_1.creationdate
limit 38;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.contentlicense, 
  posthistory_1.userid, 
  avg(
    posthistory_1.userid), 
  posthistory_1.creationdate
from 
  posthistory as posthistory_1
where posthistory_1.postid >= posthistory_1.posthistorytypeid
group by posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.userid
limit 22;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.id, 
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid, 
  postlinks_1.linktypeid
from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
limit 22;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.userid, 
  postlinks_1.postid, 
  posthistory_1.userdisplayname, 
  posthistory_1.id
from 
  postlinks as postlinks_1
      inner join postlinks as postlinks_2
          inner join badges as badges_1
          on (postlinks_2.id = badges_1.id )
        inner join posthistory as posthistory_1
        on (badges_1.id = posthistory_1.id )
      on (postlinks_1.id = badges_1.id )
    inner join posthistory as posthistory_2
    on (postlinks_2.id = posthistory_2.id )
where postlinks_2.creationdate is not NULL
limit 40;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.userid
from 
  votes as votes_1
where votes_1.postid = votes_1.userid
limit 27;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.creationdate, 
  posts_1.posttypeid, 
  posts_1.parentid, 
  posts_1.body, 
  min(
    posts_1.creationdate)
from 
  posts as posts_1
where posts_1.posttypeid is not NULL
group by posts_1.body, posts_1.creationdate, posts_1.parentid, posts_1.posttypeid
limit 9;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.userid, 
  badges_1.tagbased, 
  min(
    badges_1.date), 
  min(
    badges_1.date)
from 
  badges as badges_1
where badges_1.id is not NULL
group by badges_1.tagbased, badges_1.userid
limit 24;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.postid, 
  comments_1.text, 
  min(
    comments_1.creationdate), 
  comments_1.contentlicense
from 
  comments as comments_1
where comments_1.id is not NULL
group by comments_1.contentlicense, comments_1.postid, comments_1.text
limit 41;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    comments_1.userid), 
  votes_1.votetypeid, 
  posthistory_1.userid, 
  comments_1.text
from 
  votes as votes_1
        inner join postlinks as postlinks_1
          inner join comments as comments_1
          on (postlinks_1.id = comments_1.id )
        on (votes_1.id = postlinks_1.id )
      inner join posthistory as posthistory_1
      on (comments_1.id = posthistory_1.id )
    inner join users as users_1
    on (postlinks_1.id = users_1.id )
where posthistory_1.text is not NULL
group by comments_1.text, posthistory_1.userid, votes_1.votetypeid
limit 19;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    posthistory_1.postid), 
  posthistory_1.userid
from 
  posthistory as posthistory_1
where posthistory_1.revisionguid is not NULL
group by posthistory_1.userid
limit 8;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    posthistory_1.creationdate)
from 
  posthistory as posthistory_1
where posthistory_1.comment is not NULL
limit 33;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.userdisplayname, 
  comments_1.contentlicense, 
  postlinks_1.id, 
  comments_1.id
from 
  comments as comments_1
    inner join postlinks as postlinks_1
    on (comments_1.id = postlinks_1.id )
where postlinks_1.id is not NULL
limit 14;
-- meta {"num_joins":1,"num_aggregates":8,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.tagbased, 
  badges_1.id, 
  badges_1.name, 
  posthistory_1.revisionguid, 
  posthistory_1.creationdate, 
  posthistory_1.id, 
  posthistory_1.contentlicense, 
  posthistory_1.userid, 
  max(
    badges_1.date), 
  min(
    badges_1.date), 
  posthistory_1.postid, 
  badges_1.class, 
  count(
    posthistory_1.posthistorytypeid), 
  avg(
    posthistory_1.userid), 
  min(
    badges_1.date), 
  posthistory_1.posthistorytypeid, 
  max(
    badges_1.date), 
  posthistory_1.comment, 
  max(
    badges_1.date), 
  avg(
    badges_1.userid)
from 
  badges as badges_1
    inner join posthistory as posthistory_1
    on (badges_1.id = posthistory_1.id )
where posthistory_1.contentlicense is not NULL
group by badges_1.class, badges_1.id, badges_1.name, badges_1.tagbased, posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.userid
limit 30;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.id, 
  min(
    comments_1.creationdate), 
  comments_1.userdisplayname, 
  comments_1.userid, 
  count(
    comments_1.contentlicense), 
  avg(
    comments_1.id), 
  comments_1.creationdate, 
  comments_1.contentlicense, 
  max(
    comments_1.creationdate), 
  comments_1.postid, 
  max(
    comments_1.id), 
  comments_1.text
from 
  comments as comments_1
where comments_1.creationdate is not NULL
group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.text, comments_1.userdisplayname, comments_1.userid
limit 34;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.creationdate, 
  badges_1.date, 
  users_1.accountid, 
  comments_1.userdisplayname, 
  badges_1.name, 
  comments_1.text, 
  users_1.profileimageurl, 
  sum(
    badges_1.userid), 
  comments_1.creationdate
from 
  users as users_1
      inner join badges as badges_1
      on (users_1.id = badges_1.id )
    inner join comments as comments_1
    on (badges_1.id = comments_1.id )
where badges_1.tagbased < badges_1.tagbased
group by badges_1.date, badges_1.name, comments_1.creationdate, comments_1.text, comments_1.userdisplayname, users_1.accountid, users_1.creationdate, users_1.profileimageurl
limit 39;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    badges_1.class), 
  badges_1.id, 
  badges_1.userid
from 
  badges as badges_1
where badges_1.tagbased is not NULL
group by badges_1.id, badges_1.userid
limit 19;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.text, 
  posts_1.creationdate
from 
  posts as posts_1
    inner join comments as comments_1
    on (posts_1.id = comments_1.id )
where comments_1.id is not NULL
limit 8;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.relatedpostid, 
  postlinks_1.creationdate, 
  postlinks_1.postid, 
  postlinks_1.id
from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
limit 16;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.id, 
  posts_1.ownerdisplayname, 
  postlinks_1.creationdate, 
  posts_1.acceptedanswerid, 
  posts_1.parentid, 
  postlinks_1.linktypeid, 
  posts_1.creationdate, 
  min(
    posts_1.creationdate), 
  max(
    posts_1.id)
from 
  postlinks as postlinks_1
    inner join posts as posts_1
    on (postlinks_1.id = posts_1.id )
where posts_1.creationdate <= postlinks_1.creationdate
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, posts_1.acceptedanswerid, posts_1.creationdate, posts_1.ownerdisplayname, posts_1.parentid
limit 14;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.id, 
  sum(
    comments_1.postid), 
  min(
    users_1.profileimageurl)
from 
  users as users_1
    inner join comments as comments_1
    on (users_1.id = comments_1.id )
where users_1.accountid is not NULL
group by comments_1.id
limit 5;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.id, 
  postlinks_1.relatedpostid, 
  users_1.displayname
from 
  comments as comments_1
      inner join badges as badges_1
      on (comments_1.id = badges_1.id )
    inner join votes as votes_1
      inner join users as users_1
        inner join postlinks as postlinks_1
        on (users_1.id = postlinks_1.id )
      on (votes_1.id = postlinks_1.id )
    on (badges_1.id = users_1.id )
where comments_1.contentlicense > comments_1.text
limit 15;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.id, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.postid, 
  postlinks_1.relatedpostid
from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
group by postlinks_1.id, postlinks_1.postid, postlinks_1.relatedpostid
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.postid, 
  max(
    comments_1.creationdate)
from 
  comments as comments_1
where comments_1.userdisplayname is not NULL
group by comments_1.postid
limit 24;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.location, 
  comments_1.postid
from 
  votes as votes_1
      inner join posts as posts_1
          inner join postlinks as postlinks_1
          on (posts_1.id = postlinks_1.id )
        inner join comments as comments_1
        on (postlinks_1.id = comments_1.id )
      on (votes_1.id = posts_1.id )
    inner join users as users_1
    on (posts_1.id = users_1.id )
where votes_1.creationdate is not NULL
limit 30;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    postlinks_1.creationdate), 
  postlinks_1.linktypeid, 
  postlinks_1.id
from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
group by postlinks_1.id, postlinks_1.linktypeid
limit 29;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_2.creationdate, 
  max(
    posts_1.id), 
  posts_1.parentid
from 
  posts as posts_1
      inner join posthistory as posthistory_1
      on (posts_1.id = posthistory_1.id )
    inner join posthistory as posthistory_2
    on (posthistory_1.id = posthistory_2.id )
where posthistory_1.text is not NULL
group by posthistory_2.creationdate, posts_1.parentid
limit 6;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.class, 
  badges_1.userid, 
  sum(
    badges_1.class), 
  badges_1.id, 
  badges_1.name, 
  badges_1.tagbased
from 
  badges as badges_1
where badges_1.class is not NULL
group by badges_1.class, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
limit 24;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.votetypeid, 
  votes_1.userid, 
  max(
    votes_1.creationdate), 
  votes_1.postid
from 
  votes as votes_1
where votes_1.creationdate >= votes_1.creationdate
group by votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 12;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.id
from 
  postlinks as postlinks_1
    inner join badges as badges_1
    on (postlinks_1.id = badges_1.id )
where badges_1.userid is not NULL
limit 14;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    posthistory_1.userid), 
  posthistory_1.userdisplayname, 
  posthistory_1.postid, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.id, 
  posthistory_1.revisionguid
from 
  posthistory as posthistory_1
where posthistory_1.postid is not NULL
group by posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.userdisplayname
limit 20;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    posthistory_1.userid), 
  posthistory_1.creationdate, 
  posthistory_1.revisionguid, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.userdisplayname, 
  posthistory_1.postid, 
  posthistory_1.userid, 
  max(
    posthistory_1.postid), 
  posthistory_1.comment
from 
  posthistory as posthistory_1
where posthistory_1.creationdate < posthistory_1.creationdate
group by posthistory_1.comment, posthistory_1.creationdate, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.userdisplayname, posthistory_1.userid
limit 12;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_2.votetypeid, 
  users_1.displayname, 
  votes_2.postid, 
  votes_3.votetypeid, 
  votes_1.userid, 
  users_1.location, 
  users_1.accountid, 
  votes_2.userid, 
  votes_3.creationdate, 
  avg(
    votes_2.id), 
  votes_3.postid, 
  votes_1.creationdate, 
  users_1.websiteurl
from 
  votes as votes_1
    inner join votes as votes_2
        inner join votes as votes_3
          inner join users as users_1
          on (votes_3.id = users_1.id )
        on (votes_2.id = votes_3.id )
      inner join badges as badges_1
      on (votes_3.id = badges_1.id )
    on (votes_1.id = votes_3.id )
where votes_1.postid is not NULL
group by users_1.accountid, users_1.displayname, users_1.location, users_1.websiteurl, votes_1.creationdate, votes_1.userid, votes_2.postid, votes_2.userid, votes_2.votetypeid, votes_3.creationdate, votes_3.postid, votes_3.votetypeid
limit 16;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.text, 
  comments_1.contentlicense
from 
  comments as comments_1
where comments_1.contentlicense is not NULL
limit 14;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.id, 
  votes_1.creationdate, 
  posts_1.creationdate, 
  posts_1.contentlicense, 
  posts_1.acceptedanswerid, 
  comments_1.postid, 
  posts_1.parentid, 
  comments_1.userdisplayname, 
  votes_1.votetypeid, 
  comments_1.id
from 
  comments as comments_1
      inner join posts as posts_1
      on (comments_1.id = posts_1.id )
    inner join votes as votes_1
    on (comments_1.id = votes_1.id )
where votes_1.postid is not NULL
limit 15;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.postid, 
  min(
    postlinks_1.creationdate), 
  postlinks_1.linktypeid, 
  postlinks_1.creationdate
from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
group by postlinks_1.creationdate, postlinks_1.linktypeid, postlinks_1.postid
limit 8;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    comments_1.creationdate), 
  min(
    comments_1.userid), 
  comments_1.contentlicense
from 
  comments as comments_1
where comments_1.id is not NULL
group by comments_1.contentlicense
limit 20;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.text, 
  max(
    posthistory_1.creationdate), 
  posthistory_1.revisionguid, 
  posthistory_1.contentlicense, 
  posthistory_1.creationdate, 
  posthistory_1.userdisplayname, 
  min(
    posthistory_1.creationdate), 
  posthistory_1.posthistorytypeid
from 
  posthistory as posthistory_1
where posthistory_1.userdisplayname >= posthistory_1.comment
group by posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.posthistorytypeid, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userdisplayname
limit 29;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.creationdate, 
  posthistory_1.text, 
  comments_2.creationdate, 
  comments_2.contentlicense, 
  users_1.websiteurl, 
  postlinks_1.linktypeid, 
  users_1.location
from 
  users as users_1
    inner join comments as comments_1
        inner join votes as votes_1
          inner join posthistory as posthistory_1
          on (votes_1.id = posthistory_1.id )
        on (comments_1.id = posthistory_1.id )
      inner join comments as comments_2
        inner join postlinks as postlinks_1
        on (comments_2.id = postlinks_1.id )
      on (comments_1.id = comments_2.id )
    on (users_1.id = comments_2.id )
where comments_2.userid = votes_1.postid
limit 27;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    votes_1.userid)
from 
  votes as votes_1
      inner join users as users_1
      on (votes_1.id = users_1.id )
    inner join votes as votes_2
    on (users_1.id = votes_2.id )
where users_1.displayname is not NULL
limit 39;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.creationdate, 
  posts_1.title, 
  posts_1.creationdate, 
  posts_1.posttypeid
from 
  votes as votes_1
    inner join posts as posts_1
      inner join users as users_1
      on (posts_1.id = users_1.id )
    on (votes_1.id = posts_1.id )
where posts_1.title > posts_1.ownerdisplayname
limit 40;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    badges_1.class), 
  badges_1.class, 
  badges_1.date, 
  badges_1.userid
from 
  badges as badges_1
where badges_1.date is not NULL
group by badges_1.class, badges_1.date, badges_1.userid
limit 19;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    badges_1.userid), 
  badges_1.date, 
  postlinks_1.creationdate, 
  badges_1.userid, 
  badges_1.tagbased, 
  max(
    postlinks_1.linktypeid)
from 
  badges as badges_1
    inner join postlinks as postlinks_1
    on (badges_1.id = postlinks_1.id )
where badges_1.class is not NULL
group by badges_1.date, badges_1.tagbased, badges_1.userid, postlinks_1.creationdate
limit 24;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.userdisplayname, 
  posthistory_1.posthistorytypeid, 
  max(
    posthistory_1.creationdate), 
  posthistory_1.userid, 
  posthistory_1.id
from 
  posthistory as posthistory_1
where posthistory_1.revisionguid < posthistory_1.text
group by posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.userdisplayname, posthistory_1.userid
limit 6;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.userid, 
  badges_1.date, 
  min(
    badges_1.userid), 
  count(*), 
  badges_1.class
from 
  badges as badges_1
where badges_1.date is not NULL
group by badges_1.class, badges_1.date, badges_1.userid
limit 42;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.postid, 
  postlinks_1.id, 
  postlinks_1.relatedpostid, 
  avg(
    postlinks_1.linktypeid), 
  postlinks_1.creationdate, 
  min(
    postlinks_1.creationdate), 
  postlinks_1.linktypeid
from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 27;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.creationdate
from 
  posthistory as posthistory_1
      inner join votes as votes_1
      on (posthistory_1.id = votes_1.id )
    inner join badges as badges_1
    on (posthistory_1.id = badges_1.id )
where badges_1.tagbased > badges_1.tagbased
limit 29;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.id, 
  badges_1.tagbased
from 
  badges as badges_1
where badges_1.name is not NULL
limit 13;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.votetypeid
from 
  votes as votes_1
    inner join votes as votes_2
    on (votes_1.id = votes_2.id )
where votes_2.userid is not NULL
limit 30;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    users_1.creationdate), 
  users_1.id, 
  users_1.aboutme
from 
  users as users_1
    inner join posts as posts_1
    on (users_1.id = posts_1.id )
where posts_1.title is not NULL
group by users_1.aboutme, users_1.id
limit 23;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.id, 
  count(
    postlinks_1.relatedpostid)
from 
  postlinks as postlinks_1
    inner join postlinks as postlinks_2
    on (postlinks_1.id = postlinks_2.id )
where postlinks_2.creationdate <= postlinks_1.creationdate
group by postlinks_1.id
limit 14;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.postid, 
  postlinks_1.postid, 
  postlinks_1.relatedpostid
from 
  postlinks as postlinks_1
    inner join comments as comments_1
    on (postlinks_1.id = comments_1.id )
where comments_1.contentlicense is not NULL
limit 6;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    posthistory_1.userid), 
  posthistory_1.revisionguid, 
  posthistory_1.postid, 
  max(
    posthistory_1.creationdate), 
  posthistory_1.comment, 
  posthistory_1.userid, 
  posthistory_1.contentlicense, 
  posthistory_1.posthistorytypeid
from 
  posthistory as posthistory_1
where posthistory_1.contentlicense is not NULL
group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.userid
limit 31;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.userid, 
  badges_1.id, 
  count(*), 
  count(*), 
  badges_1.date, 
  badges_1.name, 
  min(
    badges_1.date), 
  max(
    badges_1.date)
from 
  badges as badges_1
where badges_1.tagbased is not NULL
group by badges_1.date, badges_1.id, badges_1.name, badges_1.userid
limit 17;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select distinct 
  comments_1.userdisplayname, 
  comments_1.postid, 
  comments_1.creationdate, 
  comments_1.userid
from 
  comments as comments_1
where comments_1.text = comments_1.contentlicense
limit 35;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.postid
from 
  posthistory as posthistory_1
    inner join comments as comments_1
    on (posthistory_1.id = comments_1.id )
where posthistory_1.postid is not NULL
limit 30;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.tagbased, 
  badges_1.name, 
  badges_1.id
from 
  badges as badges_1
where badges_1.class is not NULL
limit 33;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_2.votetypeid, 
  comments_1.userdisplayname, 
  comments_1.creationdate, 
  comments_2.contentlicense, 
  comments_1.id, 
  votes_1.postid, 
  votes_2.creationdate, 
  avg(
    votes_1.postid)
from 
  votes as votes_1
    inner join comments as comments_1
        inner join comments as comments_2
        on (comments_1.id = comments_2.id )
      inner join votes as votes_2
      on (comments_2.id = votes_2.id )
    on (votes_1.id = votes_2.id )
where votes_1.creationdate = comments_1.creationdate
group by comments_1.creationdate, comments_1.id, comments_1.userdisplayname, comments_2.contentlicense, votes_1.postid, votes_2.creationdate, votes_2.votetypeid
limit 18;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.userid, 
  badges_1.name, 
  badges_1.class
from 
  badges as badges_1
where badges_1.id is not NULL
limit 40;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_2.userid, 
  badges_3.id
from 
  votes as votes_1
      inner join users as users_1
        inner join badges as badges_1
        on (users_1.id = badges_1.id )
      on (votes_1.id = badges_1.id )
    inner join badges as badges_2
      inner join badges as badges_3
      on (badges_2.id = badges_3.id )
    on (votes_1.id = badges_2.id )
where votes_1.userid is not NULL
limit 12;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.creationdate, 
  posthistory_1.revisionguid, 
  avg(
    posthistory_1.posthistorytypeid), 
  posthistory_1.text, 
  posthistory_1.userid, 
  posthistory_1.userdisplayname, 
  posthistory_1.posthistorytypeid, 
  count(*), 
  posthistory_1.id, 
  posthistory_1.postid, 
  posthistory_1.contentlicense
from 
  posthistory as posthistory_1
where posthistory_1.userdisplayname is not NULL
group by posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userdisplayname, posthistory_1.userid
limit 25;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.creationdate, 
  users_1.displayname, 
  users_1.profileimageurl, 
  users_1.location, 
  users_1.id, 
  min(
    users_1.creationdate)
from 
  users as users_1
where users_1.location is not NULL
group by users_1.creationdate, users_1.displayname, users_1.id, users_1.location, users_1.profileimageurl
limit 15;
-- meta {"num_joins":4,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.name, 
  badges_1.class, 
  posts_1.id, 
  min(
    posts_1.acceptedanswerid), 
  sum(
    comments_1.postid), 
  max(
    posts_1.creationdate), 
  users_1.aboutme, 
  posts_1.title
from 
  badges as badges_1
    inner join posts as posts_1
        inner join users as users_1
          inner join comments as comments_1
          on (users_1.id = comments_1.id )
        on (posts_1.id = users_1.id )
      inner join posts as posts_2
      on (posts_1.id = posts_2.id )
    on (badges_1.id = comments_1.id )
where posts_2.creationdate is not NULL
group by badges_1.class, badges_1.name, posts_1.id, posts_1.title, users_1.aboutme
limit 42;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.profileimageurl, 
  users_1.aboutme, 
  users_1.location, 
  min(
    users_1.creationdate), 
  users_1.creationdate, 
  count(*)
from 
  users as users_1
where users_1.profileimageurl is not NULL
group by users_1.aboutme, users_1.creationdate, users_1.location, users_1.profileimageurl
limit 19;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.userdisplayname, 
  comments_1.text
from 
  comments as comments_1
where comments_1.contentlicense is not NULL
limit 9;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.id, 
  users_1.location, 
  posts_1.acceptedanswerid, 
  max(
    users_1.creationdate), 
  posts_1.creationdate, 
  votes_1.creationdate, 
  users_1.websiteurl, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.comment, 
  users_1.aboutme, 
  posthistory_1.contentlicense, 
  posthistory_1.userdisplayname, 
  posthistory_1.revisionguid, 
  posts_1.tags, 
  users_1.profileimageurl, 
  votes_1.id, 
  votes_1.votetypeid, 
  posts_1.title
from 
  votes as votes_1
    inner join posthistory as posthistory_1
      inner join users as users_1
        inner join posts as posts_1
        on (users_1.id = posts_1.id )
      on (posthistory_1.id = posts_1.id )
    on (votes_1.id = posthistory_1.id )
where users_1.displayname is not NULL
group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.posthistorytypeid, posthistory_1.revisionguid, posthistory_1.userdisplayname, posts_1.acceptedanswerid, posts_1.creationdate, posts_1.tags, posts_1.title, users_1.aboutme, users_1.id, users_1.location, users_1.profileimageurl, users_1.websiteurl, votes_1.creationdate, votes_1.id, votes_1.votetypeid
limit 27;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.creationdate, 
  sum(
    postlinks_1.linktypeid), 
  postlinks_1.relatedpostid, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.postid, 
  postlinks_1.id, 
  postlinks_1.linktypeid
from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.relatedpostid, 
  postlinks_1.linktypeid, 
  avg(
    postlinks_1.postid)
from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
group by postlinks_1.linktypeid, postlinks_1.relatedpostid
limit 6;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.websiteurl, 
  users_1.id, 
  users_1.accountid, 
  avg(
    users_1.profileimageurl), 
  users_1.displayname, 
  users_1.creationdate, 
  users_1.location, 
  users_1.profileimageurl, 
  max(
    users_1.accountid), 
  users_1.aboutme, 
  count(*), 
  max(
    users_1.accountid)
from 
  users as users_1
where users_1.location is not NULL
group by users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.displayname, users_1.id, users_1.location, users_1.profileimageurl, users_1.websiteurl
limit 35;
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    comments_1.id), 
  posts_1.contentlicense, 
  comments_2.text, 
  min(
    posts_1.creationdate), 
  posts_1.acceptedanswerid
from 
  posthistory as posthistory_1
        inner join comments as comments_1
        on (posthistory_1.id = comments_1.id )
      inner join comments as comments_2
      on (comments_1.id = comments_2.id )
    inner join posts as posts_1
    on (comments_1.id = posts_1.id )
where posts_1.title is not NULL
group by comments_2.text, posts_1.acceptedanswerid, posts_1.contentlicense
limit 40;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.creationdate, 
  posthistory_1.text, 
  posthistory_1.postid, 
  posthistory_1.userid
from 
  posthistory as posthistory_1
where posthistory_1.text is not NULL
limit 21;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.id, 
  comments_1.text, 
  comments_1.postid
from 
  comments as comments_1
where comments_1.postid < comments_1.id
limit 5;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  posthistory_1.creationdate, 
  posthistory_1.userdisplayname, 
  posthistory_1.id, 
  posthistory_1.posthistorytypeid, 
  min(
    posthistory_1.creationdate), 
  min(
    posthistory_1.creationdate), 
  posthistory_1.userid, 
  avg(
    posthistory_1.userid), 
  posthistory_1.revisionguid
from 
  posthistory as posthistory_1
where posthistory_1.userdisplayname is not NULL
group by posthistory_1.creationdate, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.revisionguid, posthistory_1.userdisplayname, posthistory_1.userid
limit 37;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.date
from 
  badges as badges_1
where badges_1.date is not NULL
limit 10;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.contentlicense, 
  comments_1.postid, 
  comments_1.id, 
  comments_1.creationdate
from 
  comments as comments_1
where comments_1.contentlicense < comments_1.userdisplayname
limit 15;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.relatedpostid
from 
  postlinks as postlinks_1
where postlinks_1.id is not NULL
limit 35;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.postid, 
  users_1.location, 
  comments_1.contentlicense, 
  users_1.websiteurl, 
  comments_1.text, 
  votes_1.creationdate, 
  users_1.aboutme, 
  users_1.id, 
  sum(
    badges_1.userid), 
  votes_1.userid
from 
  comments as comments_1
      inner join badges as badges_1
      on (comments_1.id = badges_1.id )
    inner join users as users_1
      inner join votes as votes_1
      on (users_1.id = votes_1.id )
    on (comments_1.id = users_1.id )
where votes_1.postid is not NULL
group by comments_1.contentlicense, comments_1.postid, comments_1.text, users_1.aboutme, users_1.id, users_1.location, users_1.websiteurl, votes_1.creationdate, votes_1.userid
limit 28;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_2.id, 
  votes_2.userid, 
  votes_1.postid
from 
  votes as votes_1
    inner join votes as votes_2
    on (votes_1.id = votes_2.id )
where votes_1.userid is not NULL
limit 23;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.id, 
  badges_1.class
from 
  badges as badges_1
    inner join badges as badges_2
    on (badges_1.id = badges_2.id )
where badges_1.userid is not NULL
limit 25;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.contentlicense, 
  max(
    comments_1.userid), 
  avg(
    comments_1.userid)
from 
  comments as comments_1
where comments_1.creationdate is not NULL
group by comments_1.contentlicense
limit 39;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.id, 
  posthistory_2.posthistorytypeid, 
  posthistory_2.creationdate
from 
  posthistory as posthistory_1
    inner join posthistory as posthistory_2
    on (posthistory_1.id = posthistory_2.id )
where posthistory_2.id is not NULL
limit 21;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.profileimageurl, 
  users_1.displayname, 
  users_1.aboutme, 
  min(
    users_1.profileimageurl), 
  count(*)
from 
  users as users_1
where users_1.displayname is not NULL
group by users_1.aboutme, users_1.displayname, users_1.profileimageurl
limit 14;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.body
from 
  posts as posts_1
where posts_1.acceptedanswerid is not NULL
limit 18;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.id
from 
  posts as posts_1
where posts_1.owneruserid is not NULL
limit 11;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.aboutme, 
  max(
    users_1.creationdate), 
  users_1.accountid, 
  badges_1.name, 
  users_1.location, 
  count(*)
from 
  badges as badges_1
    inner join users as users_1
      inner join users as users_2
      on (users_1.id = users_2.id )
    on (badges_1.id = users_2.id )
where users_2.creationdate > users_1.creationdate
group by badges_1.name, users_1.aboutme, users_1.accountid, users_1.location
limit 6;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.tags, 
  posts_1.posttypeid, 
  posts_1.contentlicense, 
  posts_1.ownerdisplayname
from 
  posts as posts_1
where posts_1.parentid is not NULL
limit 24;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.userid, 
  sum(
    badges_1.id), 
  badges_1.class, 
  badges_1.id, 
  badges_1.tagbased, 
  badges_1.date
from 
  badges as badges_1
where badges_1.name is not NULL
group by badges_1.class, badges_1.date, badges_1.id, badges_1.tagbased, badges_1.userid
limit 17;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.creationdate, 
  max(
    posthistory_1.id), 
  min(
    posts_1.posttypeid), 
  posthistory_1.revisionguid, 
  posts_1.ownerdisplayname, 
  posthistory_1.text, 
  min(
    posts_1.creationdate), 
  posts_1.contentlicense, 
  posthistory_1.comment, 
  posts_1.tags, 
  posthistory_1.creationdate
from 
  posthistory as posthistory_1
    inner join posts as posts_1
    on (posthistory_1.id = posts_1.id )
where posthistory_1.posthistorytypeid = posts_1.owneruserid
group by posthistory_1.comment, posthistory_1.creationdate, posthistory_1.revisionguid, posthistory_1.text, posts_1.contentlicense, posts_1.creationdate, posts_1.ownerdisplayname, posts_1.tags
limit 15;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.userdisplayname, 
  posthistory_1.revisionguid, 
  posthistory_1.id, 
  min(
    posthistory_1.id), 
  posthistory_1.postid
from 
  posthistory as posthistory_1
where posthistory_1.id is not NULL
group by posthistory_1.id, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.userdisplayname
limit 18;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.userid, 
  votes_1.creationdate, 
  max(
    votes_1.creationdate), 
  votes_1.postid, 
  votes_1.votetypeid, 
  votes_1.id
from 
  votes as votes_1
where votes_1.creationdate is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 1;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.id, 
  badges_1.class, 
  badges_1.date, 
  min(
    badges_1.class), 
  badges_1.tagbased, 
  max(
    badges_1.id), 
  min(
    badges_1.date)
from 
  badges as badges_1
where badges_1.name is not NULL
group by badges_1.class, badges_1.date, badges_1.id, badges_1.tagbased
limit 23;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.posthistorytypeid, 
  posthistory_1.comment, 
  posthistory_1.revisionguid, 
  posthistory_1.postid, 
  posthistory_1.userdisplayname, 
  posthistory_1.creationdate, 
  posthistory_1.text, 
  posthistory_1.contentlicense
from 
  posthistory as posthistory_1
where posthistory_1.revisionguid is not NULL
limit 32;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.postid, 
  comments_1.creationdate
from 
  comments as comments_1
where comments_1.id is not NULL
limit 29;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.date, 
  comments_1.id, 
  min(
    comments_1.creationdate)
from 
  badges as badges_1
    inner join comments as comments_1
    on (badges_1.id = comments_1.id )
where badges_1.date < comments_1.creationdate
group by badges_1.date, comments_1.id
limit 31;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.websiteurl, 
  users_1.aboutme, 
  users_1.creationdate, 
  users_1.id, 
  users_1.profileimageurl
from 
  users as users_1
where users_1.accountid is not NULL
limit 41;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    postlinks_1.postid), 
  postlinks_1.creationdate, 
  max(
    postlinks_1.creationdate), 
  count(
    postlinks_1.id), 
  max(
    postlinks_1.creationdate), 
  postlinks_1.relatedpostid, 
  postlinks_1.linktypeid
from 
  postlinks as postlinks_1
where postlinks_1.id is not NULL
group by postlinks_1.creationdate, postlinks_1.linktypeid, postlinks_1.relatedpostid
limit 28;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.id, 
  postlinks_1.creationdate, 
  min(
    postlinks_1.linktypeid), 
  max(
    postlinks_1.postid), 
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid, 
  postlinks_1.postid, 
  count(
    postlinks_1.relatedpostid)
from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 20;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.creationdate
from 
  posthistory as posthistory_1
where posthistory_1.id is not NULL
limit 26;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  max(
    postlinks_1.linktypeid), 
  postlinks_1.postid, 
  count(
    postlinks_1.relatedpostid), 
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid, 
  max(
    postlinks_1.creationdate)
from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.creationdate, 
  min(
    comments_1.creationdate), 
  comments_1.userdisplayname
from 
  comments as comments_1
where comments_1.contentlicense < comments_1.userdisplayname
group by comments_1.creationdate, comments_1.userdisplayname
limit 33;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    postlinks_1.id), 
  postlinks_1.postid, 
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid, 
  postlinks_1.creationdate
from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
group by postlinks_1.creationdate, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 6;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    postlinks_1.creationdate), 
  comments_1.postid, 
  comments_1.text, 
  comments_1.userdisplayname, 
  postlinks_1.linktypeid, 
  max(
    comments_1.creationdate), 
  count(*)
from 
  postlinks as postlinks_1
    inner join comments as comments_1
    on (postlinks_1.id = comments_1.id )
where comments_1.creationdate <= postlinks_1.creationdate
group by comments_1.postid, comments_1.text, comments_1.userdisplayname, postlinks_1.linktypeid
limit 16;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.creationdate, 
  badges_1.name, 
  posthistory_1.userdisplayname
from 
  users as users_1
    inner join postlinks as postlinks_1
        inner join posthistory as posthistory_1
        on (postlinks_1.id = posthistory_1.id )
      inner join badges as badges_1
      on (postlinks_1.id = badges_1.id )
    on (users_1.id = badges_1.id )
where posthistory_1.id is not NULL
limit 35;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.creationdate, 
  comments_1.contentlicense, 
  posthistory_1.userdisplayname, 
  max(
    posthistory_2.id), 
  users_1.creationdate, 
  users_1.location, 
  votes_1.creationdate, 
  posthistory_1.postid
from 
  posthistory as posthistory_1
        inner join posthistory as posthistory_2
        on (posthistory_1.id = posthistory_2.id )
      inner join users as users_1
      on (posthistory_2.id = users_1.id )
    inner join votes as votes_1
      inner join comments as comments_1
      on (votes_1.id = comments_1.id )
    on (users_1.id = votes_1.id )
where posthistory_2.userid is not NULL
group by comments_1.contentlicense, comments_1.creationdate, posthistory_1.postid, posthistory_1.userdisplayname, users_1.creationdate, users_1.location, votes_1.creationdate
limit 8;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.creationdate
from 
  posts as posts_1
where posts_1.id is not NULL
limit 14;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.votetypeid, 
  postlinks_1.creationdate
from 
  votes as votes_1
    inner join postlinks as postlinks_1
    on (votes_1.id = postlinks_1.id )
where votes_1.id is not NULL
limit 26;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.userdisplayname, 
  users_1.displayname, 
  users_1.accountid, 
  min(
    comments_1.creationdate)
from 
  badges as badges_1
    inner join comments as comments_1
      inner join users as users_1
      on (comments_1.id = users_1.id )
    on (badges_1.id = comments_1.id )
where users_1.websiteurl = users_1.displayname
group by comments_1.userdisplayname, users_1.accountid, users_1.displayname
limit 18;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.creationdate, 
  comments_1.contentlicense, 
  comments_1.id, 
  count(*), 
  comments_1.text, 
  comments_1.postid, 
  min(
    comments_1.userid), 
  comments_1.userid
from 
  comments as comments_1
where comments_1.contentlicense > comments_1.text
group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.text, comments_1.userid
limit 16;
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    badges_1.date), 
  max(
    badges_1.id), 
  votes_2.creationdate, 
  votes_1.userid
from 
  comments as comments_1
    inner join votes as votes_1
        inner join votes as votes_2
        on (votes_1.id = votes_2.id )
      inner join badges as badges_1
      on (votes_1.id = badges_1.id )
    on (comments_1.id = badges_1.id )
where badges_1.date is not NULL
group by votes_1.userid, votes_2.creationdate
limit 29;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.userid
from 
  badges as badges_1
where badges_1.date is not NULL
limit 5;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.creationdate
from 
  posts as posts_1
where posts_1.tags = posts_1.title
limit 40;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.id, 
  users_1.aboutme, 
  comments_1.userid, 
  users_1.websiteurl
from 
  users as users_1
    inner join comments as comments_1
    on (users_1.id = comments_1.id )
where users_1.aboutme is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.class, 
  badges_1.name, 
  badges_1.id, 
  min(
    badges_1.id)
from 
  badges as badges_1
where badges_1.tagbased is not NULL
group by badges_1.class, badges_1.id, badges_1.name
limit 2;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.userid, 
  count(
    posthistory_1.text), 
  posthistory_1.userdisplayname, 
  posthistory_1.comment, 
  min(
    posthistory_1.postid), 
  posthistory_1.revisionguid, 
  max(
    posthistory_1.creationdate), 
  count(*)
from 
  posthistory as posthistory_1
where posthistory_1.text is not NULL
group by posthistory_1.comment, posthistory_1.revisionguid, posthistory_1.userdisplayname, posthistory_1.userid
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.creationdate, 
  postlinks_1.linktypeid, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.relatedpostid, 
  min(
    postlinks_1.creationdate), 
  postlinks_1.id, 
  postlinks_1.postid
from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid >= postlinks_1.id
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 39;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.creationdate
from 
  posts as posts_1
where posts_1.posttypeid is not NULL
limit 15;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.title
from 
  posts as posts_1
where posts_1.contentlicense < posts_1.ownerdisplayname
limit 9;
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.userid, 
  max(
    posthistory_1.creationdate), 
  posthistory_1.posthistorytypeid, 
  min(
    posthistory_1.creationdate), 
  max(
    badges_1.date), 
  badges_1.date, 
  min(
    badges_1.date), 
  badges_1.name
from 
  badges as badges_1
    inner join posthistory as posthistory_1
    on (badges_1.id = posthistory_1.id )
where badges_1.id is not NULL
group by badges_1.date, badges_1.name, badges_1.userid, posthistory_1.posthistorytypeid
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.owneruserid
from 
  posts as posts_1
where posts_1.body is not NULL
limit 9;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    posts_1.creationdate)
from 
  posthistory as posthistory_1
      inner join votes as votes_1
      on (posthistory_1.id = votes_1.id )
    inner join posts as posts_1
    on (votes_1.id = posts_1.id )
where posts_1.id is not NULL
limit 18;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.date, 
  badges_1.tagbased, 
  avg(
    badges_1.userid), 
  badges_1.userid, 
  badges_1.id, 
  badges_1.name, 
  badges_1.class, 
  count(*), 
  min(
    badges_1.id), 
  min(
    badges_1.class), 
  max(
    badges_1.id)
from 
  badges as badges_1
where badges_1.name is not NULL
group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
limit 13;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_2.class, 
  badges_2.tagbased, 
  users_1.creationdate, 
  users_1.id, 
  badges_2.name, 
  badges_1.userid, 
  badges_1.tagbased, 
  users_1.profileimageurl, 
  badges_1.id, 
  users_1.aboutme, 
  badges_1.date, 
  users_1.websiteurl, 
  max(
    badges_1.date)
from 
  badges as badges_1
    inner join badges as badges_2
      inner join users as users_1
      on (badges_2.id = users_1.id )
    on (badges_1.id = badges_2.id )
where badges_1.date is not NULL
group by badges_1.date, badges_1.id, badges_1.tagbased, badges_1.userid, badges_2.class, badges_2.name, badges_2.tagbased, users_1.aboutme, users_1.creationdate, users_1.id, users_1.profileimageurl, users_1.websiteurl
limit 23;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.posthistorytypeid, 
  posthistory_1.postid, 
  comments_1.creationdate, 
  votes_1.userid, 
  comments_1.userid, 
  posthistory_1.userid, 
  votes_1.postid, 
  comments_1.text, 
  min(
    posthistory_1.id)
from 
  posthistory as posthistory_1
        inner join votes as votes_1
        on (posthistory_1.id = votes_1.id )
      inner join comments as comments_1
      on (posthistory_1.id = comments_1.id )
    inner join badges as badges_1
    on (comments_1.id = badges_1.id )
where comments_1.text is not NULL
group by comments_1.creationdate, comments_1.text, comments_1.userid, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.userid, votes_1.postid, votes_1.userid
limit 22;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  posts_1.tags, 
  posts_1.id, 
  posts_1.contentlicense
from 
  posts as posts_1
where posts_1.posttypeid is not NULL
group by posts_1.contentlicense, posts_1.id, posts_1.tags
limit 6;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.owneruserid, 
  comments_1.contentlicense, 
  posts_1.acceptedanswerid, 
  comments_1.creationdate, 
  comments_1.text
from 
  posts as posts_1
    inner join comments as comments_1
    on (posts_1.id = comments_1.id )
where posts_1.parentid is not NULL
limit 36;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.websiteurl, 
  users_1.creationdate, 
  users_1.profileimageurl, 
  users_1.location
from 
  users as users_1
where users_1.aboutme is not NULL
limit 15;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.id, 
  postlinks_1.relatedpostid
from 
  postlinks as postlinks_1
    inner join users as users_1
      inner join votes as votes_1
      on (users_1.id = votes_1.id )
    on (postlinks_1.id = votes_1.id )
where postlinks_1.creationdate is not NULL
limit 12;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.displayname, 
  users_1.profileimageurl, 
  users_1.accountid, 
  avg(
    posts_1.posttypeid)
from 
  users as users_1
    inner join posts as posts_1
    on (users_1.id = posts_1.id )
where users_1.websiteurl is not NULL
group by users_1.accountid, users_1.displayname, users_1.profileimageurl
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  sum(
    postlinks_1.linktypeid), 
  postlinks_1.relatedpostid
from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
group by postlinks_1.id, postlinks_1.linktypeid, postlinks_1.relatedpostid
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.displayname, 
  users_1.location, 
  users_1.creationdate, 
  users_1.aboutme
from 
  users as users_1
where users_1.location is not NULL
limit 31;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.creationdate, 
  votes_1.postid
from 
  votes as votes_1
where votes_1.userid is not NULL
limit 25;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.text, 
  comments_1.postid
from 
  comments as comments_1
where comments_1.postid = comments_1.id
limit 20;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.id, 
  sum(
    users_1.id), 
  max(
    users_1.creationdate), 
  users_1.location, 
  avg(
    users_1.accountid), 
  min(
    users_1.creationdate)
from 
  users as users_1
where users_1.profileimageurl is not NULL
group by users_1.id, users_1.location
limit 38;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.relatedpostid
from 
  users as users_1
    inner join postlinks as postlinks_1
      inner join users as users_2
      on (postlinks_1.id = users_2.id )
    on (users_1.id = postlinks_1.id )
where users_2.accountid is not NULL
limit 41;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.title, 
  posts_1.ownerdisplayname
from 
  badges as badges_1
    inner join posts as posts_1
    on (badges_1.id = posts_1.id )
where posts_1.body > posts_1.contentlicense
limit 36;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.creationdate, 
  votes_1.userid, 
  postlinks_1.id, 
  postlinks_2.postid, 
  postlinks_1.relatedpostid
from 
  postlinks as postlinks_1
      inner join postlinks as postlinks_2
      on (postlinks_1.id = postlinks_2.id )
    inner join votes as votes_1
    on (postlinks_2.id = votes_1.id )
where votes_1.creationdate is not NULL
limit 9;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.id, 
  badges_1.class, 
  min(
    badges_1.date)
from 
  badges as badges_1
where badges_1.date < badges_1.date
group by badges_1.class, badges_1.id
limit 41;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.contentlicense, 
  comments_1.id
from 
  comments as comments_1
where comments_1.userdisplayname is not NULL
limit 34;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.class
from 
  badges as badges_1
where badges_1.tagbased is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.linktypeid, 
  postlinks_1.postid, 
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid
from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
limit 15;
-- meta {"num_joins":2,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.displayname, 
  posts_1.posttypeid, 
  min(
    badges_1.date), 
  posts_1.creationdate, 
  posts_1.acceptedanswerid, 
  posts_1.body, 
  badges_1.userid, 
  badges_1.class, 
  count(*), 
  users_1.creationdate, 
  posts_1.owneruserid, 
  badges_1.id, 
  min(
    posts_1.creationdate), 
  max(
    badges_1.date), 
  posts_1.title, 
  badges_1.tagbased
from 
  posts as posts_1
    inner join badges as badges_1
      inner join users as users_1
      on (badges_1.id = users_1.id )
    on (posts_1.id = users_1.id )
where badges_1.name is not NULL
group by badges_1.class, badges_1.id, badges_1.tagbased, badges_1.userid, posts_1.acceptedanswerid, posts_1.body, posts_1.creationdate, posts_1.owneruserid, posts_1.posttypeid, posts_1.title, users_1.creationdate, users_1.displayname
limit 13;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.id, 
  posts_1.tags, 
  min(
    posts_1.creationdate), 
  count(
    posts_1.title), 
  posts_1.title, 
  posts_1.creationdate
from 
  posts as posts_1
where posts_1.id is not NULL
group by posts_1.creationdate, posts_1.id, posts_1.tags, posts_1.title
limit 40;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    posthistory_1.creationdate), 
  posthistory_1.userdisplayname, 
  posthistory_1.postid
from 
  posthistory as posthistory_1
where posthistory_1.id is not NULL
group by posthistory_1.postid, posthistory_1.userdisplayname
limit 37;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.posttypeid, 
  votes_1.postid, 
  votes_1.creationdate, 
  votes_1.votetypeid, 
  posts_1.parentid, 
  votes_1.userid, 
  max(
    posts_1.creationdate), 
  votes_1.id
from 
  posts as posts_1
    inner join votes as votes_1
    on (posts_1.id = votes_1.id )
where posts_1.owneruserid is not NULL
group by posts_1.parentid, posts_1.posttypeid, votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 29;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.userid, 
  badges_1.tagbased, 
  badges_1.date, 
  badges_1.id
from 
  badges as badges_1
where badges_1.name is not NULL
limit 5;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.relatedpostid, 
  postlinks_1.creationdate, 
  postlinks_1.postid, 
  postlinks_1.linktypeid
from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
limit 23;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    posts_1.creationdate), 
  posts_1.contentlicense, 
  max(
    posts_1.owneruserid), 
  max(
    posts_1.parentid), 
  posts_1.creationdate, 
  min(
    posts_1.acceptedanswerid), 
  posts_1.id, 
  max(
    posts_1.creationdate), 
  posts_1.acceptedanswerid, 
  posts_1.tags, 
  posts_1.posttypeid, 
  posts_1.ownerdisplayname, 
  posts_1.owneruserid
from 
  posts as posts_1
where posts_1.id is not NULL
group by posts_1.acceptedanswerid, posts_1.contentlicense, posts_1.creationdate, posts_1.id, posts_1.ownerdisplayname, posts_1.owneruserid, posts_1.posttypeid, posts_1.tags
limit 38;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.creationdate, 
  comments_1.userid
from 
  comments as comments_1
where comments_1.text is not NULL
limit 8;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    users_1.id)
from 
  users as users_1
    inner join users as users_2
      inner join votes as votes_1
      on (users_2.id = votes_1.id )
    on (users_1.id = votes_1.id )
where users_1.accountid = votes_1.userid
limit 28;
-- meta {"num_joins":8,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.creationdate, 
  max(
    badges_1.date), 
  min(
    votes_1.creationdate), 
  min(
    posthistory_1.creationdate), 
  users_1.displayname, 
  users_1.location, 
  votes_1.postid, 
  comments_1.creationdate, 
  users_2.displayname, 
  postlinks_1.linktypeid
from 
  users as users_1
      inner join postlinks as postlinks_1
          inner join users as users_2
          on (postlinks_1.id = users_2.id )
        inner join posthistory as posthistory_1
        on (postlinks_1.id = posthistory_1.id )
      on (users_1.id = postlinks_1.id )
    inner join badges as badges_1
          inner join users as users_3
          on (badges_1.id = users_3.id )
        inner join comments as comments_1
          inner join postlinks as postlinks_2
          on (comments_1.id = postlinks_2.id )
        on (badges_1.id = postlinks_2.id )
      inner join votes as votes_1
      on (postlinks_2.id = votes_1.id )
    on (postlinks_1.id = votes_1.id )
where users_3.websiteurl is not NULL
group by comments_1.creationdate, postlinks_1.linktypeid, users_1.displayname, users_1.location, users_2.displayname, votes_1.creationdate, votes_1.postid
limit 30;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.class
from 
  badges as badges_1
where badges_1.id is not NULL
limit 24;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.contentlicense, 
  posts_1.body, 
  posts_2.contentlicense, 
  posthistory_1.id, 
  posts_1.tags
from 
  posts as posts_1
      inner join posthistory as posthistory_1
      on (posts_1.id = posthistory_1.id )
    inner join posts as posts_2
    on (posthistory_1.id = posts_2.id )
where posts_1.posttypeid <= posts_1.owneruserid
limit 21;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    posthistory_1.postid), 
  posthistory_1.id, 
  posthistory_1.creationdate, 
  posthistory_1.userdisplayname, 
  posthistory_1.text, 
  posthistory_1.postid, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.revisionguid, 
  posthistory_1.userid, 
  max(
    posthistory_1.creationdate)
from 
  posthistory as posthistory_1
where posthistory_1.id is not NULL
group by posthistory_1.creationdate, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userdisplayname, posthistory_1.userid
limit 36;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.id, 
  min(
    badges_1.date), 
  count(
    badges_1.userid), 
  badges_1.date
from 
  badges as badges_1
where badges_1.name = badges_1.name
group by badges_1.date, badges_1.id
limit 13;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.creationdate, 
  badges_1.class
from 
  users as users_1
    inner join badges as badges_1
    on (users_1.id = badges_1.id )
where badges_1.userid is not NULL
limit 29;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.postid, 
  votes_1.userid, 
  users_1.aboutme
from 
  posts as posts_1
      inner join votes as votes_1
      on (posts_1.id = votes_1.id )
    inner join users as users_1
    on (votes_1.id = users_1.id )
where users_1.profileimageurl = votes_1.id
limit 12;
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_2.id, 
  comments_1.userdisplayname, 
  comments_1.id, 
  max(
    badges_1.date), 
  comments_1.contentlicense, 
  badges_1.id, 
  max(
    comments_1.creationdate), 
  comments_2.userdisplayname, 
  min(
    badges_1.date), 
  comments_2.contentlicense
from 
  badges as badges_1
      inner join comments as comments_1
      on (badges_1.id = comments_1.id )
    inner join comments as comments_2
    on (comments_1.id = comments_2.id )
where badges_1.date is not NULL
group by badges_1.id, comments_1.contentlicense, comments_1.id, comments_1.userdisplayname, comments_2.contentlicense, comments_2.id, comments_2.userdisplayname
limit 9;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    posthistory_1.postid), 
  max(
    posthistory_1.creationdate), 
  sum(
    posthistory_1.postid), 
  min(
    posthistory_1.creationdate), 
  posthistory_1.text, 
  posthistory_1.contentlicense, 
  posthistory_1.creationdate, 
  posthistory_1.posthistorytypeid
from 
  posthistory as posthistory_1
where posthistory_1.revisionguid is not NULL
group by posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.posthistorytypeid, posthistory_1.text
limit 10;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.id, 
  posthistory_1.postid
from 
  posthistory as posthistory_1
    inner join badges as badges_1
    on (posthistory_1.id = badges_1.id )
where posthistory_1.comment is not NULL
limit 26;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.websiteurl, 
  users_1.accountid, 
  count(
    users_1.accountid), 
  users_1.creationdate
from 
  users as users_1
where users_1.displayname is not NULL
group by users_1.accountid, users_1.creationdate, users_1.websiteurl
limit 5;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.id, 
  badges_1.date, 
  badges_1.class, 
  badges_1.name
from 
  badges as badges_1
where badges_1.name is not NULL
limit 34;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.creationdate, 
  users_1.aboutme, 
  users_1.location, 
  min(
    users_1.creationdate), 
  users_1.displayname, 
  count(
    users_1.location)
from 
  users as users_1
where users_1.creationdate is not NULL
group by users_1.aboutme, users_1.creationdate, users_1.displayname, users_1.location
limit 22;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    votes_2.creationdate)
from 
  badges as badges_1
          inner join votes as votes_1
          on (badges_1.id = votes_1.id )
        inner join posthistory as posthistory_1
        on (votes_1.id = posthistory_1.id )
      inner join posthistory as posthistory_2
      on (votes_1.id = posthistory_2.id )
    inner join votes as votes_2
    on (posthistory_2.id = votes_2.id )
where posthistory_1.userdisplayname is not NULL
limit 10;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_2.relatedpostid, 
  comments_1.userid, 
  posthistory_1.contentlicense, 
  postlinks_1.id, 
  comments_1.text
from 
  postlinks as postlinks_1
    inner join posthistory as posthistory_1
      inner join comments as comments_1
        inner join postlinks as postlinks_2
        on (comments_1.id = postlinks_2.id )
      on (posthistory_1.id = postlinks_2.id )
    on (postlinks_1.id = comments_1.id )
where postlinks_2.relatedpostid is not NULL
limit 11;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.id, 
  users_1.creationdate, 
  count(
    users_1.location), 
  users_1.profileimageurl, 
  users_1.websiteurl, 
  sum(
    users_1.accountid), 
  max(
    users_1.id), 
  max(
    users_1.accountid), 
  users_1.aboutme, 
  count(*), 
  users_1.accountid
from 
  users as users_1
where users_1.accountid is not NULL
group by users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.id, users_1.profileimageurl, users_1.websiteurl
limit 28;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.creationdate
from 
  users as users_1
where users_1.creationdate > users_1.creationdate
limit 2;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    posthistory_2.postid), 
  users_1.accountid
from 
  badges as badges_1
      inner join posthistory as posthistory_1
        inner join posthistory as posthistory_2
        on (posthistory_1.id = posthistory_2.id )
      on (badges_1.id = posthistory_1.id )
    inner join users as users_1
    on (badges_1.id = users_1.id )
where badges_1.class is not NULL
group by users_1.accountid
limit 39;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.contentlicense, 
  posthistory_1.id
from 
  posthistory as posthistory_1
where posthistory_1.userid is not NULL
limit 32;
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.id, 
  comments_1.text, 
  posthistory_1.userdisplayname, 
  comments_1.id, 
  count(*), 
  max(
    comments_1.id), 
  count(*), 
  avg(
    posthistory_1.posthistorytypeid)
from 
  comments as comments_1
    inner join posthistory as posthistory_1
    on (comments_1.id = posthistory_1.id )
where posthistory_1.creationdate <= comments_1.creationdate
group by comments_1.id, comments_1.text, posthistory_1.id, posthistory_1.userdisplayname
limit 28;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    votes_1.creationdate)
from 
  votes as votes_1
where votes_1.creationdate is not NULL
limit 18;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    posts_1.creationdate), 
  badges_1.id, 
  max(
    posts_1.creationdate), 
  posts_1.ownerdisplayname
from 
  posts as posts_1
    inner join badges as badges_1
    on (posts_1.id = badges_1.id )
where posts_1.ownerdisplayname is not NULL
group by badges_1.id, posts_1.ownerdisplayname
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.profileimageurl, 
  users_1.id
from 
  users as users_1
where users_1.aboutme is not NULL
limit 18;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.class
from 
  badges as badges_1
    inner join postlinks as postlinks_1
    on (badges_1.id = postlinks_1.id )
where postlinks_1.id is not NULL
limit 42;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.postid, 
  sum(
    posthistory_1.posthistorytypeid), 
  avg(
    posthistory_1.posthistorytypeid), 
  posthistory_1.comment, 
  posthistory_1.id, 
  posthistory_1.contentlicense, 
  posthistory_1.revisionguid
from 
  posthistory as posthistory_1
where posthistory_1.userid is not NULL
group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.id, posthistory_1.postid, posthistory_1.revisionguid
limit 14;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.creationdate, 
  votes_1.id, 
  avg(
    comments_1.userid), 
  comments_1.text, 
  max(
    votes_1.creationdate), 
  comments_1.userid, 
  comments_1.userdisplayname, 
  votes_1.userid, 
  votes_1.votetypeid, 
  comments_1.postid
from 
  comments as comments_1
    inner join votes as votes_1
    on (comments_1.id = votes_1.id )
where votes_1.userid is not NULL
group by comments_1.postid, comments_1.text, comments_1.userdisplayname, comments_1.userid, votes_1.creationdate, votes_1.id, votes_1.userid, votes_1.votetypeid
limit 40;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.text, 
  posthistory_1.revisionguid, 
  posthistory_1.creationdate, 
  posthistory_1.comment, 
  sum(
    posthistory_1.posthistorytypeid), 
  max(
    posthistory_1.userid)
from 
  posthistory as posthistory_1
where posthistory_1.userid is not NULL
group by posthistory_1.comment, posthistory_1.creationdate, posthistory_1.revisionguid, posthistory_1.text
limit 31;
-- meta {"num_joins":2,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_2.tags, 
  min(
    posts_2.creationdate), 
  max(
    posts_2.creationdate), 
  avg(
    posts_1.owneruserid), 
  comments_1.contentlicense, 
  comments_1.userid, 
  count(*), 
  posts_2.title
from 
  posts as posts_1
    inner join comments as comments_1
      inner join posts as posts_2
      on (comments_1.id = posts_2.id )
    on (posts_1.id = comments_1.id )
where posts_1.tags is not NULL
group by comments_1.contentlicense, comments_1.userid, posts_2.tags, posts_2.title
limit 25;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    postlinks_1.postid), 
  postlinks_1.creationdate, 
  badges_1.id, 
  postlinks_1.id, 
  postlinks_1.relatedpostid, 
  postlinks_1.linktypeid, 
  badges_1.date, 
  badges_1.class, 
  min(
    postlinks_1.creationdate)
from 
  postlinks as postlinks_1
    inner join badges as badges_1
    on (postlinks_1.id = badges_1.id )
where badges_1.tagbased is not NULL
group by badges_1.class, badges_1.date, badges_1.id, postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.relatedpostid
limit 22;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.profileimageurl, 
  users_1.displayname, 
  users_1.id, 
  badges_1.userid, 
  users_1.creationdate, 
  badges_1.class, 
  badges_1.id
from 
  badges as badges_1
    inner join users as users_1
    on (badges_1.id = users_1.id )
where badges_1.userid is not NULL
limit 5;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    users_1.profileimageurl), 
  users_1.displayname, 
  users_1.creationdate, 
  users_1.websiteurl, 
  users_1.profileimageurl, 
  users_1.aboutme, 
  users_1.accountid, 
  users_1.id
from 
  users as users_1
where users_1.id is not NULL
group by users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.displayname, users_1.id, users_1.profileimageurl, users_1.websiteurl
limit 26;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.revisionguid, 
  posthistory_1.userdisplayname, 
  posthistory_1.creationdate, 
  posthistory_1.postid, 
  min(
    posthistory_1.creationdate), 
  posthistory_1.id, 
  posthistory_1.comment, 
  posthistory_1.text
from 
  posthistory as posthistory_1
where posthistory_1.id is not NULL
group by posthistory_1.comment, posthistory_1.creationdate, posthistory_1.id, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userdisplayname
limit 16;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_2.userid, 
  votes_1.id
from 
  votes as votes_1
    inner join votes as votes_2
    on (votes_1.id = votes_2.id )
where votes_2.votetypeid is not NULL
limit 35;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  users_1.aboutme, 
  users_1.id
from 
  users as users_1
where users_1.accountid < users_1.profileimageurl
group by users_1.aboutme, users_1.id
limit 17;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.parentid, 
  posts_1.posttypeid, 
  posts_1.creationdate, 
  posts_1.body, 
  posts_1.owneruserid, 
  max(
    posts_1.creationdate), 
  posts_1.contentlicense, 
  posts_1.ownerdisplayname, 
  posts_1.title
from 
  posts as posts_1
where posts_1.body is not NULL
group by posts_1.body, posts_1.contentlicense, posts_1.creationdate, posts_1.ownerdisplayname, posts_1.owneruserid, posts_1.parentid, posts_1.posttypeid, posts_1.title
limit 31;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.contentlicense, 
  posts_1.acceptedanswerid, 
  posts_1.id, 
  posts_1.creationdate
from 
  posts as posts_1
where posts_1.posttypeid < posts_1.parentid
limit 19;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.date
from 
  badges as badges_1
    inner join posts as posts_1
    on (badges_1.id = posts_1.id )
where badges_1.id is not NULL
limit 25;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.location, 
  comments_2.userid, 
  comments_1.userid
from 
  posthistory as posthistory_1
    inner join users as users_1
      inner join comments as comments_1
        inner join comments as comments_2
        on (comments_1.id = comments_2.id )
      on (users_1.id = comments_1.id )
    on (posthistory_1.id = comments_2.id )
where comments_2.contentlicense is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.id, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.postid, 
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid
from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
group by postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 4;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_2.tags, 
  min(
    posts_1.creationdate)
from 
  posts as posts_1
    inner join posts as posts_2
    on (posts_1.id = posts_2.id )
where posts_2.creationdate < posts_1.creationdate
group by posts_2.tags
limit 14;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.ownerdisplayname, 
  posthistory_1.userid, 
  max(
    posts_1.acceptedanswerid), 
  posthistory_1.text, 
  sum(
    posthistory_1.userid), 
  avg(
    posts_1.owneruserid)
from 
  posts as posts_1
    inner join posthistory as posthistory_1
    on (posts_1.id = posthistory_1.id )
where posts_1.id is not NULL
group by posthistory_1.text, posthistory_1.userid, posts_1.ownerdisplayname
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.id, 
  badges_1.userid
from 
  badges as badges_1
where badges_1.userid is not NULL
limit 24;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.contentlicense, 
  posts_1.title, 
  count(
    posts_1.body), 
  posts_1.parentid, 
  posts_1.creationdate, 
  posts_1.body, 
  max(
    posts_1.creationdate), 
  count(*), 
  posts_1.ownerdisplayname
from 
  posts as posts_1
where posts_1.title is not NULL
group by posts_1.body, posts_1.contentlicense, posts_1.creationdate, posts_1.ownerdisplayname, posts_1.parentid, posts_1.title
limit 39;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.class, 
  votes_1.userid, 
  badges_1.id
from 
  votes as votes_1
    inner join badges as badges_1
    on (votes_1.id = badges_1.id )
where votes_1.userid is not NULL
limit 10;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.userid, 
  min(
    posthistory_1.userid), 
  posthistory_1.text, 
  posthistory_1.creationdate
from 
  posthistory as posthistory_1
where posthistory_1.id is not NULL
group by posthistory_1.creationdate, posthistory_1.text, posthistory_1.userid
limit 33;
-- meta {"num_joins":0,"num_aggregates":7,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.id, 
  min(
    postlinks_1.creationdate), 
  count(
    postlinks_1.id), 
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid, 
  postlinks_1.postid, 
  avg(
    postlinks_1.linktypeid), 
  count(
    postlinks_1.creationdate), 
  min(
    postlinks_1.creationdate), 
  count(*), 
  count(
    postlinks_1.relatedpostid), 
  postlinks_1.creationdate
from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 7;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    posthistory_1.postid), 
  avg(
    posthistory_1.userid), 
  posthistory_1.comment
from 
  posthistory as posthistory_1
where posthistory_1.userdisplayname <= posthistory_1.revisionguid
group by posthistory_1.comment
limit 1;
-- meta {"num_joins":7,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.postid, 
  comments_2.userdisplayname, 
  postlinks_4.relatedpostid
from 
  votes as votes_1
          inner join postlinks as postlinks_1
          on (votes_1.id = postlinks_1.id )
        inner join comments as comments_1
          inner join comments as comments_2
          on (comments_1.id = comments_2.id )
        on (votes_1.id = comments_1.id )
      inner join postlinks as postlinks_2
        inner join postlinks as postlinks_3
        on (postlinks_2.id = postlinks_3.id )
      on (comments_2.id = postlinks_2.id )
    inner join postlinks as postlinks_4
      inner join postlinks as postlinks_5
      on (postlinks_4.id = postlinks_5.id )
    on (votes_1.id = postlinks_4.id )
where comments_2.postid >= comments_1.userid
limit 29;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.date, 
  badges_1.userid
from 
  comments as comments_1
    inner join comments as comments_2
      inner join badges as badges_1
      on (comments_2.id = badges_1.id )
    on (comments_1.id = comments_2.id )
where comments_1.creationdate <= badges_1.date
limit 23;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.contentlicense, 
  posts_1.title, 
  posts_1.creationdate, 
  max(
    posts_1.creationdate), 
  posts_1.body, 
  min(
    posts_1.acceptedanswerid)
from 
  posts as posts_1
where posts_1.contentlicense is not NULL
group by posts_1.body, posts_1.contentlicense, posts_1.creationdate, posts_1.title
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.userdisplayname, 
  avg(
    posthistory_1.id)
from 
  posthistory as posthistory_1
where posthistory_1.creationdate < posthistory_1.creationdate
group by posthistory_1.userdisplayname
limit 36;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.postid, 
  votes_1.votetypeid
from 
  votes as votes_1
    inner join posthistory as posthistory_1
    on (votes_1.id = posthistory_1.id )
where votes_1.creationdate is not NULL
limit 11;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.revisionguid, 
  posthistory_1.id
from 
  posthistory as posthistory_1
where posthistory_1.id is not NULL
limit 23;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.displayname
from 
  users as users_1
where users_1.id is not NULL
limit 10;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.posthistorytypeid
from 
  posthistory as posthistory_1
where posthistory_1.userdisplayname < posthistory_1.comment
limit 34;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.date, 
  badges_1.name, 
  users_1.location, 
  users_1.aboutme, 
  users_1.id, 
  postlinks_1.relatedpostid, 
  postlinks_1.creationdate, 
  badges_1.class, 
  badges_1.userid, 
  min(
    postlinks_1.creationdate), 
  sum(
    badges_1.class), 
  badges_1.tagbased, 
  badges_1.id, 
  postlinks_1.id, 
  postlinks_1.linktypeid
from 
  postlinks as postlinks_1
      inner join users as users_1
      on (postlinks_1.id = users_1.id )
    inner join badges as badges_1
    on (users_1.id = badges_1.id )
where users_1.websiteurl is not NULL
group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid, postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.relatedpostid, users_1.aboutme, users_1.id, users_1.location
limit 13;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_2.comment, 
  posts_3.acceptedanswerid, 
  users_1.aboutme
from 
  posts as posts_1
        inner join posthistory as posthistory_1
          inner join users as users_1
          on (posthistory_1.id = users_1.id )
        on (posts_1.id = users_1.id )
      inner join posts as posts_2
      on (users_1.id = posts_2.id )
    inner join posthistory as posthistory_2
      inner join posts as posts_3
      on (posthistory_2.id = posts_3.id )
    on (posthistory_1.id = posts_3.id )
where posts_2.parentid is not NULL
limit 25;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.contentlicense, 
  comments_1.text, 
  comments_1.creationdate, 
  comments_1.id, 
  min(
    comments_1.postid), 
  comments_1.userid, 
  comments_1.userdisplayname, 
  max(
    comments_1.creationdate)
from 
  comments as comments_1
where comments_1.creationdate >= comments_1.creationdate
group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.text, comments_1.userdisplayname, comments_1.userid
limit 16;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.text, 
  min(
    comments_1.creationdate), 
  comments_1.userdisplayname, 
  comments_1.id, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.comment, 
  comments_1.contentlicense, 
  posthistory_1.userdisplayname, 
  posthistory_1.id, 
  posthistory_1.text
from 
  comments as comments_1
    inner join posthistory as posthistory_1
    on (comments_1.id = posthistory_1.id )
where posthistory_1.userid is not NULL
group by comments_1.contentlicense, comments_1.id, comments_1.text, comments_1.userdisplayname, posthistory_1.comment, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.text, posthistory_1.userdisplayname
limit 42;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.title, 
  posts_1.tags, 
  posts_1.parentid
from 
  posts as posts_1
where posts_1.tags is not NULL
limit 13;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_2.aboutme, 
  votes_1.creationdate, 
  badges_1.id, 
  votes_1.userid, 
  max(
    users_1.creationdate), 
  users_2.id, 
  badges_1.name, 
  votes_1.id
from 
  badges as badges_1
    inner join votes as votes_1
        inner join users as users_1
        on (votes_1.id = users_1.id )
      inner join users as users_2
      on (users_1.id = users_2.id )
    on (badges_1.id = users_1.id )
where badges_1.tagbased is not NULL
group by badges_1.id, badges_1.name, users_2.aboutme, users_2.id, votes_1.creationdate, votes_1.id, votes_1.userid
limit 1;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.contentlicense, 
  comments_1.userdisplayname, 
  count(
    comments_1.contentlicense), 
  min(
    comments_1.creationdate), 
  comments_1.creationdate, 
  comments_1.id, 
  comments_1.userid, 
  min(
    comments_1.userid), 
  count(*)
from 
  comments as comments_1
where comments_1.creationdate >= comments_1.creationdate
group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.userdisplayname, comments_1.userid
limit 1;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.id, 
  min(
    votes_1.creationdate), 
  votes_1.creationdate
from 
  posts as posts_1
    inner join votes as votes_1
    on (posts_1.id = votes_1.id )
where posts_1.contentlicense is not NULL
group by votes_1.creationdate, votes_1.id
limit 25;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.creationdate, 
  users_1.aboutme, 
  badges_1.tagbased, 
  badges_1.date, 
  users_1.websiteurl
from 
  badges as badges_1
    inner join users as users_1
    on (badges_1.id = users_1.id )
where users_1.aboutme is not NULL
limit 10;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    postlinks_1.id), 
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  postlinks_1.postid, 
  postlinks_1.creationdate
from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid
limit 17;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    badges_1.date), 
  badges_1.tagbased, 
  count(*), 
  comments_1.userid, 
  comments_1.contentlicense, 
  badges_1.date, 
  max(
    comments_1.creationdate)
from 
  badges as badges_1
    inner join comments as comments_1
    on (badges_1.id = comments_1.id )
where comments_1.userdisplayname is not NULL
group by badges_1.date, badges_1.tagbased, comments_1.contentlicense, comments_1.userid
limit 10;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_2.userid, 
  badges_2.name
from 
  badges as badges_1
    inner join badges as badges_2
    on (badges_1.id = badges_2.id )
where badges_2.tagbased is not NULL
limit 7;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.userid, 
  sum(
    votes_1.postid), 
  votes_1.postid, 
  votes_1.creationdate
from 
  votes as votes_1
where votes_1.id is not NULL
group by votes_1.creationdate, votes_1.postid, votes_1.userid
limit 15;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.tags, 
  posts_1.parentid, 
  posts_1.ownerdisplayname, 
  posts_1.creationdate
from 
  posts as posts_1
where posts_1.ownerdisplayname is not NULL
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.creationdate, 
  posthistory_1.comment
from 
  postlinks as postlinks_1
    inner join posthistory as posthistory_1
    on (postlinks_1.id = posthistory_1.id )
where posthistory_1.text is not NULL
limit 36;
-- meta {"num_joins":6,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.creationdate, 
  posthistory_1.userid, 
  postlinks_1.creationdate, 
  users_1.aboutme, 
  avg(
    posts_1.posttypeid), 
  badges_1.class
from 
  posthistory as posthistory_1
        inner join users as users_1
        on (posthistory_1.id = users_1.id )
      inner join postlinks as postlinks_1
        inner join posts as posts_1
        on (postlinks_1.id = posts_1.id )
      on (posthistory_1.id = postlinks_1.id )
    inner join badges as badges_1
        inner join comments as comments_1
        on (badges_1.id = comments_1.id )
      inner join comments as comments_2
      on (badges_1.id = comments_2.id )
    on (users_1.id = comments_1.id )
where badges_1.userid is not NULL
group by badges_1.class, posthistory_1.creationdate, posthistory_1.userid, postlinks_1.creationdate, users_1.aboutme
limit 18;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.id
from 
  comments as comments_1
where comments_1.text is not NULL
limit 9;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.class, 
  badges_1.name, 
  max(
    badges_1.date), 
  badges_1.date, 
  users_1.aboutme, 
  badges_1.id
from 
  badges as badges_1
    inner join users as users_1
    on (badges_1.id = users_1.id )
where users_1.websiteurl is not NULL
group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, users_1.aboutme
limit 9;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.aboutme, 
  posthistory_1.postid, 
  users_1.creationdate, 
  users_1.id, 
  posthistory_1.text, 
  posthistory_1.userdisplayname
from 
  posthistory as posthistory_1
    inner join users as users_1
    on (posthistory_1.id = users_1.id )
where users_1.creationdate is not NULL
limit 24;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.postid, 
  count(
    postlinks_1.creationdate), 
  max(
    postlinks_1.creationdate), 
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid, 
  postlinks_1.id, 
  min(
    postlinks_1.creationdate), 
  postlinks_1.creationdate
from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 8;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    votes_1.postid)
from 
  votes as votes_1
where votes_1.userid is not NULL
limit 41;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.profileimageurl, 
  users_1.aboutme, 
  users_1.creationdate
from 
  users as users_1
where users_1.websiteurl is not NULL
limit 41;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.postid, 
  postlinks_1.linktypeid, 
  count(
    postlinks_1.id), 
  postlinks_1.relatedpostid, 
  min(
    postlinks_1.creationdate)
from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
group by postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 18;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.postid, 
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid
from 
  postlinks as postlinks_1
where postlinks_1.creationdate <= postlinks_1.creationdate
limit 14;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.id
from 
  comments as comments_1
    inner join posts as posts_1
    on (comments_1.id = posts_1.id )
where comments_1.id is not NULL
limit 42;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    votes_1.userid), 
  votes_1.votetypeid
from 
  votes as votes_1
where votes_1.userid is not NULL
group by votes_1.votetypeid
limit 17;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.tagbased, 
  badges_1.id, 
  badges_1.userid, 
  badges_1.date
from 
  badges as badges_1
where badges_1.name >= badges_1.name
limit 40;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.location, 
  users_1.aboutme
from 
  users as users_1
where users_1.displayname is not NULL
limit 15;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.class, 
  max(
    badges_1.date), 
  count(
    badges_1.userid)
from 
  badges as badges_1
where badges_1.userid is not NULL
group by badges_1.class
limit 27;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.parentid, 
  posts_1.owneruserid, 
  posts_1.tags, 
  posts_1.ownerdisplayname
from 
  posts as posts_1
where posts_1.posttypeid is not NULL
limit 8;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.userid, 
  users_1.id, 
  min(
    badges_1.date)
from 
  users as users_1
    inner join badges as badges_1
    on (users_1.id = badges_1.id )
where badges_1.date <= users_1.creationdate
group by badges_1.userid, users_1.id
limit 13;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  max(
    badges_1.date), 
  badges_1.class
from 
  badges as badges_1
where badges_1.name is not NULL
group by badges_1.class
limit 29;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.id, 
  max(
    badges_1.date), 
  count(*), 
  badges_1.userid, 
  badges_1.tagbased, 
  count(
    badges_1.class), 
  badges_1.date, 
  badges_1.name
from 
  badges as badges_1
where badges_1.name <= badges_1.name
group by badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
limit 10;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.postid, 
  badges_1.id, 
  votes_1.userid
from 
  badges as badges_1
    inner join votes as votes_1
    on (badges_1.id = votes_1.id )
where badges_1.name <= badges_1.name
limit 41;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.id
from 
  comments as comments_1
where comments_1.creationdate is not NULL
limit 5;
-- meta {"num_joins":1,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    postlinks_1.id), 
  postlinks_1.id, 
  badges_1.name, 
  max(
    postlinks_1.creationdate), 
  badges_1.id, 
  badges_1.tagbased, 
  min(
    badges_1.date), 
  postlinks_1.postid, 
  sum(
    badges_1.class), 
  postlinks_1.relatedpostid, 
  postlinks_1.creationdate, 
  badges_1.date, 
  sum(
    badges_1.id)
from 
  badges as badges_1
    inner join postlinks as postlinks_1
    on (badges_1.id = postlinks_1.id )
where badges_1.id is not NULL
group by badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased, postlinks_1.creationdate, postlinks_1.id, postlinks_1.postid, postlinks_1.relatedpostid
limit 10;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.relatedpostid
from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
limit 5;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.userid
from 
  comments as comments_1
    inner join postlinks as postlinks_1
      inner join badges as badges_1
      on (postlinks_1.id = badges_1.id )
    on (comments_1.id = badges_1.id )
where badges_1.date is not NULL
limit 6;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.userid
from 
  votes as votes_1
where votes_1.votetypeid is not NULL
limit 36;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.title, 
  posts_1.parentid, 
  posthistory_1.text
from 
  posts as posts_1
    inner join posthistory as posthistory_1
    on (posts_1.id = posthistory_1.id )
where posthistory_1.userdisplayname is not NULL
limit 26;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.id
from 
  votes as votes_1
where votes_1.votetypeid is not NULL
limit 35;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  comments_1.userid, 
  comments_1.text, 
  comments_1.id
from 
  comments as comments_1
where comments_1.postid is not NULL
group by comments_1.id, comments_1.text, comments_1.userid
limit 13;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.aboutme, 
  users_1.websiteurl, 
  min(
    users_1.creationdate), 
  users_1.displayname, 
  users_1.id, 
  min(
    users_1.id), 
  users_1.profileimageurl, 
  users_1.location, 
  users_1.accountid
from 
  users as users_1
where users_1.id < users_1.accountid
group by users_1.aboutme, users_1.accountid, users_1.displayname, users_1.id, users_1.location, users_1.profileimageurl, users_1.websiteurl
limit 19;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select distinct 
  badges_1.userid, 
  badges_1.date, 
  badges_1.class
from 
  badges as badges_1
where badges_1.class is not NULL
limit 6;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.parentid, 
  posts_1.ownerdisplayname, 
  posts_1.id, 
  posts_1.posttypeid, 
  posts_1.acceptedanswerid, 
  posts_1.contentlicense
from 
  posts as posts_1
where posts_1.acceptedanswerid is not NULL
limit 38;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.id, 
  users_1.aboutme, 
  users_1.profileimageurl, 
  users_1.websiteurl
from 
  users as users_1
where users_1.aboutme is not NULL
limit 24;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.class, 
  badges_1.userid, 
  avg(
    badges_1.userid), 
  badges_1.tagbased, 
  count(*), 
  avg(
    badges_1.userid)
from 
  badges as badges_1
where badges_1.tagbased >= badges_1.tagbased
group by badges_1.class, badges_1.tagbased, badges_1.userid
limit 29;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    posthistory_1.id), 
  posthistory_1.text, 
  posthistory_1.userdisplayname
from 
  posthistory as posthistory_1
where posthistory_1.creationdate < posthistory_1.creationdate
group by posthistory_1.text, posthistory_1.userdisplayname
limit 19;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.location, 
  users_1.creationdate, 
  users_1.accountid, 
  users_2.location, 
  users_1.websiteurl, 
  users_2.aboutme, 
  avg(
    postlinks_1.relatedpostid), 
  max(
    postlinks_1.creationdate), 
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid
from 
  users as users_1
    inner join postlinks as postlinks_1
      inner join users as users_2
      on (postlinks_1.id = users_2.id )
    on (users_1.id = postlinks_1.id )
where users_1.websiteurl is not NULL
group by postlinks_1.creationdate, postlinks_1.relatedpostid, users_1.accountid, users_1.creationdate, users_1.location, users_1.websiteurl, users_2.aboutme, users_2.location
limit 5;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.id, 
  posthistory_1.userdisplayname
from 
  posthistory as posthistory_1
where posthistory_1.userdisplayname is not NULL
limit 40;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_2.location, 
  users_2.aboutme, 
  users_2.profileimageurl, 
  users_1.id, 
  min(
    users_2.accountid)
from 
  users as users_1
    inner join users as users_2
    on (users_1.id = users_2.id )
where users_1.accountid is not NULL
group by users_1.id, users_2.aboutme, users_2.location, users_2.profileimageurl
limit 30;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.id, 
  posthistory_2.posthistorytypeid, 
  max(
    postlinks_1.relatedpostid), 
  postlinks_1.linktypeid, 
  votes_1.id
from 
  posthistory as posthistory_1
    inner join posthistory as posthistory_2
        inner join votes as votes_1
        on (posthistory_2.id = votes_1.id )
      inner join postlinks as postlinks_1
        inner join badges as badges_1
        on (postlinks_1.id = badges_1.id )
      on (posthistory_2.id = badges_1.id )
    on (posthistory_1.id = badges_1.id )
where posthistory_2.id is not NULL
group by posthistory_2.posthistorytypeid, postlinks_1.id, postlinks_1.linktypeid, votes_1.id
limit 26;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.title, 
  posts_1.parentid, 
  posts_1.ownerdisplayname, 
  posts_1.id, 
  posts_1.owneruserid, 
  posts_1.contentlicense, 
  posts_1.acceptedanswerid, 
  posts_1.tags, 
  min(
    posts_1.creationdate), 
  min(
    posts_1.creationdate), 
  posts_1.creationdate, 
  posts_1.body, 
  max(
    posts_1.creationdate)
from 
  posts as posts_1
where posts_1.acceptedanswerid is not NULL
group by posts_1.acceptedanswerid, posts_1.body, posts_1.contentlicense, posts_1.creationdate, posts_1.id, posts_1.ownerdisplayname, posts_1.owneruserid, posts_1.parentid, posts_1.tags, posts_1.title
limit 22;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.linktypeid, 
  postlinks_1.creationdate, 
  postlinks_1.id, 
  postlinks_1.postid, 
  postlinks_1.relatedpostid, 
  sum(
    postlinks_1.relatedpostid)
from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 42;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    users_1.accountid), 
  users_1.profileimageurl, 
  comments_1.userid
from 
  comments as comments_1
    inner join users as users_1
    on (comments_1.id = users_1.id )
where users_1.accountid = users_1.profileimageurl
group by comments_1.userid, users_1.profileimageurl
limit 41;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.creationdate, 
  min(
    posts_1.creationdate), 
  posts_1.posttypeid, 
  posts_1.contentlicense, 
  posts_1.owneruserid
from 
  posts as posts_1
where posts_1.acceptedanswerid >= posts_1.parentid
group by posts_1.contentlicense, posts_1.creationdate, posts_1.owneruserid, posts_1.posttypeid
limit 18;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.creationdate, 
  votes_1.userid, 
  votes_1.postid, 
  votes_1.id
from 
  votes as votes_1
where votes_1.userid is not NULL
limit 25;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.userid
from 
  posts as posts_1
    inner join comments as comments_1
    on (posts_1.id = comments_1.id )
where posts_1.ownerdisplayname is not NULL
limit 9;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.userid
from 
  badges as badges_1
where badges_1.tagbased is not NULL
limit 12;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    posthistory_1.revisionguid), 
  posthistory_1.creationdate
from 
  posthistory as posthistory_1
where posthistory_1.revisionguid is not NULL
group by posthistory_1.creationdate
limit 37;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    postlinks_1.creationdate), 
  postlinks_1.linktypeid, 
  postlinks_1.postid
from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
group by postlinks_1.linktypeid, postlinks_1.postid
limit 2;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    postlinks_1.creationdate), 
  max(
    postlinks_1.relatedpostid), 
  sum(
    postlinks_1.relatedpostid), 
  postlinks_1.id, 
  postlinks_1.postid, 
  postlinks_1.linktypeid, 
  min(
    postlinks_1.creationdate), 
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid
from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 24;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.id, 
  badges_1.tagbased
from 
  postlinks as postlinks_1
      inner join posthistory as posthistory_1
      on (postlinks_1.id = posthistory_1.id )
    inner join badges as badges_1
      inner join badges as badges_2
      on (badges_1.id = badges_2.id )
    on (postlinks_1.id = badges_2.id )
where postlinks_1.postid is not NULL
limit 9;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    comments_1.id), 
  comments_1.text, 
  comments_1.postid, 
  comments_1.id, 
  comments_1.userdisplayname
from 
  comments as comments_1
where comments_1.contentlicense is not NULL
group by comments_1.id, comments_1.postid, comments_1.text, comments_1.userdisplayname
limit 32;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.comment, 
  votes_1.userid
from 
  votes as votes_1
    inner join posthistory as posthistory_1
    on (votes_1.id = posthistory_1.id )
where posthistory_1.comment <= posthistory_1.revisionguid
limit 21;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.creationdate, 
  posts_1.ownerdisplayname, 
  users_1.profileimageurl, 
  posts_1.acceptedanswerid
from 
  users as users_1
    inner join posts as posts_1
    on (users_1.id = posts_1.id )
where posts_1.creationdate is not NULL
limit 2;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.id, 
  count(
    comments_1.postid), 
  min(
    comments_1.postid), 
  comments_1.contentlicense
from 
  users as users_1
      inner join comments as comments_1
      on (users_1.id = comments_1.id )
    inner join votes as votes_1
    on (comments_1.id = votes_1.id )
where votes_1.postid is not NULL
group by comments_1.contentlicense, votes_1.id
limit 16;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    posthistory_1.id), 
  posthistory_1.revisionguid, 
  posthistory_1.comment, 
  posthistory_1.postid
from 
  posthistory as posthistory_1
where posthistory_1.userdisplayname is not NULL
group by posthistory_1.comment, posthistory_1.postid, posthistory_1.revisionguid
limit 16;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.ownerdisplayname, 
  sum(
    posts_1.parentid)
from 
  posts as posts_1
where posts_1.posttypeid < posts_1.id
group by posts_1.ownerdisplayname
limit 35;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.userid, 
  votes_1.creationdate, 
  votes_1.postid, 
  votes_1.votetypeid
from 
  votes as votes_1
where votes_1.userid is not NULL
limit 23;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.comment
from 
  posthistory as posthistory_1
where posthistory_1.userdisplayname is not NULL
limit 13;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_2.creationdate, 
  count(*), 
  comments_2.postid, 
  postlinks_2.id
from 
  comments as comments_1
      inner join postlinks as postlinks_1
        inner join comments as comments_2
        on (postlinks_1.id = comments_2.id )
      on (comments_1.id = comments_2.id )
    inner join postlinks as postlinks_2
    on (postlinks_1.id = postlinks_2.id )
where postlinks_2.creationdate is not NULL
group by comments_2.creationdate, comments_2.postid, postlinks_2.id
limit 7;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.tags, 
  posts_1.body
from 
  posts as posts_1
where posts_1.creationdate is not NULL
limit 31;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.userid, 
  badges_1.date, 
  badges_1.name, 
  min(
    badges_1.date), 
  badges_1.class
from 
  badges as badges_1
where badges_1.date is not NULL
group by badges_1.class, badges_1.date, badges_1.name, badges_1.userid
limit 40;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    posts_1.creationdate)
from 
  badges as badges_1
    inner join posts as posts_1
    on (badges_1.id = posts_1.id )
where badges_1.name is not NULL
limit 21;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.parentid, 
  posts_1.ownerdisplayname, 
  posts_1.id, 
  posts_1.owneruserid, 
  avg(
    posts_1.acceptedanswerid), 
  posts_1.title, 
  posts_1.body, 
  max(
    posts_1.creationdate), 
  posts_1.tags, 
  posts_1.acceptedanswerid, 
  min(
    posts_1.creationdate), 
  max(
    posts_1.creationdate), 
  posts_1.posttypeid
from 
  posts as posts_1
where posts_1.id is not NULL
group by posts_1.acceptedanswerid, posts_1.body, posts_1.id, posts_1.ownerdisplayname, posts_1.owneruserid, posts_1.parentid, posts_1.posttypeid, posts_1.tags, posts_1.title
limit 14;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.id, 
  votes_1.creationdate
from 
  posts as posts_1
    inner join votes as votes_1
    on (posts_1.id = votes_1.id )
where votes_1.postid is not NULL
limit 29;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.id, 
  count(*), 
  comments_1.postid, 
  comments_1.contentlicense
from 
  comments as comments_1
where comments_1.id = comments_1.userid
group by comments_1.contentlicense, comments_1.id, comments_1.postid
limit 38;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    users_1.creationdate), 
  max(
    users_1.creationdate), 
  users_1.displayname
from 
  users as users_1
where users_1.id >= users_1.profileimageurl
group by users_1.displayname
limit 27;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    posthistory_1.creationdate), 
  max(
    posthistory_1.creationdate), 
  posthistory_1.userid, 
  posthistory_1.comment, 
  posthistory_1.posthistorytypeid
from 
  posthistory as posthistory_1
where posthistory_1.userdisplayname is not NULL
group by posthistory_1.comment, posthistory_1.posthistorytypeid, posthistory_1.userid
limit 21;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.contentlicense, 
  votes_1.id
from 
  comments as comments_1
    inner join votes as votes_1
    on (comments_1.id = votes_1.id )
where comments_1.text is not NULL
limit 28;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.id, 
  badges_1.tagbased, 
  badges_1.name, 
  min(
    badges_1.class)
from 
  badges as badges_1
where badges_1.userid is not NULL
group by badges_1.id, badges_1.name, badges_1.tagbased
limit 21;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.text, 
  min(
    posthistory_1.creationdate), 
  count(
    posthistory_1.postid), 
  posthistory_1.id
from 
  posthistory as posthistory_1
where posthistory_1.creationdate > posthistory_1.creationdate
group by posthistory_1.id, posthistory_1.text
limit 16;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.id, 
  badges_1.date, 
  badges_1.tagbased, 
  badges_1.name
from 
  badges as badges_1
where badges_1.id is not NULL
limit 29;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    posts_1.creationdate), 
  posts_1.creationdate, 
  posts_1.contentlicense, 
  posts_1.ownerdisplayname, 
  posts_1.acceptedanswerid, 
  posts_1.owneruserid, 
  count(*), 
  posts_1.body
from 
  posts as posts_1
where posts_1.id >= posts_1.parentid
group by posts_1.acceptedanswerid, posts_1.body, posts_1.contentlicense, posts_1.creationdate, posts_1.ownerdisplayname, posts_1.owneruserid
limit 29;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.id, 
  min(
    badges_1.id), 
  badges_1.id, 
  votes_1.postid
from 
  votes as votes_1
    inner join badges as badges_1
    on (votes_1.id = badges_1.id )
where votes_1.creationdate >= badges_1.date
group by badges_1.id, votes_1.id, votes_1.postid
limit 29;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.postid, 
  postlinks_2.postid, 
  min(
    users_1.creationdate), 
  badges_1.class, 
  postlinks_1.linktypeid, 
  badges_1.id
from 
  users as users_1
      inner join postlinks as postlinks_1
          inner join postlinks as postlinks_2
          on (postlinks_1.id = postlinks_2.id )
        inner join badges as badges_1
        on (postlinks_1.id = badges_1.id )
      on (users_1.id = postlinks_2.id )
    inner join votes as votes_1
    on (postlinks_2.id = votes_1.id )
where users_1.location = users_1.aboutme
group by badges_1.class, badges_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_2.postid
limit 10;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.postid, 
  votes_1.userid, 
  postlinks_1.creationdate, 
  users_1.profileimageurl
from 
  votes as votes_1
      inner join users as users_1
      on (votes_1.id = users_1.id )
    inner join postlinks as postlinks_1
    on (votes_1.id = postlinks_1.id )
where users_1.creationdate is not NULL
limit 12;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.userdisplayname
from 
  posts as posts_1
    inner join comments as comments_1
    on (posts_1.id = comments_1.id )
where posts_1.contentlicense > posts_1.title
limit 7;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.id, 
  comments_1.creationdate, 
  comments_1.text, 
  min(
    comments_1.creationdate), 
  comments_1.userid, 
  comments_1.userdisplayname
from 
  comments as comments_1
where comments_1.id <= comments_1.postid
group by comments_1.creationdate, comments_1.id, comments_1.text, comments_1.userdisplayname, comments_1.userid
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.userid
from 
  votes as votes_1
where votes_1.postid is not NULL
limit 30;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.postid, 
  posthistory_2.userid
from 
  postlinks as postlinks_1
      inner join posthistory as posthistory_1
      on (postlinks_1.id = posthistory_1.id )
    inner join posthistory as posthistory_2
    on (posthistory_1.id = posthistory_2.id )
where posthistory_1.contentlicense is not NULL
limit 35;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.revisionguid, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.text, 
  posthistory_1.userid, 
  posthistory_1.postid, 
  posthistory_1.comment
from 
  posthistory as posthistory_1
where posthistory_1.userdisplayname is not NULL
limit 18;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    badges_1.date), 
  badges_1.date
from 
  badges as badges_1
where badges_1.date >= badges_1.date
group by badges_1.date
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.postid
from 
  votes as votes_1
    inner join posthistory as posthistory_1
    on (votes_1.id = posthistory_1.id )
where votes_1.postid is not NULL
limit 26;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.body, 
  posts_1.owneruserid
from 
  posts as posts_1
    inner join posts as posts_2
    on (posts_1.id = posts_2.id )
where posts_2.creationdate is not NULL
limit 34;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.userid, 
  count(*), 
  posthistory_1.text, 
  posthistory_1.comment
from 
  posthistory as posthistory_1
where posthistory_1.userdisplayname is not NULL
group by posthistory_1.comment, posthistory_1.text, posthistory_1.userid
limit 21;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.creationdate, 
  comments_1.contentlicense
from 
  comments as comments_1
where comments_1.postid is not NULL
limit 15;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    badges_1.date), 
  badges_1.tagbased, 
  badges_1.userid
from 
  badges as badges_1
where badges_1.tagbased >= badges_1.tagbased
group by badges_1.tagbased, badges_1.userid
limit 40;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.relatedpostid, 
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  max(
    postlinks_1.creationdate)
from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
group by postlinks_1.id, postlinks_1.linktypeid, postlinks_1.relatedpostid
limit 29;
-- meta {"num_joins":8,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.accountid, 
  badges_1.class
from 
  users as users_1
      inner join posts as posts_1
        inner join badges as badges_1
            inner join badges as badges_2
            on (badges_1.id = badges_2.id )
          inner join badges as badges_3
          on (badges_2.id = badges_3.id )
        on (posts_1.id = badges_2.id )
      on (users_1.id = posts_1.id )
    inner join badges as badges_4
          inner join posts as posts_2
          on (badges_4.id = posts_2.id )
        inner join posthistory as posthistory_1
        on (badges_4.id = posthistory_1.id )
      inner join comments as comments_1
      on (badges_4.id = comments_1.id )
    on (posts_1.id = comments_1.id )
where posthistory_1.comment is not NULL
limit 19;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.postid, 
  max(
    votes_1.creationdate), 
  min(
    votes_1.creationdate), 
  max(
    votes_1.id), 
  votes_1.id, 
  votes_1.creationdate, 
  votes_1.votetypeid, 
  votes_1.userid
from 
  votes as votes_1
where votes_1.userid is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 31;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.userdisplayname, 
  posts_1.title, 
  votes_1.creationdate
from 
  comments as comments_1
    inner join posts as posts_1
        inner join votes as votes_1
        on (posts_1.id = votes_1.id )
      inner join posthistory as posthistory_1
      on (posts_1.id = posthistory_1.id )
    on (comments_1.id = posthistory_1.id )
where comments_1.userid is not NULL
limit 38;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select distinct 
  badges_1.name, 
  badges_1.id, 
  badges_1.date, 
  badges_1.class
from 
  badges as badges_1
where badges_1.class is not NULL
limit 5;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.linktypeid, 
  postlinks_1.postid
from 
  postlinks as postlinks_1
where postlinks_1.creationdate > postlinks_1.creationdate
limit 23;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.contentlicense, 
  comments_1.userdisplayname, 
  comments_1.postid
from 
  comments as comments_1
where comments_1.id is not NULL
limit 32;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    users_1.websiteurl), 
  users_1.websiteurl, 
  max(
    users_1.id)
from 
  users as users_1
where users_1.location is not NULL
group by users_1.websiteurl
limit 22;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.profileimageurl, 
  max(
    users_2.id), 
  users_1.location
from 
  users as users_1
    inner join users as users_2
    on (users_1.id = users_2.id )
where users_2.aboutme is not NULL
group by users_1.location, users_1.profileimageurl
limit 37;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.userid
from 
  badges as badges_1
    inner join votes as votes_1
    on (badges_1.id = votes_1.id )
where votes_1.postid is not NULL
limit 27;
-- meta {"num_joins":5,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    posthistory_1.creationdate), 
  postlinks_1.postid, 
  posts_1.ownerdisplayname, 
  count(*), 
  users_1.accountid, 
  posts_2.parentid, 
  posthistory_1.text
from 
  users as users_1
      inner join posthistory as posthistory_1
      on (users_1.id = posthistory_1.id )
    inner join users as users_2
        inner join postlinks as postlinks_1
        on (users_2.id = postlinks_1.id )
      inner join posts as posts_1
        inner join posts as posts_2
        on (posts_1.id = posts_2.id )
      on (postlinks_1.id = posts_1.id )
    on (posthistory_1.id = users_2.id )
where users_1.aboutme is not NULL
group by posthistory_1.text, postlinks_1.postid, posts_1.ownerdisplayname, posts_2.parentid, users_1.accountid
limit 1;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    users_1.profileimageurl), 
  posthistory_1.postid, 
  users_1.creationdate, 
  users_1.profileimageurl, 
  users_1.location
from 
  users as users_1
    inner join posthistory as posthistory_1
    on (users_1.id = posthistory_1.id )
where posthistory_1.comment <= posthistory_1.revisionguid
group by posthistory_1.postid, users_1.creationdate, users_1.location, users_1.profileimageurl
limit 41;
-- meta {"num_joins":5,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.id, 
  count(*), 
  max(
    postlinks_1.creationdate), 
  badges_1.id
from 
  posts as posts_1
    inner join posthistory as posthistory_1
      inner join postlinks as postlinks_1
          inner join postlinks as postlinks_2
          on (postlinks_1.id = postlinks_2.id )
        inner join postlinks as postlinks_3
          inner join badges as badges_1
          on (postlinks_3.id = badges_1.id )
        on (postlinks_1.id = badges_1.id )
      on (posthistory_1.id = postlinks_3.id )
    on (posts_1.id = postlinks_2.id )
where postlinks_1.relatedpostid is not NULL
group by badges_1.id, postlinks_1.id
limit 5;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.postid, 
  votes_1.votetypeid, 
  min(
    votes_1.postid)
from 
  votes as votes_1
where votes_1.creationdate is not NULL
group by votes_1.postid, votes_1.votetypeid
limit 40;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    comments_2.postid), 
  postlinks_1.linktypeid, 
  comments_2.creationdate
from 
  postlinks as postlinks_1
      inner join posts as posts_1
        inner join votes as votes_1
          inner join comments as comments_1
          on (votes_1.id = comments_1.id )
        on (posts_1.id = votes_1.id )
      on (postlinks_1.id = comments_1.id )
    inner join comments as comments_2
    on (comments_1.id = comments_2.id )
where comments_2.postid is not NULL
group by comments_2.creationdate, postlinks_1.linktypeid
limit 18;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    users_1.creationdate), 
  users_1.displayname, 
  users_1.websiteurl, 
  users_1.aboutme, 
  users_1.profileimageurl, 
  max(
    users_1.profileimageurl), 
  min(
    users_1.id), 
  users_1.accountid
from 
  users as users_1
where users_1.creationdate is not NULL
group by users_1.aboutme, users_1.accountid, users_1.displayname, users_1.profileimageurl, users_1.websiteurl
limit 40;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.relatedpostid
from 
  postlinks as postlinks_1
where postlinks_1.creationdate = postlinks_1.creationdate
limit 8;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.userid, 
  users_1.creationdate, 
  badges_1.name, 
  posthistory_1.id, 
  badges_1.class
from 
  posthistory as posthistory_1
      inner join votes as votes_1
        inner join users as users_1
        on (votes_1.id = users_1.id )
      on (posthistory_1.id = votes_1.id )
    inner join badges as badges_1
      inner join votes as votes_2
      on (badges_1.id = votes_2.id )
    on (votes_1.id = votes_2.id )
where badges_1.tagbased > badges_1.tagbased
limit 39;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.id, 
  posthistory_1.creationdate, 
  min(
    votes_1.creationdate), 
  votes_1.votetypeid
from 
  votes as votes_1
    inner join votes as votes_2
      inner join posthistory as posthistory_1
      on (votes_2.id = posthistory_1.id )
    on (votes_1.id = votes_2.id )
where posthistory_1.revisionguid is not NULL
group by posthistory_1.creationdate, votes_1.id, votes_1.votetypeid
limit 41;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.votetypeid, 
  votes_1.userid, 
  votes_1.creationdate, 
  votes_1.postid
from 
  votes as votes_1
where votes_1.creationdate = votes_1.creationdate
limit 36;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.contentlicense, 
  posts_1.tags
from 
  posts as posts_1
    inner join votes as votes_1
    on (posts_1.id = votes_1.id )
where votes_1.userid is not NULL
limit 11;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.aboutme, 
  users_1.location, 
  users_1.creationdate, 
  users_1.id
from 
  users as users_1
where users_1.displayname is not NULL
limit 17;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.posthistorytypeid, 
  posthistory_1.revisionguid
from 
  posthistory as posthistory_1
where posthistory_1.userdisplayname is not NULL
limit 8;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.userid, 
  votes_2.creationdate, 
  count(
    votes_1.postid)
from 
  votes as votes_1
    inner join votes as votes_2
    on (votes_1.id = votes_2.id )
where votes_1.votetypeid is not NULL
group by votes_1.userid, votes_2.creationdate
limit 37;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.relatedpostid, 
  postlinks_1.creationdate
from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
limit 12;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.userdisplayname, 
  comments_1.creationdate, 
  badges_1.userid, 
  comments_1.id, 
  badges_1.id, 
  badges_1.tagbased
from 
  badges as badges_1
    inner join comments as comments_1
    on (badges_1.id = comments_1.id )
where comments_1.id is not NULL
limit 2;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.userid, 
  posthistory_1.creationdate
from 
  users as users_1
      inner join posthistory as posthistory_1
      on (users_1.id = posthistory_1.id )
    inner join comments as comments_1
    on (posthistory_1.id = comments_1.id )
where users_1.displayname = comments_1.contentlicense
limit 37;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.postid, 
  min(
    postlinks_1.creationdate), 
  postlinks_1.id
from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
group by postlinks_1.id, postlinks_1.postid
limit 20;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.parentid, 
  avg(
    posts_1.posttypeid)
from 
  posts as posts_1
where posts_1.contentlicense > posts_1.body
group by posts_1.parentid
limit 37;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.userid, 
  badges_1.id, 
  badges_1.date, 
  badges_1.class, 
  badges_1.name
from 
  badges as badges_1
where badges_1.id is not NULL
limit 31;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.tags, 
  sum(
    postlinks_1.id)
from 
  posts as posts_1
    inner join postlinks as postlinks_1
    on (posts_1.id = postlinks_1.id )
where posts_1.tags > posts_1.contentlicense
group by posts_1.tags
limit 37;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.displayname, 
  badges_1.date, 
  posthistory_1.userdisplayname, 
  users_1.id
from 
  posthistory as posthistory_1
        inner join users as users_1
        on (posthistory_1.id = users_1.id )
      inner join badges as badges_1
      on (posthistory_1.id = badges_1.id )
    inner join votes as votes_1
    on (users_1.id = votes_1.id )
where users_1.profileimageurl is not NULL
limit 33;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.parentid
from 
  posthistory as posthistory_1
      inner join comments as comments_1
      on (posthistory_1.id = comments_1.id )
    inner join comments as comments_2
      inner join posthistory as posthistory_2
        inner join posts as posts_1
        on (posthistory_2.id = posts_1.id )
      on (comments_2.id = posts_1.id )
    on (comments_1.id = posts_1.id )
where posthistory_2.revisionguid is not NULL
limit 21;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.tagbased
from 
  postlinks as postlinks_1
    inner join badges as badges_1
    on (postlinks_1.id = badges_1.id )
where postlinks_1.id is not NULL
limit 27;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.text, 
  badges_1.tagbased, 
  comments_1.postid, 
  badges_1.date, 
  comments_1.contentlicense, 
  comments_1.userdisplayname
from 
  comments as comments_1
    inner join badges as badges_1
    on (comments_1.id = badges_1.id )
where badges_1.class is not NULL
limit 39;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.contentlicense
from 
  comments as comments_1
where comments_1.creationdate = comments_1.creationdate
limit 1;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.date, 
  posts_1.ownerdisplayname
from 
  votes as votes_1
    inner join badges as badges_1
      inner join posts as posts_1
      on (badges_1.id = posts_1.id )
    on (votes_1.id = posts_1.id )
where posts_1.posttypeid <= votes_1.id
limit 1;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    posts_1.creationdate), 
  posts_1.contentlicense, 
  count(
    posts_1.contentlicense), 
  posts_1.body, 
  max(
    posts_1.owneruserid), 
  posts_1.posttypeid, 
  count(*), 
  posts_1.ownerdisplayname
from 
  posts as posts_1
where posts_1.posttypeid is not NULL
group by posts_1.body, posts_1.contentlicense, posts_1.ownerdisplayname, posts_1.posttypeid
limit 19;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.creationdate, 
  posts_1.tags, 
  posts_1.acceptedanswerid
from 
  posts as posts_1
where posts_1.posttypeid is not NULL
limit 19;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.postid, 
  votes_1.creationdate, 
  votes_1.votetypeid, 
  votes_1.id, 
  votes_1.userid, 
  avg(
    votes_1.id), 
  min(
    votes_1.creationdate)
from 
  votes as votes_1
where votes_1.votetypeid is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 27;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    comments_1.id), 
  comments_1.userdisplayname, 
  comments_1.text, 
  comments_1.creationdate, 
  comments_1.contentlicense, 
  max(
    comments_1.creationdate), 
  comments_1.postid, 
  max(
    comments_1.creationdate), 
  max(
    comments_1.postid), 
  comments_1.userid, 
  comments_1.id
from 
  comments as comments_1
where comments_1.id is not NULL
group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.text, comments_1.userdisplayname, comments_1.userid
limit 12;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.userid, 
  votes_1.id, 
  votes_1.postid, 
  max(
    votes_1.creationdate), 
  count(*)
from 
  votes as votes_1
where votes_1.userid is not NULL
group by votes_1.id, votes_1.postid, votes_1.userid
limit 12;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.id, 
  postlinks_1.relatedpostid, 
  postlinks_1.creationdate, 
  postlinks_1.postid
from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
limit 16;
-- meta {"num_joins":3,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    posts_1.creationdate), 
  comments_1.creationdate, 
  avg(
    comments_1.userid), 
  posts_2.acceptedanswerid, 
  min(
    posts_2.creationdate), 
  posts_1.id
from 
  comments as comments_1
    inner join posts as posts_1
        inner join posts as posts_2
        on (posts_1.id = posts_2.id )
      inner join users as users_1
      on (posts_2.id = users_1.id )
    on (comments_1.id = users_1.id )
where posts_1.tags is not NULL
group by comments_1.creationdate, posts_1.id, posts_2.acceptedanswerid
limit 10;
-- meta {"num_joins":2,"num_aggregates":10,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.id, 
  comments_1.text, 
  avg(
    users_1.accountid), 
  avg(
    comments_1.userid), 
  comments_1.userdisplayname, 
  comments_1.id, 
  users_1.websiteurl, 
  users_1.displayname, 
  sum(
    postlinks_1.relatedpostid), 
  comments_1.contentlicense, 
  avg(
    users_1.id), 
  postlinks_1.postid, 
  avg(
    comments_1.userid), 
  users_1.location, 
  sum(
    postlinks_1.id), 
  min(
    postlinks_1.creationdate), 
  postlinks_1.linktypeid, 
  max(
    postlinks_1.id), 
  postlinks_1.creationdate, 
  min(
    postlinks_1.postid), 
  postlinks_1.relatedpostid, 
  comments_1.postid, 
  min(
    comments_1.creationdate)
from 
  users as users_1
    inner join postlinks as postlinks_1
      inner join comments as comments_1
      on (postlinks_1.id = comments_1.id )
    on (users_1.id = comments_1.id )
where comments_1.creationdate is not NULL
group by comments_1.contentlicense, comments_1.id, comments_1.postid, comments_1.text, comments_1.userdisplayname, postlinks_1.creationdate, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid, users_1.displayname, users_1.id, users_1.location, users_1.websiteurl
limit 36;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.userid, 
  max(
    comments_1.creationdate), 
  votes_1.postid
from 
  comments as comments_1
    inner join votes as votes_1
    on (comments_1.id = votes_1.id )
where comments_1.userdisplayname is not NULL
group by votes_1.postid, votes_1.userid
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.displayname, 
  users_1.websiteurl, 
  users_1.location, 
  users_1.accountid, 
  min(
    users_1.creationdate), 
  users_1.aboutme, 
  users_1.creationdate, 
  users_1.id
from 
  users as users_1
where users_1.aboutme = users_1.location
group by users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.displayname, users_1.id, users_1.location, users_1.websiteurl
limit 16;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.parentid, 
  posts_1.body, 
  badges_1.date, 
  posts_1.contentlicense, 
  badges_1.name, 
  posts_1.acceptedanswerid, 
  posts_1.owneruserid, 
  badges_1.id, 
  badges_1.class
from 
  badges as badges_1
    inner join posts as posts_1
    on (badges_1.id = posts_1.id )
where posts_1.id is not NULL
limit 35;
-- meta {"num_joins":5,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_2.id, 
  posthistory_1.id, 
  postlinks_2.creationdate, 
  posthistory_1.revisionguid, 
  max(
    postlinks_3.creationdate), 
  min(
    posthistory_1.id), 
  postlinks_1.linktypeid, 
  postlinks_3.id
from 
  postlinks as postlinks_1
    inner join postlinks as postlinks_2
          inner join posthistory as posthistory_1
          on (postlinks_2.id = posthistory_1.id )
        inner join badges as badges_1
          inner join postlinks as postlinks_3
          on (badges_1.id = postlinks_3.id )
        on (postlinks_2.id = badges_1.id )
      inner join posts as posts_1
      on (posthistory_1.id = posts_1.id )
    on (postlinks_1.id = postlinks_2.id )
where badges_1.tagbased > badges_1.tagbased
group by posthistory_1.id, posthistory_1.revisionguid, postlinks_1.linktypeid, postlinks_2.creationdate, postlinks_2.id, postlinks_3.id
limit 24;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.id, 
  votes_1.creationdate, 
  votes_1.postid
from 
  votes as votes_1
where votes_1.creationdate is not NULL
limit 18;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.title, 
  badges_1.userid, 
  badges_1.class, 
  posts_1.tags, 
  badges_1.id, 
  min(
    posts_1.acceptedanswerid)
from 
  badges as badges_1
    inner join posts as posts_1
    on (badges_1.id = posts_1.id )
where badges_1.userid is not NULL
group by badges_1.class, badges_1.id, badges_1.userid, posts_1.tags, posts_1.title
limit 9;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.id
from 
  badges as badges_1
where badges_1.name > badges_1.name
limit 35;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.id, 
  users_1.profileimageurl
from 
  users as users_1
where users_1.profileimageurl = users_1.accountid
limit 26;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.tagbased
from 
  badges as badges_1
where badges_1.name is not NULL
limit 25;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  posts_1.id, 
  posts_1.creationdate
from 
  posts as posts_1
where posts_1.parentid is not NULL
group by posts_1.creationdate, posts_1.id
limit 5;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.displayname, 
  users_1.id
from 
  users as users_1
where users_1.creationdate >= users_1.creationdate
limit 7;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.creationdate, 
  min(
    postlinks_1.creationdate), 
  postlinks_1.relatedpostid
from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
group by postlinks_1.creationdate, postlinks_1.relatedpostid
limit 40;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.creationdate, 
  posts_1.title, 
  posts_1.body, 
  posts_1.ownerdisplayname
from 
  posts as posts_1
where posts_1.title = posts_1.ownerdisplayname
limit 24;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.title, 
  users_1.creationdate, 
  users_1.id, 
  count(*), 
  users_1.location, 
  users_1.aboutme, 
  posts_1.body, 
  posts_1.owneruserid, 
  posts_1.posttypeid, 
  sum(
    users_1.id), 
  users_1.websiteurl, 
  max(
    posts_1.creationdate), 
  posts_1.ownerdisplayname
from 
  posts as posts_1
    inner join users as users_1
    on (posts_1.id = users_1.id )
where users_1.displayname is not NULL
group by posts_1.body, posts_1.ownerdisplayname, posts_1.owneruserid, posts_1.posttypeid, posts_1.title, users_1.aboutme, users_1.creationdate, users_1.id, users_1.location, users_1.websiteurl
limit 37;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    users_3.creationdate), 
  users_3.websiteurl, 
  badges_1.tagbased, 
  users_3.aboutme
from 
  users as users_1
        inner join users as users_2
        on (users_1.id = users_2.id )
      inner join users as users_3
      on (users_1.id = users_3.id )
    inner join badges as badges_1
    on (users_1.id = badges_1.id )
where badges_1.date is not NULL
group by badges_1.tagbased, users_3.aboutme, users_3.websiteurl
limit 37;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.tagbased
from 
  badges as badges_1
where badges_1.tagbased <= badges_1.tagbased
limit 31;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.tagbased, 
  badges_1.name, 
  badges_1.id
from 
  badges as badges_1
where badges_1.class is not NULL
limit 1;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.creationdate, 
  votes_1.id, 
  votes_1.postid, 
  posts_2.contentlicense, 
  posthistory_1.userdisplayname
from 
  users as users_1
        inner join votes as votes_1
        on (users_1.id = votes_1.id )
      inner join posts as posts_1
        inner join users as users_2
        on (posts_1.id = users_2.id )
      on (votes_1.id = posts_1.id )
    inner join posthistory as posthistory_1
      inner join posts as posts_2
      on (posthistory_1.id = posts_2.id )
    on (users_1.id = posts_2.id )
where posthistory_1.userid is not NULL
limit 34;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.relatedpostid, 
  postlinks_1.creationdate
from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
limit 37;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.contentlicense
from 
  comments as comments_1
where comments_1.postid is not NULL
limit 1;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  posts_1.posttypeid, 
  posthistory_1.postid, 
  posthistory_1.comment, 
  posthistory_1.id, 
  posts_1.contentlicense, 
  posts_1.parentid, 
  posthistory_1.userid
from 
  posthistory as posthistory_1
    inner join posts as posts_1
    on (posthistory_1.id = posts_1.id )
where posts_1.id is not NULL
group by posthistory_1.comment, posthistory_1.id, posthistory_1.postid, posthistory_1.userid, posts_1.contentlicense, posts_1.parentid, posts_1.posttypeid
limit 28;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.userid, 
  posthistory_1.userdisplayname, 
  posthistory_1.comment, 
  posthistory_1.postid
from 
  posthistory as posthistory_1
where posthistory_1.creationdate = posthistory_1.creationdate
limit 8;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.userdisplayname
from 
  comments as comments_1
    inner join posthistory as posthistory_1
    on (comments_1.id = posthistory_1.id )
where posthistory_1.creationdate >= comments_1.creationdate
limit 25;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.userid, 
  badges_1.date, 
  badges_1.name, 
  badges_1.class, 
  badges_1.tagbased, 
  count(*)
from 
  badges as badges_1
where badges_1.class is not NULL
group by badges_1.class, badges_1.date, badges_1.name, badges_1.tagbased, badges_1.userid
limit 19;
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.accountid, 
  votes_1.postid, 
  min(
    posts_1.creationdate), 
  users_1.aboutme, 
  users_1.websiteurl, 
  posts_1.title, 
  posthistory_1.userdisplayname, 
  posts_1.creationdate, 
  users_1.profileimageurl, 
  posthistory_1.creationdate, 
  min(
    posthistory_1.creationdate)
from 
  users as users_1
    inner join votes as votes_1
        inner join posts as posts_1
        on (votes_1.id = posts_1.id )
      inner join posthistory as posthistory_1
      on (posts_1.id = posthistory_1.id )
    on (users_1.id = posts_1.id )
where posts_1.body is not NULL
group by posthistory_1.creationdate, posthistory_1.userdisplayname, posts_1.creationdate, posts_1.title, users_1.aboutme, users_1.accountid, users_1.profileimageurl, users_1.websiteurl, votes_1.postid
limit 8;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    comments_1.postid), 
  posts_1.posttypeid, 
  comments_1.userdisplayname
from 
  posts as posts_1
    inner join comments as comments_1
    on (posts_1.id = comments_1.id )
where posts_1.contentlicense = comments_1.contentlicense
group by comments_1.userdisplayname, posts_1.posttypeid
limit 37;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.userid, 
  users_1.id, 
  users_1.accountid, 
  users_1.websiteurl, 
  users_1.profileimageurl, 
  users_1.location, 
  votes_1.votetypeid, 
  votes_1.postid, 
  users_1.creationdate, 
  count(*), 
  sum(
    users_1.id)
from 
  votes as votes_1
    inner join users as users_1
    on (votes_1.id = users_1.id )
where users_1.displayname is not NULL
group by users_1.accountid, users_1.creationdate, users_1.id, users_1.location, users_1.profileimageurl, users_1.websiteurl, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 36;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.creationdate, 
  votes_1.id, 
  votes_1.userid, 
  votes_1.postid, 
  votes_1.votetypeid, 
  sum(
    votes_1.id)
from 
  votes as votes_1
where votes_1.userid is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 22;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.creationdate, 
  postlinks_1.id, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.relatedpostid, 
  postlinks_1.postid
from 
  postlinks as postlinks_1
where postlinks_1.id is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.postid, postlinks_1.relatedpostid
limit 29;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.userid, 
  max(
    badges_1.date), 
  badges_1.class, 
  count(
    badges_1.id)
from 
  badges as badges_1
where badges_1.date is not NULL
group by badges_1.class, badges_1.userid
limit 42;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.contentlicense, 
  comments_1.creationdate, 
  comments_1.id
from 
  comments as comments_1
where comments_1.creationdate <= comments_1.creationdate
limit 13;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.tagbased
from 
  badges as badges_1
where badges_1.class is not NULL
limit 11;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.name
from 
  badges as badges_1
where badges_1.name is not NULL
limit 39;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.owneruserid, 
  count(
    posthistory_1.userid), 
  posts_1.parentid, 
  posthistory_1.revisionguid, 
  posts_1.acceptedanswerid, 
  posthistory_1.comment, 
  posts_1.contentlicense, 
  posthistory_1.creationdate, 
  posts_1.posttypeid, 
  posts_1.id, 
  posthistory_1.userdisplayname
from 
  posthistory as posthistory_1
    inner join posts as posts_1
    on (posthistory_1.id = posts_1.id )
where posts_1.ownerdisplayname <= posts_1.contentlicense
group by posthistory_1.comment, posthistory_1.creationdate, posthistory_1.revisionguid, posthistory_1.userdisplayname, posts_1.acceptedanswerid, posts_1.contentlicense, posts_1.id, posts_1.owneruserid, posts_1.parentid, posts_1.posttypeid
limit 10;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.websiteurl, 
  users_1.profileimageurl, 
  users_1.aboutme, 
  max(
    users_1.creationdate)
from 
  users as users_1
where users_1.aboutme is not NULL
group by users_1.aboutme, users_1.profileimageurl, users_1.websiteurl
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.acceptedanswerid, 
  posts_1.id, 
  min(
    posts_1.creationdate), 
  posts_1.ownerdisplayname, 
  posts_1.creationdate, 
  posts_1.tags, 
  posts_1.parentid, 
  min(
    posts_1.creationdate)
from 
  posts as posts_1
where posts_1.body is not NULL
group by posts_1.acceptedanswerid, posts_1.creationdate, posts_1.id, posts_1.ownerdisplayname, posts_1.parentid, posts_1.tags
limit 16;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.creationdate
from 
  users as users_1
where users_1.accountid is not NULL
limit 13;
-- meta {"num_joins":2,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_2.postid, 
  max(
    postlinks_1.creationdate), 
  postlinks_2.id, 
  postlinks_1.id, 
  postlinks_1.relatedpostid, 
  votes_1.postid, 
  votes_1.votetypeid, 
  avg(
    postlinks_1.postid), 
  votes_1.id, 
  postlinks_2.creationdate, 
  postlinks_2.relatedpostid, 
  min(
    votes_1.creationdate), 
  votes_1.creationdate, 
  postlinks_1.postid, 
  count(*)
from 
  postlinks as postlinks_1
      inner join postlinks as postlinks_2
      on (postlinks_1.id = postlinks_2.id )
    inner join votes as votes_1
    on (postlinks_1.id = votes_1.id )
where votes_1.userid is not NULL
group by postlinks_1.id, postlinks_1.postid, postlinks_1.relatedpostid, postlinks_2.creationdate, postlinks_2.id, postlinks_2.postid, postlinks_2.relatedpostid, votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.votetypeid
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.userid, 
  max(
    votes_1.creationdate), 
  votes_1.postid
from 
  votes as votes_1
where votes_1.creationdate is not NULL
group by votes_1.postid, votes_1.userid
limit 42;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.class, 
  badges_1.date, 
  badges_1.name, 
  count(
    badges_1.class), 
  badges_1.tagbased
from 
  badges as badges_1
where badges_1.userid is not NULL
group by badges_1.class, badges_1.date, badges_1.name, badges_1.tagbased
limit 16;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.revisionguid, 
  posthistory_1.creationdate, 
  posthistory_1.userid, 
  count(
    posthistory_1.contentlicense), 
  posthistory_1.text, 
  min(
    posthistory_1.creationdate), 
  min(
    posthistory_1.creationdate), 
  posthistory_1.userdisplayname
from 
  posthistory as posthistory_1
where posthistory_1.text is not NULL
group by posthistory_1.creationdate, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userdisplayname, posthistory_1.userid
limit 34;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.postid
from 
  votes as votes_1
where votes_1.userid is not NULL
limit 6;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    posts_1.acceptedanswerid), 
  posts_1.ownerdisplayname, 
  posts_1.acceptedanswerid, 
  max(
    posts_1.creationdate), 
  posts_1.id
from 
  posts as posts_1
where posts_1.creationdate < posts_1.creationdate
group by posts_1.acceptedanswerid, posts_1.id, posts_1.ownerdisplayname
limit 11;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    badges_1.class), 
  badges_1.date, 
  badges_1.tagbased
from 
  badges as badges_1
    inner join posts as posts_1
    on (badges_1.id = posts_1.id )
where badges_1.tagbased is not NULL
group by badges_1.date, badges_1.tagbased
limit 40;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.creationdate
from 
  users as users_1
where users_1.location is not NULL
limit 29;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.id, 
  avg(
    comments_1.id)
from 
  comments as comments_1
    inner join users as users_1
    on (comments_1.id = users_1.id )
where users_1.aboutme is not NULL
group by users_1.id
limit 9;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.votetypeid, 
  votes_1.postid, 
  min(
    votes_1.creationdate), 
  min(
    votes_1.creationdate), 
  max(
    votes_1.creationdate), 
  votes_1.id
from 
  votes as votes_1
where votes_1.userid is not NULL
group by votes_1.id, votes_1.postid, votes_1.votetypeid
limit 18;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.websiteurl, 
  comments_1.postid, 
  badges_1.id
from 
  comments as comments_1
        inner join comments as comments_2
        on (comments_1.id = comments_2.id )
      inner join postlinks as postlinks_1
      on (comments_2.id = postlinks_1.id )
    inner join users as users_1
        inner join badges as badges_1
        on (users_1.id = badges_1.id )
      inner join posthistory as posthistory_1
      on (users_1.id = posthistory_1.id )
    on (comments_1.id = badges_1.id )
where posthistory_1.id is not NULL
limit 38;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.accountid, 
  postlinks_1.relatedpostid, 
  posts_1.body, 
  users_1.aboutme, 
  postlinks_1.id, 
  max(
    posts_1.parentid), 
  count(*), 
  postlinks_1.postid
from 
  posts as posts_1
      inner join postlinks as postlinks_1
      on (posts_1.id = postlinks_1.id )
    inner join users as users_1
    on (posts_1.id = users_1.id )
where users_1.websiteurl is not NULL
group by postlinks_1.id, postlinks_1.postid, postlinks_1.relatedpostid, posts_1.body, users_1.aboutme, users_1.accountid
limit 39;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.userid, 
  comments_1.creationdate, 
  comments_1.userdisplayname, 
  comments_1.text, 
  comments_1.id
from 
  comments as comments_1
where comments_1.creationdate <= comments_1.creationdate
limit 25;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.userdisplayname, 
  comments_1.creationdate, 
  posts_1.owneruserid, 
  comments_1.postid
from 
  posts as posts_1
      inner join users as users_1
      on (posts_1.id = users_1.id )
    inner join postlinks as postlinks_1
      inner join comments as comments_1
        inner join posts as posts_2
        on (comments_1.id = posts_2.id )
      on (postlinks_1.id = comments_1.id )
    on (posts_1.id = postlinks_1.id )
where comments_1.creationdate is not NULL
limit 24;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.id, 
  votes_1.postid, 
  min(
    postlinks_1.creationdate)
from 
  votes as votes_1
      inner join postlinks as postlinks_1
      on (votes_1.id = postlinks_1.id )
    inner join postlinks as postlinks_2
    on (votes_1.id = postlinks_2.id )
where postlinks_2.id is not NULL
group by votes_1.id, votes_1.postid
limit 34;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    comments_1.creationdate), 
  comments_1.contentlicense, 
  comments_1.postid, 
  comments_1.id, 
  comments_1.text, 
  comments_1.userdisplayname, 
  max(
    comments_1.creationdate), 
  avg(
    comments_1.userid), 
  avg(
    comments_1.userid)
from 
  comments as comments_1
where comments_1.creationdate is not NULL
group by comments_1.contentlicense, comments_1.id, comments_1.postid, comments_1.text, comments_1.userdisplayname
limit 11;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.creationdate, 
  posts_1.tags, 
  posts_1.id
from 
  posts as posts_1
where posts_1.contentlicense <= posts_1.body
limit 21;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.parentid, 
  posts_1.ownerdisplayname, 
  posts_1.owneruserid, 
  posts_1.id, 
  posts_1.contentlicense
from 
  posts as posts_1
where posts_1.creationdate >= posts_1.creationdate
limit 3;
-- meta {"num_joins":3,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    votes_1.userid), 
  votes_2.creationdate, 
  votes_2.votetypeid, 
  votes_1.postid, 
  avg(
    votes_2.postid), 
  count(*), 
  users_1.creationdate, 
  users_1.id, 
  votes_2.id, 
  votes_1.userid, 
  users_1.websiteurl, 
  votes_1.creationdate
from 
  votes as votes_1
      inner join postlinks as postlinks_1
      on (votes_1.id = postlinks_1.id )
    inner join users as users_1
      inner join votes as votes_2
      on (users_1.id = votes_2.id )
    on (votes_1.id = votes_2.id )
where postlinks_1.postid is not NULL
group by users_1.creationdate, users_1.id, users_1.websiteurl, votes_1.creationdate, votes_1.postid, votes_1.userid, votes_2.creationdate, votes_2.id, votes_2.votetypeid
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.contentlicense, 
  min(
    comments_1.creationdate)
from 
  comments as comments_1
where comments_1.creationdate is not NULL
group by comments_1.contentlicense
limit 29;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.votetypeid, 
  votes_1.userid, 
  votes_1.creationdate, 
  min(
    votes_1.creationdate), 
  votes_1.postid, 
  votes_1.id
from 
  votes as votes_1
where votes_1.creationdate is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 10;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.relatedpostid
from 
  votes as votes_1
      inner join postlinks as postlinks_1
      on (votes_1.id = postlinks_1.id )
    inner join posts as posts_1
    on (votes_1.id = posts_1.id )
where posts_1.id is not NULL
limit 38;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.name, 
  badges_1.tagbased, 
  badges_1.userid, 
  max(
    badges_1.date), 
  badges_1.date
from 
  badges as badges_1
where badges_1.date <= badges_1.date
group by badges_1.date, badges_1.name, badges_1.tagbased, badges_1.userid
limit 8;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.postid, 
  votes_1.userid
from 
  votes as votes_1
where votes_1.postid is not NULL
limit 35;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.accountid
from 
  users as users_1
where users_1.creationdate <= users_1.creationdate
limit 10;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.class, 
  count(*), 
  badges_1.name, 
  badges_1.id, 
  badges_1.tagbased
from 
  badges as badges_1
where badges_1.name <= badges_1.name
group by badges_1.class, badges_1.id, badges_1.name, badges_1.tagbased
limit 9;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.comment, 
  posthistory_1.contentlicense, 
  posthistory_1.id, 
  posthistory_1.postid
from 
  posthistory as posthistory_1
where posthistory_1.creationdate > posthistory_1.creationdate
limit 41;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    badges_1.date), 
  comments_1.contentlicense, 
  votes_2.userid
from 
  votes as votes_1
        inner join badges as badges_1
        on (votes_1.id = badges_1.id )
      inner join comments as comments_1
      on (badges_1.id = comments_1.id )
    inner join votes as votes_2
    on (badges_1.id = votes_2.id )
where comments_1.contentlicense is not NULL
group by comments_1.contentlicense, votes_2.userid
limit 14;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.linktypeid, 
  postlinks_2.id
from 
  postlinks as postlinks_1
      inner join posts as posts_1
      on (postlinks_1.id = posts_1.id )
    inner join votes as votes_1
      inner join users as users_1
        inner join postlinks as postlinks_2
        on (users_1.id = postlinks_2.id )
      on (votes_1.id = postlinks_2.id )
    on (posts_1.id = users_1.id )
where postlinks_1.linktypeid is not NULL
limit 15;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.userid, 
  votes_1.id, 
  votes_1.votetypeid, 
  votes_1.postid, 
  votes_1.creationdate, 
  min(
    votes_1.creationdate)
from 
  votes as votes_1
where votes_1.creationdate is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 34;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.aboutme, 
  count(*), 
  posthistory_1.id, 
  users_1.accountid
from 
  users as users_1
    inner join posthistory as posthistory_1
    on (users_1.id = posthistory_1.id )
where users_1.displayname is not NULL
group by posthistory_1.id, users_1.aboutme, users_1.accountid
limit 19;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    comments_1.id), 
  comments_1.userid, 
  comments_1.userdisplayname, 
  max(
    comments_1.creationdate), 
  comments_1.text, 
  comments_1.id, 
  comments_1.contentlicense, 
  avg(
    comments_1.postid)
from 
  comments as comments_1
where comments_1.contentlicense < comments_1.userdisplayname
group by comments_1.contentlicense, comments_1.id, comments_1.text, comments_1.userdisplayname, comments_1.userid
limit 12;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.id, 
  posthistory_1.comment, 
  posthistory_1.userid, 
  posthistory_1.creationdate, 
  max(
    posthistory_1.creationdate), 
  posthistory_1.revisionguid, 
  posthistory_1.contentlicense, 
  posthistory_1.postid, 
  posthistory_1.userdisplayname, 
  posthistory_1.text
from 
  posthistory as posthistory_1
where posthistory_1.postid is not NULL
group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.id, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userdisplayname, posthistory_1.userid
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    posts_1.parentid), 
  posts_1.title, 
  posts_1.creationdate, 
  posts_1.tags
from 
  posts as posts_1
where posts_1.tags is not NULL
group by posts_1.creationdate, posts_1.tags, posts_1.title
limit 25;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.userid, 
  posts_1.parentid, 
  posts_1.body, 
  posts_2.id, 
  posts_1.title, 
  posts_2.posttypeid, 
  posts_1.ownerdisplayname, 
  posthistory_1.creationdate
from 
  posthistory as posthistory_1
    inner join posts as posts_1
      inner join posts as posts_2
      on (posts_1.id = posts_2.id )
    on (posthistory_1.id = posts_1.id )
where posthistory_1.contentlicense is not NULL
limit 8;
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.websiteurl, 
  comments_1.userid, 
  votes_1.id, 
  votes_1.creationdate, 
  votes_1.votetypeid, 
  comments_1.creationdate, 
  min(
    users_1.creationdate), 
  users_1.id, 
  votes_1.postid, 
  min(
    votes_1.creationdate), 
  comments_1.contentlicense, 
  min(
    users_1.creationdate)
from 
  votes as votes_1
      inner join users as users_1
      on (votes_1.id = users_1.id )
    inner join comments as comments_1
    on (users_1.id = comments_1.id )
where comments_1.userdisplayname is not NULL
group by comments_1.contentlicense, comments_1.creationdate, comments_1.userid, users_1.id, users_1.websiteurl, votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.votetypeid
limit 10;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.postid, 
  votes_1.creationdate, 
  votes_1.votetypeid, 
  max(
    votes_1.postid)
from 
  votes as votes_1
where votes_1.userid is not NULL
group by votes_1.creationdate, votes_1.postid, votes_1.votetypeid
limit 19;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.id
from 
  posts as posts_1
    inner join postlinks as postlinks_1
      inner join users as users_1
      on (postlinks_1.id = users_1.id )
    on (posts_1.id = postlinks_1.id )
where users_1.location is not NULL
limit 19;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.tagbased, 
  min(
    badges_1.date), 
  badges_1.userid, 
  badges_1.id, 
  count(*)
from 
  badges as badges_1
where badges_1.id is not NULL
group by badges_1.id, badges_1.tagbased, badges_1.userid
limit 3;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.contentlicense
from 
  posthistory as posthistory_1
      inner join posthistory as posthistory_2
      on (posthistory_1.id = posthistory_2.id )
    inner join badges as badges_1
    on (posthistory_2.id = badges_1.id )
where badges_1.date is not NULL
limit 29;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    posts_1.parentid), 
  posts_1.owneruserid
from 
  posts as posts_1
where posts_1.creationdate < posts_1.creationdate
group by posts_1.owneruserid
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.contentlicense
from 
  posthistory as posthistory_1
where posthistory_1.id is not NULL
limit 32;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.date, 
  users_1.id, 
  users_1.profileimageurl
from 
  badges as badges_1
    inner join users as users_1
    on (badges_1.id = users_1.id )
where badges_1.userid < users_1.profileimageurl
limit 36;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.postid
from 
  users as users_1
    inner join comments as comments_1
      inner join posts as posts_1
        inner join postlinks as postlinks_1
          inner join postlinks as postlinks_2
          on (postlinks_1.id = postlinks_2.id )
        on (posts_1.id = postlinks_1.id )
      on (comments_1.id = posts_1.id )
    on (users_1.id = posts_1.id )
where postlinks_2.linktypeid is not NULL
limit 18;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.id, 
  votes_1.userid, 
  votes_1.id, 
  postlinks_1.creationdate, 
  votes_1.creationdate, 
  postlinks_1.relatedpostid
from 
  votes as votes_1
    inner join postlinks as postlinks_1
    on (votes_1.id = postlinks_1.id )
where votes_1.userid is not NULL
limit 5;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.userid, 
  avg(
    posthistory_1.postid), 
  posthistory_1.creationdate, 
  min(
    posthistory_1.creationdate), 
  posthistory_1.id
from 
  posthistory as posthistory_1
where posthistory_1.posthistorytypeid is not NULL
group by posthistory_1.creationdate, posthistory_1.id, posthistory_1.userid
limit 36;
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    users_1.id), 
  posthistory_1.postid, 
  min(
    users_1.creationdate), 
  posthistory_1.id
from 
  posthistory as posthistory_1
        inner join users as users_1
        on (posthistory_1.id = users_1.id )
      inner join posts as posts_1
      on (posthistory_1.id = posts_1.id )
    inner join users as users_2
    on (users_1.id = users_2.id )
where posthistory_1.creationdate < posts_1.creationdate
group by posthistory_1.id, posthistory_1.postid
limit 37;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.postid, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.creationdate, 
  posthistory_1.userid
from 
  posthistory as posthistory_1
    inner join comments as comments_1
    on (posthistory_1.id = comments_1.id )
where comments_1.text is not NULL
limit 8;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.votetypeid
from 
  votes as votes_1
where votes_1.id <= votes_1.postid
limit 35;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.userid, 
  posts_1.id, 
  posts_1.posttypeid, 
  posts_1.tags, 
  avg(
    posthistory_1.postid), 
  min(
    posts_1.owneruserid), 
  posthistory_1.revisionguid
from 
  posthistory as posthistory_1
    inner join posts as posts_1
    on (posthistory_1.id = posts_1.id )
where posts_1.owneruserid > posthistory_1.posthistorytypeid
group by posthistory_1.revisionguid, posthistory_1.userid, posts_1.id, posts_1.posttypeid, posts_1.tags
limit 10;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.id, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.postid, 
  postlinks_1.id, 
  postlinks_1.relatedpostid
from 
  posthistory as posthistory_1
    inner join postlinks as postlinks_1
    on (posthistory_1.id = postlinks_1.id )
where posthistory_1.contentlicense = posthistory_1.revisionguid
limit 30;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    comments_1.creationdate)
from 
  comments as comments_1
where comments_1.postid is not NULL
limit 33;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.class, 
  postlinks_1.linktypeid, 
  max(
    postlinks_1.creationdate), 
  max(
    badges_1.date), 
  badges_1.tagbased
from 
  postlinks as postlinks_1
    inner join badges as badges_1
    on (postlinks_1.id = badges_1.id )
where badges_1.name is not NULL
group by badges_1.class, badges_1.tagbased, postlinks_1.linktypeid
limit 40;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.userdisplayname, 
  comments_1.creationdate, 
  posthistory_1.comment, 
  sum(
    posts_1.owneruserid)
from 
  posts as posts_1
      inner join postlinks as postlinks_1
      on (posts_1.id = postlinks_1.id )
    inner join comments as comments_1
      inner join posthistory as posthistory_1
      on (comments_1.id = posthistory_1.id )
    on (posts_1.id = posthistory_1.id )
where comments_1.creationdate < posthistory_1.creationdate
group by comments_1.creationdate, comments_1.userdisplayname, posthistory_1.comment
limit 12;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.tags
from 
  posts as posts_1
where posts_1.tags is not NULL
limit 12;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.body, 
  posts_1.creationdate
from 
  posts as posts_1
where posts_1.contentlicense is not NULL
limit 10;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.userid, 
  max(
    votes_1.userid), 
  max(
    votes_1.creationdate), 
  votes_1.id, 
  votes_1.creationdate, 
  votes_1.votetypeid
from 
  votes as votes_1
where votes_1.creationdate is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.userid, votes_1.votetypeid
limit 5;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.creationdate, 
  min(
    users_1.creationdate), 
  users_1.id
from 
  users as users_1
where users_1.displayname is not NULL
group by users_1.creationdate, users_1.id
limit 41;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    posthistory_1.creationdate), 
  posthistory_1.id, 
  posthistory_1.posthistorytypeid
from 
  posthistory as posthistory_1
    inner join badges as badges_1
    on (posthistory_1.id = badges_1.id )
where badges_1.id is not NULL
group by posthistory_1.id, posthistory_1.posthistorytypeid
limit 5;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.votetypeid, 
  votes_1.userid, 
  votes_1.creationdate, 
  max(
    votes_1.postid), 
  max(
    votes_1.creationdate), 
  votes_1.id
from 
  votes as votes_1
where votes_1.creationdate is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.userid, votes_1.votetypeid
limit 35;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.displayname, 
  min(
    users_1.creationdate), 
  users_1.websiteurl, 
  users_1.id
from 
  users as users_1
where users_1.creationdate > users_1.creationdate
group by users_1.displayname, users_1.id, users_1.websiteurl
limit 14;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  posthistory_1.comment, 
  posthistory_1.text, 
  sum(
    posthistory_1.posthistorytypeid), 
  posthistory_1.revisionguid, 
  min(
    posthistory_1.postid), 
  count(*), 
  posthistory_1.creationdate
from 
  posthistory as posthistory_1
where posthistory_1.creationdate < posthistory_1.creationdate
group by posthistory_1.comment, posthistory_1.creationdate, posthistory_1.revisionguid, posthistory_1.text
limit 10;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.text
from 
  comments as comments_1
      inner join posthistory as posthistory_1
      on (comments_1.id = posthistory_1.id )
    inner join comments as comments_2
    on (comments_1.id = comments_2.id )
where posthistory_1.userid is not NULL
limit 16;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.votetypeid, 
  avg(
    votes_1.userid), 
  votes_1.id, 
  votes_1.creationdate
from 
  votes as votes_1
where votes_1.creationdate is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.votetypeid
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.id, 
  users_1.websiteurl, 
  users_1.displayname, 
  users_1.profileimageurl, 
  users_1.creationdate, 
  max(
    users_1.creationdate)
from 
  users as users_1
where users_1.profileimageurl is not NULL
group by users_1.creationdate, users_1.displayname, users_1.id, users_1.profileimageurl, users_1.websiteurl
limit 33;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.postid, 
  min(
    postlinks_1.creationdate), 
  postlinks_1.linktypeid
from 
  postlinks as postlinks_1
where postlinks_1.linktypeid >= postlinks_1.id
group by postlinks_1.linktypeid, postlinks_1.postid
limit 35;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    posthistory_1.creationdate), 
  posthistory_1.contentlicense, 
  posthistory_1.id, 
  count(
    posthistory_1.userid), 
  posts_1.title, 
  count(
    posthistory_1.text), 
  posts_1.creationdate, 
  posts_1.acceptedanswerid, 
  posthistory_1.userdisplayname
from 
  posts as posts_1
    inner join posthistory as posthistory_1
    on (posts_1.id = posthistory_1.id )
where posts_1.body is not NULL
group by posthistory_1.contentlicense, posthistory_1.id, posthistory_1.userdisplayname, posts_1.acceptedanswerid, posts_1.creationdate, posts_1.title
limit 11;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.profileimageurl, 
  users_1.displayname, 
  users_1.accountid, 
  users_1.location
from 
  users as users_1
where users_1.websiteurl is not NULL
limit 11;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.creationdate, 
  posthistory_1.userdisplayname
from 
  users as users_1
    inner join users as users_2
      inner join posthistory as posthistory_1
      on (users_2.id = posthistory_1.id )
    on (users_1.id = users_2.id )
where posthistory_1.posthistorytypeid >= users_1.accountid
limit 26;
-- meta {"num_joins":0,"num_aggregates":7,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    posthistory_1.id), 
  posthistory_1.userdisplayname, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.revisionguid, 
  avg(
    posthistory_1.postid), 
  posthistory_1.comment, 
  posthistory_1.userid, 
  max(
    posthistory_1.creationdate), 
  posthistory_1.text, 
  count(
    posthistory_1.contentlicense), 
  posthistory_1.id, 
  posthistory_1.creationdate, 
  posthistory_1.postid, 
  min(
    posthistory_1.creationdate), 
  count(
    posthistory_1.revisionguid), 
  count(
    posthistory_1.postid)
from 
  posthistory as posthistory_1
where posthistory_1.userid is not NULL
group by posthistory_1.comment, posthistory_1.creationdate, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userdisplayname, posthistory_1.userid
limit 38;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.comment
from 
  posthistory as posthistory_1
where posthistory_1.contentlicense is not NULL
limit 42;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.postid
from 
  comments as comments_1
    inner join votes as votes_1
    on (comments_1.id = votes_1.id )
where comments_1.text is not NULL
limit 13;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.id, 
  posts_1.contentlicense, 
  posts_1.ownerdisplayname, 
  min(
    posts_1.creationdate)
from 
  posts as posts_1
where posts_1.creationdate is not NULL
group by posts_1.contentlicense, posts_1.id, posts_1.ownerdisplayname
limit 33;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.parentid, 
  posts_1.posttypeid
from 
  posts as posts_1
where posts_1.tags is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.tagbased
from 
  votes as votes_1
    inner join badges as badges_1
    on (votes_1.id = badges_1.id )
where votes_1.postid is not NULL
limit 18;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    users_1.profileimageurl), 
  users_1.websiteurl, 
  users_1.profileimageurl
from 
  users as users_1
where users_1.id is not NULL
group by users_1.profileimageurl, users_1.websiteurl
limit 24;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.creationdate, 
  posts_1.tags
from 
  posts as posts_1
where posts_1.acceptedanswerid is not NULL
limit 6;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.votetypeid, 
  sum(
    comments_1.id)
from 
  badges as badges_1
    inner join badges as badges_2
        inner join comments as comments_1
        on (badges_2.id = comments_1.id )
      inner join postlinks as postlinks_1
        inner join votes as votes_1
        on (postlinks_1.id = votes_1.id )
      on (badges_2.id = postlinks_1.id )
    on (badges_1.id = comments_1.id )
where votes_1.votetypeid is not NULL
group by votes_1.votetypeid
limit 36;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.postid, 
  postlinks_1.linktypeid
from 
  postlinks as postlinks_1
where postlinks_1.id is not NULL
limit 29;
-- meta {"num_joins":1,"num_aggregates":6,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.creationdate, 
  max(
    votes_1.creationdate), 
  users_1.displayname, 
  users_1.profileimageurl, 
  users_1.websiteurl, 
  users_1.location, 
  votes_1.id, 
  max(
    votes_1.creationdate), 
  users_1.id, 
  max(
    users_1.creationdate), 
  users_1.creationdate, 
  min(
    votes_1.creationdate), 
  users_1.accountid, 
  max(
    users_1.accountid), 
  votes_1.userid, 
  users_1.aboutme, 
  min(
    users_1.id)
from 
  users as users_1
    inner join votes as votes_1
    on (users_1.id = votes_1.id )
where votes_1.userid is not NULL
group by users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.displayname, users_1.id, users_1.location, users_1.profileimageurl, users_1.websiteurl, votes_1.creationdate, votes_1.id, votes_1.userid
limit 35;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_2.ownerdisplayname, 
  posts_2.acceptedanswerid, 
  count(
    posts_3.acceptedanswerid), 
  posts_2.body, 
  posts_2.parentid, 
  posts_2.title, 
  posts_3.id
from 
  posts as posts_1
    inner join posts as posts_2
      inner join posts as posts_3
      on (posts_2.id = posts_3.id )
    on (posts_1.id = posts_3.id )
where posts_2.acceptedanswerid < posts_2.owneruserid
group by posts_2.acceptedanswerid, posts_2.body, posts_2.ownerdisplayname, posts_2.parentid, posts_2.title, posts_3.id
limit 23;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.userid, 
  users_1.websiteurl, 
  users_1.aboutme
from 
  users as users_1
    inner join badges as badges_1
    on (users_1.id = badges_1.id )
where users_1.websiteurl <= users_1.displayname
limit 32;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.userdisplayname, 
  max(
    comments_1.id), 
  comments_1.id
from 
  comments as comments_1
where comments_1.userid is not NULL
group by comments_1.id, comments_1.userdisplayname
limit 10;
-- meta {"num_joins":4,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.creationdate, 
  postlinks_1.linktypeid, 
  posthistory_1.contentlicense, 
  max(
    badges_1.date), 
  max(
    votes_1.creationdate)
from 
  comments as comments_1
    inner join posthistory as posthistory_1
        inner join postlinks as postlinks_1
          inner join badges as badges_1
          on (postlinks_1.id = badges_1.id )
        on (posthistory_1.id = postlinks_1.id )
      inner join votes as votes_1
      on (postlinks_1.id = votes_1.id )
    on (comments_1.id = badges_1.id )
where badges_1.userid is not NULL
group by posthistory_1.contentlicense, postlinks_1.creationdate, postlinks_1.linktypeid
limit 22;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.id, 
  comments_1.contentlicense, 
  votes_1.creationdate, 
  votes_1.votetypeid
from 
  comments as comments_1
      inner join posthistory as posthistory_1
          inner join comments as comments_2
          on (posthistory_1.id = comments_2.id )
        inner join votes as votes_1
        on (posthistory_1.id = votes_1.id )
      on (comments_1.id = votes_1.id )
    inner join users as users_1
    on (posthistory_1.id = users_1.id )
where votes_1.userid is not NULL
limit 42;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.postid
from 
  badges as badges_1
    inner join postlinks as postlinks_1
      inner join votes as votes_1
      on (postlinks_1.id = votes_1.id )
    on (badges_1.id = postlinks_1.id )
where postlinks_1.creationdate > badges_1.date
limit 16;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    users_1.creationdate), 
  max(
    users_1.creationdate), 
  users_1.profileimageurl, 
  users_1.websiteurl, 
  users_1.creationdate
from 
  users as users_1
where users_1.profileimageurl = users_1.accountid
group by users_1.creationdate, users_1.profileimageurl, users_1.websiteurl
limit 33;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.websiteurl, 
  posthistory_1.id
from 
  users as users_1
        inner join comments as comments_1
        on (users_1.id = comments_1.id )
      inner join posthistory as posthistory_1
      on (users_1.id = posthistory_1.id )
    inner join users as users_2
    on (posthistory_1.id = users_2.id )
where users_1.profileimageurl > comments_1.postid
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.ownerdisplayname
from 
  posts as posts_1
where posts_1.tags is not NULL
limit 7;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.creationdate, 
  posthistory_1.contentlicense, 
  posthistory_1.revisionguid, 
  posthistory_1.userid, 
  max(
    posthistory_1.creationdate), 
  posthistory_1.text, 
  max(
    posthistory_1.creationdate), 
  sum(
    posthistory_1.posthistorytypeid), 
  posthistory_1.userdisplayname, 
  posthistory_1.posthistorytypeid, 
  min(
    posthistory_1.creationdate), 
  posthistory_1.postid, 
  posthistory_1.id
from 
  posthistory as posthistory_1
where posthistory_1.posthistorytypeid is not NULL
group by posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userdisplayname, posthistory_1.userid
limit 24;
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    votes_1.userid), 
  comments_1.creationdate, 
  votes_1.postid, 
  min(
    posthistory_1.creationdate), 
  votes_1.creationdate, 
  votes_1.userid, 
  posthistory_1.contentlicense, 
  count(*)
from 
  posthistory as posthistory_1
      inner join votes as votes_1
      on (posthistory_1.id = votes_1.id )
    inner join comments as comments_1
    on (votes_1.id = comments_1.id )
where posthistory_1.creationdate > comments_1.creationdate
group by comments_1.creationdate, posthistory_1.contentlicense, votes_1.creationdate, votes_1.postid, votes_1.userid
limit 14;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  comments_1.userid, 
  comments_1.userdisplayname
from 
  comments as comments_1
where comments_1.creationdate is not NULL
group by comments_1.userdisplayname, comments_1.userid
limit 35;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.title
from 
  posts as posts_1
      inner join postlinks as postlinks_1
      on (posts_1.id = postlinks_1.id )
    inner join comments as comments_1
    on (postlinks_1.id = comments_1.id )
where posts_1.parentid is not NULL
limit 34;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.date, 
  badges_1.tagbased, 
  min(
    badges_1.userid), 
  max(
    badges_1.id)
from 
  badges as badges_1
where badges_1.date <= badges_1.date
group by badges_1.date, badges_1.tagbased
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.websiteurl
from 
  users as users_1
where users_1.location = users_1.aboutme
limit 27;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.postid, 
  postlinks_1.relatedpostid, 
  postlinks_2.creationdate
from 
  postlinks as postlinks_1
    inner join votes as votes_1
      inner join postlinks as postlinks_2
      on (votes_1.id = postlinks_2.id )
    on (postlinks_1.id = votes_1.id )
where postlinks_1.creationdate is not NULL
limit 21;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_2.relatedpostid, 
  postlinks_1.relatedpostid, 
  sum(
    postlinks_1.linktypeid), 
  postlinks_2.linktypeid
from 
  comments as comments_1
      inner join postlinks as postlinks_1
      on (comments_1.id = postlinks_1.id )
    inner join postlinks as postlinks_2
    on (postlinks_1.id = postlinks_2.id )
where postlinks_2.relatedpostid is not NULL
group by postlinks_1.relatedpostid, postlinks_2.linktypeid, postlinks_2.relatedpostid
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.class, 
  badges_1.tagbased, 
  badges_1.id
from 
  badges as badges_1
where badges_1.class is not NULL
limit 16;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.linktypeid, 
  postlinks_1.id
from 
  postlinks as postlinks_1
where postlinks_1.creationdate > postlinks_1.creationdate
limit 17;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.userid, 
  min(
    votes_1.creationdate), 
  posthistory_1.revisionguid, 
  posthistory_1.userdisplayname, 
  votes_1.votetypeid, 
  count(
    posthistory_1.userid), 
  votes_1.postid, 
  votes_1.userid, 
  votes_1.id, 
  posthistory_1.posthistorytypeid, 
  min(
    posthistory_1.creationdate), 
  posthistory_1.id, 
  votes_1.creationdate
from 
  posthistory as posthistory_1
    inner join votes as votes_1
    on (posthistory_1.id = votes_1.id )
where posthistory_1.userid is not NULL
group by posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.revisionguid, posthistory_1.userdisplayname, posthistory_1.userid, votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 8;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.postid, 
  users_1.displayname, 
  votes_1.id
from 
  votes as votes_1
    inner join users as users_1
    on (votes_1.id = users_1.id )
where votes_1.creationdate is not NULL
limit 33;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.comment, 
  posthistory_1.revisionguid, 
  posthistory_1.userdisplayname, 
  max(
    posthistory_1.id), 
  posthistory_1.posthistorytypeid, 
  posthistory_1.postid, 
  posthistory_1.creationdate, 
  posthistory_1.id, 
  posthistory_1.userid
from 
  posthistory as posthistory_1
where posthistory_1.userid is not NULL
group by posthistory_1.comment, posthistory_1.creationdate, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.userdisplayname, posthistory_1.userid
limit 16;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.postid
from 
  users as users_1
    inner join posthistory as posthistory_1
    on (users_1.id = posthistory_1.id )
where users_1.displayname is not NULL
limit 13;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_2.postid, 
  postlinks_1.linktypeid, 
  comments_1.contentlicense, 
  postlinks_1.id
from 
  comments as comments_1
      inner join postlinks as postlinks_1
      on (comments_1.id = postlinks_1.id )
    inner join postlinks as postlinks_2
      inner join postlinks as postlinks_3
      on (postlinks_2.id = postlinks_3.id )
    on (comments_1.id = postlinks_2.id )
where comments_1.userdisplayname is not NULL
limit 13;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.comment, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.text, 
  posthistory_1.postid
from 
  posthistory as posthistory_1
where posthistory_1.posthistorytypeid is not NULL
limit 23;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.title, 
  posts_1.owneruserid
from 
  posts as posts_1
where posts_1.acceptedanswerid is not NULL
limit 29;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.tagbased
from 
  badges as badges_1
where badges_1.tagbased is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.revisionguid, 
  posthistory_1.text, 
  min(
    posthistory_1.creationdate), 
  max(
    posthistory_1.creationdate), 
  posthistory_1.posthistorytypeid, 
  posthistory_1.postid, 
  max(
    posthistory_1.creationdate)
from 
  posthistory as posthistory_1
where posthistory_1.posthistorytypeid is not NULL
group by posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.text
limit 29;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_2.location, 
  postlinks_1.creationdate
from 
  users as users_1
      inner join postlinks as postlinks_1
      on (users_1.id = postlinks_1.id )
    inner join users as users_2
    on (users_1.id = users_2.id )
where users_2.accountid is not NULL
limit 25;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    votes_1.creationdate), 
  votes_1.creationdate, 
  votes_1.votetypeid
from 
  votes as votes_1
where votes_1.id is not NULL
group by votes_1.creationdate, votes_1.votetypeid
limit 34;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.votetypeid, 
  votes_1.postid
from 
  votes as votes_1
where votes_1.userid <= votes_1.id
limit 13;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.creationdate
from 
  votes as votes_1
where votes_1.userid is not NULL
limit 14;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.id
from 
  votes as votes_1
where votes_1.id is not NULL
limit 10;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.tagbased, 
  badges_1.class, 
  sum(
    badges_1.class)
from 
  badges as badges_1
where badges_1.date >= badges_1.date
group by badges_1.class, badges_1.tagbased
limit 20;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.id, 
  badges_1.userid, 
  min(
    users_1.creationdate), 
  users_1.aboutme, 
  badges_1.tagbased, 
  max(
    users_1.profileimageurl)
from 
  badges as badges_1
    inner join users as users_1
    on (badges_1.id = users_1.id )
where users_1.accountid < badges_1.id
group by badges_1.id, badges_1.tagbased, badges_1.userid, users_1.aboutme
limit 8;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.contentlicense, 
  comments_1.userdisplayname, 
  comments_1.text, 
  comments_1.postid
from 
  comments as comments_1
where comments_1.contentlicense is not NULL
limit 31;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.displayname
from 
  users as users_1
    inner join comments as comments_1
    on (users_1.id = comments_1.id )
where comments_1.id is not NULL
limit 5;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    posts_1.owneruserid), 
  sum(
    posts_1.id)
from 
  users as users_1
    inner join posts as posts_1
    on (users_1.id = posts_1.id )
where posts_1.parentid is not NULL
limit 23;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.owneruserid
from 
  postlinks as postlinks_1
          inner join posthistory as posthistory_1
          on (postlinks_1.id = posthistory_1.id )
        inner join posthistory as posthistory_2
        on (posthistory_1.id = posthistory_2.id )
      inner join badges as badges_1
      on (postlinks_1.id = badges_1.id )
    inner join posthistory as posthistory_3
      inner join posts as posts_1
      on (posthistory_3.id = posts_1.id )
    on (postlinks_1.id = posts_1.id )
where posthistory_3.text = posthistory_2.text
limit 5;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.aboutme, 
  users_1.profileimageurl, 
  posts_1.ownerdisplayname, 
  users_1.location, 
  posts_1.parentid, 
  users_1.accountid, 
  posts_1.contentlicense, 
  avg(
    users_1.accountid), 
  posts_1.id, 
  posts_1.tags
from 
  posts as posts_1
    inner join users as users_1
    on (posts_1.id = users_1.id )
where users_1.location is not NULL
group by posts_1.contentlicense, posts_1.id, posts_1.ownerdisplayname, posts_1.parentid, posts_1.tags, users_1.aboutme, users_1.accountid, users_1.location, users_1.profileimageurl
limit 32;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    votes_1.userid), 
  votes_1.postid
from 
  votes as votes_1
where votes_1.postid is not NULL
group by votes_1.postid
limit 6;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.aboutme, 
  users_1.displayname
from 
  users as users_1
where users_1.websiteurl is not NULL
limit 6;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.creationdate, 
  sum(
    postlinks_1.linktypeid), 
  badges_1.id, 
  postlinks_1.linktypeid, 
  postlinks_1.id, 
  min(
    votes_1.creationdate), 
  postlinks_1.postid, 
  votes_1.userid, 
  badges_1.userid
from 
  votes as votes_1
      inner join postlinks as postlinks_1
      on (votes_1.id = postlinks_1.id )
    inner join badges as badges_1
    on (votes_1.id = badges_1.id )
where badges_1.userid <= badges_1.class
group by badges_1.id, badges_1.userid, postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, votes_1.userid
limit 42;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    badges_1.date), 
  badges_1.class, 
  badges_1.date, 
  badges_1.name
from 
  badges as badges_1
where badges_1.userid is not NULL
group by badges_1.class, badges_1.date, badges_1.name
limit 10;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    comments_1.creationdate)
from 
  comments as comments_1
where comments_1.userid < comments_1.id
limit 24;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_2.contentlicense, 
  badges_1.class, 
  min(
    badges_1.date), 
  comments_1.postid
from 
  comments as comments_1
    inner join badges as badges_1
      inner join comments as comments_2
      on (badges_1.id = comments_2.id )
    on (comments_1.id = badges_1.id )
where badges_1.tagbased > badges_1.tagbased
group by badges_1.class, comments_1.postid, comments_2.contentlicense
limit 34;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    badges_1.userid), 
  badges_1.userid, 
  badges_1.tagbased, 
  badges_1.date, 
  badges_1.class
from 
  badges as badges_1
where badges_1.userid > badges_1.class
group by badges_1.class, badges_1.date, badges_1.tagbased, badges_1.userid
limit 14;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.ownerdisplayname, 
  comments_1.contentlicense, 
  comments_1.creationdate, 
  comments_1.userdisplayname, 
  min(
    posthistory_1.creationdate)
from 
  posts as posts_1
      inner join posthistory as posthistory_1
      on (posts_1.id = posthistory_1.id )
    inner join comments as comments_1
    on (posts_1.id = comments_1.id )
where posthistory_1.posthistorytypeid is not NULL
group by comments_1.contentlicense, comments_1.creationdate, comments_1.userdisplayname, posts_1.ownerdisplayname
limit 5;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.contentlicense, 
  posts_1.body
from 
  posts as posts_1
where posts_1.tags is not NULL
limit 34;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.id, 
  badges_1.name
from 
  badges as badges_1
where badges_1.class is not NULL
limit 14;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.aboutme, 
  badges_1.class, 
  users_1.location, 
  users_1.creationdate
from 
  users as users_1
    inner join badges as badges_1
    on (users_1.id = badges_1.id )
where users_1.websiteurl < users_1.location
limit 29;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.votetypeid, 
  min(
    votes_1.creationdate), 
  votes_1.creationdate, 
  votes_1.id, 
  votes_1.userid, 
  votes_1.postid, 
  avg(
    votes_1.votetypeid)
from 
  votes as votes_1
where votes_1.userid is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 40;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    users_1.creationdate)
from 
  users as users_1
where users_1.websiteurl is not NULL
limit 25;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    users_1.creationdate)
from 
  users as users_1
where users_1.location is not NULL
limit 21;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.creationdate, 
  votes_1.userid
from 
  users as users_1
    inner join badges as badges_1
        inner join users as users_2
          inner join votes as votes_1
          on (users_2.id = votes_1.id )
        on (badges_1.id = users_2.id )
      inner join postlinks as postlinks_1
      on (badges_1.id = postlinks_1.id )
    on (users_1.id = badges_1.id )
where users_2.accountid is not NULL
limit 21;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.contentlicense
from 
  votes as votes_1
    inner join posts as posts_1
      inner join posthistory as posthistory_1
      on (posts_1.id = posthistory_1.id )
    on (votes_1.id = posthistory_1.id )
where posthistory_1.contentlicense is not NULL
limit 23;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.id, 
  users_1.accountid, 
  users_1.profileimageurl
from 
  users as users_1
where users_1.profileimageurl is not NULL
limit 32;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    users_1.creationdate), 
  users_1.websiteurl, 
  users_1.aboutme, 
  count(
    users_1.profileimageurl), 
  min(
    users_1.creationdate), 
  users_1.id, 
  users_1.location
from 
  users as users_1
where users_1.profileimageurl is not NULL
group by users_1.aboutme, users_1.id, users_1.location, users_1.websiteurl
limit 42;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.title, 
  posts_1.acceptedanswerid, 
  posts_1.body
from 
  posts as posts_1
where posts_1.creationdate is not NULL
limit 29;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    posthistory_1.userdisplayname), 
  posthistory_1.postid, 
  posthistory_1.creationdate, 
  max(
    posthistory_1.creationdate)
from 
  posthistory as posthistory_1
where posthistory_1.posthistorytypeid is not NULL
group by posthistory_1.creationdate, posthistory_1.postid
limit 29;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_2.parentid, 
  posts_3.tags
from 
  posts as posts_1
    inner join posts as posts_2
      inner join posts as posts_3
      on (posts_2.id = posts_3.id )
    on (posts_1.id = posts_3.id )
where posts_3.contentlicense is not NULL
limit 9;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_2.creationdate, 
  posthistory_2.postid, 
  posthistory_1.contentlicense, 
  posthistory_1.id, 
  posthistory_2.id, 
  posthistory_1.comment, 
  posthistory_1.creationdate, 
  max(
    posthistory_1.userid), 
  posthistory_1.postid
from 
  posthistory as posthistory_1
    inner join posthistory as posthistory_2
    on (posthistory_1.id = posthistory_2.id )
where posthistory_2.userid >= posthistory_2.id
group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.id, posthistory_1.postid, posthistory_2.creationdate, posthistory_2.id, posthistory_2.postid
limit 31;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.userdisplayname, 
  comments_1.creationdate
from 
  comments as comments_1
where comments_1.text <= comments_1.userdisplayname
limit 37;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    votes_1.postid), 
  votes_1.userid, 
  votes_1.id
from 
  votes as votes_1
where votes_1.id is not NULL
group by votes_1.id, votes_1.userid
limit 22;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.tagbased, 
  count(*), 
  badges_1.date, 
  badges_1.class, 
  badges_1.userid
from 
  badges as badges_1
where badges_1.class is not NULL
group by badges_1.class, badges_1.date, badges_1.tagbased, badges_1.userid
limit 5;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.parentid, 
  posts_1.owneruserid, 
  posts_1.posttypeid
from 
  posts as posts_1
where posts_1.owneruserid is not NULL
limit 7;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    posthistory_1.userid), 
  posthistory_1.id, 
  count(*)
from 
  posthistory as posthistory_1
where posthistory_1.userdisplayname is not NULL
group by posthistory_1.id
limit 24;
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.userid, 
  posthistory_1.postid, 
  posthistory_1.id, 
  posts_1.creationdate, 
  posts_1.title, 
  comments_1.creationdate, 
  count(*), 
  posthistory_1.comment, 
  avg(
    posts_1.posttypeid), 
  comments_1.postid, 
  posts_1.tags
from 
  comments as comments_1
    inner join votes as votes_1
      inner join posthistory as posthistory_1
        inner join posts as posts_1
        on (posthistory_1.id = posts_1.id )
      on (votes_1.id = posts_1.id )
    on (comments_1.id = posts_1.id )
where comments_1.postid is not NULL
group by comments_1.creationdate, comments_1.postid, posthistory_1.comment, posthistory_1.id, posthistory_1.postid, posthistory_1.userid, posts_1.creationdate, posts_1.tags, posts_1.title
limit 40;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.postid, 
  posthistory_1.id, 
  posthistory_1.comment, 
  posthistory_1.userid, 
  posthistory_1.userdisplayname, 
  posthistory_1.contentlicense, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.text, 
  min(
    posthistory_1.creationdate), 
  avg(
    posthistory_1.posthistorytypeid)
from 
  posthistory as posthistory_1
where posthistory_1.comment is not NULL
group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.text, posthistory_1.userdisplayname, posthistory_1.userid
limit 42;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.userid, 
  votes_1.creationdate, 
  votes_1.id, 
  avg(
    votes_1.votetypeid), 
  votes_1.postid
from 
  votes as votes_1
where votes_1.id is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid
limit 13;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.location
from 
  users as users_1
where users_1.profileimageurl is not NULL
limit 1;
-- meta {"num_joins":6,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.contentlicense, 
  users_2.displayname, 
  users_1.id, 
  postlinks_2.creationdate, 
  comments_1.userdisplayname
from 
  users as users_1
          inner join votes as votes_1
          on (users_1.id = votes_1.id )
        inner join users as users_2
        on (users_1.id = users_2.id )
      inner join comments as comments_1
      on (users_1.id = comments_1.id )
    inner join postlinks as postlinks_1
        inner join postlinks as postlinks_2
        on (postlinks_1.id = postlinks_2.id )
      inner join postlinks as postlinks_3
      on (postlinks_2.id = postlinks_3.id )
    on (votes_1.id = postlinks_2.id )
where users_2.creationdate < postlinks_1.creationdate
limit 15;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.userid, 
  badges_1.id, 
  badges_1.class, 
  max(
    badges_1.id)
from 
  badges as badges_1
where badges_1.date is not NULL
group by badges_1.class, badges_1.id, badges_1.userid
limit 27;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.websiteurl
from 
  posthistory as posthistory_1
    inner join users as users_1
      inner join badges as badges_1
      on (users_1.id = badges_1.id )
    on (posthistory_1.id = users_1.id )
where badges_1.tagbased is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.creationdate, 
  max(
    users_1.creationdate), 
  max(
    users_1.profileimageurl), 
  count(
    users_1.profileimageurl), 
  users_1.websiteurl, 
  users_1.location, 
  users_1.id, 
  users_1.profileimageurl, 
  users_1.displayname, 
  min(
    users_1.creationdate), 
  min(
    users_1.profileimageurl)
from 
  users as users_1
where users_1.creationdate is not NULL
group by users_1.creationdate, users_1.displayname, users_1.id, users_1.location, users_1.profileimageurl, users_1.websiteurl
limit 12;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.creationdate, 
  max(
    votes_1.id), 
  max(
    votes_1.creationdate), 
  votes_1.postid
from 
  votes as votes_1
where votes_1.id is not NULL
group by votes_1.creationdate, votes_1.postid
limit 34;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.date, 
  badges_1.userid, 
  badges_1.tagbased, 
  badges_1.class, 
  badges_1.name, 
  min(
    badges_1.date)
from 
  badges as badges_1
where badges_1.class is not NULL
group by badges_1.class, badges_1.date, badges_1.name, badges_1.tagbased, badges_1.userid
limit 40;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.id, 
  votes_1.userid, 
  votes_1.votetypeid, 
  votes_1.creationdate, 
  min(
    votes_1.creationdate)
from 
  votes as votes_1
where votes_1.postid is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.userid, votes_1.votetypeid
limit 5;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.text
from 
  comments as comments_1
where comments_1.userdisplayname is not NULL
limit 25;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.tagbased, 
  max(
    badges_1.date)
from 
  badges as badges_1
where badges_1.tagbased is not NULL
group by badges_1.tagbased
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.ownerdisplayname, 
  posts_1.body, 
  posts_1.contentlicense, 
  posts_1.id
from 
  posts as posts_1
where posts_1.id = posts_1.owneruserid
limit 30;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    users_1.displayname), 
  users_1.profileimageurl, 
  users_1.websiteurl, 
  min(
    users_1.creationdate)
from 
  users as users_1
where users_1.creationdate <= users_1.creationdate
group by users_1.profileimageurl, users_1.websiteurl
limit 10;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.text, 
  comments_1.id, 
  comments_1.contentlicense, 
  sum(
    comments_1.id), 
  min(
    comments_1.creationdate), 
  comments_1.postid, 
  comments_1.userid
from 
  comments as comments_1
where comments_1.text is not NULL
group by comments_1.contentlicense, comments_1.id, comments_1.postid, comments_1.text, comments_1.userid
limit 42;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.linktypeid, 
  min(
    postlinks_1.creationdate)
from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
group by postlinks_1.linktypeid
limit 30;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.id, 
  badges_1.date, 
  badges_1.userid, 
  min(
    badges_1.class), 
  badges_1.name, 
  min(
    badges_1.id)
from 
  badges as badges_1
where badges_1.name is not NULL
group by badges_1.date, badges_1.id, badges_1.name, badges_1.userid
limit 21;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.creationdate, 
  postlinks_1.postid, 
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid, 
  avg(
    postlinks_1.postid), 
  sum(
    postlinks_1.linktypeid)
from 
  postlinks as postlinks_1
where postlinks_1.linktypeid > postlinks_1.relatedpostid
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 27;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    comments_1.creationdate)
from 
  users as users_1
    inner join comments as comments_1
    on (users_1.id = comments_1.id )
where users_1.websiteurl is not NULL
limit 28;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    postlinks_1.creationdate), 
  postlinks_1.id, 
  min(
    postlinks_1.creationdate), 
  postlinks_1.postid, 
  postlinks_1.creationdate
from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.postid
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.creationdate, 
  comments_1.postid, 
  comments_1.userid
from 
  comments as comments_1
where comments_1.contentlicense >= comments_1.userdisplayname
limit 35;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.creationdate, 
  comments_1.postid, 
  comments_1.userid, 
  comments_1.id, 
  comments_1.contentlicense, 
  comments_1.userdisplayname
from 
  comments as comments_1
where comments_1.id is not NULL
limit 33;
-- meta {"num_joins":4,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    comments_1.creationdate), 
  min(
    votes_2.creationdate), 
  count(*), 
  votes_1.votetypeid, 
  votes_2.userid
from 
  comments as comments_1
        inner join badges as badges_1
        on (comments_1.id = badges_1.id )
      inner join votes as votes_1
        inner join posthistory as posthistory_1
        on (votes_1.id = posthistory_1.id )
      on (comments_1.id = posthistory_1.id )
    inner join votes as votes_2
    on (votes_1.id = votes_2.id )
where votes_1.votetypeid is not NULL
group by votes_1.votetypeid, votes_2.userid
limit 8;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.userid, 
  posthistory_1.userdisplayname
from 
  posthistory as posthistory_1
where posthistory_1.creationdate >= posthistory_1.creationdate
limit 16;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.userdisplayname, 
  posthistory_1.creationdate
from 
  posthistory as posthistory_1
where posthistory_1.id is not NULL
limit 25;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.text, 
  comments_1.userdisplayname, 
  comments_1.creationdate
from 
  comments as comments_1
where comments_1.postid is not NULL
limit 28;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    comments_1.creationdate), 
  postlinks_1.postid, 
  comments_1.userid, 
  comments_1.userdisplayname, 
  comments_1.creationdate, 
  comments_1.postid, 
  avg(
    postlinks_1.linktypeid)
from 
  comments as comments_1
    inner join postlinks as postlinks_1
    on (comments_1.id = postlinks_1.id )
where comments_1.id is not NULL
group by comments_1.creationdate, comments_1.postid, comments_1.userdisplayname, comments_1.userid, postlinks_1.postid
limit 5;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    comments_1.id), 
  comments_1.postid
from 
  comments as comments_1
where comments_1.id is not NULL
group by comments_1.postid
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.text, 
  comments_1.id, 
  max(
    comments_1.id), 
  comments_1.userid, 
  comments_1.postid, 
  comments_1.contentlicense, 
  comments_1.userdisplayname
from 
  comments as comments_1
where comments_1.userdisplayname is not NULL
group by comments_1.contentlicense, comments_1.id, comments_1.postid, comments_1.text, comments_1.userdisplayname, comments_1.userid
limit 23;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.userid, 
  votes_1.id, 
  count(*), 
  votes_1.postid, 
  votes_1.votetypeid, 
  votes_1.creationdate, 
  min(
    votes_1.userid)
from 
  votes as votes_1
where votes_1.creationdate <= votes_1.creationdate
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 5;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.linktypeid
from 
  badges as badges_1
      inner join comments as comments_1
      on (badges_1.id = comments_1.id )
    inner join postlinks as postlinks_1
    on (comments_1.id = postlinks_1.id )
where comments_1.contentlicense > comments_1.userdisplayname
limit 12;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.creationdate, 
  postlinks_1.id, 
  avg(
    postlinks_1.postid), 
  postlinks_1.postid, 
  max(
    postlinks_1.id), 
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid
from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 5;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.creationdate, 
  users_1.profileimageurl, 
  users_1.websiteurl, 
  users_1.aboutme, 
  count(*), 
  users_1.id, 
  min(
    users_1.accountid), 
  users_1.accountid, 
  max(
    users_1.id)
from 
  users as users_1
where users_1.accountid is not NULL
group by users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.id, users_1.profileimageurl, users_1.websiteurl
limit 35;
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.creationdate, 
  votes_1.id, 
  count(*), 
  posts_1.acceptedanswerid, 
  count(
    postlinks_1.id), 
  votes_1.postid, 
  posts_1.body, 
  postlinks_1.relatedpostid, 
  votes_1.creationdate, 
  posts_1.creationdate, 
  count(
    posts_1.acceptedanswerid)
from 
  posts as posts_1
    inner join votes as votes_1
      inner join postlinks as postlinks_1
      on (votes_1.id = postlinks_1.id )
    on (posts_1.id = votes_1.id )
where postlinks_1.creationdate is not NULL
group by postlinks_1.creationdate, postlinks_1.relatedpostid, posts_1.acceptedanswerid, posts_1.body, posts_1.creationdate, votes_1.creationdate, votes_1.id, votes_1.postid
limit 37;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    users_1.creationdate)
from 
  postlinks as postlinks_1
      inner join comments as comments_1
      on (postlinks_1.id = comments_1.id )
    inner join users as users_1
      inner join users as users_2
      on (users_1.id = users_2.id )
    on (postlinks_1.id = users_2.id )
where users_2.profileimageurl is not NULL
limit 9;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.id, 
  users_1.displayname
from 
  users as users_1
where users_1.websiteurl is not NULL
limit 37;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_2.id, 
  comments_1.id, 
  votes_1.userid, 
  votes_1.creationdate
from 
  comments as comments_1
    inner join votes as votes_1
      inner join votes as votes_2
      on (votes_1.id = votes_2.id )
    on (comments_1.id = votes_2.id )
where votes_1.creationdate > votes_2.creationdate
limit 40;
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.acceptedanswerid, 
  posts_1.parentid, 
  posts_1.creationdate, 
  users_1.profileimageurl, 
  min(
    users_1.accountid), 
  users_1.websiteurl, 
  posts_1.owneruserid, 
  min(
    users_1.creationdate), 
  max(
    users_1.creationdate), 
  posts_1.title, 
  users_1.id, 
  posts_1.body, 
  posts_1.contentlicense, 
  users_1.creationdate, 
  count(*)
from 
  posts as posts_1
    inner join users as users_1
    on (posts_1.id = users_1.id )
where posts_1.creationdate is not NULL
group by posts_1.acceptedanswerid, posts_1.body, posts_1.contentlicense, posts_1.creationdate, posts_1.owneruserid, posts_1.parentid, posts_1.title, users_1.creationdate, users_1.id, users_1.profileimageurl, users_1.websiteurl
limit 42;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.date, 
  count(*), 
  users_1.creationdate, 
  count(
    users_1.location), 
  users_1.aboutme, 
  badges_1.name, 
  count(*)
from 
  users as users_1
    inner join badges as badges_1
    on (users_1.id = badges_1.id )
where badges_1.tagbased is not NULL
group by badges_1.date, badges_1.name, users_1.aboutme, users_1.creationdate
limit 27;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.class, 
  posts_2.contentlicense
from 
  badges as badges_1
      inner join badges as badges_2
          inner join comments as comments_1
            inner join postlinks as postlinks_1
            on (comments_1.id = postlinks_1.id )
          on (badges_2.id = comments_1.id )
        inner join posts as posts_1
        on (postlinks_1.id = posts_1.id )
      on (badges_1.id = badges_2.id )
    inner join posts as posts_2
    on (badges_2.id = posts_2.id )
where posts_1.title <= posts_1.tags
limit 28;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    votes_1.id), 
  votes_1.postid, 
  votes_1.creationdate
from 
  votes as votes_1
where votes_1.postid is not NULL
group by votes_1.creationdate, votes_1.postid
limit 20;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_2.class, 
  votes_1.creationdate
from 
  badges as badges_1
      inner join votes as votes_1
        inner join votes as votes_2
        on (votes_1.id = votes_2.id )
      on (badges_1.id = votes_2.id )
    inner join badges as badges_2
    on (votes_2.id = badges_2.id )
where badges_1.tagbased > badges_2.tagbased
limit 34;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.userid, 
  min(
    badges_1.date), 
  badges_1.date
from 
  badges as badges_1
where badges_1.tagbased < badges_1.tagbased
group by badges_1.date, badges_1.userid
limit 34;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.userid, 
  posthistory_1.creationdate, 
  badges_1.date
from 
  posthistory as posthistory_1
    inner join postlinks as postlinks_1
      inner join badges as badges_1
          inner join users as users_1
          on (badges_1.id = users_1.id )
        inner join badges as badges_2
        on (badges_1.id = badges_2.id )
      on (postlinks_1.id = badges_1.id )
    on (posthistory_1.id = users_1.id )
where users_1.accountid is not NULL
limit 12;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select distinct 
  posthistory_2.text, 
  posthistory_1.id, 
  posthistory_2.userid
from 
  posthistory as posthistory_1
    inner join posthistory as posthistory_2
    on (posthistory_1.id = posthistory_2.id )
where posthistory_2.userdisplayname is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.id, 
  max(
    comments_1.creationdate), 
  comments_1.text, 
  comments_1.contentlicense, 
  count(*)
from 
  comments as comments_1
where comments_1.text >= comments_1.contentlicense
group by comments_1.contentlicense, comments_1.id, comments_1.text
limit 10;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.comment
from 
  posthistory as posthistory_1
    inner join comments as comments_1
    on (posthistory_1.id = comments_1.id )
where posthistory_1.revisionguid is not NULL
limit 7;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.postid, 
  posthistory_1.text, 
  posthistory_1.comment
from 
  posthistory as posthistory_1
where posthistory_1.revisionguid > posthistory_1.comment
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.websiteurl, 
  users_1.aboutme
from 
  users as users_1
    inner join posthistory as posthistory_1
    on (users_1.id = posthistory_1.id )
where users_1.location is not NULL
limit 34;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.posthistorytypeid, 
  posthistory_1.text
from 
  posthistory as posthistory_1
where posthistory_1.creationdate < posthistory_1.creationdate
limit 9;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    badges_1.id)
from 
  badges as badges_1
    inner join users as users_1
    on (badges_1.id = users_1.id )
where badges_1.tagbased is not NULL
limit 35;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.class, 
  badges_1.date
from 
  badges as badges_1
where badges_1.id is not NULL
limit 35;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    votes_1.creationdate), 
  max(
    votes_1.creationdate), 
  min(
    votes_1.creationdate), 
  votes_1.userid, 
  votes_1.postid, 
  votes_1.votetypeid, 
  votes_1.id
from 
  votes as votes_1
where votes_1.creationdate >= votes_1.creationdate
group by votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 17;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.creationdate, 
  postlinks_1.relatedpostid
from 
  posthistory as posthistory_1
    inner join postlinks as postlinks_1
    on (posthistory_1.id = postlinks_1.id )
where postlinks_1.relatedpostid is not NULL
limit 38;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.posthistorytypeid, 
  postlinks_1.linktypeid, 
  posthistory_1.revisionguid
from 
  postlinks as postlinks_1
    inner join posthistory as posthistory_1
    on (postlinks_1.id = posthistory_1.id )
where postlinks_1.creationdate is not NULL
limit 1;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.postid, 
  badges_1.userid, 
  users_1.accountid, 
  postlinks_1.creationdate, 
  badges_1.tagbased
from 
  users as users_1
      inner join badges as badges_1
      on (users_1.id = badges_1.id )
    inner join postlinks as postlinks_1
    on (badges_1.id = postlinks_1.id )
where users_1.creationdate is not NULL
limit 6;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.postid
from 
  votes as votes_1
      inner join posthistory as posthistory_1
      on (votes_1.id = posthistory_1.id )
    inner join posts as posts_1
      inner join comments as comments_1
        inner join comments as comments_2
        on (comments_1.id = comments_2.id )
      on (posts_1.id = comments_2.id )
    on (votes_1.id = posts_1.id )
where votes_1.id is not NULL
limit 38;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.postid
from 
  posthistory as posthistory_1
where posthistory_1.posthistorytypeid is not NULL
limit 40;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.posttypeid, 
  sum(
    posts_1.parentid), 
  count(*)
from 
  comments as comments_1
    inner join posts as posts_1
    on (comments_1.id = posts_1.id )
where posts_1.acceptedanswerid < comments_1.id
group by posts_1.posttypeid
limit 14;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.title, 
  max(
    posts_1.creationdate), 
  posts_1.acceptedanswerid, 
  posts_1.id, 
  posts_1.creationdate, 
  posts_1.owneruserid, 
  sum(
    posts_1.id), 
  posts_1.tags, 
  posts_1.ownerdisplayname
from 
  posts as posts_1
where posts_1.id is not NULL
group by posts_1.acceptedanswerid, posts_1.creationdate, posts_1.id, posts_1.ownerdisplayname, posts_1.owneruserid, posts_1.tags, posts_1.title
limit 8;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.id, 
  votes_1.votetypeid, 
  count(*), 
  min(
    votes_1.creationdate), 
  votes_1.postid, 
  votes_1.userid, 
  votes_1.creationdate
from 
  votes as votes_1
where votes_1.id is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 24;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.aboutme, 
  users_1.profileimageurl, 
  users_1.websiteurl, 
  min(
    users_1.creationdate), 
  users_1.id, 
  users_1.creationdate, 
  users_1.displayname
from 
  users as users_1
where users_1.creationdate < users_1.creationdate
group by users_1.aboutme, users_1.creationdate, users_1.displayname, users_1.id, users_1.profileimageurl, users_1.websiteurl
limit 42;
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.text, 
  comments_1.id, 
  count(
    comments_1.postid), 
  max(
    comments_1.creationdate), 
  posts_1.posttypeid, 
  sum(
    comments_1.id), 
  posts_1.acceptedanswerid, 
  count(*), 
  comments_1.creationdate, 
  posts_1.owneruserid
from 
  posts as posts_1
    inner join comments as comments_1
    on (posts_1.id = comments_1.id )
where posts_1.tags is not NULL
group by comments_1.creationdate, comments_1.id, comments_1.text, posts_1.acceptedanswerid, posts_1.owneruserid, posts_1.posttypeid
limit 20;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.revisionguid, 
  posthistory_1.userdisplayname, 
  posthistory_1.postid, 
  posthistory_1.creationdate, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.userid, 
  posthistory_1.id, 
  max(
    posthistory_1.creationdate)
from 
  posthistory as posthistory_1
where posthistory_1.comment is not NULL
group by posthistory_1.creationdate, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.userdisplayname, posthistory_1.userid
limit 35;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.posthistorytypeid, 
  comments_1.userid
from 
  comments as comments_1
    inner join posthistory as posthistory_1
    on (comments_1.id = posthistory_1.id )
where comments_1.postid is not NULL
limit 4;
-- meta {"num_joins":7,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.id, 
  votes_1.postid
from 
  comments as comments_1
          inner join badges as badges_1
          on (comments_1.id = badges_1.id )
        inner join votes as votes_1
          inner join postlinks as postlinks_1
            inner join posthistory as posthistory_1
            on (postlinks_1.id = posthistory_1.id )
          on (votes_1.id = postlinks_1.id )
        on (comments_1.id = posthistory_1.id )
      inner join badges as badges_2
      on (comments_1.id = badges_2.id )
    inner join posthistory as posthistory_2
      inner join votes as votes_2
      on (posthistory_2.id = votes_2.id )
    on (posthistory_1.id = posthistory_2.id )
where posthistory_1.comment is not NULL
limit 20;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.userid, 
  badges_1.id, 
  min(
    badges_1.id), 
  badges_1.tagbased, 
  badges_1.date
from 
  badges as badges_1
where badges_1.date is not NULL
group by badges_1.date, badges_1.id, badges_1.tagbased, badges_1.userid
limit 19;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.id, 
  min(
    votes_1.userid), 
  votes_1.creationdate, 
  min(
    votes_1.creationdate)
from 
  votes as votes_1
where votes_1.creationdate <= votes_1.creationdate
group by votes_1.creationdate, votes_1.id
limit 15;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.contentlicense, 
  min(
    posthistory_1.userid), 
  posthistory_1.postid, 
  posthistory_1.revisionguid, 
  posthistory_1.creationdate, 
  posthistory_1.id
from 
  posthistory as posthistory_1
where posthistory_1.comment is not NULL
group by posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.id, posthistory_1.postid, posthistory_1.revisionguid
limit 13;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.posttypeid, 
  posts_1.tags, 
  posts_1.id, 
  posts_1.body, 
  posts_1.creationdate, 
  posts_1.contentlicense, 
  posts_1.parentid, 
  min(
    posts_1.creationdate), 
  max(
    posts_1.owneruserid), 
  max(
    posts_1.creationdate), 
  max(
    posts_1.creationdate), 
  posts_1.ownerdisplayname
from 
  posts as posts_1
where posts_1.creationdate is not NULL
group by posts_1.body, posts_1.contentlicense, posts_1.creationdate, posts_1.id, posts_1.ownerdisplayname, posts_1.parentid, posts_1.posttypeid, posts_1.tags
limit 37;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.title, 
  max(
    posts_1.creationdate)
from 
  posts as posts_1
where posts_1.tags is not NULL
group by posts_1.title
limit 40;
-- meta {"num_joins":4,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_2.creationdate, 
  min(
    posthistory_1.postid), 
  posts_1.parentid, 
  posthistory_2.posthistorytypeid, 
  max(
    comments_1.creationdate), 
  posthistory_2.userdisplayname
from 
  posts as posts_1
        inner join posthistory as posthistory_1
        on (posts_1.id = posthistory_1.id )
      inner join comments as comments_1
        inner join posthistory as posthistory_2
        on (comments_1.id = posthistory_2.id )
      on (posthistory_1.id = comments_1.id )
    inner join posthistory as posthistory_3
    on (posthistory_2.id = posthistory_3.id )
where posts_1.title = posthistory_1.userdisplayname
group by posthistory_2.creationdate, posthistory_2.posthistorytypeid, posthistory_2.userdisplayname, posts_1.parentid
limit 28;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.websiteurl
from 
  users as users_1
where users_1.location is not NULL
limit 36;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    votes_1.id), 
  votes_1.creationdate, 
  votes_1.userid, 
  count(
    votes_1.id)
from 
  votes as votes_1
where votes_1.userid is not NULL
group by votes_1.creationdate, votes_1.userid
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    posthistory_1.posthistorytypeid), 
  avg(
    posthistory_1.id), 
  posthistory_1.text, 
  posthistory_1.userdisplayname
from 
  posthistory as posthistory_1
where posthistory_1.postid is not NULL
group by posthistory_1.text, posthistory_1.userdisplayname
limit 40;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.postid, 
  votes_1.votetypeid, 
  votes_1.userid, 
  votes_1.id, 
  count(
    votes_1.userid), 
  votes_1.creationdate
from 
  votes as votes_1
where votes_1.votetypeid is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 12;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.creationdate, 
  votes_1.votetypeid, 
  users_2.location
from 
  users as users_1
      inner join votes as votes_1
      on (users_1.id = votes_1.id )
    inner join users as users_2
    on (users_1.id = users_2.id )
where users_2.accountid is not NULL
limit 15;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    users_1.websiteurl), 
  users_1.displayname, 
  max(
    users_1.id), 
  users_1.profileimageurl, 
  users_1.location, 
  users_1.aboutme, 
  users_1.accountid
from 
  users as users_1
where users_1.location > users_1.aboutme
group by users_1.aboutme, users_1.accountid, users_1.displayname, users_1.location, users_1.profileimageurl
limit 14;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    comments_1.creationdate), 
  comments_1.contentlicense, 
  comments_1.id, 
  sum(
    comments_1.userid), 
  comments_1.text, 
  comments_1.userid
from 
  comments as comments_1
where comments_1.userdisplayname <= comments_1.text
group by comments_1.contentlicense, comments_1.id, comments_1.text, comments_1.userid
limit 42;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.userdisplayname, 
  comments_1.userid
from 
  comments as comments_1
where comments_1.postid is not NULL
limit 23;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.postid, 
  votes_1.votetypeid, 
  posthistory_1.creationdate
from 
  votes as votes_1
      inner join badges as badges_1
      on (votes_1.id = badges_1.id )
    inner join postlinks as postlinks_1
      inner join posthistory as posthistory_1
      on (postlinks_1.id = posthistory_1.id )
    on (badges_1.id = posthistory_1.id )
where votes_1.userid is not NULL
limit 14;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    posthistory_1.creationdate), 
  posthistory_1.revisionguid
from 
  posthistory as posthistory_1
where posthistory_1.postid is not NULL
group by posthistory_1.revisionguid
limit 36;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.creationdate
from 
  comments as comments_1
where comments_1.userid is not NULL
limit 6;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    badges_1.date), 
  badges_1.tagbased, 
  avg(
    badges_1.id)
from 
  badges as badges_1
where badges_1.name < badges_1.name
group by badges_1.tagbased
limit 7;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.id, 
  comments_1.text, 
  comments_1.userid, 
  count(*)
from 
  comments as comments_1
where comments_1.userdisplayname > comments_1.contentlicense
group by comments_1.id, comments_1.text, comments_1.userid
limit 10;
-- meta {"num_joins":5,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.creationdate, 
  max(
    comments_1.creationdate), 
  posthistory_1.contentlicense, 
  max(
    comments_2.creationdate), 
  posthistory_2.postid, 
  postlinks_1.relatedpostid, 
  min(
    postlinks_1.creationdate), 
  posthistory_1.id, 
  posthistory_2.userid, 
  posthistory_2.contentlicense, 
  posthistory_1.userdisplayname, 
  votes_1.votetypeid, 
  votes_1.postid, 
  comments_2.userdisplayname, 
  postlinks_1.linktypeid, 
  comments_2.userid, 
  posthistory_2.id, 
  votes_1.id, 
  posthistory_1.posthistorytypeid, 
  comments_1.userdisplayname, 
  posthistory_1.creationdate, 
  comments_1.userid, 
  min(
    postlinks_1.creationdate), 
  comments_2.creationdate, 
  votes_1.userid
from 
  comments as comments_1
        inner join posthistory as posthistory_1
        on (comments_1.id = posthistory_1.id )
      inner join comments as comments_2
      on (comments_1.id = comments_2.id )
    inner join postlinks as postlinks_1
      inner join posthistory as posthistory_2
        inner join votes as votes_1
        on (posthistory_2.id = votes_1.id )
      on (postlinks_1.id = posthistory_2.id )
    on (comments_2.id = votes_1.id )
where votes_1.votetypeid is not NULL
group by comments_1.userdisplayname, comments_1.userid, comments_2.creationdate, comments_2.userdisplayname, comments_2.userid, posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.userdisplayname, posthistory_2.contentlicense, posthistory_2.id, posthistory_2.postid, posthistory_2.userid, postlinks_1.linktypeid, postlinks_1.relatedpostid, votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 42;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.tagbased, 
  badges_1.class, 
  badges_1.name, 
  badges_1.userid, 
  min(
    badges_1.id), 
  badges_1.date, 
  min(
    badges_1.date), 
  min(
    badges_1.date)
from 
  badges as badges_1
where badges_1.userid is not NULL
group by badges_1.class, badges_1.date, badges_1.name, badges_1.tagbased, badges_1.userid
limit 23;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.id, 
  users_1.location, 
  users_1.websiteurl, 
  users_1.accountid, 
  min(
    users_1.accountid), 
  users_1.profileimageurl
from 
  users as users_1
where users_1.aboutme = users_1.location
group by users_1.accountid, users_1.id, users_1.location, users_1.profileimageurl, users_1.websiteurl
limit 41;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.name, 
  badges_1.class, 
  badges_1.userid
from 
  badges as badges_1
where badges_1.class is not NULL
limit 26;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.id, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.postid, 
  max(
    postlinks_1.creationdate)
from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
group by postlinks_1.id, postlinks_1.postid
limit 17;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.class
from 
  badges as badges_1
      inner join badges as badges_2
      on (badges_1.id = badges_2.id )
    inner join votes as votes_1
    on (badges_2.id = votes_1.id )
where badges_2.id is not NULL
limit 21;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_2.userid, 
  posts_1.tags, 
  posts_1.parentid
from 
  badges as badges_1
      inner join comments as comments_1
      on (badges_1.id = comments_1.id )
    inner join badges as badges_2
      inner join comments as comments_2
        inner join posts as posts_1
        on (comments_2.id = posts_1.id )
      on (badges_2.id = posts_1.id )
    on (comments_1.id = comments_2.id )
where posts_1.owneruserid is not NULL
limit 42;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.linktypeid, 
  postlinks_1.creationdate, 
  postlinks_1.id, 
  max(
    postlinks_1.creationdate)
from 
  postlinks as postlinks_1
where postlinks_1.id is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid
limit 24;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.userid
from 
  votes as votes_1
where votes_1.creationdate <= votes_1.creationdate
limit 40;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.id, 
  posts_1.ownerdisplayname, 
  posts_1.posttypeid, 
  votes_2.id, 
  votes_1.creationdate, 
  count(
    posts_1.contentlicense), 
  votes_1.votetypeid, 
  users_1.accountid, 
  users_1.profileimageurl, 
  users_1.websiteurl, 
  posts_1.creationdate
from 
  posts as posts_1
    inner join votes as votes_1
        inner join users as users_1
        on (votes_1.id = users_1.id )
      inner join votes as votes_2
      on (users_1.id = votes_2.id )
    on (posts_1.id = votes_2.id )
where posts_1.creationdate >= votes_2.creationdate
group by posts_1.creationdate, posts_1.ownerdisplayname, posts_1.posttypeid, users_1.accountid, users_1.profileimageurl, users_1.websiteurl, votes_1.creationdate, votes_1.id, votes_1.votetypeid, votes_2.id
limit 39;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.comment, 
  posthistory_1.text, 
  posthistory_1.contentlicense, 
  count(
    posthistory_1.revisionguid), 
  posthistory_1.userdisplayname, 
  posthistory_1.posthistorytypeid, 
  sum(
    posthistory_1.posthistorytypeid), 
  posthistory_1.postid, 
  posthistory_1.revisionguid
from 
  posthistory as posthistory_1
where posthistory_1.comment < posthistory_1.userdisplayname
group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userdisplayname
limit 34;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    comments_1.contentlicense)
from 
  comments as comments_1
    inner join postlinks as postlinks_1
    on (comments_1.id = postlinks_1.id )
where postlinks_1.linktypeid is not NULL
limit 32;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    comments_1.creationdate), 
  comments_1.id
from 
  comments as comments_1
where comments_1.id > comments_1.userid
group by comments_1.id
limit 17;
-- meta {"num_joins":7,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.id, 
  count(*), 
  posts_1.title, 
  posts_2.contentlicense, 
  users_1.websiteurl, 
  postlinks_1.relatedpostid, 
  posthistory_1.text
from 
  users as users_1
        inner join posts as posts_1
        on (users_1.id = posts_1.id )
      inner join posts as posts_2
        inner join votes as votes_1
          inner join postlinks as postlinks_1
            inner join postlinks as postlinks_2
            on (postlinks_1.id = postlinks_2.id )
          on (votes_1.id = postlinks_2.id )
        on (posts_2.id = votes_1.id )
      on (users_1.id = posts_2.id )
    inner join posthistory as posthistory_1
      inner join votes as votes_2
      on (posthistory_1.id = votes_2.id )
    on (users_1.id = posthistory_1.id )
where votes_1.postid is not NULL
group by posthistory_1.text, postlinks_1.id, postlinks_1.relatedpostid, posts_1.title, posts_2.contentlicense, users_1.websiteurl
limit 20;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.creationdate, 
  users_1.websiteurl, 
  max(
    users_1.creationdate), 
  users_1.profileimageurl, 
  users_1.id
from 
  users as users_1
where users_1.accountid is not NULL
group by users_1.creationdate, users_1.id, users_1.profileimageurl, users_1.websiteurl
limit 37;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  avg(
    posts_1.posttypeid), 
  comments_1.postid
from 
  comments as comments_1
    inner join posts as posts_1
    on (comments_1.id = posts_1.id )
where comments_1.id is not NULL
group by comments_1.postid
limit 35;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.name, 
  posthistory_1.revisionguid
from 
  posthistory as posthistory_1
    inner join badges as badges_1
    on (posthistory_1.id = badges_1.id )
where badges_1.date is not NULL
limit 6;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.class, 
  badges_1.date, 
  min(
    badges_1.id), 
  max(
    badges_1.date), 
  badges_1.name, 
  badges_1.tagbased
from 
  badges as badges_1
where badges_1.name > badges_1.name
group by badges_1.class, badges_1.date, badges_1.name, badges_1.tagbased
limit 2;
-- meta {"num_joins":5,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_3.posttypeid, 
  postlinks_1.relatedpostid, 
  min(
    posts_1.creationdate), 
  votes_1.id, 
  max(
    posts_2.creationdate), 
  posts_2.posttypeid, 
  max(
    posts_3.posttypeid)
from 
  posts as posts_1
      inner join votes as votes_1
        inner join comments as comments_1
        on (votes_1.id = comments_1.id )
      on (posts_1.id = votes_1.id )
    inner join postlinks as postlinks_1
      inner join posts as posts_2
        inner join posts as posts_3
        on (posts_2.id = posts_3.id )
      on (postlinks_1.id = posts_2.id )
    on (posts_1.id = posts_2.id )
where posts_1.parentid is not NULL
group by postlinks_1.relatedpostid, posts_2.posttypeid, posts_3.posttypeid, votes_1.id
limit 25;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.creationdate, 
  posthistory_1.userdisplayname
from 
  posthistory as posthistory_1
where posthistory_1.userid is not NULL
limit 6;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.contentlicense, 
  posthistory_1.userid, 
  posthistory_1.posthistorytypeid
from 
  posthistory as posthistory_1
where posthistory_1.userdisplayname is not NULL
limit 38;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.postid, 
  comments_1.userid, 
  comments_1.id, 
  comments_1.text
from 
  comments as comments_1
where comments_1.userid is not NULL
limit 38;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.aboutme
from 
  users as users_1
      inner join users as users_2
        inner join votes as votes_1
        on (users_2.id = votes_1.id )
      on (users_1.id = users_2.id )
    inner join votes as votes_2
    on (users_2.id = votes_2.id )
where votes_2.id is not NULL
limit 37;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.creationdate, 
  posthistory_1.comment, 
  sum(
    postlinks_1.relatedpostid), 
  posthistory_1.creationdate
from 
  postlinks as postlinks_1
    inner join comments as comments_1
      inner join posthistory as posthistory_1
        inner join users as users_1
        on (posthistory_1.id = users_1.id )
      on (comments_1.id = users_1.id )
    on (postlinks_1.id = posthistory_1.id )
where comments_1.postid is not NULL
group by comments_1.creationdate, posthistory_1.comment, posthistory_1.creationdate
limit 32;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.contentlicense, 
  posthistory_1.text
from 
  badges as badges_1
        inner join badges as badges_2
        on (badges_1.id = badges_2.id )
      inner join posts as posts_1
      on (badges_2.id = posts_1.id )
    inner join posthistory as posthistory_1
    on (posts_1.id = posthistory_1.id )
where posts_1.parentid is not NULL
limit 15;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.userid, 
  max(
    comments_1.creationdate), 
  comments_1.contentlicense, 
  comments_1.id, 
  comments_1.text
from 
  comments as comments_1
where comments_1.creationdate <= comments_1.creationdate
group by comments_1.contentlicense, comments_1.id, comments_1.text, comments_1.userid
limit 2;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.displayname, 
  users_1.accountid, 
  avg(
    users_1.accountid), 
  users_1.id, 
  min(
    users_1.accountid), 
  users_1.location, 
  users_1.creationdate, 
  avg(
    users_1.accountid)
from 
  users as users_1
where users_1.websiteurl is not NULL
group by users_1.accountid, users_1.creationdate, users_1.displayname, users_1.id, users_1.location
limit 33;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.contentlicense, 
  posthistory_1.id, 
  posthistory_1.comment, 
  posthistory_1.text, 
  posthistory_1.postid, 
  posthistory_1.userid, 
  posthistory_1.posthistorytypeid
from 
  posthistory as posthistory_1
where posthistory_1.contentlicense < posthistory_1.userdisplayname
limit 2;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_4.parentid
from 
  posts as posts_1
      inner join posts as posts_2
      on (posts_1.id = posts_2.id )
    inner join votes as votes_1
      inner join badges as badges_1
          inner join posts as posts_3
          on (badges_1.id = posts_3.id )
        inner join posts as posts_4
        on (posts_3.id = posts_4.id )
      on (votes_1.id = posts_4.id )
    on (posts_2.id = posts_3.id )
where posts_1.creationdate = badges_1.date
limit 12;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.creationdate, 
  avg(
    posts_1.parentid), 
  posts_1.posttypeid
from 
  badges as badges_1
    inner join posts as posts_1
    on (badges_1.id = posts_1.id )
where badges_1.tagbased >= badges_1.tagbased
group by posts_1.creationdate, posts_1.posttypeid
limit 23;
-- meta {"num_joins":1,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.id, 
  postlinks_2.id, 
  sum(
    postlinks_2.relatedpostid), 
  postlinks_2.postid, 
  postlinks_1.linktypeid, 
  postlinks_1.creationdate, 
  postlinks_2.linktypeid, 
  avg(
    postlinks_2.relatedpostid), 
  postlinks_1.relatedpostid, 
  postlinks_2.creationdate, 
  max(
    postlinks_1.creationdate), 
  max(
    postlinks_1.creationdate), 
  max(
    postlinks_1.relatedpostid)
from 
  postlinks as postlinks_1
    inner join postlinks as postlinks_2
    on (postlinks_1.id = postlinks_2.id )
where postlinks_1.creationdate is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.relatedpostid, postlinks_2.creationdate, postlinks_2.id, postlinks_2.linktypeid, postlinks_2.postid
limit 9;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    comments_2.postid), 
  comments_2.creationdate, 
  comments_2.userdisplayname
from 
  comments as comments_1
    inner join comments as comments_2
    on (comments_1.id = comments_2.id )
where comments_1.id is not NULL
group by comments_2.creationdate, comments_2.userdisplayname
limit 36;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.id
from 
  posts as posts_1
where posts_1.owneruserid is not NULL
limit 31;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.creationdate, 
  posts_1.owneruserid, 
  posts_1.tags, 
  users_1.accountid, 
  avg(
    posts_1.parentid)
from 
  users as users_1
    inner join posts as posts_1
    on (users_1.id = posts_1.id )
where posts_1.owneruserid is not NULL
group by posts_1.creationdate, posts_1.owneruserid, posts_1.tags, users_1.accountid
limit 16;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.posthistorytypeid, 
  posthistory_1.creationdate, 
  posthistory_1.id
from 
  posthistory as posthistory_1
where posthistory_1.text is not NULL
limit 12;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.userid, 
  comments_1.postid, 
  comments_1.text
from 
  comments as comments_1
where comments_1.id is not NULL
limit 16;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  badges_1.tagbased
from 
  badges as badges_1
where badges_1.date is not NULL
group by badges_1.tagbased
limit 36;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    comments_1.userid)
from 
  comments as comments_1
where comments_1.id is not NULL
limit 26;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.owneruserid
from 
  posts as posts_1
where posts_1.body is not NULL
limit 31;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.creationdate, 
  posts_1.tags, 
  comments_1.postid, 
  count(*), 
  badges_1.class, 
  comments_1.userid, 
  posthistory_1.postid
from 
  posts as posts_1
        inner join badges as badges_1
        on (posts_1.id = badges_1.id )
      inner join comments as comments_1
      on (badges_1.id = comments_1.id )
    inner join posthistory as posthistory_1
    on (comments_1.id = posthistory_1.id )
where comments_1.creationdate is not NULL
group by badges_1.class, comments_1.postid, comments_1.userid, posthistory_1.creationdate, posthistory_1.postid, posts_1.tags
limit 27;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.relatedpostid, 
  min(
    users_1.creationdate), 
  postlinks_1.creationdate, 
  postlinks_1.linktypeid
from 
  users as users_1
    inner join postlinks as postlinks_1
    on (users_1.id = postlinks_1.id )
where users_1.location <= users_1.aboutme
group by postlinks_1.creationdate, postlinks_1.linktypeid, postlinks_1.relatedpostid
limit 32;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.userid
from 
  badges as badges_1
      inner join comments as comments_1
      on (badges_1.id = comments_1.id )
    inner join users as users_1
    on (comments_1.id = users_1.id )
where comments_1.userdisplayname is not NULL
limit 8;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    votes_1.votetypeid), 
  votes_1.votetypeid, 
  votes_1.id, 
  votes_1.userid, 
  votes_1.creationdate
from 
  votes as votes_1
where votes_1.postid is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.userid, votes_1.votetypeid
limit 27;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.linktypeid
from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
limit 8;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.userid, 
  comments_1.contentlicense, 
  comments_1.postid, 
  comments_1.userdisplayname
from 
  comments as comments_1
where comments_1.contentlicense is not NULL
limit 7;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.creationdate, 
  posthistory_1.contentlicense, 
  posthistory_1.userdisplayname, 
  posthistory_1.postid
from 
  posthistory as posthistory_1
where posthistory_1.revisionguid is not NULL
limit 36;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.linktypeid, 
  posthistory_1.id, 
  posthistory_1.userdisplayname, 
  postlinks_1.id, 
  count(
    posthistory_1.revisionguid), 
  posthistory_1.contentlicense
from 
  postlinks as postlinks_1
    inner join posthistory as posthistory_1
    on (postlinks_1.id = posthistory_1.id )
where postlinks_1.id is not NULL
group by posthistory_1.contentlicense, posthistory_1.id, posthistory_1.userdisplayname, postlinks_1.id, postlinks_1.linktypeid
limit 11;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.id, 
  badges_2.class, 
  badges_2.id, 
  posthistory_1.creationdate, 
  badges_1.class, 
  badges_2.name, 
  postlinks_1.creationdate, 
  posthistory_1.posthistorytypeid, 
  max(
    postlinks_1.relatedpostid), 
  badges_2.date
from 
  badges as badges_1
    inner join badges as badges_2
        inner join posthistory as posthistory_1
        on (badges_2.id = posthistory_1.id )
      inner join postlinks as postlinks_1
      on (posthistory_1.id = postlinks_1.id )
    on (badges_1.id = postlinks_1.id )
where postlinks_1.creationdate < posthistory_1.creationdate
group by badges_1.class, badges_2.class, badges_2.date, badges_2.id, badges_2.name, posthistory_1.creationdate, posthistory_1.posthistorytypeid, postlinks_1.creationdate, postlinks_1.id
limit 38;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.creationdate, 
  posthistory_1.id, 
  posts_1.acceptedanswerid, 
  posts_1.ownerdisplayname, 
  count(*), 
  votes_1.votetypeid, 
  postlinks_1.linktypeid, 
  posts_1.tags, 
  posthistory_1.creationdate, 
  posthistory_1.revisionguid, 
  votes_1.postid
from 
  posts as posts_1
      inner join posthistory as posthistory_1
      on (posts_1.id = posthistory_1.id )
    inner join votes as votes_1
      inner join postlinks as postlinks_1
      on (votes_1.id = postlinks_1.id )
    on (posts_1.id = postlinks_1.id )
where votes_1.creationdate is not NULL
group by posthistory_1.creationdate, posthistory_1.id, posthistory_1.revisionguid, postlinks_1.creationdate, postlinks_1.linktypeid, posts_1.acceptedanswerid, posts_1.ownerdisplayname, posts_1.tags, votes_1.postid, votes_1.votetypeid
limit 9;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.postid
from 
  votes as votes_1
    inner join posthistory as posthistory_1
    on (votes_1.id = posthistory_1.id )
where posthistory_1.creationdate is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.contentlicense
from 
  comments as comments_1
where comments_1.text is not NULL
limit 23;
-- meta {"num_joins":4,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_2.body, 
  min(
    badges_1.id), 
  badges_1.date, 
  min(
    comments_1.creationdate), 
  max(
    comments_1.creationdate), 
  badges_2.tagbased, 
  max(
    badges_1.id), 
  badges_2.date
from 
  posts as posts_1
    inner join badges as badges_1
          inner join comments as comments_1
          on (badges_1.id = comments_1.id )
        inner join posts as posts_2
        on (comments_1.id = posts_2.id )
      inner join badges as badges_2
      on (badges_1.id = badges_2.id )
    on (posts_1.id = comments_1.id )
where badges_1.class is not NULL
group by badges_1.date, badges_2.date, badges_2.tagbased, posts_2.body
limit 31;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.creationdate, 
  posts_1.ownerdisplayname, 
  posts_1.acceptedanswerid, 
  posts_1.owneruserid, 
  posts_1.contentlicense
from 
  posts as posts_1
where posts_1.body is not NULL
limit 30;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_2.id, 
  min(
    posts_1.creationdate)
from 
  comments as comments_1
      inner join posts as posts_1
      on (comments_1.id = posts_1.id )
    inner join comments as comments_2
    on (posts_1.id = comments_2.id )
where comments_1.postid is not NULL
group by comments_2.id
limit 28;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.id, 
  postlinks_2.id, 
  postlinks_2.relatedpostid
from 
  postlinks as postlinks_1
    inner join postlinks as postlinks_2
    on (postlinks_1.id = postlinks_2.id )
where postlinks_2.postid is not NULL
limit 9;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.ownerdisplayname
from 
  posts as posts_1
where posts_1.acceptedanswerid is not NULL
limit 28;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.userid, 
  count(
    comments_1.postid), 
  votes_1.id, 
  votes_1.creationdate, 
  comments_1.text
from 
  votes as votes_1
    inner join comments as comments_1
    on (votes_1.id = comments_1.id )
where comments_1.userdisplayname >= comments_1.text
group by comments_1.text, votes_1.creationdate, votes_1.id, votes_1.userid
limit 39;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.votetypeid, 
  postlinks_1.linktypeid, 
  comments_1.userid, 
  votes_1.userid
from 
  postlinks as postlinks_1
      inner join comments as comments_1
      on (postlinks_1.id = comments_1.id )
    inner join votes as votes_1
    on (comments_1.id = votes_1.id )
where comments_1.creationdate is not NULL
limit 37;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.acceptedanswerid, 
  avg(
    posts_1.owneruserid), 
  posts_1.title, 
  posts_1.body, 
  posts_1.ownerdisplayname
from 
  posts as posts_1
where posts_1.ownerdisplayname is not NULL
group by posts_1.acceptedanswerid, posts_1.body, posts_1.ownerdisplayname, posts_1.title
limit 15;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.creationdate
from 
  postlinks as postlinks_1
      inner join posts as posts_1
      on (postlinks_1.id = posts_1.id )
    inner join users as users_1
    on (posts_1.id = users_1.id )
where postlinks_1.creationdate is not NULL
limit 37;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    postlinks_1.creationdate), 
  postlinks_1.postid, 
  postlinks_1.creationdate, 
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid
from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
group by postlinks_1.creationdate, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 17;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.votetypeid, 
  votes_1.creationdate
from 
  votes as votes_1
where votes_1.userid is not NULL
limit 8;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.id, 
  users_1.displayname, 
  users_1.aboutme, 
  comments_1.userid
from 
  comments as comments_1
    inner join users as users_1
    on (comments_1.id = users_1.id )
where users_1.profileimageurl is not NULL
limit 9;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.userid, 
  badges_1.date, 
  badges_1.class
from 
  badges as badges_1
where badges_1.name <= badges_1.name
limit 42;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    badges_1.date), 
  badges_1.tagbased
from 
  badges as badges_1
where badges_1.class <= badges_1.id
group by badges_1.tagbased
limit 4;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.userdisplayname, 
  postlinks_1.creationdate
from 
  postlinks as postlinks_1
    inner join postlinks as postlinks_2
        inner join users as users_1
        on (postlinks_2.id = users_1.id )
      inner join posthistory as posthistory_1
      on (users_1.id = posthistory_1.id )
    on (postlinks_1.id = users_1.id )
where postlinks_1.relatedpostid is not NULL
limit 14;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    postlinks_1.linktypeid)
from 
  users as users_1
      inner join posthistory as posthistory_1
      on (users_1.id = posthistory_1.id )
    inner join postlinks as postlinks_1
    on (users_1.id = postlinks_1.id )
where postlinks_1.relatedpostid is not NULL
limit 19;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.date, 
  badges_1.tagbased
from 
  posts as posts_1
      inner join badges as badges_1
      on (posts_1.id = badges_1.id )
    inner join posts as posts_2
    on (badges_1.id = posts_2.id )
where badges_1.name is not NULL
limit 13;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.userid
from 
  badges as badges_1
where badges_1.class = badges_1.id
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    badges_1.date), 
  badges_1.name, 
  badges_1.tagbased
from 
  badges as badges_1
where badges_1.date is not NULL
group by badges_1.name, badges_1.tagbased
limit 2;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.postid, 
  comments_1.userdisplayname, 
  sum(
    comments_1.userid), 
  comments_1.text, 
  min(
    comments_1.creationdate), 
  min(
    comments_1.userid)
from 
  comments as comments_1
where comments_1.postid is not NULL
group by comments_1.postid, comments_1.text, comments_1.userdisplayname
limit 31;
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.relatedpostid, 
  posts_1.tags, 
  max(
    posts_1.creationdate), 
  posts_1.creationdate, 
  postlinks_1.postid, 
  postlinks_1.creationdate, 
  postlinks_1.linktypeid, 
  max(
    posts_1.creationdate), 
  max(
    posts_1.creationdate), 
  max(
    postlinks_1.creationdate), 
  posts_1.acceptedanswerid
from 
  postlinks as postlinks_1
    inner join posts as posts_1
    on (postlinks_1.id = posts_1.id )
where postlinks_1.relatedpostid is not NULL
group by postlinks_1.creationdate, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid, posts_1.acceptedanswerid, posts_1.creationdate, posts_1.tags
limit 30;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.id, 
  comments_1.userdisplayname, 
  comments_1.contentlicense, 
  comments_1.text
from 
  comments as comments_1
where comments_1.postid is not NULL
limit 9;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    posthistory_1.id), 
  posthistory_1.revisionguid, 
  posthistory_1.creationdate, 
  badges_1.tagbased
from 
  badges as badges_1
      inner join posthistory as posthistory_1
      on (badges_1.id = posthistory_1.id )
    inner join votes as votes_1
    on (posthistory_1.id = votes_1.id )
where posthistory_1.userid is not NULL
group by badges_1.tagbased, posthistory_1.creationdate, posthistory_1.revisionguid
limit 28;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.id, 
  comments_1.creationdate, 
  comments_1.userdisplayname, 
  min(
    comments_1.creationdate)
from 
  comments as comments_1
where comments_1.creationdate >= comments_1.creationdate
group by comments_1.creationdate, comments_1.id, comments_1.userdisplayname
limit 28;
-- meta {"num_joins":4,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.userid, 
  votes_1.id, 
  votes_1.postid, 
  posthistory_1.comment, 
  posts_1.ownerdisplayname, 
  badges_1.id, 
  min(
    posts_1.acceptedanswerid), 
  max(
    votes_2.creationdate), 
  badges_1.tagbased
from 
  posthistory as posthistory_1
    inner join posts as posts_1
        inner join votes as votes_1
          inner join badges as badges_1
          on (votes_1.id = badges_1.id )
        on (posts_1.id = badges_1.id )
      inner join votes as votes_2
      on (posts_1.id = votes_2.id )
    on (posthistory_1.id = votes_1.id )
where votes_1.id is not NULL
group by badges_1.id, badges_1.tagbased, posthistory_1.comment, posthistory_1.userid, posts_1.ownerdisplayname, votes_1.id, votes_1.postid
limit 24;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.votetypeid
from 
  votes as votes_1
where votes_1.userid is not NULL
limit 24;
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  postlinks_1.creationdate, 
  users_1.profileimageurl, 
  min(
    postlinks_2.creationdate)
from 
  users as users_1
      inner join postlinks as postlinks_1
      on (users_1.id = postlinks_1.id )
    inner join postlinks as postlinks_2
      inner join posts as posts_1
      on (postlinks_2.id = posts_1.id )
    on (postlinks_1.id = posts_1.id )
where users_1.profileimageurl is not NULL
group by postlinks_1.creationdate, users_1.profileimageurl
limit 10;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    posts_1.creationdate), 
  posts_1.contentlicense, 
  posts_1.ownerdisplayname
from 
  posts as posts_1
where posts_1.id is not NULL
group by posts_1.contentlicense, posts_1.ownerdisplayname
limit 41;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.class, 
  badges_1.id, 
  badges_1.date, 
  min(
    badges_1.date)
from 
  badges as badges_1
where badges_1.name < badges_1.name
group by badges_1.class, badges_1.date, badges_1.id
limit 19;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.userid, 
  votes_1.postid
from 
  votes as votes_1
where votes_1.postid is not NULL
limit 12;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    comments_1.creationdate), 
  comments_1.contentlicense, 
  users_1.aboutme, 
  max(
    comments_1.userid), 
  users_1.profileimageurl
from 
  comments as comments_1
    inner join users as users_1
    on (comments_1.id = users_1.id )
where comments_1.userid is not NULL
group by comments_1.contentlicense, users_1.aboutme, users_1.profileimageurl
limit 42;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.id, 
  posthistory_1.revisionguid, 
  posthistory_1.comment
from 
  posthistory as posthistory_1
where posthistory_1.userid is not NULL
limit 30;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.name, 
  badges_1.userid, 
  min(
    badges_1.date), 
  max(
    badges_1.date), 
  badges_1.tagbased
from 
  badges as badges_1
where badges_1.userid is not NULL
group by badges_1.name, badges_1.tagbased, badges_1.userid
limit 37;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.displayname, 
  min(
    votes_1.creationdate)
from 
  votes as votes_1
    inner join users as users_1
      inner join postlinks as postlinks_1
      on (users_1.id = postlinks_1.id )
    on (votes_1.id = postlinks_1.id )
where users_1.websiteurl > users_1.displayname
group by users_1.displayname
limit 34;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.postid
from 
  votes as votes_1
    inner join users as users_1
    on (votes_1.id = users_1.id )
where votes_1.votetypeid is not NULL
limit 36;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.body, 
  posts_1.tags, 
  posts_1.creationdate
from 
  posts as posts_1
where posts_1.creationdate < posts_1.creationdate
limit 33;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    posthistory_1.creationdate), 
  posthistory_1.postid, 
  posthistory_1.id, 
  posthistory_1.text
from 
  posthistory as posthistory_1
where posthistory_1.revisionguid is not NULL
group by posthistory_1.id, posthistory_1.postid, posthistory_1.text
limit 6;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.userid, 
  votes_1.creationdate, 
  min(
    votes_1.creationdate), 
  votes_1.id, 
  votes_1.votetypeid, 
  min(
    votes_1.creationdate), 
  votes_1.postid, 
  count(*)
from 
  votes as votes_1
where votes_1.postid is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 38;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.text, 
  comments_1.creationdate
from 
  comments as comments_1
    inner join badges as badges_1
    on (comments_1.id = badges_1.id )
where comments_1.id < badges_1.class
limit 27;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.postid, 
  postlinks_1.creationdate, 
  users_1.displayname, 
  posts_1.contentlicense
from 
  users as users_1
      inner join users as users_2
      on (users_1.id = users_2.id )
    inner join posts as posts_1
      inner join posthistory as posthistory_1
          inner join users as users_3
          on (posthistory_1.id = users_3.id )
        inner join postlinks as postlinks_1
        on (posthistory_1.id = postlinks_1.id )
      on (posts_1.id = postlinks_1.id )
    on (users_2.id = posts_1.id )
where posts_1.creationdate = users_2.creationdate
limit 5;
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.contentlicense, 
  posthistory_1.id, 
  posthistory_1.creationdate, 
  postlinks_1.creationdate, 
  posthistory_1.revisionguid, 
  max(
    posthistory_1.creationdate), 
  postlinks_1.relatedpostid, 
  postlinks_1.postid, 
  avg(
    postlinks_1.linktypeid), 
  min(
    posthistory_1.posthistorytypeid), 
  postlinks_1.id, 
  count(
    posthistory_1.revisionguid)
from 
  posthistory as posthistory_1
    inner join postlinks as postlinks_1
    on (posthistory_1.id = postlinks_1.id )
where postlinks_1.id is not NULL
group by posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.id, posthistory_1.revisionguid, postlinks_1.creationdate, postlinks_1.id, postlinks_1.postid, postlinks_1.relatedpostid
limit 6;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.accountid, 
  users_1.displayname, 
  users_1.websiteurl
from 
  users as users_1
where users_1.displayname is not NULL
limit 2;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.profileimageurl, 
  min(
    users_1.creationdate), 
  users_1.websiteurl
from 
  badges as badges_1
    inner join users as users_1
    on (badges_1.id = users_1.id )
where badges_1.tagbased is not NULL
group by users_1.profileimageurl, users_1.websiteurl
limit 21;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.websiteurl, 
  users_1.displayname, 
  users_1.accountid, 
  users_1.id, 
  users_1.location, 
  users_1.profileimageurl
from 
  users as users_1
where users_1.profileimageurl is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.creationdate, 
  max(
    votes_1.postid)
from 
  votes as votes_1
where votes_1.postid is not NULL
group by votes_1.creationdate
limit 42;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    posthistory_1.contentlicense), 
  users_1.id, 
  posthistory_1.creationdate
from 
  posthistory as posthistory_1
      inner join users as users_1
      on (posthistory_1.id = users_1.id )
    inner join comments as comments_1
    on (posthistory_1.id = comments_1.id )
where users_1.websiteurl is not NULL
group by posthistory_1.creationdate, users_1.id
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.name, 
  comments_1.userid
from 
  comments as comments_1
    inner join badges as badges_1
    on (comments_1.id = badges_1.id )
where comments_1.userdisplayname is not NULL
limit 17;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    postlinks_1.postid), 
  min(
    postlinks_1.creationdate)
from 
  votes as votes_1
    inner join postlinks as postlinks_1
    on (votes_1.id = postlinks_1.id )
where postlinks_1.id is not NULL
limit 32;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.postid, 
  max(
    votes_1.creationdate), 
  max(
    votes_1.creationdate), 
  votes_1.id, 
  votes_1.creationdate, 
  max(
    votes_1.postid), 
  votes_1.votetypeid, 
  max(
    votes_1.creationdate)
from 
  votes as votes_1
where votes_1.id is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.votetypeid
limit 42;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  comments_1.id, 
  comments_1.contentlicense, 
  comments_1.creationdate, 
  comments_1.postid
from 
  comments as comments_1
where comments_1.userdisplayname is not NULL
group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.postid
limit 23;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    posts_1.creationdate), 
  posts_1.contentlicense, 
  max(
    posts_1.id), 
  min(
    posts_1.creationdate)
from 
  posts as posts_1
where posts_1.tags >= posts_1.body
group by posts_1.contentlicense
limit 17;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.creationdate, 
  users_1.accountid, 
  max(
    users_1.creationdate), 
  users_1.location
from 
  users as users_1
where users_1.displayname is not NULL
group by users_1.accountid, users_1.creationdate, users_1.location
limit 10;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.posttypeid, 
  postlinks_1.relatedpostid, 
  postlinks_1.postid, 
  posts_1.id, 
  posts_1.body, 
  postlinks_1.creationdate, 
  posts_1.owneruserid, 
  posts_1.parentid, 
  posts_1.tags, 
  max(
    posts_1.creationdate), 
  max(
    posts_1.creationdate)
from 
  posts as posts_1
    inner join postlinks as postlinks_1
    on (posts_1.id = postlinks_1.id )
where postlinks_1.linktypeid is not NULL
group by postlinks_1.creationdate, postlinks_1.postid, postlinks_1.relatedpostid, posts_1.body, posts_1.id, posts_1.owneruserid, posts_1.parentid, posts_1.posttypeid, posts_1.tags
limit 30;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.accountid, 
  users_1.id, 
  users_1.displayname, 
  users_1.creationdate, 
  users_1.websiteurl, 
  users_1.profileimageurl, 
  count(*), 
  count(*), 
  min(
    users_1.creationdate), 
  count(*), 
  users_1.location
from 
  users as users_1
where users_1.accountid is not NULL
group by users_1.accountid, users_1.creationdate, users_1.displayname, users_1.id, users_1.location, users_1.profileimageurl, users_1.websiteurl
limit 9;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.id, 
  postlinks_1.postid, 
  postlinks_1.linktypeid, 
  postlinks_1.creationdate, 
  min(
    postlinks_1.relatedpostid)
from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid
limit 6;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.contentlicense, 
  posts_1.id, 
  posts_1.body, 
  posts_1.title, 
  min(
    posts_1.creationdate), 
  max(
    posts_1.parentid)
from 
  posts as posts_1
where posts_1.parentid is not NULL
group by posts_1.body, posts_1.contentlicense, posts_1.id, posts_1.title
limit 34;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.date, 
  badges_1.id, 
  sum(
    badges_1.userid), 
  badges_1.class, 
  badges_1.userid, 
  badges_1.tagbased, 
  sum(
    badges_1.userid), 
  sum(
    badges_1.id), 
  badges_1.name
from 
  badges as badges_1
where badges_1.date is not NULL
group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
limit 19;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.creationdate
from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
limit 7;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.userdisplayname
from 
  posthistory as posthistory_1
where posthistory_1.creationdate = posthistory_1.creationdate
limit 6;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.userid
from 
  posthistory as posthistory_1
where posthistory_1.comment is not NULL
limit 26;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.creationdate, 
  posts_1.ownerdisplayname, 
  posts_1.contentlicense
from 
  posts as posts_1
where posts_1.tags is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    users_1.profileimageurl), 
  users_1.websiteurl, 
  users_1.displayname, 
  users_1.location, 
  users_1.id, 
  count(
    users_1.location)
from 
  users as users_1
where users_1.location is not NULL
group by users_1.displayname, users_1.id, users_1.location, users_1.websiteurl
limit 38;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.profileimageurl
from 
  users as users_1
where users_1.location is not NULL
limit 19;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    comments_1.creationdate), 
  comments_1.text, 
  max(
    users_1.profileimageurl), 
  comments_1.userdisplayname, 
  users_1.creationdate
from 
  comments as comments_1
    inner join users as users_1
    on (comments_1.id = users_1.id )
where comments_1.id is not NULL
group by comments_1.text, comments_1.userdisplayname, users_1.creationdate
limit 2;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.id, 
  posthistory_1.userdisplayname, 
  posthistory_1.contentlicense, 
  min(
    posthistory_1.creationdate), 
  posthistory_1.comment, 
  posthistory_1.postid, 
  posthistory_1.text, 
  count(
    posthistory_1.postid), 
  posthistory_1.revisionguid, 
  min(
    posthistory_1.creationdate), 
  posthistory_1.posthistorytypeid, 
  max(
    posthistory_1.creationdate), 
  posthistory_1.userid, 
  posthistory_1.creationdate
from 
  posthistory as posthistory_1
where posthistory_1.contentlicense is not NULL
group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userdisplayname, posthistory_1.userid
limit 30;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.aboutme, 
  users_1.profileimageurl, 
  users_1.displayname
from 
  users as users_1
where users_1.websiteurl is not NULL
limit 38;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.contentlicense, 
  posts_1.ownerdisplayname
from 
  posts as posts_1
where posts_1.contentlicense is not NULL
limit 36;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.id, 
  min(
    comments_1.creationdate), 
  comments_1.text
from 
  comments as comments_1
where comments_1.contentlicense is not NULL
group by comments_1.id, comments_1.text
limit 38;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.creationdate
from 
  votes as votes_1
    inner join posthistory as posthistory_1
        inner join postlinks as postlinks_1
        on (posthistory_1.id = postlinks_1.id )
      inner join posthistory as posthistory_2
      on (postlinks_1.id = posthistory_2.id )
    on (votes_1.id = posthistory_1.id )
where postlinks_1.id is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.userdisplayname, 
  posthistory_1.revisionguid, 
  posthistory_1.postid, 
  posthistory_1.userid, 
  posthistory_1.contentlicense
from 
  posthistory as posthistory_1
where posthistory_1.id <= posthistory_1.userid
limit 36;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.userid, 
  badges_1.id, 
  badges_1.class, 
  count(
    badges_1.name)
from 
  badges as badges_1
where badges_1.name is not NULL
group by badges_1.class, badges_1.id, badges_1.userid
limit 34;
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_2.displayname, 
  min(
    posthistory_1.creationdate), 
  votes_1.userid, 
  avg(
    posthistory_1.userid)
from 
  users as users_1
    inner join posthistory as posthistory_1
        inner join users as users_2
        on (posthistory_1.id = users_2.id )
      inner join votes as votes_1
      on (users_2.id = votes_1.id )
    on (users_1.id = posthistory_1.id )
where votes_1.userid is not NULL
group by users_2.displayname, votes_1.userid
limit 2;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.creationdate, 
  users_1.displayname, 
  posthistory_1.contentlicense, 
  users_2.aboutme, 
  users_1.accountid
from 
  posthistory as posthistory_1
      inner join users as users_1
      on (posthistory_1.id = users_1.id )
    inner join users as users_2
    on (users_1.id = users_2.id )
where users_1.creationdate is not NULL
limit 23;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.id
from 
  postlinks as postlinks_1
where postlinks_1.id is not NULL
limit 27;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    votes_1.postid)
from 
  votes as votes_1
where votes_1.votetypeid is not NULL
limit 27;
-- meta {"num_joins":1,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  min(
    votes_1.creationdate), 
  votes_1.votetypeid, 
  users_1.location, 
  count(*), 
  users_1.aboutme, 
  users_1.id, 
  count(
    users_1.accountid), 
  users_1.displayname, 
  users_1.websiteurl, 
  min(
    votes_1.creationdate), 
  votes_1.postid
from 
  users as users_1
    inner join votes as votes_1
    on (users_1.id = votes_1.id )
where votes_1.creationdate < users_1.creationdate
group by users_1.aboutme, users_1.displayname, users_1.id, users_1.location, users_1.websiteurl, votes_1.postid, votes_1.votetypeid
limit 12;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.date, 
  badges_1.id
from 
  badges as badges_1
where badges_1.name is not NULL
limit 30;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.id
from 
  posthistory as posthistory_1
where posthistory_1.posthistorytypeid is not NULL
limit 17;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.id
from 
  postlinks as postlinks_1
where postlinks_1.creationdate <= postlinks_1.creationdate
limit 24;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.accountid, 
  users_1.location, 
  users_1.aboutme, 
  sum(
    users_1.profileimageurl)
from 
  users as users_1
where users_1.accountid is not NULL
group by users_1.aboutme, users_1.accountid, users_1.location
limit 6;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.id, 
  posts_1.owneruserid
from 
  badges as badges_1
    inner join posts as posts_1
    on (badges_1.id = posts_1.id )
where posts_1.creationdate > badges_1.date
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.postid
from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
limit 5;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.profileimageurl, 
  users_1.id, 
  users_1.accountid, 
  users_1.creationdate
from 
  users as users_1
where users_1.creationdate <= users_1.creationdate
limit 31;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.websiteurl, 
  users_1.location
from 
  users as users_1
where users_1.aboutme is not NULL
limit 18;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_2.id
from 
  posts as posts_1
    inner join posts as posts_2
    on (posts_1.id = posts_2.id )
where posts_1.id is not NULL
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.revisionguid, 
  posthistory_1.text, 
  posthistory_1.contentlicense
from 
  posthistory as posthistory_1
    inner join posthistory as posthistory_2
    on (posthistory_1.id = posthistory_2.id )
where posthistory_2.userid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.creationdate, 
  min(
    votes_1.creationdate), 
  votes_1.userid, 
  votes_1.votetypeid
from 
  votes as votes_1
where votes_1.creationdate is not NULL
group by votes_1.creationdate, votes_1.userid, votes_1.votetypeid
limit 29;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.userid
from 
  votes as votes_1
where votes_1.userid is not NULL
limit 40;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.revisionguid, 
  badges_1.class, 
  min(
    badges_2.date), 
  posthistory_1.contentlicense, 
  posthistory_1.userdisplayname, 
  count(*), 
  badges_1.name
from 
  badges as badges_1
    inner join posthistory as posthistory_1
      inner join badges as badges_2
      on (posthistory_1.id = badges_2.id )
    on (badges_1.id = posthistory_1.id )
where posthistory_1.revisionguid = badges_1.name
group by badges_1.class, badges_1.name, posthistory_1.contentlicense, posthistory_1.revisionguid, posthistory_1.userdisplayname
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.postid, 
  posthistory_1.comment, 
  min(
    posthistory_1.userid), 
  posthistory_1.contentlicense
from 
  posthistory as posthistory_1
where posthistory_1.userid is not NULL
group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.postid
limit 39;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_3.displayname, 
  users_1.creationdate, 
  count(
    postlinks_1.linktypeid), 
  users_2.displayname
from 
  users as users_1
    inner join users as users_2
        inner join postlinks as postlinks_1
        on (users_2.id = postlinks_1.id )
      inner join users as users_3
      on (users_2.id = users_3.id )
    on (users_1.id = users_2.id )
where users_2.websiteurl is not NULL
group by users_1.creationdate, users_2.displayname, users_3.displayname
limit 32;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.creationdate
from 
  votes as votes_1
where votes_1.userid >= votes_1.postid
limit 42;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.linktypeid, 
  postlinks_2.id, 
  postlinks_1.creationdate, 
  postlinks_2.postid
from 
  postlinks as postlinks_1
    inner join postlinks as postlinks_2
    on (postlinks_1.id = postlinks_2.id )
where postlinks_1.postid is not NULL
limit 7;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.creationdate, 
  users_1.displayname
from 
  users as users_1
where users_1.location is not NULL
limit 24;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.creationdate
from 
  votes as votes_1
where votes_1.postid is not NULL
limit 16;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  postlinks_1.postid, 
  count(
    postlinks_1.postid), 
  postlinks_1.linktypeid, 
  postlinks_1.id, 
  postlinks_1.creationdate
from 
  postlinks as postlinks_1
where postlinks_1.id is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid
limit 15;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.userid, 
  min(
    badges_1.date)
from 
  badges as badges_1
where badges_1.id is not NULL
group by badges_1.userid
limit 10;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.postid, 
  votes_1.id, 
  votes_1.creationdate
from 
  votes as votes_1
where votes_1.creationdate is not NULL
limit 8;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.class, 
  min(
    badges_1.date), 
  badges_1.userid, 
  badges_1.id
from 
  badges as badges_1
where badges_1.name <= badges_1.name
group by badges_1.class, badges_1.id, badges_1.userid
limit 35;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.title, 
  postlinks_1.relatedpostid
from 
  postlinks as postlinks_1
    inner join posts as posts_1
    on (postlinks_1.id = posts_1.id )
where postlinks_1.postid is not NULL
limit 13;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    posts_1.creationdate), 
  votes_1.id, 
  max(
    votes_1.creationdate), 
  votes_1.userid
from 
  posts as posts_1
    inner join votes as votes_1
    on (posts_1.id = votes_1.id )
where posts_1.body is not NULL
group by votes_1.id, votes_1.userid
limit 37;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.location, 
  users_1.profileimageurl, 
  users_1.aboutme, 
  avg(
    users_1.profileimageurl), 
  users_1.id, 
  users_1.displayname
from 
  users as users_1
where users_1.profileimageurl is not NULL
group by users_1.aboutme, users_1.displayname, users_1.id, users_1.location, users_1.profileimageurl
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.postid
from 
  votes as votes_1
where votes_1.votetypeid is not NULL
limit 25;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.comment, 
  posthistory_1.postid, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.revisionguid
from 
  posthistory as posthistory_1
where posthistory_1.creationdate = posthistory_1.creationdate
limit 15;
-- meta {"num_joins":5,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.postid, 
  min(
    postlinks_1.postid), 
  votes_1.id, 
  posthistory_2.posthistorytypeid, 
  posthistory_1.id, 
  min(
    badges_1.date)
from 
  posthistory as posthistory_1
        inner join badges as badges_1
          inner join postlinks as postlinks_1
          on (badges_1.id = postlinks_1.id )
        on (posthistory_1.id = postlinks_1.id )
      inner join posthistory as posthistory_2
      on (postlinks_1.id = posthistory_2.id )
    inner join votes as votes_1
      inner join postlinks as postlinks_2
      on (votes_1.id = postlinks_2.id )
    on (posthistory_1.id = postlinks_2.id )
where badges_1.tagbased < badges_1.tagbased
group by posthistory_1.id, posthistory_1.postid, posthistory_2.posthistorytypeid, votes_1.id
limit 14;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.id, 
  posthistory_1.userid, 
  posthistory_1.comment, 
  postlinks_1.creationdate, 
  max(
    posthistory_1.creationdate), 
  postlinks_1.linktypeid
from 
  postlinks as postlinks_1
    inner join posthistory as posthistory_1
    on (postlinks_1.id = posthistory_1.id )
where postlinks_1.creationdate = posthistory_1.creationdate
group by posthistory_1.comment, posthistory_1.id, posthistory_1.userid, postlinks_1.creationdate, postlinks_1.linktypeid
limit 19;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    postlinks_1.creationdate), 
  postlinks_1.postid
from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid < postlinks_1.id
group by postlinks_1.postid
limit 38;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.accountid, 
  min(
    users_1.creationdate)
from 
  users as users_1
where users_1.creationdate >= users_1.creationdate
group by users_1.accountid
limit 27;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.userid, 
  comments_1.text, 
  comments_1.id
from 
  comments as comments_1
where comments_1.creationdate <= comments_1.creationdate
limit 36;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.body, 
  posts_1.tags, 
  max(
    posts_1.creationdate)
from 
  posts as posts_1
where posts_1.title is not NULL
group by posts_1.body, posts_1.tags
limit 37;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.creationdate
from 
  postlinks as postlinks_1
where postlinks_1.id is not NULL
limit 15;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.userdisplayname, 
  posthistory_1.postid, 
  comments_1.text, 
  comments_1.userid, 
  count(
    posthistory_1.creationdate)
from 
  posthistory as posthistory_1
    inner join comments as comments_1
    on (posthistory_1.id = comments_1.id )
where posthistory_1.userid is not NULL
group by comments_1.text, comments_1.userdisplayname, comments_1.userid, posthistory_1.postid
limit 29;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.creationdate, 
  postlinks_1.id, 
  posts_2.tags, 
  comments_1.postid, 
  comments_1.userid, 
  comments_1.userdisplayname
from 
  comments as comments_1
      inner join comments as comments_2
          inner join posts as posts_1
          on (comments_2.id = posts_1.id )
        inner join postlinks as postlinks_1
        on (comments_2.id = postlinks_1.id )
      on (comments_1.id = comments_2.id )
    inner join posts as posts_2
      inner join votes as votes_1
      on (posts_2.id = votes_1.id )
    on (comments_2.id = votes_1.id )
where votes_1.id is not NULL
limit 42;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.posthistorytypeid
from 
  badges as badges_1
    inner join posthistory as posthistory_1
    on (badges_1.id = posthistory_1.id )
where badges_1.name > posthistory_1.comment
limit 37;
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    comments_1.contentlicense), 
  comments_1.id, 
  max(
    posts_1.creationdate), 
  posts_1.id, 
  avg(
    votes_1.userid)
from 
  posts as posts_1
    inner join votes as votes_1
      inner join comments as comments_1
      on (votes_1.id = comments_1.id )
    on (posts_1.id = votes_1.id )
where posts_1.creationdate >= votes_1.creationdate
group by comments_1.id, posts_1.id
limit 15;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.contentlicense
from 
  posts as posts_1
where posts_1.owneruserid is not NULL
limit 18;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.id, 
  posthistory_1.postid
from 
  posthistory as posthistory_1
where posthistory_1.userid <= posthistory_1.postid
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.postid, 
  count(*)
from 
  comments as comments_1
where comments_1.id is not NULL
group by comments_1.postid
limit 32;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.ownerdisplayname, 
  posts_1.tags, 
  postlinks_1.linktypeid, 
  max(
    posts_1.creationdate), 
  postlinks_1.relatedpostid, 
  postlinks_1.postid, 
  posts_1.contentlicense, 
  posts_1.id, 
  posts_1.title, 
  posts_1.parentid, 
  posts_1.acceptedanswerid
from 
  posts as posts_1
    inner join postlinks as postlinks_1
    on (posts_1.id = postlinks_1.id )
where postlinks_1.id is not NULL
group by postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid, posts_1.acceptedanswerid, posts_1.contentlicense, posts_1.id, posts_1.ownerdisplayname, posts_1.parentid, posts_1.tags, posts_1.title
limit 24;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.body, 
  avg(
    posts_1.posttypeid), 
  posts_1.owneruserid, 
  posts_1.id
from 
  posts as posts_1
where posts_1.creationdate = posts_1.creationdate
group by posts_1.body, posts_1.id, posts_1.owneruserid
limit 30;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.websiteurl, 
  min(
    users_1.creationdate), 
  sum(
    users_1.profileimageurl), 
  users_1.accountid, 
  min(
    users_1.creationdate)
from 
  users as users_1
where users_1.profileimageurl < users_1.id
group by users_1.accountid, users_1.websiteurl
limit 39;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.websiteurl, 
  max(
    users_1.profileimageurl)
from 
  users as users_1
where users_1.location is not NULL
group by users_1.websiteurl
limit 28;
-- meta {"num_joins":6,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_2.creationdate, 
  badges_2.userid, 
  badges_2.tagbased, 
  max(
    votes_2.creationdate), 
  max(
    badges_1.date), 
  votes_2.userid
from 
  badges as badges_1
        inner join badges as badges_2
            inner join votes as votes_1
            on (badges_2.id = votes_1.id )
          inner join votes as votes_2
          on (badges_2.id = votes_2.id )
        on (badges_1.id = votes_2.id )
      inner join posthistory as posthistory_1
      on (votes_1.id = posthistory_1.id )
    inner join postlinks as postlinks_1
      inner join users as users_1
      on (postlinks_1.id = users_1.id )
    on (badges_1.id = postlinks_1.id )
where users_1.creationdate is not NULL
group by badges_2.tagbased, badges_2.userid, votes_2.creationdate, votes_2.userid
limit 16;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.text, 
  posthistory_1.postid, 
  posthistory_1.creationdate, 
  posthistory_1.userdisplayname, 
  count(*), 
  count(
    posthistory_1.postid), 
  posthistory_1.userid, 
  posthistory_1.contentlicense
from 
  posthistory as posthistory_1
where posthistory_1.userdisplayname is not NULL
group by posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.postid, posthistory_1.text, posthistory_1.userdisplayname, posthistory_1.userid
limit 31;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.revisionguid, 
  min(
    posthistory_1.creationdate), 
  min(
    posthistory_1.creationdate)
from 
  posthistory as posthistory_1
where posthistory_1.revisionguid <= posthistory_1.text
group by posthistory_1.revisionguid
limit 30;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.location
from 
  users as users_1
where users_1.displayname is not NULL
limit 31;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.id, 
  badges_1.class, 
  badges_1.name, 
  badges_1.date
from 
  badges as badges_1
where badges_1.userid is not NULL
limit 16;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.creationdate, 
  comments_1.contentlicense, 
  comments_1.userdisplayname, 
  min(
    comments_1.creationdate)
from 
  comments as comments_1
where comments_1.postid is not NULL
group by comments_1.contentlicense, comments_1.creationdate, comments_1.userdisplayname
limit 37;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.creationdate
from 
  posts as posts_1
where posts_1.contentlicense is not NULL
limit 32;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    votes_1.creationdate)
from 
  votes as votes_1
    inner join postlinks as postlinks_1
        inner join posts as posts_1
        on (postlinks_1.id = posts_1.id )
      inner join comments as comments_1
      on (postlinks_1.id = comments_1.id )
    on (votes_1.id = comments_1.id )
where postlinks_1.postid is not NULL
limit 28;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.acceptedanswerid, 
  posts_1.posttypeid, 
  badges_1.userid, 
  posts_1.creationdate, 
  badges_1.name, 
  posts_1.id
from 
  posts as posts_1
    inner join posthistory as posthistory_1
      inner join badges as badges_1
      on (posthistory_1.id = badges_1.id )
    on (posts_1.id = badges_1.id )
where posthistory_1.posthistorytypeid <= badges_1.class
limit 31;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.creationdate, 
  votes_1.votetypeid, 
  votes_1.userid, 
  votes_1.id
from 
  votes as votes_1
where votes_1.creationdate > votes_1.creationdate
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select distinct 
  posthistory_1.id
from 
  posthistory as posthistory_1
where posthistory_1.creationdate <= posthistory_1.creationdate
limit 5;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.postid
from 
  posthistory as posthistory_1
where posthistory_1.posthistorytypeid is not NULL
limit 5;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.postid, 
  posts_1.parentid
from 
  posthistory as posthistory_1
    inner join postlinks as postlinks_1
          inner join badges as badges_1
          on (postlinks_1.id = badges_1.id )
        inner join posts as posts_1
        on (postlinks_1.id = posts_1.id )
      inner join postlinks as postlinks_2
      on (postlinks_1.id = postlinks_2.id )
    on (posthistory_1.id = badges_1.id )
where badges_1.tagbased = badges_1.tagbased
limit 28;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.userid, 
  votes_1.creationdate, 
  votes_1.id
from 
  votes as votes_1
where votes_1.id is not NULL
limit 19;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_2.userdisplayname, 
  comments_1.text, 
  comments_1.postid
from 
  comments as comments_1
      inner join users as users_1
      on (comments_1.id = users_1.id )
    inner join comments as comments_2
    on (users_1.id = comments_2.id )
where comments_1.creationdate is not NULL
limit 17;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.relatedpostid
from 
  votes as votes_1
    inner join votes as votes_2
      inner join postlinks as postlinks_1
      on (votes_2.id = postlinks_1.id )
    on (votes_1.id = votes_2.id )
where postlinks_1.id is not NULL
limit 23;
-- meta {"num_joins":4,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.creationdate, 
  badges_2.date, 
  min(
    badges_2.date), 
  count(
    posthistory_2.id), 
  posthistory_1.userid, 
  comments_1.userid, 
  badges_2.name, 
  posthistory_1.userdisplayname, 
  posthistory_1.revisionguid, 
  posthistory_1.text, 
  posthistory_1.comment, 
  posthistory_2.id, 
  posthistory_2.revisionguid, 
  posthistory_2.userid
from 
  badges as badges_1
      inner join posthistory as posthistory_1
      on (badges_1.id = posthistory_1.id )
    inner join posthistory as posthistory_2
      inner join badges as badges_2
        inner join comments as comments_1
        on (badges_2.id = comments_1.id )
      on (posthistory_2.id = comments_1.id )
    on (badges_1.id = posthistory_2.id )
where badges_1.date is not NULL
group by badges_2.date, badges_2.name, comments_1.creationdate, comments_1.userid, posthistory_1.comment, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userdisplayname, posthistory_1.userid, posthistory_2.id, posthistory_2.revisionguid, posthistory_2.userid
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.location
from 
  users as users_1
where users_1.location is not NULL
limit 16;
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.location, 
  badges_1.name, 
  sum(
    comments_1.userid), 
  comments_1.creationdate, 
  max(
    comments_1.id), 
  badges_1.date, 
  comments_1.text, 
  comments_2.userdisplayname
from 
  comments as comments_1
      inner join badges as badges_1
        inner join comments as comments_2
        on (badges_1.id = comments_2.id )
      on (comments_1.id = comments_2.id )
    inner join users as users_1
    on (comments_2.id = users_1.id )
where badges_1.tagbased is not NULL
group by badges_1.date, badges_1.name, comments_1.creationdate, comments_1.text, comments_2.userdisplayname, users_1.location
limit 1;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.id, 
  comments_1.creationdate, 
  votes_1.userid
from 
  votes as votes_1
    inner join comments as comments_1
      inner join comments as comments_2
      on (comments_1.id = comments_2.id )
    on (votes_1.id = comments_1.id )
where votes_1.postid = comments_2.userid
limit 8;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.id
from 
  badges as badges_1
where badges_1.class is not NULL
limit 3;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.id, 
  comments_1.creationdate, 
  posthistory_1.text, 
  votes_1.votetypeid, 
  comments_1.text, 
  posts_1.tags, 
  posts_1.title, 
  max(
    posthistory_1.posthistorytypeid)
from 
  posthistory as posthistory_1
      inner join comments as comments_1
      on (posthistory_1.id = comments_1.id )
    inner join posts as posts_1
      inner join votes as votes_1
      on (posts_1.id = votes_1.id )
    on (posthistory_1.id = posts_1.id )
where votes_1.id is not NULL
group by comments_1.creationdate, comments_1.id, comments_1.text, posthistory_1.text, posts_1.tags, posts_1.title, votes_1.votetypeid
limit 26;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.contentlicense, 
  votes_1.id, 
  count(
    votes_1.creationdate), 
  votes_1.postid, 
  comments_1.userdisplayname, 
  comments_1.id, 
  posthistory_1.userid, 
  comments_1.creationdate, 
  comments_1.contentlicense, 
  max(
    posthistory_1.posthistorytypeid), 
  votes_1.userid
from 
  posthistory as posthistory_1
    inner join votes as votes_1
      inner join comments as comments_1
      on (votes_1.id = comments_1.id )
    on (posthistory_1.id = comments_1.id )
where votes_1.id >= votes_1.postid
group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.userdisplayname, posthistory_1.contentlicense, posthistory_1.userid, votes_1.id, votes_1.postid, votes_1.userid
limit 15;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.tags, 
  badges_1.id
from 
  posts as posts_1
      inner join badges as badges_1
      on (posts_1.id = badges_1.id )
    inner join comments as comments_1
    on (badges_1.id = comments_1.id )
where badges_1.id is not NULL
limit 36;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    posts_1.creationdate), 
  posts_1.title, 
  posts_1.posttypeid, 
  posts_1.owneruserid, 
  posts_1.contentlicense, 
  posts_1.body, 
  max(
    posts_1.creationdate), 
  min(
    posts_1.creationdate)
from 
  posts as posts_1
where posts_1.title is not NULL
group by posts_1.body, posts_1.contentlicense, posts_1.owneruserid, posts_1.posttypeid, posts_1.title
limit 40;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.creationdate, 
  votes_1.postid
from 
  votes as votes_1
where votes_1.postid is not NULL
limit 6;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.postid, 
  posthistory_1.userid, 
  min(
    posthistory_1.creationdate), 
  posthistory_1.comment
from 
  posthistory as posthistory_1
where posthistory_1.creationdate = posthistory_1.creationdate
group by posthistory_1.comment, posthistory_1.postid, posthistory_1.userid
limit 37;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.postid
from 
  posts as posts_1
        inner join postlinks as postlinks_1
        on (posts_1.id = postlinks_1.id )
      inner join postlinks as postlinks_2
        inner join votes as votes_1
        on (postlinks_2.id = votes_1.id )
      on (posts_1.id = postlinks_2.id )
    inner join postlinks as postlinks_3
      inner join postlinks as postlinks_4
      on (postlinks_3.id = postlinks_4.id )
    on (votes_1.id = postlinks_4.id )
where posts_1.posttypeid is not NULL
limit 5;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.id
from 
  comments as comments_1
    inner join postlinks as postlinks_1
    on (comments_1.id = postlinks_1.id )
where postlinks_1.creationdate is not NULL
limit 17;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.id, 
  comments_1.creationdate
from 
  comments as comments_1
where comments_1.creationdate is not NULL
limit 12;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    postlinks_1.relatedpostid), 
  badges_1.date, 
  count(
    postlinks_1.creationdate)
from 
  badges as badges_1
    inner join postlinks as postlinks_1
    on (badges_1.id = postlinks_1.id )
where postlinks_1.postid is not NULL
group by badges_1.date
limit 23;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.id, 
  users_1.accountid
from 
  users as users_1
where users_1.profileimageurl is not NULL
limit 15;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.userdisplayname, 
  posthistory_1.text, 
  posthistory_1.creationdate
from 
  posthistory as posthistory_1
where posthistory_1.id is not NULL
limit 34;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.userdisplayname, 
  comments_1.postid, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.id
from 
  comments as comments_1
    inner join users as users_1
      inner join posthistory as posthistory_1
      on (users_1.id = posthistory_1.id )
    on (comments_1.id = posthistory_1.id )
where users_1.creationdate = posthistory_1.creationdate
limit 5;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.comment, 
  users_1.displayname, 
  posthistory_1.id, 
  users_1.websiteurl, 
  posthistory_1.text, 
  users_1.accountid, 
  avg(
    posthistory_1.posthistorytypeid)
from 
  users as users_1
      inner join votes as votes_1
      on (users_1.id = votes_1.id )
    inner join posthistory as posthistory_1
    on (votes_1.id = posthistory_1.id )
where users_1.accountid <= votes_1.id
group by posthistory_1.comment, posthistory_1.id, posthistory_1.text, users_1.accountid, users_1.displayname, users_1.websiteurl
limit 25;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_2.creationdate, 
  sum(
    votes_2.postid)
from 
  votes as votes_1
      inner join users as users_1
      on (votes_1.id = users_1.id )
    inner join votes as votes_2
    on (users_1.id = votes_2.id )
where users_1.location is not NULL
group by votes_2.creationdate
limit 12;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.owneruserid, 
  posts_1.id, 
  posts_1.acceptedanswerid, 
  posts_1.tags
from 
  posts as posts_1
where posts_1.creationdate = posts_1.creationdate
limit 13;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    posts_1.creationdate)
from 
  posts as posts_1
where posts_1.parentid is not NULL
limit 28;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.votetypeid, 
  votes_1.id, 
  min(
    votes_1.id)
from 
  votes as votes_1
where votes_1.postid is not NULL
group by votes_1.id, votes_1.votetypeid
limit 32;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.id, 
  votes_2.id, 
  votes_1.postid
from 
  votes as votes_1
      inner join votes as votes_2
      on (votes_1.id = votes_2.id )
    inner join postlinks as postlinks_1
      inner join posts as posts_1
      on (postlinks_1.id = posts_1.id )
    on (votes_2.id = postlinks_1.id )
where votes_2.postid is not NULL
limit 30;
-- meta {"num_joins":2,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    postlinks_1.postid), 
  postlinks_1.creationdate, 
  posts_1.creationdate, 
  posts_1.ownerdisplayname, 
  posts_1.acceptedanswerid, 
  max(
    posts_1.acceptedanswerid), 
  count(
    posts_1.parentid), 
  votes_1.votetypeid, 
  posts_1.posttypeid, 
  count(
    posts_1.acceptedanswerid), 
  votes_1.userid, 
  posts_1.contentlicense, 
  postlinks_1.postid, 
  postlinks_1.relatedpostid, 
  posts_1.owneruserid, 
  votes_1.postid, 
  votes_1.creationdate
from 
  votes as votes_1
    inner join postlinks as postlinks_1
      inner join posts as posts_1
      on (postlinks_1.id = posts_1.id )
    on (votes_1.id = posts_1.id )
where postlinks_1.id is not NULL
group by postlinks_1.creationdate, postlinks_1.postid, postlinks_1.relatedpostid, posts_1.acceptedanswerid, posts_1.contentlicense, posts_1.creationdate, posts_1.ownerdisplayname, posts_1.owneruserid, posts_1.posttypeid, votes_1.creationdate, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 10;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.name
from 
  badges as badges_1
where badges_1.name is not NULL
limit 33;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    users_1.id), 
  count(*), 
  users_1.websiteurl, 
  users_1.location, 
  users_1.creationdate, 
  users_1.aboutme
from 
  users as users_1
where users_1.aboutme is not NULL
group by users_1.aboutme, users_1.creationdate, users_1.location, users_1.websiteurl
limit 28;
-- meta {"num_joins":5,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    posthistory_1.userid)
from 
  badges as badges_1
        inner join users as users_1
          inner join postlinks as postlinks_1
            inner join posts as posts_1
            on (postlinks_1.id = posts_1.id )
          on (users_1.id = postlinks_1.id )
        on (badges_1.id = postlinks_1.id )
      inner join users as users_2
      on (posts_1.id = users_2.id )
    inner join posthistory as posthistory_1
    on (users_1.id = posthistory_1.id )
where badges_1.tagbased <= badges_1.tagbased
limit 11;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.userdisplayname, 
  min(
    posthistory_1.postid), 
  posthistory_1.userid, 
  count(*), 
  posthistory_1.id, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.comment, 
  max(
    posthistory_1.userid), 
  avg(
    posthistory_1.userid)
from 
  posthistory as posthistory_1
where posthistory_1.creationdate <= posthistory_1.creationdate
group by posthistory_1.comment, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.userdisplayname, posthistory_1.userid
limit 38;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_2.creationdate, 
  comments_1.contentlicense
from 
  votes as votes_1
      inner join votes as votes_2
      on (votes_1.id = votes_2.id )
    inner join comments as comments_1
    on (votes_1.id = comments_1.id )
where comments_1.userdisplayname < comments_1.contentlicense
limit 21;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.id, 
  users_1.profileimageurl, 
  users_1.websiteurl, 
  users_1.accountid, 
  min(
    users_1.accountid), 
  users_1.creationdate, 
  users_1.aboutme, 
  users_1.location
from 
  users as users_1
where users_1.aboutme is not NULL
group by users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.id, users_1.location, users_1.profileimageurl, users_1.websiteurl
limit 17;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.userid
from 
  posthistory as posthistory_1
where posthistory_1.creationdate >= posthistory_1.creationdate
limit 40;
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.tags, 
  max(
    postlinks_1.id), 
  count(*), 
  users_1.id, 
  count(*), 
  users_1.profileimageurl
from 
  postlinks as postlinks_1
    inner join posts as posts_1
      inner join users as users_1
      on (posts_1.id = users_1.id )
    on (postlinks_1.id = users_1.id )
where postlinks_1.creationdate is not NULL
group by posts_1.tags, users_1.id, users_1.profileimageurl
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.userid, 
  badges_1.date, 
  badges_1.class, 
  badges_1.name
from 
  badges as badges_1
where badges_1.userid is not NULL
limit 42;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.creationdate, 
  max(
    votes_1.creationdate), 
  votes_1.id, 
  votes_1.postid, 
  votes_1.userid, 
  min(
    votes_1.id), 
  votes_1.votetypeid, 
  max(
    votes_1.creationdate)
from 
  votes as votes_1
where votes_1.creationdate is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 9;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.profileimageurl, 
  users_1.accountid, 
  count(*), 
  count(
    users_1.aboutme), 
  users_1.id, 
  users_1.displayname, 
  avg(
    users_1.id), 
  users_1.creationdate, 
  users_1.websiteurl, 
  max(
    users_1.profileimageurl), 
  users_1.location, 
  count(
    users_1.profileimageurl)
from 
  users as users_1
where users_1.aboutme >= users_1.location
group by users_1.accountid, users_1.creationdate, users_1.displayname, users_1.id, users_1.location, users_1.profileimageurl, users_1.websiteurl
limit 19;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.acceptedanswerid, 
  comments_2.userid
from 
  comments as comments_1
      inner join posts as posts_1
      on (comments_1.id = posts_1.id )
    inner join comments as comments_2
    on (posts_1.id = comments_2.id )
where posts_1.parentid is not NULL
limit 20;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.contentlicense, 
  posts_1.body, 
  posts_1.parentid
from 
  posts as posts_1
where posts_1.creationdate is not NULL
limit 39;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.tags
from 
  posts as posts_1
where posts_1.body is not NULL
limit 8;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.date
from 
  users as users_1
      inner join comments as comments_1
        inner join badges as badges_1
        on (comments_1.id = badges_1.id )
      on (users_1.id = comments_1.id )
    inner join votes as votes_1
    on (badges_1.id = votes_1.id )
where badges_1.tagbased = badges_1.tagbased
limit 32;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.postid, 
  postlinks_1.id, 
  min(
    postlinks_1.id), 
  postlinks_1.relatedpostid, 
  max(
    postlinks_1.linktypeid), 
  postlinks_1.linktypeid
from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
group by postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 14;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.userid, 
  min(
    comments_1.creationdate), 
  comments_1.userdisplayname
from 
  comments as comments_1
where comments_1.id is not NULL
group by comments_1.userdisplayname, comments_1.userid
limit 15;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.votetypeid
from 
  votes as votes_1
where votes_1.id is not NULL
limit 1;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_2.id
from 
  votes as votes_1
      inner join posts as posts_1
      on (votes_1.id = posts_1.id )
    inner join posthistory as posthistory_1
      inner join postlinks as postlinks_1
          inner join postlinks as postlinks_2
          on (postlinks_1.id = postlinks_2.id )
        inner join votes as votes_2
        on (postlinks_2.id = votes_2.id )
      on (posthistory_1.id = votes_2.id )
    on (votes_1.id = votes_2.id )
where posts_1.contentlicense >= posts_1.body
limit 39;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_3.creationdate, 
  comments_2.creationdate
from 
  comments as comments_1
    inner join comments as comments_2
        inner join comments as comments_3
        on (comments_2.id = comments_3.id )
      inner join comments as comments_4
      on (comments_3.id = comments_4.id )
    on (comments_1.id = comments_2.id )
where comments_3.creationdate >= comments_2.creationdate
limit 35;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.contentlicense, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.postid
from 
  posthistory as posthistory_1
where posthistory_1.text is not NULL
limit 18;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.displayname, 
  users_1.profileimageurl, 
  votes_1.postid, 
  votes_1.userid
from 
  users as users_1
    inner join votes as votes_1
    on (users_1.id = votes_1.id )
where users_1.location = users_1.aboutme
limit 30;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.votetypeid, 
  comments_1.userdisplayname
from 
  posts as posts_1
        inner join posts as posts_2
        on (posts_1.id = posts_2.id )
      inner join votes as votes_1
      on (posts_1.id = votes_1.id )
    inner join posthistory as posthistory_1
        inner join comments as comments_1
        on (posthistory_1.id = comments_1.id )
      inner join posthistory as posthistory_2
      on (posthistory_1.id = posthistory_2.id )
    on (posts_2.id = posthistory_2.id )
where comments_1.id is not NULL
limit 41;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.creationdate, 
  comments_1.postid
from 
  comments as comments_1
where comments_1.userid is not NULL
limit 22;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.relatedpostid, 
  postlinks_1.creationdate, 
  postlinks_1.postid
from 
  postlinks as postlinks_1
where postlinks_1.linktypeid > postlinks_1.id
limit 19;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.votetypeid
from 
  votes as votes_1
where votes_1.postid is not NULL
limit 34;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.body, 
  posts_1.tags, 
  count(
    posts_1.acceptedanswerid)
from 
  posts as posts_1
where posts_1.owneruserid is not NULL
group by posts_1.body, posts_1.tags
limit 31;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.userid, 
  comments_1.creationdate, 
  comments_1.id, 
  comments_1.text, 
  comments_1.postid
from 
  comments as comments_1
where comments_1.text is not NULL
limit 37;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.userdisplayname
from 
  comments as comments_1
      inner join posthistory as posthistory_1
      on (comments_1.id = posthistory_1.id )
    inner join users as users_1
    on (posthistory_1.id = users_1.id )
where users_1.accountid = posthistory_1.userid
limit 27;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.creationdate, 
  votes_1.userid
from 
  votes as votes_1
where votes_1.userid is not NULL
limit 41;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.tagbased
from 
  votes as votes_1
    inner join badges as badges_1
    on (votes_1.id = badges_1.id )
where badges_1.class is not NULL
limit 17;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.postid, 
  comments_1.id, 
  comments_1.text
from 
  comments as comments_1
where comments_1.postid is not NULL
limit 24;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.creationdate
from 
  users as users_1
      inner join comments as comments_1
      on (users_1.id = comments_1.id )
    inner join postlinks as postlinks_1
    on (comments_1.id = postlinks_1.id )
where users_1.accountid < comments_1.postid
limit 26;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.userid
from 
  badges as badges_1
where badges_1.name is not NULL
limit 24;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.postid
from 
  posthistory as posthistory_1
where posthistory_1.postid is not NULL
limit 16;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.creationdate, 
  posthistory_1.userid, 
  badges_2.userid, 
  postlinks_1.linktypeid, 
  posthistory_1.creationdate
from 
  badges as badges_1
    inner join postlinks as postlinks_1
      inner join posthistory as posthistory_1
        inner join badges as badges_2
        on (posthistory_1.id = badges_2.id )
      on (postlinks_1.id = badges_2.id )
    on (badges_1.id = posthistory_1.id )
where postlinks_1.id is not NULL
limit 12;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.creationdate, 
  comments_1.id, 
  comments_1.userid
from 
  comments as comments_1
where comments_1.userdisplayname is not NULL
limit 35;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.userid, 
  badges_1.class, 
  badges_1.id, 
  badges_1.tagbased, 
  badges_1.name, 
  badges_1.date
from 
  badges as badges_1
where badges_1.tagbased is not NULL
limit 18;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  users_1.creationdate, 
  users_1.accountid, 
  users_1.profileimageurl
from 
  users as users_1
where users_1.creationdate is not NULL
group by users_1.accountid, users_1.creationdate, users_1.profileimageurl
limit 3;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.creationdate
from 
  posts as posts_1
      inner join posts as posts_2
        inner join posthistory as posthistory_1
        on (posts_2.id = posthistory_1.id )
      on (posts_1.id = posthistory_1.id )
    inner join votes as votes_1
    on (posthistory_1.id = votes_1.id )
where posts_1.ownerdisplayname < posthistory_1.text
limit 28;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.class, 
  posthistory_1.id, 
  badges_1.tagbased
from 
  posthistory as posthistory_1
    inner join badges as badges_1
    on (posthistory_1.id = badges_1.id )
where badges_1.date is not NULL
limit 11;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select distinct 
  postlinks_1.postid, 
  postlinks_1.relatedpostid
from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    users_1.id), 
  users_1.id, 
  users_1.profileimageurl, 
  users_1.accountid, 
  users_1.displayname
from 
  users as users_1
where users_1.displayname is not NULL
group by users_1.accountid, users_1.displayname, users_1.id, users_1.profileimageurl
limit 12;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.creationdate, 
  posts_1.acceptedanswerid, 
  posts_2.title, 
  posts_2.owneruserid
from 
  posts as posts_1
    inner join posts as posts_2
    on (posts_1.id = posts_2.id )
where posts_1.acceptedanswerid is not NULL
limit 29;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.linktypeid, 
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid, 
  postlinks_1.id, 
  postlinks_1.postid
from 
  postlinks as postlinks_1
    inner join votes as votes_1
    on (postlinks_1.id = votes_1.id )
where postlinks_1.linktypeid is not NULL
limit 7;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.userid, 
  votes_1.postid, 
  max(
    votes_1.creationdate)
from 
  comments as comments_1
    inner join votes as votes_1
    on (comments_1.id = votes_1.id )
where votes_1.votetypeid is not NULL
group by votes_1.postid, votes_1.userid
limit 5;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.aboutme, 
  count(
    badges_1.date)
from 
  badges as badges_1
    inner join users as users_1
    on (badges_1.id = users_1.id )
where badges_1.tagbased >= badges_1.tagbased
group by users_1.aboutme
limit 20;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.postid, 
  votes_1.votetypeid, 
  count(
    votes_1.creationdate), 
  votes_1.creationdate
from 
  votes as votes_1
where votes_1.id < votes_1.postid
group by votes_1.creationdate, votes_1.postid, votes_1.votetypeid
limit 19;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.accountid, 
  count(*)
from 
  users as users_1
where users_1.profileimageurl is not NULL
group by users_1.accountid
limit 8;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    comments_2.creationdate)
from 
  badges as badges_1
    inner join comments as comments_1
        inner join users as users_1
        on (comments_1.id = users_1.id )
      inner join comments as comments_2
        inner join users as users_2
        on (comments_2.id = users_2.id )
      on (users_1.id = users_2.id )
    on (badges_1.id = users_1.id )
where comments_1.text <= comments_2.contentlicense
limit 13;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.relatedpostid
from 
  votes as votes_1
    inner join posthistory as posthistory_1
      inner join postlinks as postlinks_1
      on (posthistory_1.id = postlinks_1.id )
    on (votes_1.id = posthistory_1.id )
where posthistory_1.comment <= posthistory_1.contentlicense
limit 2;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.creationdate, 
  comments_1.userdisplayname, 
  max(
    comments_1.id), 
  max(
    comments_1.id), 
  min(
    comments_1.creationdate)
from 
  comments as comments_1
where comments_1.userid is not NULL
group by comments_1.creationdate, comments_1.userdisplayname
limit 14;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.postid
from 
  comments as comments_1
where comments_1.contentlicense is not NULL
limit 40;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.date, 
  max(
    badges_1.date), 
  badges_1.tagbased, 
  badges_1.id
from 
  badges as badges_1
where badges_1.tagbased < badges_1.tagbased
group by badges_1.date, badges_1.id, badges_1.tagbased
limit 26;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.class, 
  badges_1.tagbased, 
  badges_1.userid, 
  max(
    badges_1.date), 
  badges_1.name, 
  badges_1.date
from 
  badges as badges_1
where badges_1.name is not NULL
group by badges_1.class, badges_1.date, badges_1.name, badges_1.tagbased, badges_1.userid
limit 27;
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    badges_1.date), 
  min(
    votes_1.creationdate), 
  max(
    posthistory_1.creationdate), 
  posthistory_1.userdisplayname, 
  posthistory_1.id, 
  votes_1.votetypeid, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.postid, 
  badges_1.date, 
  badges_1.tagbased, 
  badges_1.userid, 
  badges_1.name
from 
  votes as votes_1
      inner join posthistory as posthistory_1
      on (votes_1.id = posthistory_1.id )
    inner join badges as badges_1
    on (votes_1.id = badges_1.id )
where badges_1.tagbased = badges_1.tagbased
group by badges_1.date, badges_1.name, badges_1.tagbased, badges_1.userid, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.userdisplayname, votes_1.votetypeid
limit 2;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid, 
  posts_1.creationdate, 
  postlinks_1.postid, 
  posts_1.acceptedanswerid, 
  posts_1.contentlicense, 
  max(
    posts_1.creationdate), 
  min(
    postlinks_1.creationdate)
from 
  posts as posts_1
    inner join postlinks as postlinks_1
    on (posts_1.id = postlinks_1.id )
where postlinks_1.id is not NULL
group by postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid, posts_1.acceptedanswerid, posts_1.contentlicense, posts_1.creationdate
limit 23;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.ownerdisplayname, 
  posts_1.creationdate, 
  count(
    posts_2.parentid), 
  posts_2.owneruserid
from 
  posts as posts_1
    inner join posts as posts_2
    on (posts_1.id = posts_2.id )
where posts_1.parentid is not NULL
group by posts_1.creationdate, posts_1.ownerdisplayname, posts_2.owneruserid
limit 39;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.class, 
  badges_1.userid, 
  comments_1.userdisplayname
from 
  badges as badges_1
    inner join comments as comments_1
    on (badges_1.id = comments_1.id )
where comments_1.userid is not NULL
limit 17;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.id
from 
  posts as posts_1
where posts_1.title is not NULL
limit 11;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.tagbased
from 
  badges as badges_1
where badges_1.id is not NULL
limit 29;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_2.id, 
  badges_1.userid
from 
  posthistory as posthistory_1
        inner join postlinks as postlinks_1
        on (posthistory_1.id = postlinks_1.id )
      inner join badges as badges_1
      on (postlinks_1.id = badges_1.id )
    inner join posts as posts_1
      inner join posts as posts_2
      on (posts_1.id = posts_2.id )
    on (posthistory_1.id = posts_2.id )
where posts_1.tags is not NULL
limit 23;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid
from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
limit 17;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.userid, 
  badges_1.tagbased
from 
  badges as badges_1
where badges_1.tagbased = badges_1.tagbased
limit 22;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.location, 
  users_1.accountid
from 
  users as users_1
where users_1.websiteurl is not NULL
limit 14;
-- meta {"num_joins":5,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.accountid, 
  comments_1.postid, 
  posts_1.posttypeid, 
  max(
    posts_1.creationdate), 
  max(
    users_1.id), 
  posts_1.title, 
  users_1.id, 
  badges_1.class
from 
  users as users_1
        inner join badges as badges_1
          inner join postlinks as postlinks_1
          on (badges_1.id = postlinks_1.id )
        on (users_1.id = badges_1.id )
      inner join posts as posts_1
      on (postlinks_1.id = posts_1.id )
    inner join comments as comments_1
      inner join postlinks as postlinks_2
      on (comments_1.id = postlinks_2.id )
    on (users_1.id = postlinks_2.id )
where posts_1.body is not NULL
group by badges_1.class, comments_1.postid, posts_1.posttypeid, posts_1.title, users_1.accountid, users_1.id
limit 26;
-- meta {"num_joins":6,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.id, 
  postlinks_1.relatedpostid, 
  max(
    posthistory_1.creationdate), 
  postlinks_1.id, 
  users_1.id, 
  users_2.location, 
  comments_1.text, 
  badges_1.date, 
  postlinks_1.postid
from 
  users as users_1
            inner join comments as comments_1
            on (users_1.id = comments_1.id )
          inner join comments as comments_2
          on (comments_1.id = comments_2.id )
        inner join badges as badges_1
          inner join users as users_2
          on (badges_1.id = users_2.id )
        on (users_1.id = badges_1.id )
      inner join postlinks as postlinks_1
      on (badges_1.id = postlinks_1.id )
    inner join posthistory as posthistory_1
    on (badges_1.id = posthistory_1.id )
where comments_1.text is not NULL
group by badges_1.date, badges_1.id, comments_1.text, postlinks_1.id, postlinks_1.postid, postlinks_1.relatedpostid, users_1.id, users_2.location
limit 37;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.accountid, 
  users_1.websiteurl, 
  users_1.displayname, 
  count(*), 
  users_1.profileimageurl, 
  users_1.location, 
  users_1.aboutme
from 
  users as users_1
where users_1.id < users_1.accountid
group by users_1.aboutme, users_1.accountid, users_1.displayname, users_1.location, users_1.profileimageurl, users_1.websiteurl
limit 22;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.id, 
  postlinks_1.postid, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.relatedpostid
from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
group by postlinks_1.id, postlinks_1.postid, postlinks_1.relatedpostid
limit 42;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.id, 
  votes_1.userid, 
  votes_1.creationdate, 
  max(
    votes_1.userid)
from 
  votes as votes_1
where votes_1.creationdate is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.userid
limit 32;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.websiteurl, 
  max(
    users_1.creationdate), 
  users_1.accountid, 
  users_1.location
from 
  users as users_1
where users_1.displayname is not NULL
group by users_1.accountid, users_1.location, users_1.websiteurl
limit 28;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    votes_1.creationdate), 
  votes_1.userid, 
  votes_1.postid
from 
  votes as votes_1
where votes_1.creationdate is not NULL
group by votes_1.postid, votes_1.userid
limit 5;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.displayname
from 
  users as users_1
where users_1.id is not NULL
limit 35;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_2.userid, 
  posthistory_2.posthistorytypeid, 
  posthistory_2.text, 
  posthistory_2.postid, 
  posthistory_1.id, 
  posthistory_2.id, 
  posthistory_1.userdisplayname, 
  posthistory_2.comment, 
  posthistory_2.revisionguid, 
  posthistory_1.userid, 
  max(
    posthistory_1.posthistorytypeid), 
  posthistory_2.userdisplayname
from 
  posthistory as posthistory_1
    inner join posthistory as posthistory_2
    on (posthistory_1.id = posthistory_2.id )
where posthistory_1.comment is not NULL
group by posthistory_1.id, posthistory_1.userdisplayname, posthistory_1.userid, posthistory_2.comment, posthistory_2.id, posthistory_2.posthistorytypeid, posthistory_2.postid, posthistory_2.revisionguid, posthistory_2.text, posthistory_2.userdisplayname, posthistory_2.userid
limit 9;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    posthistory_1.creationdate), 
  posthistory_1.posthistorytypeid, 
  posthistory_1.userdisplayname, 
  posthistory_1.id, 
  posthistory_1.text, 
  posthistory_1.contentlicense
from 
  posthistory as posthistory_1
where posthistory_1.creationdate <= posthistory_1.creationdate
group by posthistory_1.contentlicense, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.text, posthistory_1.userdisplayname
limit 32;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_2.creationdate, 
  badges_1.id
from 
  users as users_1
    inner join badges as badges_1
      inner join users as users_2
      on (badges_1.id = users_2.id )
    on (users_1.id = users_2.id )
where users_2.websiteurl is not NULL
limit 9;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.userid, 
  posthistory_1.posthistorytypeid
from 
  posthistory as posthistory_1
where posthistory_1.userdisplayname is not NULL
limit 30;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.userid
from 
  comments as comments_1
    inner join users as users_1
        inner join users as users_2
        on (users_1.id = users_2.id )
      inner join votes as votes_1
        inner join posthistory as posthistory_1
        on (votes_1.id = posthistory_1.id )
      on (users_1.id = votes_1.id )
    on (comments_1.id = users_1.id )
where votes_1.postid is not NULL
limit 8;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.id, 
  votes_1.votetypeid, 
  votes_1.userid
from 
  votes as votes_1
where votes_1.id is not NULL
limit 7;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.accountid, 
  sum(
    users_1.profileimageurl), 
  users_1.websiteurl
from 
  users as users_1
where users_1.profileimageurl is not NULL
group by users_1.accountid, users_1.websiteurl
limit 20;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.date, 
  badges_1.name, 
  badges_1.class, 
  badges_1.tagbased, 
  badges_1.userid
from 
  badges as badges_1
where badges_1.date >= badges_1.date
limit 39;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.id, 
  posthistory_1.postid, 
  badges_1.name, 
  votes_1.votetypeid, 
  votes_1.creationdate, 
  users_1.id
from 
  badges as badges_1
        inner join votes as votes_1
          inner join users as users_1
          on (votes_1.id = users_1.id )
        on (badges_1.id = votes_1.id )
      inner join posthistory as posthistory_1
      on (badges_1.id = posthistory_1.id )
    inner join users as users_2
    on (votes_1.id = users_2.id )
where votes_1.creationdate is not NULL
limit 37;
-- meta {"num_joins":6,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_3.votetypeid, 
  votes_3.id, 
  badges_1.tagbased, 
  votes_1.id, 
  badges_1.name, 
  sum(
    postlinks_1.id), 
  votes_1.postid, 
  votes_2.userid
from 
  votes as votes_1
        inner join votes as votes_2
          inner join badges as badges_1
            inner join votes as votes_3
            on (badges_1.id = votes_3.id )
          on (votes_2.id = votes_3.id )
        on (votes_1.id = votes_2.id )
      inner join posts as posts_1
      on (votes_1.id = posts_1.id )
    inner join postlinks as postlinks_1
      inner join badges as badges_2
      on (postlinks_1.id = badges_2.id )
    on (votes_1.id = badges_2.id )
where votes_3.userid is not NULL
group by badges_1.name, badges_1.tagbased, votes_1.id, votes_1.postid, votes_2.userid, votes_3.id, votes_3.votetypeid
limit 24;
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.postid, 
  comments_1.creationdate, 
  posts_1.id, 
  min(
    comments_1.userid), 
  max(
    comments_1.userid), 
  posts_1.body, 
  min(
    comments_1.userid), 
  comments_1.userid, 
  comments_1.contentlicense, 
  max(
    posts_1.acceptedanswerid), 
  posts_1.owneruserid
from 
  comments as comments_1
    inner join posts as posts_1
    on (comments_1.id = posts_1.id )
where comments_1.id is not NULL
group by comments_1.contentlicense, comments_1.creationdate, comments_1.postid, comments_1.userid, posts_1.body, posts_1.id, posts_1.owneruserid
limit 33;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    postlinks_1.creationdate), 
  postlinks_1.relatedpostid
from 
  postlinks as postlinks_1
where postlinks_1.id is not NULL
group by postlinks_1.relatedpostid
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.creationdate, 
  min(
    posthistory_1.creationdate)
from 
  posthistory as posthistory_1
where posthistory_1.text is not NULL
group by posthistory_1.creationdate
limit 38;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.userdisplayname, 
  badges_1.id
from 
  badges as badges_1
      inner join comments as comments_1
      on (badges_1.id = comments_1.id )
    inner join badges as badges_2
    on (badges_1.id = badges_2.id )
where comments_1.userid is not NULL
limit 31;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.id, 
  badges_1.class, 
  badges_1.tagbased, 
  badges_1.date, 
  badges_1.userid, 
  badges_1.name, 
  count(*)
from 
  badges as badges_1
where badges_1.date is not NULL
group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
limit 25;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_2.owneruserid, 
  posts_1.title
from 
  badges as badges_1
      inner join posts as posts_1
        inner join badges as badges_2
        on (posts_1.id = badges_2.id )
      on (badges_1.id = posts_1.id )
    inner join posts as posts_2
    on (posts_1.id = posts_2.id )
where badges_1.class is not NULL
limit 18;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.id
from 
  badges as badges_1
where badges_1.tagbased is not NULL
limit 19;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.id, 
  users_1.aboutme, 
  postlinks_1.linktypeid, 
  users_1.id, 
  users_1.profileimageurl
from 
  postlinks as postlinks_1
    inner join users as users_1
    on (postlinks_1.id = users_1.id )
where users_1.websiteurl is not NULL
limit 32;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.posthistorytypeid
from 
  posthistory as posthistory_1
where posthistory_1.creationdate > posthistory_1.creationdate
limit 15;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.relatedpostid
from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
limit 31;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.votetypeid, 
  votes_1.creationdate, 
  votes_1.id
from 
  votes as votes_1
where votes_1.votetypeid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.websiteurl, 
  users_1.location, 
  users_1.aboutme
from 
  users as users_1
where users_1.accountid is not NULL
limit 21;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.revisionguid, 
  posthistory_1.posthistorytypeid
from 
  posthistory as posthistory_1
where posthistory_1.creationdate is not NULL
limit 23;
-- meta {"num_joins":4,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    comments_1.creationdate), 
  count(*), 
  badges_1.class, 
  badges_1.id, 
  min(
    comments_1.userid), 
  comments_2.contentlicense, 
  comments_1.contentlicense, 
  posts_1.creationdate
from 
  comments as comments_1
    inner join comments as comments_2
      inner join posts as posts_1
          inner join badges as badges_1
          on (posts_1.id = badges_1.id )
        inner join users as users_1
        on (posts_1.id = users_1.id )
      on (comments_2.id = posts_1.id )
    on (comments_1.id = badges_1.id )
where comments_2.id < comments_1.id
group by badges_1.class, badges_1.id, comments_1.contentlicense, comments_2.contentlicense, posts_1.creationdate
limit 34;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.date, 
  comments_1.userid
from 
  badges as badges_1
      inner join comments as comments_1
      on (badges_1.id = comments_1.id )
    inner join comments as comments_2
    on (badges_1.id = comments_2.id )
where badges_1.class is not NULL
limit 35;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.relatedpostid, 
  min(
    postlinks_1.creationdate), 
  postlinks_1.creationdate, 
  postlinks_1.postid, 
  postlinks_1.linktypeid, 
  postlinks_1.id
from 
  postlinks as postlinks_1
where postlinks_1.linktypeid < postlinks_1.id
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 35;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.userdisplayname, 
  comments_1.creationdate
from 
  comments as comments_1
where comments_1.userid is not NULL
limit 20;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.posthistorytypeid, 
  min(
    posthistory_1.postid)
from 
  posthistory as posthistory_1
where posthistory_1.creationdate is not NULL
group by posthistory_1.posthistorytypeid
limit 18;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    posthistory_1.creationdate), 
  posthistory_1.comment, 
  posthistory_1.text
from 
  posthistory as posthistory_1
    inner join votes as votes_1
    on (posthistory_1.id = votes_1.id )
where posthistory_1.contentlicense is not NULL
group by posthistory_1.comment, posthistory_1.text
limit 30;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.postid, 
  postlinks_1.creationdate
from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
limit 11;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    posts_1.creationdate), 
  posts_1.owneruserid, 
  count(
    posts_1.owneruserid), 
  posts_1.creationdate, 
  posts_1.contentlicense, 
  posts_1.title, 
  sum(
    posts_1.parentid), 
  posts_1.id, 
  posts_1.body, 
  posts_1.tags, 
  sum(
    posts_1.posttypeid), 
  posts_1.posttypeid
from 
  posts as posts_1
where posts_1.id = posts_1.parentid
group by posts_1.body, posts_1.contentlicense, posts_1.creationdate, posts_1.id, posts_1.owneruserid, posts_1.posttypeid, posts_1.tags, posts_1.title
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.creationdate, 
  votes_1.userid, 
  votes_1.votetypeid
from 
  votes as votes_1
where votes_1.userid is not NULL
limit 8;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.location, 
  users_1.websiteurl, 
  users_1.accountid
from 
  users as users_1
where users_1.location = users_1.aboutme
limit 27;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.comment, 
  badges_1.class, 
  badges_1.name, 
  badges_1.id, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.revisionguid, 
  badges_1.userid, 
  badges_1.tagbased
from 
  badges as badges_1
    inner join posthistory as posthistory_1
    on (badges_1.id = posthistory_1.id )
where posthistory_1.comment is not NULL
limit 22;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.posttypeid, 
  posts_1.owneruserid
from 
  posts as posts_1
where posts_1.creationdate is not NULL
limit 25;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid
from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
limit 16;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.text, 
  comments_1.creationdate, 
  comments_1.userdisplayname, 
  comments_1.id, 
  comments_1.userid, 
  max(
    comments_1.userid)
from 
  comments as comments_1
where comments_1.postid is not NULL
group by comments_1.creationdate, comments_1.id, comments_1.text, comments_1.userdisplayname, comments_1.userid
limit 37;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_2.id, 
  postlinks_1.creationdate, 
  postlinks_2.creationdate, 
  postlinks_2.relatedpostid
from 
  postlinks as postlinks_1
    inner join postlinks as postlinks_2
    on (postlinks_1.id = postlinks_2.id )
where postlinks_2.creationdate is not NULL
limit 37;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.creationdate, 
  postlinks_1.id, 
  votes_1.postid, 
  badges_1.tagbased, 
  posts_1.acceptedanswerid
from 
  postlinks as postlinks_1
        inner join posts as posts_1
        on (postlinks_1.id = posts_1.id )
      inner join votes as votes_1
      on (postlinks_1.id = votes_1.id )
    inner join badges as badges_1
    on (postlinks_1.id = badges_1.id )
where badges_1.userid is not NULL
limit 40;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.postid, 
  votes_1.userid, 
  votes_1.creationdate
from 
  votes as votes_1
where votes_1.creationdate <= votes_1.creationdate
limit 6;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.postid, 
  posthistory_1.text
from 
  votes as votes_1
      inner join posthistory as posthistory_1
      on (votes_1.id = posthistory_1.id )
    inner join posts as posts_1
    on (votes_1.id = posts_1.id )
where votes_1.postid is not NULL
limit 27;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_3.userid, 
  posthistory_2.revisionguid, 
  max(
    posthistory_1.userid), 
  posthistory_1.comment
from 
  posthistory as posthistory_1
    inner join posthistory as posthistory_2
      inner join posthistory as posthistory_3
      on (posthistory_2.id = posthistory_3.id )
    on (posthistory_1.id = posthistory_3.id )
where posthistory_3.id is not NULL
group by posthistory_1.comment, posthistory_2.revisionguid, posthistory_3.userid
limit 5;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    badges_1.date), 
  votes_2.creationdate, 
  badges_1.tagbased, 
  min(
    votes_2.creationdate)
from 
  votes as votes_1
      inner join badges as badges_1
      on (votes_1.id = badges_1.id )
    inner join votes as votes_2
    on (badges_1.id = votes_2.id )
where votes_2.id is not NULL
group by badges_1.tagbased, votes_2.creationdate
limit 41;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.profileimageurl
from 
  users as users_1
    inner join badges as badges_1
    on (users_1.id = badges_1.id )
where users_1.location is not NULL
limit 11;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.creationdate, 
  max(
    comments_1.creationdate), 
  comments_1.postid, 
  comments_1.userdisplayname
from 
  comments as comments_1
where comments_1.userid is not NULL
group by comments_1.creationdate, comments_1.postid, comments_1.userdisplayname
limit 35;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    votes_1.postid), 
  posthistory_1.postid, 
  votes_1.postid
from 
  posts as posts_1
      inner join votes as votes_1
      on (posts_1.id = votes_1.id )
    inner join posthistory as posthistory_1
    on (posts_1.id = posthistory_1.id )
where posthistory_1.revisionguid is not NULL
group by posthistory_1.postid, votes_1.postid
limit 27;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.userid, 
  postlinks_1.postid, 
  posthistory_1.id, 
  posts_1.posttypeid, 
  max(
    postlinks_2.linktypeid)
from 
  postlinks as postlinks_1
    inner join posthistory as posthistory_1
        inner join posts as posts_1
          inner join users as users_1
          on (posts_1.id = users_1.id )
        on (posthistory_1.id = posts_1.id )
      inner join postlinks as postlinks_2
      on (posts_1.id = postlinks_2.id )
    on (postlinks_1.id = posts_1.id )
where posthistory_1.userdisplayname is not NULL
group by posthistory_1.id, posthistory_1.userid, postlinks_1.postid, posts_1.posttypeid
limit 22;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.creationdate, 
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid, 
  postlinks_1.id
from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
limit 21;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.aboutme
from 
  users as users_1
where users_1.profileimageurl is not NULL
limit 39;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    users_1.creationdate)
from 
  users as users_1
    inner join votes as votes_1
    on (users_1.id = votes_1.id )
where users_1.accountid is not NULL
limit 11;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.id
from 
  badges as badges_1
    inner join postlinks as postlinks_1
    on (badges_1.id = postlinks_1.id )
where badges_1.id is not NULL
limit 5;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.creationdate
from 
  badges as badges_1
    inner join postlinks as postlinks_1
    on (badges_1.id = postlinks_1.id )
where badges_1.tagbased >= badges_1.tagbased
limit 5;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.id, 
  posts_1.title
from 
  posts as posts_1
where posts_1.creationdate < posts_1.creationdate
limit 22;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.posttypeid, 
  posts_1.owneruserid, 
  posts_1.body, 
  posts_1.acceptedanswerid
from 
  posts as posts_1
where posts_1.tags is not NULL
limit 2;
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.date, 
  min(
    badges_1.date), 
  badges_1.tagbased, 
  min(
    votes_1.votetypeid)
from 
  badges as badges_1
      inner join votes as votes_1
      on (badges_1.id = votes_1.id )
    inner join posts as posts_1
      inner join posthistory as posthistory_1
      on (posts_1.id = posthistory_1.id )
    on (badges_1.id = posthistory_1.id )
where posts_1.id is not NULL
group by badges_1.date, badges_1.tagbased
limit 19;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    votes_1.creationdate), 
  votes_1.votetypeid, 
  votes_1.creationdate, 
  min(
    votes_1.creationdate), 
  votes_1.userid
from 
  votes as votes_1
where votes_1.creationdate is not NULL
group by votes_1.creationdate, votes_1.userid, votes_1.votetypeid
limit 1;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    votes_2.userid), 
  votes_1.userid, 
  votes_1.id, 
  max(
    votes_1.creationdate), 
  votes_2.postid
from 
  votes as votes_1
    inner join votes as votes_2
    on (votes_1.id = votes_2.id )
where votes_1.creationdate is not NULL
group by votes_1.id, votes_1.userid, votes_2.postid
limit 23;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.id
from 
  votes as votes_1
where votes_1.id is not NULL
limit 39;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    badges_1.date), 
  comments_1.creationdate, 
  comments_1.userdisplayname
from 
  comments as comments_1
    inner join badges as badges_1
    on (comments_1.id = badges_1.id )
where comments_1.contentlicense is not NULL
group by comments_1.creationdate, comments_1.userdisplayname
limit 14;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.acceptedanswerid
from 
  votes as votes_1
    inner join posts as posts_1
    on (votes_1.id = posts_1.id )
where posts_1.owneruserid < posts_1.posttypeid
limit 33;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.postid, 
  max(
    comments_1.creationdate), 
  comments_1.userid, 
  comments_1.id, 
  max(
    comments_1.creationdate), 
  comments_1.contentlicense
from 
  comments as comments_1
where comments_1.creationdate is not NULL
group by comments_1.contentlicense, comments_1.id, comments_1.postid, comments_1.userid
limit 12;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.parentid, 
  posts_1.contentlicense, 
  posts_1.acceptedanswerid, 
  posts_1.title, 
  posts_1.owneruserid
from 
  posts as posts_1
where posts_1.body is not NULL
limit 16;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.accountid, 
  postlinks_1.creationdate, 
  postlinks_1.id, 
  users_1.creationdate, 
  users_1.location
from 
  postlinks as postlinks_1
    inner join users as users_1
    on (postlinks_1.id = users_1.id )
where users_1.creationdate is not NULL
limit 31;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_2.postid
from 
  posts as posts_1
        inner join votes as votes_1
          inner join posts as posts_2
          on (votes_1.id = posts_2.id )
        on (posts_1.id = votes_1.id )
      inner join badges as badges_1
      on (votes_1.id = badges_1.id )
    inner join votes as votes_2
    on (badges_1.id = votes_2.id )
where posts_2.posttypeid is not NULL
limit 40;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.id, 
  postlinks_1.postid, 
  postlinks_1.relatedpostid, 
  min(
    postlinks_1.id), 
  max(
    postlinks_1.creationdate), 
  postlinks_1.linktypeid
from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
group by postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 38;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.creationdate, 
  votes_1.postid, 
  votes_1.votetypeid, 
  votes_1.userid, 
  votes_1.id
from 
  votes as votes_1
where votes_1.userid <= votes_1.id
limit 8;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.relatedpostid, 
  users_1.location, 
  users_1.profileimageurl, 
  postlinks_1.linktypeid, 
  min(
    postlinks_1.creationdate), 
  postlinks_1.postid
from 
  users as users_1
    inner join postlinks as postlinks_1
    on (users_1.id = postlinks_1.id )
where postlinks_1.creationdate >= users_1.creationdate
group by postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid, users_1.location, users_1.profileimageurl
limit 24;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.creationdate
from 
  votes as votes_1
where votes_1.votetypeid is not NULL
limit 19;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.tags
from 
  posts as posts_1
    inner join comments as comments_1
    on (posts_1.id = comments_1.id )
where posts_1.acceptedanswerid is not NULL
limit 35;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.body, 
  posts_1.id, 
  avg(
    posts_1.parentid), 
  posts_1.ownerdisplayname, 
  posts_1.contentlicense
from 
  posts as posts_1
where posts_1.contentlicense is not NULL
group by posts_1.body, posts_1.contentlicense, posts_1.id, posts_1.ownerdisplayname
limit 33;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.profileimageurl, 
  badges_1.userid, 
  badges_1.tagbased, 
  badges_1.name, 
  users_1.creationdate, 
  badges_1.class, 
  min(
    badges_1.class), 
  users_1.id
from 
  badges as badges_1
    inner join users as users_1
    on (badges_1.id = users_1.id )
where users_1.displayname < users_1.aboutme
group by badges_1.class, badges_1.name, badges_1.tagbased, badges_1.userid, users_1.creationdate, users_1.id, users_1.profileimageurl
limit 38;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.id, 
  max(
    comments_1.postid), 
  comments_1.creationdate
from 
  comments as comments_1
where comments_1.creationdate < comments_1.creationdate
group by comments_1.creationdate, comments_1.id
limit 22;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.postid, 
  votes_1.userid, 
  votes_1.postid, 
  votes_1.votetypeid
from 
  postlinks as postlinks_1
    inner join votes as votes_1
      inner join posts as posts_1
        inner join postlinks as postlinks_2
        on (posts_1.id = postlinks_2.id )
      on (votes_1.id = postlinks_2.id )
    on (postlinks_1.id = postlinks_2.id )
where votes_1.id is not NULL
limit 37;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.acceptedanswerid
from 
  comments as comments_1
    inner join posts as posts_1
      inner join votes as votes_1
      on (posts_1.id = votes_1.id )
    on (comments_1.id = posts_1.id )
where comments_1.userdisplayname >= posts_1.ownerdisplayname
limit 33;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.accountid
from 
  users as users_1
    inner join posts as posts_1
    on (users_1.id = posts_1.id )
where users_1.websiteurl is not NULL
limit 38;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.date, 
  badges_1.tagbased, 
  badges_1.userid
from 
  badges as badges_1
where badges_1.class is not NULL
limit 22;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_2.id, 
  postlinks_1.postid, 
  postlinks_1.creationdate, 
  avg(
    postlinks_2.postid), 
  count(
    postlinks_2.relatedpostid), 
  postlinks_1.relatedpostid, 
  postlinks_1.id
from 
  postlinks as postlinks_1
    inner join postlinks as postlinks_2
    on (postlinks_1.id = postlinks_2.id )
where postlinks_2.linktypeid > postlinks_2.relatedpostid
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.postid, postlinks_1.relatedpostid, postlinks_2.id
limit 42;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.tags
from 
  posts as posts_1
where posts_1.parentid is not NULL
limit 32;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.body
from 
  posts as posts_1
    inner join badges as badges_1
    on (posts_1.id = badges_1.id )
where badges_1.tagbased is not NULL
limit 30;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    posthistory_1.id)
from 
  posthistory as posthistory_1
    inner join badges as badges_1
      inner join users as users_1
        inner join votes as votes_1
        on (users_1.id = votes_1.id )
      on (badges_1.id = users_1.id )
    on (posthistory_1.id = users_1.id )
where users_1.location is not NULL
limit 26;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.id, 
  min(
    badges_1.date), 
  badges_1.name, 
  badges_2.tagbased, 
  max(
    badges_2.date), 
  badges_2.id
from 
  postlinks as postlinks_1
      inner join badges as badges_1
      on (postlinks_1.id = badges_1.id )
    inner join badges as badges_2
    on (postlinks_1.id = badges_2.id )
where postlinks_1.id is not NULL
group by badges_1.name, badges_2.id, badges_2.tagbased, postlinks_1.id
limit 39;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_2.creationdate, 
  users_2.displayname, 
  users_2.location, 
  min(
    comments_1.creationdate)
from 
  posts as posts_1
      inner join users as users_1
      on (posts_1.id = users_1.id )
    inner join comments as comments_1
      inner join users as users_2
        inner join postlinks as postlinks_1
        on (users_2.id = postlinks_1.id )
      on (comments_1.id = postlinks_1.id )
    on (users_1.id = postlinks_1.id )
where postlinks_1.postid is not NULL
group by users_2.creationdate, users_2.displayname, users_2.location
limit 13;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.creationdate
from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
limit 18;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    posts_1.creationdate), 
  posts_1.ownerdisplayname, 
  posts_1.tags, 
  sum(
    posts_1.owneruserid)
from 
  posts as posts_1
where posts_1.contentlicense >= posts_1.body
group by posts_1.ownerdisplayname, posts_1.tags
limit 28;
-- meta {"num_joins":0,"num_aggregates":12,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.text, 
  avg(
    posthistory_1.id), 
  max(
    posthistory_1.creationdate), 
  min(
    posthistory_1.creationdate), 
  posthistory_1.creationdate, 
  posthistory_1.userdisplayname, 
  min(
    posthistory_1.creationdate), 
  posthistory_1.postid, 
  posthistory_1.userid, 
  posthistory_1.id, 
  posthistory_1.contentlicense, 
  min(
    posthistory_1.posthistorytypeid), 
  min(
    posthistory_1.id), 
  count(*), 
  max(
    posthistory_1.creationdate), 
  sum(
    posthistory_1.posthistorytypeid), 
  max(
    posthistory_1.creationdate), 
  posthistory_1.comment, 
  min(
    posthistory_1.creationdate), 
  min(
    posthistory_1.creationdate)
from 
  posthistory as posthistory_1
where posthistory_1.revisionguid is not NULL
group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.id, posthistory_1.postid, posthistory_1.text, posthistory_1.userdisplayname, posthistory_1.userid
limit 25;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.id, 
  count(*), 
  votes_1.userid, 
  votes_1.creationdate, 
  max(
    votes_1.userid), 
  votes_1.postid, 
  votes_1.votetypeid
from 
  votes as votes_1
where votes_1.creationdate < votes_1.creationdate
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 30;
