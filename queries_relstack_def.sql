select  
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.votetypeid is not NULL
limit 17;
select  
  comments_2.userid, 
  comments_1.creationdate, 
  comments_2.contentlicense, 
  comments_2.creationdate, 
  comments_2.contentlicense, 
  comments_2.text, 
  comments_1.text, 
  comments_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join comments as comments_2
      inner join postlinks as postlinks_1
      on (comments_2.id = postlinks_1.id )
    on (comments_1.id = postlinks_1.id )
where comments_2.userid is not NULL
limit 38;
select  
  badges_1.name, 
  badges_1.userid, 
  badges_1.name, 
  badges_1.class, 
  badges_1.userid, 
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.name > badges_1.name
limit 35;
select  
  sum(
    votes_1.id)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.id is not NULL
limit 4;
select  
  users_1.websiteurl, 
  users_1.creationdate, 
  users_1.displayname, 
  users_1.location, 
  users_1.location, 
  users_1.creationdate, 
  min(
    users_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.profileimageurl >= users_1.accountid
group by users_1.creationdate, users_1.displayname, users_1.location, users_1.websiteurl
limit 7;
select  
  posthistory_1.contentlicense, 
  posthistory_1.text, 
  posthistory_1.userdisplayname, 
  posthistory_1.comment, 
  posthistory_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.text is not NULL
limit 37;
select  
  votes_1.userid, 
  count(
    badges_1.tagbased), 
  sum(
    badges_1.id)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join votes as votes_1
      inner join badges as badges_1
        inner join votes as votes_2
        on (badges_1.id = votes_2.id )
      on (votes_1.id = votes_2.id )
    on (comments_1.id = votes_1.id )
where badges_1.userid is not NULL
group by votes_1.userid
limit 20;
select  
  users_1.aboutme, 
  users_1.aboutme, 
  users_1.creationdate, 
  users_1.accountid, 
  count(*), 
  users_1.displayname, 
  users_1.profileimageurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.accountid < users_1.profileimageurl
group by users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.displayname, users_1.profileimageurl
limit 7;
select  
  postlinks_1.linktypeid, 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate >= postlinks_1.creationdate
limit 38;
select  
  posthistory_1.creationdate, 
  posthistory_1.contentlicense, 
  posthistory_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.creationdate = posthistory_1.creationdate
limit 21;
select  
  max(
    votes_1.creationdate), 
  votes_1.id, 
  votes_1.userid, 
  count(*), 
  votes_1.id, 
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.id is not NULL
group by votes_1.id, votes_1.userid, votes_1.votetypeid
limit 38;
select  
  postlinks_1.creationdate, 
  min(
    postlinks_1.creationdate), 
  postlinks_1.postid, 
  postlinks_1.postid, 
  postlinks_1.id, 
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid, 
  postlinks_1.linktypeid, 
  postlinks_1.linktypeid, 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid <= postlinks_1.postid
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 37;
select  
  min(
    comments_1.id), 
  min(
    comments_1.creationdate), 
  comments_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userid is not NULL
group by comments_1.userdisplayname
limit 40;
select  
  min(
    posts_1.posttypeid), 
  posts_1.creationdate, 
  posts_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.ownerdisplayname is not NULL
group by posts_1.creationdate, posts_1.id
limit 2;
select  
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
      inner join votes as votes_1
      on (posthistory_1.id = votes_1.id )
    inner join users as users_1
    on (votes_1.id = users_1.id )
where users_1.profileimageurl is not NULL
limit 25;
select  
  votes_1.creationdate, 
  min(
    votes_1.creationdate), 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.id is not NULL
group by votes_1.creationdate
limit 10;
select  
  comments_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.id is not NULL
limit 7;
select  
  users_1.displayname, 
  postlinks_1.relatedpostid, 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join users as users_1
    on (postlinks_1.id = users_1.id )
where users_1.displayname is not NULL
limit 23;
select  
  posts_1.owneruserid, 
  max(
    posthistory_1.userid), 
  posts_1.ownerdisplayname, 
  count(*), 
  posts_1.contentlicense, 
  min(
    posts_1.creationdate), 
  posts_1.body, 
  posts_1.body, 
  posts_1.body, 
  posthistory_1.comment, 
  posthistory_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join posthistory as posthistory_1
    on (posts_1.id = posthistory_1.id )
where posts_1.id is not NULL
group by posthistory_1.comment, posthistory_1.id, posts_1.body, posts_1.contentlicense, posts_1.ownerdisplayname, posts_1.owneruserid
limit 27;
select  
  badges_1.userid, 
  max(
    posts_1.creationdate), 
  posthistory_1.userdisplayname, 
  posthistory_1.userdisplayname, 
  avg(
    posts_1.parentid), 
  count(*), 
  posthistory_1.postid, 
  badges_1.id, 
  posts_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join posts as posts_1
      inner join badges as badges_1
      on (posts_1.id = badges_1.id )
    on (posthistory_1.id = posts_1.id )
where posts_1.owneruserid is not NULL
group by badges_1.id, badges_1.userid, posthistory_1.postid, posthistory_1.userdisplayname, posts_1.creationdate
limit 23;
select  
  posts_1.body
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join comments as comments_1
    on (posts_1.id = comments_1.id )
where posts_1.id is not NULL
limit 19;
select  
  votes_1.userid, 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join votes as votes_1
    on (posthistory_1.id = votes_1.id )
where posthistory_1.comment <= posthistory_1.userdisplayname
limit 5;
select  
  users_2.creationdate, 
  users_1.displayname, 
  comments_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join users as users_2
      inner join comments as comments_1
      on (users_2.id = comments_1.id )
    on (users_1.id = comments_1.id )
where users_2.websiteurl is not NULL
limit 12;
select  
  max(
    users_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.location is not NULL
limit 26;
select  
  posts_1.title, 
  posts_1.parentid, 
  min(
    posts_1.creationdate), 
  posts_1.parentid, 
  posts_1.posttypeid, 
  posts_1.owneruserid, 
  sum(
    posts_1.posttypeid), 
  posts_1.body, 
  posts_1.body
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.posttypeid < posts_1.id
group by posts_1.body, posts_1.owneruserid, posts_1.parentid, posts_1.posttypeid, posts_1.title
limit 39;
select  
  posthistory_1.comment, 
  users_1.aboutme, 
  min(
    users_1.id), 
  users_1.displayname, 
  count(*), 
  min(
    posthistory_1.creationdate), 
  postlinks_1.creationdate, 
  postlinks_1.id, 
  badges_1.date, 
  min(
    postlinks_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
        inner join users as users_1
          inner join postlinks as postlinks_1
          on (users_1.id = postlinks_1.id )
        on (votes_1.id = users_1.id )
      inner join posthistory as posthistory_1
      on (votes_1.id = posthistory_1.id )
    inner join badges as badges_1
    on (users_1.id = badges_1.id )
where posthistory_1.comment > users_1.websiteurl
group by badges_1.date, posthistory_1.comment, postlinks_1.creationdate, postlinks_1.id, users_1.aboutme, users_1.displayname
limit 38;
select  
  sum(
    comments_1.postid), 
  comments_1.userdisplayname, 
  comments_1.postid, 
  comments_1.creationdate, 
  min(
    comments_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.creationdate is not NULL
group by comments_1.creationdate, comments_1.postid, comments_1.userdisplayname
limit 28;
select  
  posts_1.owneruserid, 
  posts_1.ownerdisplayname, 
  posts_1.acceptedanswerid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.tags > posts_1.ownerdisplayname
limit 6;
select  
  postlinks_1.relatedpostid, 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
limit 8;
select  
  posts_1.creationdate, 
  posts_1.posttypeid, 
  posts_1.posttypeid, 
  posts_1.owneruserid, 
  posts_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.posttypeid is not NULL
limit 7;
select  
  users_1.creationdate, 
  max(
    users_1.profileimageurl), 
  users_1.websiteurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.profileimageurl is not NULL
group by users_1.creationdate, users_1.websiteurl
limit 26;
select  
  min(
    users_1.profileimageurl), 
  comments_1.id, 
  max(
    comments_1.creationdate), 
  comments_1.text, 
  votes_1.postid, 
  comments_1.postid, 
  votes_1.postid, 
  votes_1.votetypeid, 
  votes_1.id, 
  users_1.displayname, 
  comments_1.contentlicense, 
  votes_1.votetypeid, 
  votes_1.votetypeid, 
  comments_1.userdisplayname, 
  votes_1.votetypeid, 
  comments_1.creationdate, 
  comments_1.creationdate, 
  comments_1.userdisplayname, 
  min(
    users_1.id), 
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join votes as votes_1
      inner join users as users_1
      on (votes_1.id = users_1.id )
    on (comments_1.id = users_1.id )
where users_1.accountid is not NULL
group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.text, comments_1.userdisplayname, users_1.displayname, votes_1.id, votes_1.postid, votes_1.votetypeid
limit 37;
select  
  posts_1.ownerdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.owneruserid is not NULL
limit 16;
select  
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
limit 27;
select  
  posts_1.acceptedanswerid, 
  posts_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.id is not NULL
limit 20;
select  
  badges_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.date is not NULL
limit 26;
select  
  users_1.accountid, 
  votes_2.postid, 
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join votes as votes_1
        inner join votes as votes_2
        on (votes_1.id = votes_2.id )
      inner join posts as posts_1
      on (votes_2.id = posts_1.id )
    on (users_1.id = votes_1.id )
where posts_1.parentid >= votes_1.votetypeid
limit 24;
select  
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.creationdate is not NULL
limit 4;
select  
  comments_1.text, 
  comments_1.userid, 
  comments_1.contentlicense, 
  comments_1.id, 
  comments_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.text is not NULL
limit 2;
select  
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
limit 2;
select  
  posts_1.creationdate, 
  max(
    posts_1.creationdate), 
  posts_1.ownerdisplayname, 
  posts_1.posttypeid, 
  posts_1.contentlicense, 
  min(
    posts_1.creationdate), 
  posts_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.contentlicense >= posts_1.title
group by posts_1.contentlicense, posts_1.creationdate, posts_1.id, posts_1.ownerdisplayname, posts_1.posttypeid
limit 13;
select  
  votes_1.userid, 
  users_1.aboutme, 
  sum(
    votes_1.postid), 
  votes_1.id, 
  users_1.id, 
  users_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join votes as votes_1
    on (users_1.id = votes_1.id )
where users_1.aboutme is not NULL
group by users_1.aboutme, users_1.id, votes_1.id, votes_1.userid
limit 9;
select  
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.userid >= votes_1.postid
limit 28;
select  
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
limit 23;
select  
  postlinks_1.creationdate, 
  posthistory_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
      inner join posthistory as posthistory_1
      on (postlinks_1.id = posthistory_1.id )
    inner join votes as votes_1
    on (postlinks_1.id = votes_1.id )
where posthistory_1.postid is not NULL
limit 5;
select  
  min(
    badges_2.date), 
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join badges as badges_2
      inner join postlinks as postlinks_1
      on (badges_2.id = postlinks_1.id )
    on (badges_1.id = postlinks_1.id )
where badges_1.date is not NULL
group by badges_1.userid
limit 40;
select  
  sum(
    votes_1.postid), 
  votes_1.creationdate, 
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.votetypeid is not NULL
group by votes_1.creationdate, votes_1.votetypeid
limit 39;
select  
  badges_1.id, 
  badges_1.name, 
  badges_1.name, 
  badges_1.class, 
  badges_1.class, 
  badges_1.date, 
  min(
    badges_1.date), 
  badges_1.date, 
  badges_1.class, 
  count(
    badges_1.tagbased), 
  badges_1.tagbased
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.date >= badges_1.date
group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased
limit 5;
select  
  users_1.displayname, 
  posts_1.id, 
  users_1.displayname, 
  users_1.websiteurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join postlinks as postlinks_1
      inner join users as users_1
        inner join comments as comments_1
        on (users_1.id = comments_1.id )
      on (postlinks_1.id = users_1.id )
    on (posts_1.id = postlinks_1.id )
where comments_1.id is not NULL
limit 22;
select  
  votes_1.userid, 
  votes_1.creationdate, 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.postid is not NULL
limit 30;
select  
  badges_1.tagbased, 
  badges_1.userid, 
  min(
    posthistory_1.creationdate), 
  posts_1.ownerdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
      inner join posts as posts_1
      on (postlinks_1.id = posts_1.id )
    inner join badges as badges_1
      inner join posthistory as posthistory_1
      on (badges_1.id = posthistory_1.id )
    on (posts_1.id = badges_1.id )
where posts_1.tags is not NULL
group by badges_1.tagbased, badges_1.userid, posts_1.ownerdisplayname
limit 5;
select  
  posthistory_1.revisionguid, 
  posthistory_1.contentlicense, 
  posthistory_1.creationdate, 
  max(
    posthistory_1.creationdate), 
  posthistory_1.id, 
  posthistory_1.text, 
  posthistory_1.revisionguid, 
  posthistory_1.id, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.postid, 
  posthistory_1.revisionguid, 
  posthistory_1.comment, 
  posthistory_1.userid, 
  posthistory_1.comment, 
  posthistory_1.userid, 
  posthistory_1.postid, 
  posthistory_1.userid, 
  posthistory_1.text, 
  posthistory_1.userdisplayname, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.userdisplayname, 
  posthistory_1.postid, 
  posthistory_1.revisionguid, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.comment, 
  posthistory_1.text, 
  posthistory_1.posthistorytypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.contentlicense is not NULL
group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userdisplayname, posthistory_1.userid
limit 30;
select  
  posthistory_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join posthistory as posthistory_1
    on (posts_1.id = posthistory_1.id )
where posthistory_1.creationdate is not NULL
limit 12;
select  
  max(
    posthistory_1.creationdate), 
  posthistory_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join posts as posts_1
      inner join postlinks as postlinks_1
        inner join posts as posts_2
        on (postlinks_1.id = posts_2.id )
      on (posts_1.id = posts_2.id )
    on (posthistory_1.id = posts_1.id )
where posts_2.id is not NULL
group by posthistory_1.id
limit 8;
select  
  users_1.location, 
  max(
    users_1.accountid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.location is not NULL
group by users_1.location
limit 1;
select  
  min(
    posts_1.acceptedanswerid), 
  max(
    comments_1.creationdate), 
  users_2.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
      inner join posts as posts_1
            inner join comments as comments_1
            on (posts_1.id = comments_1.id )
          inner join postlinks as postlinks_1
          on (posts_1.id = postlinks_1.id )
        inner join users as users_2
          inner join users as users_3
          on (users_2.id = users_3.id )
        on (postlinks_1.id = users_3.id )
      on (users_1.id = comments_1.id )
    inner join badges as badges_1
    on (posts_1.id = badges_1.id )
where posts_1.owneruserid is not NULL
group by users_2.creationdate
limit 17;
select  
  comments_1.userdisplayname, 
  max(
    comments_1.creationdate), 
  min(
    comments_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userdisplayname is not NULL
group by comments_1.userdisplayname
limit 2;
select  
  votes_1.votetypeid, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.id < votes_1.votetypeid
limit 20;
select  
  users_1.websiteurl, 
  posthistory_1.creationdate, 
  users_1.displayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join users as users_1
    on (posthistory_1.id = users_1.id )
where posthistory_1.creationdate is not NULL
limit 28;
select  
  users_1.profileimageurl, 
  sum(
    users_1.accountid), 
  users_1.creationdate, 
  users_1.profileimageurl, 
  users_1.creationdate, 
  users_1.id, 
  users_1.id, 
  users_1.websiteurl, 
  users_1.displayname, 
  users_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.websiteurl is not NULL
group by users_1.creationdate, users_1.displayname, users_1.id, users_1.profileimageurl, users_1.websiteurl
limit 15;
select  
  votes_1.postid, 
  min(
    votes_1.postid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join posts as posts_1
        inner join votes as votes_2
        on (posts_1.id = votes_2.id )
      inner join posthistory as posthistory_1
        inner join users as users_1
        on (posthistory_1.id = users_1.id )
      on (posts_1.id = users_1.id )
    on (votes_1.id = posts_1.id )
where users_1.creationdate is not NULL
group by votes_1.postid
limit 22;
select  
  votes_2.votetypeid, 
  avg(
    votes_2.id), 
  max(
    votes_2.creationdate), 
  votes_2.userid, 
  votes_2.postid, 
  votes_2.creationdate, 
  sum(
    votes_2.postid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join votes as votes_2
    on (votes_1.id = votes_2.id )
where votes_1.votetypeid is not NULL
group by votes_2.creationdate, votes_2.postid, votes_2.userid, votes_2.votetypeid
limit 39;
select  
  comments_1.postid, 
  comments_1.id, 
  comments_1.id, 
  comments_1.contentlicense, 
  comments_1.id, 
  comments_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.contentlicense is not NULL
limit 17;
select  
  users_2.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join users as users_2
    on (users_1.id = users_2.id )
where users_2.creationdate is not NULL
limit 13;
select  
  comments_1.contentlicense, 
  comments_1.userid, 
  comments_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.text is not NULL
limit 9;
select  
  posts_1.owneruserid, 
  posts_1.acceptedanswerid, 
  posts_1.contentlicense, 
  posts_1.creationdate, 
  posts_1.posttypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.creationdate > posts_1.creationdate
limit 14;
select  
  badges_1.userid, 
  badges_1.id, 
  badges_1.name, 
  badges_1.id, 
  count(
    badges_1.name), 
  badges_1.date, 
  badges_1.name, 
  badges_1.id, 
  badges_1.date, 
  badges_1.class, 
  badges_1.userid, 
  badges_1.id, 
  badges_1.name, 
  badges_1.name, 
  badges_1.class, 
  badges_1.class, 
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.class is not NULL
group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.userid
limit 2;
select  
  min(
    posts_1.id)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.creationdate <= posts_1.creationdate
limit 29;
select  
  users_1.aboutme, 
  users_1.creationdate, 
  count(*), 
  avg(
    posts_1.acceptedanswerid), 
  count(
    posts_1.id)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
          inner join users as users_1
          on (posts_1.id = users_1.id )
        inner join postlinks as postlinks_1
        on (posts_1.id = postlinks_1.id )
      inner join users as users_2
      on (users_1.id = users_2.id )
    inner join posts as posts_2
    on (users_2.id = posts_2.id )
where posts_1.contentlicense = posts_2.ownerdisplayname
group by users_1.aboutme, users_1.creationdate
limit 9;
select  
  posts_1.creationdate, 
  posts_1.posttypeid, 
  posts_1.parentid, 
  min(
    posts_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.tags is not NULL
group by posts_1.creationdate, posts_1.parentid, posts_1.posttypeid
limit 21;
select  
  posts_1.owneruserid, 
  posts_1.parentid, 
  posts_1.parentid, 
  posts_1.title, 
  posts_1.body, 
  count(
    posts_1.ownerdisplayname), 
  posts_1.acceptedanswerid, 
  posts_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.posttypeid = posts_1.id
group by posts_1.acceptedanswerid, posts_1.body, posts_1.creationdate, posts_1.owneruserid, posts_1.parentid, posts_1.title
limit 36;
select  
  posts_1.contentlicense, 
  posts_1.body, 
  posts_1.body, 
  posts_1.title
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.body is not NULL
limit 13;
select  
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate >= votes_1.creationdate
limit 4;
select  
  postlinks_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
limit 13;
select  
  comments_1.creationdate, 
  comments_1.id, 
  votes_1.userid, 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join votes as votes_1
    on (comments_1.id = votes_1.id )
where votes_1.id <= votes_1.postid
limit 36;
select  
  posthistory_1.id, 
  posthistory_1.creationdate, 
  posthistory_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.userdisplayname is not NULL
limit 42;
select  
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid, 
  postlinks_1.id, 
  avg(
    postlinks_1.postid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.relatedpostid
limit 30;
select  
  votes_2.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join votes as votes_2
    on (votes_1.id = votes_2.id )
where votes_2.id is not NULL
limit 7;
select  
  users_1.profileimageurl, 
  users_1.accountid, 
  users_1.websiteurl, 
  users_1.profileimageurl, 
  users_1.displayname, 
  users_1.creationdate, 
  sum(
    users_1.profileimageurl), 
  max(
    users_1.creationdate), 
  count(*), 
  sum(
    users_1.id), 
  users_1.location, 
  users_1.id, 
  users_1.websiteurl, 
  users_1.accountid, 
  min(
    users_1.creationdate), 
  max(
    users_1.creationdate), 
  min(
    users_1.id), 
  sum(
    users_1.accountid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.websiteurl <= users_1.aboutme
group by users_1.accountid, users_1.creationdate, users_1.displayname, users_1.id, users_1.location, users_1.profileimageurl, users_1.websiteurl
limit 38;
select  
  users_1.websiteurl, 
  users_1.websiteurl, 
  users_1.aboutme, 
  users_1.aboutme
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.displayname is not NULL
limit 38;
select  
  votes_1.postid, 
  max(
    votes_1.creationdate), 
  votes_1.creationdate, 
  votes_1.creationdate, 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.userid is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid
limit 20;
select  
  postlinks_1.creationdate, 
  max(
    postlinks_1.postid), 
  postlinks_1.id, 
  postlinks_1.creationdate, 
  postlinks_1.postid, 
  postlinks_1.postid, 
  postlinks_1.linktypeid, 
  postlinks_1.creationdate, 
  avg(
    postlinks_1.id), 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid
limit 23;
select  
  comments_1.userid, 
  min(
    comments_1.creationdate), 
  comments_1.contentlicense, 
  comments_1.contentlicense, 
  comments_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.creationdate < comments_1.creationdate
group by comments_1.contentlicense, comments_1.userid
limit 33;
select  
  badges_1.id, 
  badges_1.tagbased, 
  badges_1.userid, 
  badges_1.name, 
  badges_1.userid, 
  avg(
    badges_1.userid), 
  min(
    badges_1.userid), 
  badges_1.id, 
  badges_1.class, 
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.date is not NULL
group by badges_1.class, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
limit 32;
select  
  max(
    comments_1.userid), 
  comments_1.creationdate, 
  comments_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userid is not NULL
group by comments_1.creationdate, comments_1.postid
limit 5;
select  
  badges_2.userid, 
  max(
    badges_1.date), 
  badges_2.id, 
  badges_1.date, 
  badges_2.date, 
  postlinks_1.id, 
  min(
    badges_1.date), 
  min(
    badges_1.class), 
  badges_1.id, 
  postlinks_1.relatedpostid, 
  badges_2.userid, 
  badges_1.class, 
  postlinks_1.relatedpostid, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
      inner join badges as badges_2
      on (badges_1.id = badges_2.id )
    inner join postlinks as postlinks_1
    on (badges_2.id = postlinks_1.id )
where badges_1.tagbased is not NULL
group by badges_1.class, badges_1.date, badges_1.id, badges_2.date, badges_2.id, badges_2.userid, postlinks_1.id, postlinks_1.relatedpostid
limit 36;
select  
  votes_1.userid, 
  max(
    votes_1.creationdate), 
  votes_1.id, 
  min(
    votes_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.userid is not NULL
group by votes_1.id, votes_1.userid
limit 2;
select  
  votes_1.creationdate, 
  votes_1.votetypeid, 
  count(*), 
  votes_1.votetypeid, 
  votes_1.creationdate, 
  votes_1.creationdate, 
  votes_1.votetypeid, 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.id is not NULL
group by votes_1.creationdate, votes_1.votetypeid
limit 17;
select  
  max(
    posts_1.creationdate), 
  posts_1.acceptedanswerid, 
  posts_1.creationdate, 
  count(
    posts_1.body), 
  posts_1.parentid, 
  posts_1.ownerdisplayname, 
  posts_1.posttypeid, 
  posts_1.id, 
  posts_1.acceptedanswerid, 
  posts_1.ownerdisplayname, 
  max(
    posts_1.creationdate), 
  posts_1.creationdate, 
  posts_1.ownerdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.title is not NULL
group by posts_1.acceptedanswerid, posts_1.creationdate, posts_1.id, posts_1.ownerdisplayname, posts_1.parentid, posts_1.posttypeid
limit 42;
select  
  posthistory_1.revisionguid, 
  posthistory_1.text, 
  posthistory_1.revisionguid, 
  count(*), 
  posthistory_1.id, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.comment, 
  posthistory_1.comment, 
  posthistory_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.id is not NULL
group by posthistory_1.comment, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.revisionguid, posthistory_1.text
limit 38;
select  
  users_1.websiteurl, 
  min(
    posthistory_1.id), 
  users_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join users as users_1
    on (posthistory_1.id = users_1.id )
where users_1.profileimageurl is not NULL
group by users_1.id, users_1.websiteurl
limit 2;
select  
  comments_1.contentlicense, 
  badges_1.date, 
  max(
    posts_1.creationdate), 
  min(
    posts_1.owneruserid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
      inner join comments as comments_1
      on (posts_1.id = comments_1.id )
    inner join badges as badges_1
      inner join posthistory as posthistory_1
      on (badges_1.id = posthistory_1.id )
    on (posts_1.id = badges_1.id )
where posthistory_1.posthistorytypeid is not NULL
group by badges_1.date, comments_1.contentlicense
limit 26;
select  
  comments_1.userdisplayname, 
  count(
    posts_1.posttypeid), 
  comments_1.contentlicense, 
  votes_1.userid, 
  comments_1.id, 
  posthistory_1.revisionguid, 
  posthistory_1.revisionguid, 
  votes_1.creationdate, 
  postlinks_1.relatedpostid, 
  comments_1.userid, 
  posthistory_1.userdisplayname, 
  postlinks_1.linktypeid, 
  votes_1.creationdate, 
  postlinks_1.postid, 
  votes_1.userid, 
  count(*), 
  posts_1.ownerdisplayname, 
  postlinks_1.relatedpostid, 
  count(
    votes_1.userid), 
  postlinks_1.creationdate, 
  posts_1.creationdate, 
  posts_1.contentlicense, 
  posts_1.posttypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
      inner join comments as comments_1
          inner join posthistory as posthistory_1
          on (comments_1.id = posthistory_1.id )
        inner join votes as votes_1
        on (posthistory_1.id = votes_1.id )
      on (postlinks_1.id = posthistory_1.id )
    inner join posts as posts_1
    on (comments_1.id = posts_1.id )
where comments_1.creationdate is not NULL
group by comments_1.contentlicense, comments_1.id, comments_1.userdisplayname, comments_1.userid, posthistory_1.revisionguid, posthistory_1.userdisplayname, postlinks_1.creationdate, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid, posts_1.contentlicense, posts_1.creationdate, posts_1.ownerdisplayname, posts_1.posttypeid, votes_1.creationdate, votes_1.userid
limit 37;
select  
  comments_1.userid, 
  comments_1.postid, 
  comments_1.userid, 
  max(
    comments_1.creationdate), 
  comments_1.userdisplayname, 
  comments_1.creationdate, 
  comments_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userdisplayname is not NULL
group by comments_1.contentlicense, comments_1.creationdate, comments_1.postid, comments_1.userdisplayname, comments_1.userid
limit 8;
select  
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join postlinks as postlinks_1
        inner join votes as votes_1
        on (postlinks_1.id = votes_1.id )
      inner join users as users_1
      on (postlinks_1.id = users_1.id )
    on (comments_1.id = users_1.id )
where users_1.aboutme is not NULL
limit 1;
select  
  posthistory_1.text, 
  count(*), 
  comments_1.userid, 
  posthistory_1.userid, 
  max(
    comments_1.creationdate), 
  comments_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join comments as comments_1
    on (posthistory_1.id = comments_1.id )
where posthistory_1.userid is not NULL
group by comments_1.userid, posthistory_1.text, posthistory_1.userid
limit 19;
select  
  votes_1.votetypeid, 
  votes_1.id, 
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join posts as posts_1
      inner join posthistory as posthistory_1
      on (posts_1.id = posthistory_1.id )
    on (votes_1.id = posts_1.id )
where posthistory_1.comment is not NULL
limit 14;
select  
  badges_1.tagbased, 
  votes_1.votetypeid, 
  badges_1.userid, 
  votes_1.id, 
  votes_1.votetypeid, 
  votes_1.votetypeid, 
  votes_1.id, 
  badges_1.userid, 
  votes_1.postid, 
  min(
    votes_1.creationdate), 
  votes_1.votetypeid, 
  votes_1.postid, 
  votes_1.userid, 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join votes as votes_1
    on (badges_1.id = votes_1.id )
where badges_1.name >= badges_1.name
group by badges_1.tagbased, badges_1.userid, votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 4;
select  
  comments_1.userid, 
  comments_1.creationdate, 
  comments_1.userid, 
  comments_1.postid, 
  comments_1.postid, 
  comments_1.contentlicense, 
  comments_1.text, 
  comments_1.text, 
  comments_1.postid, 
  comments_1.text, 
  comments_1.text, 
  comments_1.id, 
  comments_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.contentlicense is not NULL
limit 29;
select  
  posts_1.owneruserid, 
  min(
    posts_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.title is not NULL
group by posts_1.owneruserid
limit 33;
select  
  posts_1.id, 
  max(
    comments_1.creationdate), 
  comments_1.text, 
  posts_1.title, 
  posts_1.acceptedanswerid, 
  comments_1.userdisplayname, 
  max(
    comments_1.userid), 
  comments_1.text, 
  comments_1.creationdate, 
  min(
    posts_1.creationdate), 
  comments_1.contentlicense, 
  comments_1.contentlicense, 
  posts_1.creationdate, 
  comments_1.contentlicense, 
  count(
    comments_1.contentlicense), 
  comments_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join posts as posts_1
    on (comments_1.id = posts_1.id )
where comments_1.creationdate < posts_1.creationdate
group by comments_1.contentlicense, comments_1.creationdate, comments_1.postid, comments_1.text, comments_1.userdisplayname, posts_1.acceptedanswerid, posts_1.creationdate, posts_1.id, posts_1.title
limit 29;
select  
  users_1.websiteurl, 
  users_2.accountid, 
  users_1.websiteurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join users as users_2
    on (users_1.id = users_2.id )
where users_1.profileimageurl is not NULL
limit 6;
select  
  max(
    posts_1.posttypeid), 
  users_1.websiteurl, 
  badges_1.name, 
  max(
    posts_1.creationdate), 
  users_1.displayname, 
  users_1.location, 
  posts_1.parentid, 
  users_1.creationdate, 
  posts_1.body, 
  users_1.accountid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join badges as badges_1
      inner join posts as posts_1
      on (badges_1.id = posts_1.id )
    on (users_1.id = posts_1.id )
where users_1.creationdate > badges_1.date
group by badges_1.name, posts_1.body, posts_1.parentid, users_1.accountid, users_1.creationdate, users_1.displayname, users_1.location, users_1.websiteurl
limit 34;
select  
  users_1.aboutme, 
  users_1.profileimageurl, 
  users_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.location is not NULL
limit 6;
select  
  comments_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join comments as comments_1
    on (posthistory_1.id = comments_1.id )
where posthistory_1.creationdate is not NULL
limit 19;
select  
  comments_1.creationdate, 
  max(
    comments_1.creationdate), 
  comments_1.postid, 
  posthistory_1.posthistorytypeid, 
  postlinks_1.creationdate, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.contentlicense, 
  postlinks_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
      inner join posthistory as posthistory_1
      on (comments_1.id = posthistory_1.id )
    inner join postlinks as postlinks_1
    on (comments_1.id = postlinks_1.id )
where comments_1.userdisplayname is not NULL
group by comments_1.creationdate, comments_1.postid, posthistory_1.contentlicense, posthistory_1.posthistorytypeid, postlinks_1.creationdate, postlinks_1.id
limit 28;
select  
  comments_1.id, 
  comments_1.userdisplayname, 
  badges_1.tagbased, 
  sum(
    comments_1.userid), 
  badges_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join badges as badges_1
    on (comments_1.id = badges_1.id )
where comments_1.userid is not NULL
group by badges_1.name, badges_1.tagbased, comments_1.id, comments_1.userdisplayname
limit 25;
select  
  users_1.accountid, 
  posts_1.owneruserid, 
  users_1.aboutme, 
  posts_1.posttypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join users as users_1
      inner join posts as posts_2
      on (users_1.id = posts_2.id )
    on (posts_1.id = users_1.id )
where posts_1.posttypeid >= posts_1.parentid
limit 8;
select  
  users_1.websiteurl, 
  max(
    badges_1.date), 
  badges_1.class, 
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
      inner join comments as comments_1
      on (badges_1.id = comments_1.id )
    inner join users as users_1
      inner join votes as votes_1
      on (users_1.id = votes_1.id )
    on (comments_1.id = users_1.id )
where users_1.location is not NULL
group by badges_1.class, badges_1.userid, users_1.websiteurl
limit 37;
select  
  posthistory_1.contentlicense, 
  comments_1.contentlicense, 
  posthistory_1.text, 
  posthistory_1.posthistorytypeid, 
  comments_1.contentlicense, 
  comments_1.id, 
  posthistory_1.creationdate, 
  posthistory_1.userdisplayname, 
  comments_1.contentlicense, 
  min(
    comments_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join comments as comments_1
    on (posthistory_1.id = comments_1.id )
where posthistory_1.revisionguid is not NULL
group by comments_1.contentlicense, comments_1.id, posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.posthistorytypeid, posthistory_1.text, posthistory_1.userdisplayname
limit 24;
select  
  posts_1.owneruserid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.title > posts_1.body
limit 28;
select  
  postlinks_1.postid, 
  min(
    postlinks_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.id >= postlinks_1.relatedpostid
group by postlinks_1.postid
limit 41;
select  
  postlinks_1.postid, 
  avg(
    postlinks_1.relatedpostid), 
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid, 
  postlinks_1.creationdate, 
  postlinks_1.linktypeid, 
  postlinks_1.creationdate, 
  postlinks_1.postid, 
  postlinks_1.postid, 
  postlinks_1.creationdate, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.id, 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.linktypeid < postlinks_1.relatedpostid
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 27;
select  
  users_1.profileimageurl, 
  users_1.id, 
  postlinks_1.postid, 
  users_1.websiteurl, 
  max(
    postlinks_1.creationdate), 
  min(
    users_1.creationdate), 
  count(*), 
  postlinks_1.postid, 
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid, 
  users_1.location, 
  postlinks_1.linktypeid, 
  users_1.id, 
  postlinks_1.relatedpostid, 
  max(
    users_1.accountid), 
  users_1.location, 
  postlinks_1.linktypeid, 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join users as users_1
    on (postlinks_1.id = users_1.id )
where users_1.creationdate is not NULL
group by postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid, users_1.id, users_1.location, users_1.profileimageurl, users_1.websiteurl
limit 24;
select  
  posts_1.tags, 
  badges_1.name, 
  badges_1.tagbased, 
  max(
    posts_1.creationdate), 
  count(*), 
  posts_1.parentid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join posts as posts_1
    on (badges_1.id = posts_1.id )
where badges_1.class < badges_1.id
group by badges_1.name, badges_1.tagbased, posts_1.parentid, posts_1.tags
limit 32;
select  
  badges_1.class, 
  badges_1.name, 
  badges_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join posts as posts_1
      inner join badges as badges_1
      on (posts_1.id = badges_1.id )
    on (comments_1.id = posts_1.id )
where comments_1.text is not NULL
limit 17;
select  
  votes_1.id, 
  min(
    posthistory_1.id), 
  votes_2.id, 
  count(
    posthistory_1.userdisplayname), 
  votes_1.creationdate, 
  votes_2.creationdate, 
  posthistory_1.text, 
  posthistory_1.comment, 
  votes_2.votetypeid, 
  min(
    votes_2.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join votes as votes_1
      inner join votes as votes_2
      on (votes_1.id = votes_2.id )
    on (posthistory_1.id = votes_2.id )
where posthistory_1.posthistorytypeid is not NULL
group by posthistory_1.comment, posthistory_1.text, votes_1.creationdate, votes_1.id, votes_2.creationdate, votes_2.id, votes_2.votetypeid
limit 32;
select  
  comments_1.userid, 
  comments_1.userid, 
  min(
    comments_1.creationdate), 
  comments_1.postid, 
  comments_1.id, 
  comments_1.contentlicense, 
  comments_1.creationdate, 
  comments_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userid = comments_1.postid
group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.userid
limit 20;
select  
  votes_1.userid, 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.id is not NULL
limit 33;
select  
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased is not NULL
limit 42;
select  
  max(
    users_1.creationdate), 
  users_1.displayname, 
  max(
    users_1.creationdate), 
  users_1.aboutme
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.creationdate <= users_1.creationdate
group by users_1.aboutme, users_1.displayname
limit 42;
select  
  votes_1.userid, 
  votes_1.userid, 
  votes_1.id, 
  votes_1.postid, 
  votes_1.id, 
  votes_1.votetypeid, 
  votes_1.postid, 
  votes_1.userid, 
  max(
    votes_1.creationdate), 
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.votetypeid is not NULL
group by votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 23;
select  
  postlinks_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
limit 10;
select  
  comments_1.creationdate, 
  min(
    postlinks_1.creationdate), 
  comments_1.userdisplayname, 
  comments_1.userid, 
  postlinks_1.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join badges as badges_1
        inner join badges as badges_2
        on (badges_1.id = badges_2.id )
      inner join postlinks as postlinks_1
      on (badges_2.id = postlinks_1.id )
    on (comments_1.id = badges_1.id )
where comments_1.userdisplayname > badges_2.name
group by comments_1.creationdate, comments_1.userdisplayname, comments_1.userid, postlinks_1.relatedpostid
limit 6;
select  
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join users as users_1
    on (votes_1.id = users_1.id )
where users_1.accountid is not NULL
limit 27;
select  
  postlinks_1.creationdate, 
  postlinks_1.postid, 
  min(
    postlinks_1.creationdate), 
  postlinks_1.linktypeid, 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate >= postlinks_1.creationdate
group by postlinks_1.creationdate, postlinks_1.linktypeid, postlinks_1.postid
limit 1;
select  
  posts_1.acceptedanswerid, 
  posts_1.contentlicense, 
  min(
    posts_1.creationdate), 
  count(*), 
  posts_1.owneruserid, 
  posts_1.id, 
  posts_1.id, 
  posts_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.posttypeid < posts_1.parentid
group by posts_1.acceptedanswerid, posts_1.contentlicense, posts_1.creationdate, posts_1.id, posts_1.owneruserid
limit 23;
select  
  count(*), 
  sum(
    badges_1.class), 
  badges_1.class, 
  badges_1.date, 
  badges_1.id, 
  count(
    badges_1.tagbased)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.name is not NULL
group by badges_1.class, badges_1.date, badges_1.id
limit 7;
select  
  posts_1.owneruserid, 
  avg(
    posts_1.acceptedanswerid), 
  posts_1.tags
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.creationdate is not NULL
group by posts_1.owneruserid, posts_1.tags
limit 2;
select  
  badges_1.class, 
  posthistory_1.revisionguid, 
  badges_1.class, 
  min(
    badges_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join posthistory as posthistory_1
    on (badges_1.id = posthistory_1.id )
where posthistory_1.revisionguid is not NULL
group by badges_1.class, posthistory_1.revisionguid
limit 27;
select  
  badges_1.id, 
  min(
    badges_1.date), 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join postlinks as postlinks_1
    on (badges_1.id = postlinks_1.id )
where badges_1.date is not NULL
group by badges_1.id, postlinks_1.linktypeid
limit 36;
select  
  badges_1.id, 
  badges_1.id, 
  badges_1.userid, 
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.date is not NULL
limit 21;
select  
  posthistory_1.creationdate, 
  votes_1.creationdate, 
  sum(
    votes_1.postid), 
  posthistory_1.creationdate, 
  posthistory_1.text, 
  posthistory_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join posthistory as posthistory_1
      inner join badges as badges_1
      on (posthistory_1.id = badges_1.id )
    on (votes_1.id = badges_1.id )
where badges_1.class is not NULL
group by posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.text, votes_1.creationdate
limit 12;
select  
  users_1.accountid, 
  users_1.aboutme, 
  users_1.id, 
  users_1.location, 
  users_1.accountid, 
  users_1.profileimageurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.location is not NULL
limit 29;
select  
  postlinks_1.creationdate, 
  postlinks_1.linktypeid, 
  postlinks_1.linktypeid, 
  postlinks_1.postid, 
  postlinks_1.postid, 
  postlinks_1.postid, 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.linktypeid <= postlinks_1.postid
limit 4;
select  
  postlinks_1.creationdate, 
  postlinks_1.creationdate, 
  postlinks_1.creationdate, 
  min(
    postlinks_1.creationdate), 
  postlinks_1.id, 
  postlinks_1.postid, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.linktypeid, 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid
limit 21;
select  
  votes_1.id, 
  min(
    votes_1.creationdate), 
  users_1.aboutme
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
      inner join votes as votes_1
      on (users_1.id = votes_1.id )
    inner join badges as badges_1
    on (users_1.id = badges_1.id )
where users_1.profileimageurl is not NULL
group by users_1.aboutme, votes_1.id
limit 6;
select  
  badges_1.name, 
  badges_1.userid, 
  badges_1.date, 
  badges_1.name, 
  badges_1.tagbased, 
  badges_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.id is not NULL
limit 11;
select  
  min(
    comments_1.postid), 
  avg(
    comments_1.postid), 
  comments_1.text, 
  comments_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.creationdate is not NULL
group by comments_1.text, comments_1.userdisplayname
limit 15;
select  
  comments_2.contentlicense, 
  votes_1.postid, 
  comments_2.userid, 
  votes_1.postid, 
  users_1.location, 
  posthistory_1.text, 
  users_1.profileimageurl, 
  sum(
    users_1.id), 
  comments_1.id, 
  comments_2.postid, 
  posthistory_1.userid, 
  comments_1.userdisplayname, 
  posthistory_1.contentlicense, 
  users_1.accountid, 
  max(
    users_2.creationdate), 
  votes_1.votetypeid, 
  votes_1.postid, 
  posthistory_1.contentlicense, 
  users_1.profileimageurl, 
  votes_1.id, 
  users_2.profileimageurl, 
  comments_2.id, 
  comments_2.userid, 
  max(
    posthistory_1.userid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
          inner join comments as comments_1
          on (votes_1.id = comments_1.id )
        inner join comments as comments_2
        on (comments_1.id = comments_2.id )
      inner join users as users_1
        inner join users as users_2
        on (users_1.id = users_2.id )
      on (votes_1.id = users_2.id )
    inner join posthistory as posthistory_1
    on (comments_1.id = posthistory_1.id )
where comments_1.postid is not NULL
group by comments_1.id, comments_1.userdisplayname, comments_2.contentlicense, comments_2.id, comments_2.postid, comments_2.userid, posthistory_1.contentlicense, posthistory_1.text, posthistory_1.userid, users_1.accountid, users_1.location, users_1.profileimageurl, users_2.profileimageurl, votes_1.id, votes_1.postid, votes_1.votetypeid
limit 42;
select  
  count(
    posts_1.title), 
  posts_1.ownerdisplayname, 
  posts_1.title, 
  posts_1.posttypeid, 
  posts_1.parentid, 
  posts_1.ownerdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.owneruserid is not NULL
group by posts_1.ownerdisplayname, posts_1.parentid, posts_1.posttypeid, posts_1.title
limit 16;
select  
  votes_1.userid, 
  votes_1.votetypeid, 
  votes_1.votetypeid, 
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.votetypeid is not NULL
limit 42;
select  
  posthistory_1.id, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.postid, 
  posts_1.body, 
  posts_1.tags, 
  comments_1.id, 
  max(
    comments_1.creationdate), 
  comments_1.creationdate, 
  posts_1.creationdate, 
  posthistory_1.revisionguid, 
  min(
    posts_1.creationdate), 
  posthistory_1.userdisplayname, 
  posthistory_1.text, 
  posthistory_1.revisionguid, 
  comments_1.id, 
  posthistory_1.id, 
  posts_1.title
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join posts as posts_1
      inner join posthistory as posthistory_1
      on (posts_1.id = posthistory_1.id )
    on (comments_1.id = posts_1.id )
where posts_1.owneruserid is not NULL
group by comments_1.creationdate, comments_1.id, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userdisplayname, posts_1.body, posts_1.creationdate, posts_1.tags, posts_1.title
limit 13;
select  
  posthistory_1.contentlicense, 
  sum(
    posthistory_1.id), 
  posthistory_1.id, 
  posthistory_1.userid, 
  posthistory_1.revisionguid, 
  posthistory_1.id, 
  posthistory_1.text, 
  posthistory_1.userid, 
  posthistory_1.userdisplayname, 
  posthistory_1.comment, 
  posthistory_1.postid, 
  sum(
    posthistory_1.id), 
  avg(
    posthistory_1.userid), 
  posthistory_1.posthistorytypeid, 
  posthistory_1.contentlicense, 
  count(
    posthistory_1.id), 
  posthistory_1.comment, 
  posthistory_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.creationdate is not NULL
group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userdisplayname, posthistory_1.userid
limit 42;
select  
  posthistory_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join posts as posts_1
    on (posthistory_1.id = posts_1.id )
where posthistory_1.id is not NULL
limit 36;
select  
  posts_1.owneruserid, 
  posts_1.parentid, 
  posts_1.ownerdisplayname, 
  posts_1.owneruserid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.contentlicense is not NULL
limit 39;
select  
  votes_1.postid, 
  votes_1.votetypeid, 
  votes_1.userid, 
  max(
    votes_1.creationdate), 
  max(
    votes_1.id)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.id is not NULL
group by votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 9;
select  
  posts_1.owneruserid, 
  posts_1.body
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.ownerdisplayname < posts_1.title
limit 4;
select  
  max(
    comments_1.creationdate), 
  comments_1.text, 
  max(
    comments_1.id), 
  comments_1.postid, 
  comments_1.contentlicense, 
  comments_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.text is not NULL
group by comments_1.contentlicense, comments_1.postid, comments_1.text
limit 20;
select  
  max(
    comments_1.postid), 
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid, 
  sum(
    comments_1.postid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join comments as comments_1
    on (postlinks_1.id = comments_1.id )
where comments_1.id is not NULL
group by postlinks_1.creationdate, postlinks_1.relatedpostid
limit 31;
select  
  avg(
    users_1.accountid), 
  users_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.location is not NULL
group by users_1.id
limit 28;
select  
  posts_1.owneruserid, 
  posts_1.id, 
  posts_1.posttypeid, 
  count(*), 
  posts_1.ownerdisplayname, 
  posts_1.posttypeid, 
  posts_1.ownerdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.owneruserid is not NULL
group by posts_1.id, posts_1.ownerdisplayname, posts_1.owneruserid, posts_1.posttypeid
limit 5;
select  
  posts_1.posttypeid, 
  posts_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.posttypeid is not NULL
limit 25;
select  
  max(
    posthistory_1.creationdate), 
  posthistory_1.posthistorytypeid, 
  users_1.creationdate, 
  comments_1.text, 
  posthistory_1.userdisplayname, 
  users_1.creationdate, 
  posthistory_1.creationdate, 
  min(
    users_1.creationdate), 
  posthistory_1.contentlicense, 
  count(
    users_1.accountid), 
  comments_1.contentlicense, 
  comments_1.contentlicense, 
  users_1.creationdate, 
  max(
    users_1.profileimageurl), 
  posthistory_1.posthistorytypeid, 
  users_1.displayname, 
  comments_1.contentlicense, 
  users_1.location, 
  posthistory_1.comment, 
  users_1.accountid, 
  max(
    comments_1.id), 
  users_1.displayname, 
  users_1.websiteurl, 
  posthistory_1.comment
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join comments as comments_1
      inner join users as users_1
      on (comments_1.id = users_1.id )
    on (posthistory_1.id = comments_1.id )
where posthistory_1.userid is not NULL
group by comments_1.contentlicense, comments_1.text, posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.posthistorytypeid, posthistory_1.userdisplayname, users_1.accountid, users_1.creationdate, users_1.displayname, users_1.location, users_1.websiteurl
limit 18;
select  
  postlinks_1.relatedpostid, 
  postlinks_1.linktypeid, 
  postlinks_1.postid, 
  postlinks_1.relatedpostid, 
  postlinks_1.id, 
  sum(
    postlinks_1.linktypeid), 
  postlinks_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.id is not NULL
group by postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 14;
select  
  badges_1.userid, 
  badges_1.name, 
  badges_1.id, 
  comments_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join badges as badges_1
    on (comments_1.id = badges_1.id )
where comments_1.contentlicense is not NULL
limit 11;
select  
  min(
    postlinks_1.creationdate), 
  postlinks_1.creationdate, 
  min(
    postlinks_1.creationdate), 
  postlinks_1.relatedpostid, 
  postlinks_1.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
group by postlinks_1.creationdate, postlinks_1.relatedpostid
limit 20;
select  
  users_1.location, 
  users_1.displayname, 
  count(
    users_1.profileimageurl), 
  min(
    users_1.creationdate), 
  users_1.accountid, 
  users_1.id, 
  users_1.creationdate, 
  users_1.aboutme, 
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.id is not NULL
group by users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.displayname, users_1.id, users_1.location
limit 40;
select  
  min(
    votes_2.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
      inner join votes as votes_2
        inner join postlinks as postlinks_1
        on (votes_2.id = postlinks_1.id )
      on (votes_1.id = votes_2.id )
    inner join posts as posts_1
    on (postlinks_1.id = posts_1.id )
where votes_1.creationdate is not NULL
limit 3;
select  
  comments_1.userdisplayname, 
  comments_1.userdisplayname, 
  comments_1.creationdate, 
  comments_1.creationdate, 
  comments_1.creationdate, 
  comments_1.contentlicense, 
  comments_1.id, 
  comments_1.userdisplayname, 
  comments_1.userdisplayname, 
  max(
    comments_1.creationdate), 
  comments_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userid <= comments_1.postid
group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.userdisplayname
limit 7;
select  
  posthistory_1.contentlicense, 
  comments_1.postid, 
  posts_1.acceptedanswerid, 
  avg(
    posts_1.owneruserid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join posts as posts_1
      inner join posthistory as posthistory_1
      on (posts_1.id = posthistory_1.id )
    on (comments_1.id = posts_1.id )
where comments_1.text is not NULL
group by comments_1.postid, posthistory_1.contentlicense, posts_1.acceptedanswerid
limit 6;
select  
  max(
    comments_1.postid), 
  comments_1.contentlicense, 
  comments_1.contentlicense, 
  comments_1.creationdate, 
  comments_1.creationdate, 
  min(
    comments_1.id), 
  comments_1.userid, 
  comments_1.id, 
  comments_1.id, 
  comments_1.postid, 
  sum(
    comments_1.id)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.creationdate is not NULL
group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.userid
limit 19;
select  
  posts_1.owneruserid, 
  posts_1.title, 
  posts_2.body, 
  posts_1.tags, 
  posts_1.ownerdisplayname, 
  posts_1.tags, 
  posts_1.acceptedanswerid, 
  posts_2.creationdate, 
  posts_2.title, 
  posts_1.acceptedanswerid, 
  posts_1.posttypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join posts as posts_2
    on (posts_1.id = posts_2.id )
where posts_2.tags is not NULL
limit 2;
select  
  badges_1.date, 
  count(*), 
  badges_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.class is not NULL
group by badges_1.date, badges_1.id
limit 7;
select  
  max(
    users_1.creationdate), 
  users_1.profileimageurl, 
  badges_3.class, 
  badges_2.tagbased, 
  badges_3.id, 
  badges_1.date, 
  badges_4.id, 
  badges_3.tagbased, 
  users_1.profileimageurl, 
  badges_3.date, 
  max(
    posts_1.creationdate), 
  badges_3.name, 
  min(
    badges_1.userid), 
  badges_3.name, 
  users_1.displayname, 
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
      inner join badges as badges_1
        inner join badges as badges_2
          inner join users as users_1
          on (badges_2.id = users_1.id )
        on (badges_1.id = badges_2.id )
      on (posts_1.id = badges_2.id )
    inner join badges as badges_3
      inner join badges as badges_4
      on (badges_3.id = badges_4.id )
    on (badges_2.id = badges_4.id )
where badges_3.class is not NULL
group by badges_1.class, badges_1.date, badges_2.tagbased, badges_3.class, badges_3.date, badges_3.id, badges_3.name, badges_3.tagbased, badges_4.id, users_1.displayname, users_1.profileimageurl
limit 33;
select  
  votes_1.id, 
  votes_1.creationdate, 
  votes_1.votetypeid, 
  votes_1.votetypeid, 
  votes_1.votetypeid, 
  votes_1.votetypeid, 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate is not NULL
limit 41;
select  
  users_1.location, 
  max(
    users_1.creationdate), 
  users_1.id, 
  comments_2.userid, 
  users_2.profileimageurl, 
  comments_1.userdisplayname, 
  comments_2.contentlicense, 
  max(
    comments_1.creationdate), 
  comments_2.text, 
  users_1.profileimageurl, 
  max(
    users_2.creationdate), 
  users_1.accountid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
      inner join users as users_1
        inner join comments as comments_2
        on (users_1.id = comments_2.id )
      on (comments_1.id = comments_2.id )
    inner join users as users_2
    on (comments_1.id = users_2.id )
where users_1.displayname = users_2.websiteurl
group by comments_1.userdisplayname, comments_2.contentlicense, comments_2.text, comments_2.userid, users_1.accountid, users_1.id, users_1.location, users_1.profileimageurl, users_2.profileimageurl
limit 12;
select  
  comments_1.text, 
  max(
    comments_1.creationdate), 
  comments_1.text, 
  max(
    comments_1.postid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.postid is not NULL
group by comments_1.text
limit 36;
select  
  posthistory_1.id, 
  posthistory_1.postid, 
  posthistory_1.userid, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.id, 
  posthistory_1.text, 
  posthistory_1.postid, 
  posthistory_1.contentlicense, 
  posthistory_1.id, 
  posthistory_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.revisionguid is not NULL
limit 25;
select  
  badges_1.tagbased
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased is not NULL
limit 6;
select  
  posthistory_1.postid, 
  posthistory_1.revisionguid, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.userdisplayname, 
  sum(
    posthistory_1.userid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.revisionguid is not NULL
group by posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.userdisplayname
limit 39;
select  
  badges_1.date, 
  badges_1.tagbased, 
  badges_1.name, 
  badges_1.date, 
  badges_1.userid, 
  max(
    badges_1.date), 
  badges_1.tagbased, 
  badges_1.tagbased
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased >= badges_1.tagbased
group by badges_1.date, badges_1.name, badges_1.tagbased, badges_1.userid
limit 30;
select  
  comments_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join comments as comments_1
    on (users_1.id = comments_1.id )
where comments_1.userid is not NULL
limit 3;
select  
  posts_1.body, 
  posts_1.ownerdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.title is not NULL
limit 21;
select  
  users_2.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join badges as badges_1
        inner join users as users_1
        on (badges_1.id = users_1.id )
      inner join users as users_2
      on (users_1.id = users_2.id )
    on (posts_1.id = users_1.id )
where badges_1.tagbased > badges_1.tagbased
limit 26;
select  
  badges_1.name, 
  badges_1.userid, 
  badges_1.id, 
  badges_1.id, 
  badges_1.name, 
  max(
    badges_1.date), 
  max(
    badges_1.id), 
  badges_1.date, 
  badges_1.tagbased, 
  badges_1.name, 
  badges_1.id, 
  badges_1.class, 
  badges_1.userid, 
  badges_1.tagbased, 
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased is not NULL
group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
limit 13;
select  
  votes_1.postid, 
  min(
    votes_1.creationdate), 
  min(
    posts_1.creationdate), 
  posts_1.acceptedanswerid, 
  users_1.aboutme, 
  users_1.websiteurl, 
  votes_1.creationdate, 
  posts_1.posttypeid, 
  posts_1.acceptedanswerid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
      inner join votes as votes_1
      on (posts_1.id = votes_1.id )
    inner join users as users_1
    on (votes_1.id = users_1.id )
where users_1.id is not NULL
group by posts_1.acceptedanswerid, posts_1.posttypeid, users_1.aboutme, users_1.websiteurl, votes_1.creationdate, votes_1.postid
limit 32;
select  
  min(
    posthistory_2.creationdate), 
  posthistory_1.comment, 
  votes_1.userid, 
  posthistory_1.posthistorytypeid, 
  posthistory_2.comment, 
  posthistory_1.userdisplayname, 
  votes_1.postid, 
  max(
    posthistory_1.posthistorytypeid), 
  votes_1.votetypeid, 
  posthistory_2.contentlicense, 
  avg(
    posthistory_2.userid), 
  votes_1.id, 
  posthistory_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
      inner join votes as votes_1
      on (posthistory_1.id = votes_1.id )
    inner join posthistory as posthistory_2
    on (votes_1.id = posthistory_2.id )
where posthistory_1.creationdate <= votes_1.creationdate
group by posthistory_1.comment, posthistory_1.posthistorytypeid, posthistory_1.userdisplayname, posthistory_2.comment, posthistory_2.contentlicense, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 21;
select  
  users_1.aboutme
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join users as users_1
      inner join posts as posts_1
        inner join postlinks as postlinks_1
        on (posts_1.id = postlinks_1.id )
      on (users_1.id = posts_1.id )
    on (comments_1.id = posts_1.id )
where users_1.aboutme is not NULL
limit 18;
select  
  users_1.id, 
  users_1.aboutme, 
  users_1.websiteurl, 
  users_1.aboutme, 
  users_1.location, 
  users_1.location
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.creationdate is not NULL
limit 39;
select  
  max(
    posts_1.acceptedanswerid), 
  posthistory_1.userdisplayname, 
  posts_1.title, 
  posts_1.owneruserid, 
  postlinks_1.id, 
  posts_1.title, 
  posthistory_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
      inner join postlinks as postlinks_1
      on (posts_1.id = postlinks_1.id )
    inner join posthistory as posthistory_1
    on (postlinks_1.id = posthistory_1.id )
where postlinks_1.postid is not NULL
group by posthistory_1.text, posthistory_1.userdisplayname, postlinks_1.id, posts_1.owneruserid, posts_1.title
limit 1;
select  
  comments_1.userdisplayname, 
  comments_1.creationdate, 
  comments_1.userdisplayname, 
  comments_1.contentlicense, 
  comments_1.text, 
  comments_1.postid, 
  comments_1.userid, 
  comments_1.userid, 
  comments_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.postid is not NULL
limit 24;
select  
  min(
    postlinks_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
limit 26;
select  
  users_1.profileimageurl, 
  users_1.aboutme, 
  users_1.aboutme, 
  users_1.accountid, 
  users_1.displayname, 
  users_1.accountid, 
  users_1.creationdate, 
  users_1.location, 
  max(
    users_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.accountid is not NULL
group by users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.displayname, users_1.location, users_1.profileimageurl
limit 11;
select  
  posthistory_1.revisionguid, 
  posthistory_1.userdisplayname, 
  posthistory_1.text, 
  posthistory_1.postid, 
  posthistory_1.userid, 
  posthistory_1.id, 
  posthistory_1.userid, 
  posthistory_1.id, 
  posthistory_1.comment, 
  posthistory_1.creationdate, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.userdisplayname, 
  posthistory_1.id, 
  posthistory_1.userid, 
  posthistory_1.revisionguid, 
  posthistory_1.userdisplayname, 
  min(
    posthistory_1.userid), 
  posthistory_1.comment, 
  posthistory_1.revisionguid, 
  max(
    posthistory_1.postid), 
  posthistory_1.contentlicense, 
  posthistory_1.userdisplayname, 
  posthistory_1.creationdate, 
  posthistory_1.userdisplayname, 
  posthistory_1.revisionguid, 
  posthistory_1.comment, 
  posthistory_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.postid = posthistory_1.posthistorytypeid
group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userdisplayname, posthistory_1.userid
limit 33;
select  
  posthistory_1.text, 
  posthistory_1.contentlicense, 
  posthistory_1.revisionguid, 
  posthistory_1.revisionguid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.creationdate = posthistory_1.creationdate
limit 7;
select  
  badges_1.class, 
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join postlinks as postlinks_1
    on (badges_1.id = postlinks_1.id )
where badges_1.name > badges_1.name
limit 41;
select  
  users_1.location, 
  max(
    users_1.creationdate), 
  votes_1.postid, 
  count(
    users_1.id), 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join users as users_1
    on (votes_1.id = users_1.id )
where votes_1.creationdate > users_1.creationdate
group by users_1.location, votes_1.id, votes_1.postid
limit 25;
select  
  count(*), 
  min(
    postlinks_1.postid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
      inner join comments as comments_1
      on (users_1.id = comments_1.id )
    inner join postlinks as postlinks_1
    on (users_1.id = postlinks_1.id )
where users_1.profileimageurl <= comments_1.userid
limit 24;
select  
  count(*), 
  postlinks_1.creationdate, 
  postlinks_1.creationdate, 
  postlinks_1.postid, 
  postlinks_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.id is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.postid
limit 35;
select  
  posthistory_1.comment, 
  posthistory_1.contentlicense, 
  posthistory_1.creationdate, 
  posthistory_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.text is not NULL
limit 35;
select  
  comments_1.userid, 
  badges_1.tagbased, 
  comments_1.id, 
  posts_1.ownerdisplayname, 
  comments_1.contentlicense, 
  posts_1.title, 
  posts_1.owneruserid, 
  posts_1.posttypeid, 
  comments_1.userdisplayname, 
  posts_1.body
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
      inner join comments as comments_1
      on (posts_1.id = comments_1.id )
    inner join badges as badges_1
    on (comments_1.id = badges_1.id )
where posts_1.tags is not NULL
limit 32;
select  
  users_1.id, 
  users_1.creationdate, 
  comments_1.userid, 
  min(
    comments_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join comments as comments_1
    on (users_1.id = comments_1.id )
where users_1.aboutme is not NULL
group by comments_1.userid, users_1.creationdate, users_1.id
limit 27;
select  
  users_1.aboutme
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
      inner join posts as posts_1
        inner join badges as badges_1
        on (posts_1.id = badges_1.id )
      on (users_1.id = posts_1.id )
    inner join votes as votes_1
    on (users_1.id = votes_1.id )
where users_1.creationdate is not NULL
limit 20;
select  
  votes_2.userid, 
  postlinks_1.relatedpostid, 
  votes_2.postid, 
  votes_2.votetypeid, 
  min(
    postlinks_1.id)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join votes as votes_1
      inner join votes as votes_2
      on (votes_1.id = votes_2.id )
    on (postlinks_1.id = votes_1.id )
where votes_2.creationdate is not NULL
group by postlinks_1.relatedpostid, votes_2.postid, votes_2.userid, votes_2.votetypeid
limit 14;
select  
  min(
    badges_1.date), 
  badges_1.id, 
  badges_1.tagbased, 
  badges_1.userid, 
  badges_1.id, 
  count(
    badges_1.tagbased)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.userid is not NULL
group by badges_1.id, badges_1.tagbased, badges_1.userid
limit 31;
select  
  comments_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.creationdate is not NULL
limit 3;
select  
  votes_1.id, 
  avg(
    votes_1.userid), 
  min(
    votes_1.id), 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate <= votes_1.creationdate
group by votes_1.creationdate, votes_1.id
limit 23;
select  
  badges_1.userid, 
  users_1.websiteurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
      inner join users as users_1
          inner join badges as badges_1
          on (users_1.id = badges_1.id )
        inner join postlinks as postlinks_1
        on (badges_1.id = postlinks_1.id )
      on (comments_1.id = badges_1.id )
    inner join postlinks as postlinks_2
    on (comments_1.id = postlinks_2.id )
where users_1.profileimageurl is not NULL
limit 8;
select  
  votes_2.userid, 
  max(
    posts_1.creationdate), 
  votes_2.postid, 
  votes_1.creationdate, 
  min(
    votes_2.creationdate), 
  max(
    votes_2.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join votes as votes_2
      inner join posts as posts_1
      on (votes_2.id = posts_1.id )
    on (votes_1.id = votes_2.id )
where posts_1.body > posts_1.ownerdisplayname
group by votes_1.creationdate, votes_2.postid, votes_2.userid
limit 13;
select  
  postlinks_1.id, 
  postlinks_1.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join postlinks as postlinks_2
    on (postlinks_1.id = postlinks_2.id )
where postlinks_1.linktypeid <= postlinks_1.id
limit 8;
select  
  posthistory_1.userdisplayname, 
  min(
    posthistory_1.creationdate), 
  posthistory_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.revisionguid is not NULL
group by posthistory_1.userdisplayname
limit 16;
select  
  users_1.location, 
  users_1.displayname, 
  users_1.displayname, 
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.profileimageurl <= users_1.accountid
limit 25;
select  
  posts_1.id, 
  count(*), 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
      inner join users as users_1
          inner join postlinks as postlinks_2
          on (users_1.id = postlinks_2.id )
        inner join posthistory as posthistory_1
        on (postlinks_2.id = posthistory_1.id )
      on (postlinks_1.id = postlinks_2.id )
    inner join posts as posts_1
    on (posthistory_1.id = posts_1.id )
where posts_1.contentlicense is not NULL
group by postlinks_1.linktypeid, posts_1.id
limit 30;
select  
  posts_1.posttypeid, 
  posts_1.posttypeid, 
  posts_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join posts as posts_1
    on (comments_1.id = posts_1.id )
where posts_1.owneruserid <= posts_1.posttypeid
limit 18;
select  
  comments_1.contentlicense, 
  comments_1.contentlicense, 
  comments_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userdisplayname is not NULL
limit 25;
select  
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid, 
  postlinks_1.creationdate, 
  postlinks_1.id, 
  sum(
    postlinks_1.linktypeid), 
  postlinks_1.relatedpostid, 
  postlinks_1.id, 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.relatedpostid
limit 30;
select  
  posts_1.id, 
  posthistory_1.posthistorytypeid, 
  count(
    posthistory_1.userid), 
  max(
    postlinks_1.postid), 
  posthistory_1.creationdate, 
  posts_1.id, 
  posts_1.contentlicense, 
  posthistory_2.revisionguid, 
  min(
    posts_1.creationdate), 
  min(
    posthistory_2.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
        inner join posts as posts_1
          inner join posthistory as posthistory_2
          on (posts_1.id = posthistory_2.id )
        on (posthistory_1.id = posthistory_2.id )
      inner join postlinks as postlinks_1
      on (posthistory_1.id = postlinks_1.id )
    inner join votes as votes_1
    on (postlinks_1.id = votes_1.id )
where posthistory_1.creationdate <= votes_1.creationdate
group by posthistory_1.creationdate, posthistory_1.posthistorytypeid, posthistory_2.revisionguid, posts_1.contentlicense, posts_1.id
limit 28;
select  
  badges_1.tagbased, 
  comments_2.postid, 
  users_1.accountid, 
  comments_2.text, 
  count(
    users_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join users as users_1
        inner join comments as comments_1
        on (users_1.id = comments_1.id )
      inner join comments as comments_2
        inner join votes as votes_1
          inner join postlinks as postlinks_1
          on (votes_1.id = postlinks_1.id )
        on (comments_2.id = postlinks_1.id )
      on (comments_1.id = comments_2.id )
    on (badges_1.id = comments_2.id )
where badges_1.tagbased >= badges_1.tagbased
group by badges_1.tagbased, comments_2.postid, comments_2.text, users_1.accountid
limit 42;
select  
  posts_1.acceptedanswerid, 
  posts_1.contentlicense, 
  votes_1.creationdate, 
  posts_1.parentid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join posts as posts_1
    on (votes_1.id = posts_1.id )
where posts_1.ownerdisplayname is not NULL
limit 25;
select  
  posts_2.parentid, 
  sum(
    posts_1.posttypeid), 
  posts_2.body, 
  posts_2.tags, 
  posts_2.title
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join posts as posts_2
    on (posts_1.id = posts_2.id )
where posts_2.posttypeid is not NULL
group by posts_2.body, posts_2.parentid, posts_2.tags, posts_2.title
limit 35;
select  
  postlinks_1.postid, 
  postlinks_1.relatedpostid, 
  postlinks_1.relatedpostid, 
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
limit 31;
select  
  votes_1.id, 
  votes_1.id, 
  comments_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join comments as comments_1
    on (votes_1.id = comments_1.id )
where votes_1.votetypeid is not NULL
limit 40;
select  
  posts_1.tags, 
  posts_1.posttypeid, 
  posts_1.owneruserid, 
  posts_1.ownerdisplayname, 
  posts_1.parentid, 
  posts_1.posttypeid, 
  posts_1.creationdate, 
  posts_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.id >= posts_1.owneruserid
limit 3;
select  
  max(
    posts_1.id), 
  users_1.creationdate, 
  users_1.location, 
  posts_1.creationdate, 
  users_1.websiteurl, 
  users_1.displayname, 
  posts_1.title, 
  users_1.id, 
  posts_1.parentid, 
  users_1.creationdate, 
  posts_1.title, 
  posts_1.parentid, 
  users_1.location, 
  max(
    posts_1.owneruserid), 
  sum(
    posts_1.id), 
  users_1.id, 
  posts_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join users as users_1
    on (posts_1.id = users_1.id )
where users_1.creationdate >= posts_1.creationdate
group by posts_1.creationdate, posts_1.parentid, posts_1.title, users_1.creationdate, users_1.displayname, users_1.id, users_1.location, users_1.websiteurl
limit 11;
select  
  max(
    postlinks_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.linktypeid < postlinks_1.postid
limit 28;
select  
  badges_1.class, 
  max(
    badges_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
      inner join badges as badges_1
      on (posthistory_1.id = badges_1.id )
    inner join comments as comments_1
    on (badges_1.id = comments_1.id )
where badges_1.class is not NULL
group by badges_1.class
limit 30;
select  
  min(
    postlinks_1.creationdate), 
  postlinks_1.postid, 
  postlinks_1.postid, 
  count(*), 
  postlinks_1.creationdate, 
  postlinks_1.postid, 
  postlinks_1.relatedpostid, 
  postlinks_1.postid, 
  postlinks_1.id, 
  postlinks_1.relatedpostid, 
  postlinks_1.relatedpostid, 
  postlinks_1.linktypeid, 
  max(
    postlinks_1.linktypeid), 
  postlinks_1.relatedpostid, 
  postlinks_1.linktypeid, 
  postlinks_1.linktypeid, 
  postlinks_1.postid, 
  postlinks_1.creationdate, 
  postlinks_1.postid, 
  postlinks_1.creationdate, 
  postlinks_1.id, 
  avg(
    postlinks_1.id), 
  postlinks_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 17;
select  
  badges_1.userid, 
  badges_1.class, 
  badges_1.id, 
  badges_1.name, 
  badges_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased > badges_1.tagbased
limit 9;
select  
  users_1.displayname, 
  min(
    users_1.creationdate), 
  comments_1.postid, 
  users_1.aboutme, 
  users_1.creationdate, 
  avg(
    users_1.id)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join users as users_1
    on (comments_1.id = users_1.id )
where comments_1.postid is not NULL
group by comments_1.postid, users_1.aboutme, users_1.creationdate, users_1.displayname
limit 12;
select  
  postlinks_1.creationdate, 
  count(
    votes_1.votetypeid), 
  postlinks_1.creationdate, 
  postlinks_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join postlinks as postlinks_1
    on (votes_1.id = postlinks_1.id )
where postlinks_1.linktypeid is not NULL
group by postlinks_1.creationdate
limit 21;
select  
  comments_1.id, 
  max(
    comments_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.text is not NULL
group by comments_1.id
limit 4;
select  
  votes_1.id, 
  votes_1.votetypeid, 
  votes_1.userid, 
  min(
    votes_1.id), 
  max(
    votes_1.creationdate), 
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.postid is not NULL
group by votes_1.id, votes_1.userid, votes_1.votetypeid
limit 16;
select  
  posts_1.posttypeid, 
  posts_1.contentlicense, 
  posts_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.id is not NULL
limit 21;
select  
  badges_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join comments as comments_1
    on (badges_1.id = comments_1.id )
where badges_1.userid is not NULL
limit 15;
select  
  votes_1.votetypeid, 
  votes_1.votetypeid, 
  votes_1.postid, 
  votes_1.votetypeid, 
  sum(
    votes_1.userid), 
  votes_1.creationdate, 
  votes_1.creationdate, 
  votes_1.id, 
  votes_1.creationdate, 
  votes_1.votetypeid, 
  votes_1.creationdate, 
  max(
    votes_1.creationdate), 
  sum(
    votes_1.postid), 
  votes_1.creationdate, 
  votes_1.creationdate, 
  votes_1.creationdate, 
  votes_1.id, 
  votes_1.userid, 
  votes_1.postid, 
  votes_1.userid, 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 39;
select  
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join posthistory as posthistory_1
    on (badges_1.id = posthistory_1.id )
where badges_1.name >= posthistory_1.contentlicense
limit 18;
select  
  comments_2.id, 
  comments_1.contentlicense, 
  min(
    comments_2.creationdate), 
  max(
    comments_2.creationdate), 
  comments_1.text, 
  max(
    comments_2.id), 
  comments_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join comments as comments_2
    on (comments_1.id = comments_2.id )
where comments_2.postid is not NULL
group by comments_1.contentlicense, comments_1.text, comments_1.userdisplayname, comments_2.id
limit 17;
select  
  badges_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.id is not NULL
limit 18;
select  
  postlinks_4.relatedpostid, 
  postlinks_1.postid, 
  comments_1.userid, 
  votes_1.id, 
  postlinks_2.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
      inner join postlinks as postlinks_2
          inner join postlinks as postlinks_3
            inner join posts as posts_1
            on (postlinks_3.id = posts_1.id )
          on (postlinks_2.id = postlinks_3.id )
        inner join postlinks as postlinks_4
        on (postlinks_3.id = postlinks_4.id )
      on (postlinks_1.id = postlinks_3.id )
    inner join votes as votes_1
      inner join comments as comments_1
        inner join posthistory as posthistory_1
        on (comments_1.id = posthistory_1.id )
      on (votes_1.id = comments_1.id )
    on (postlinks_3.id = comments_1.id )
where posts_1.title is not NULL
limit 1;
select  
  max(
    posthistory_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join badges as badges_1
    on (posthistory_1.id = badges_1.id )
where posthistory_1.id is not NULL
limit 18;
select  
  posthistory_1.text, 
  posthistory_1.userid, 
  comments_1.creationdate, 
  comments_1.id, 
  comments_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join posthistory as posthistory_1
    on (comments_1.id = posthistory_1.id )
where posthistory_1.revisionguid is not NULL
limit 31;
select  
  posts_1.posttypeid, 
  max(
    posts_1.id)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.creationdate is not NULL
group by posts_1.posttypeid
limit 5;
select  
  users_1.displayname, 
  users_1.accountid, 
  users_1.profileimageurl, 
  users_1.creationdate, 
  users_1.accountid, 
  users_1.location, 
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.accountid >= users_1.id
limit 20;
select  
  postlinks_1.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
limit 13;
select  
  users_1.creationdate, 
  users_1.displayname, 
  users_1.location, 
  users_1.accountid, 
  max(
    users_1.profileimageurl)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.displayname is not NULL
group by users_1.accountid, users_1.creationdate, users_1.displayname, users_1.location
limit 20;
select  
  votes_1.id, 
  votes_1.userid, 
  votes_1.id, 
  max(
    votes_1.creationdate), 
  min(
    votes_1.creationdate), 
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.postid is not NULL
group by votes_1.id, votes_1.userid, votes_1.votetypeid
limit 21;
select  
  badges_1.tagbased, 
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join badges as badges_1
        inner join posthistory as posthistory_1
        on (badges_1.id = posthistory_1.id )
      inner join users as users_1
      on (badges_1.id = users_1.id )
    on (posts_1.id = badges_1.id )
where badges_1.name is not NULL
limit 20;
select  
  badges_2.class, 
  votes_1.votetypeid, 
  max(
    badges_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join badges as badges_1
      inner join badges as badges_2
      on (badges_1.id = badges_2.id )
    on (votes_1.id = badges_1.id )
where votes_1.creationdate is not NULL
group by badges_2.class, votes_1.votetypeid
limit 27;
select  
  count(
    posts_1.owneruserid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.contentlicense is not NULL
limit 13;
select  
  badges_1.name, 
  badges_1.name, 
  badges_1.tagbased, 
  badges_1.tagbased
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.id > badges_1.userid
limit 16;
select  
  posthistory_1.userdisplayname, 
  max(
    posthistory_1.creationdate), 
  posthistory_1.id, 
  posthistory_1.id, 
  max(
    posthistory_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.text = posthistory_1.userdisplayname
group by posthistory_1.id, posthistory_1.userdisplayname
limit 28;
select  
  max(
    users_1.id), 
  users_1.location, 
  users_1.displayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.location < users_1.websiteurl
group by users_1.displayname, users_1.location
limit 18;
select  
  postlinks_1.postid, 
  postlinks_1.linktypeid, 
  postlinks_1.linktypeid, 
  min(
    postlinks_1.creationdate), 
  postlinks_1.id, 
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid, 
  postlinks_1.creationdate, 
  postlinks_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid > postlinks_1.linktypeid
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 11;
select  
  posthistory_1.contentlicense, 
  badges_1.tagbased, 
  posthistory_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
      inner join postlinks as postlinks_1
      on (posthistory_1.id = postlinks_1.id )
    inner join badges as badges_1
    on (posthistory_1.id = badges_1.id )
where badges_1.id is not NULL
limit 18;
select distinct 
  posthistory_1.revisionguid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join posthistory as posthistory_2
    on (posthistory_1.id = posthistory_2.id )
where posthistory_2.userid is not NULL
limit 11;
select  
  postlinks_1.id, 
  postlinks_1.id, 
  postlinks_1.relatedpostid, 
  postlinks_1.linktypeid, 
  postlinks_1.postid, 
  postlinks_1.id, 
  postlinks_1.id, 
  postlinks_1.postid, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
group by postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 38;
select  
  votes_1.id, 
  min(
    votes_1.id), 
  votes_1.id, 
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.id is not NULL
group by votes_1.id, votes_1.userid
limit 34;
select  
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join postlinks as postlinks_1
    on (badges_1.id = postlinks_1.id )
where postlinks_1.id = postlinks_1.relatedpostid
limit 22;
select  
  posts_1.tags, 
  posts_1.title, 
  posts_1.ownerdisplayname, 
  posts_1.body, 
  posts_1.contentlicense, 
  posts_1.acceptedanswerid, 
  posts_1.body
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.parentid is not NULL
limit 20;
select  
  posts_1.acceptedanswerid, 
  posts_1.creationdate, 
  posts_1.owneruserid, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.ownerdisplayname is not NULL
group by posts_1.acceptedanswerid, posts_1.creationdate, posts_1.owneruserid
limit 6;
select  
  users_1.id, 
  max(
    users_1.creationdate), 
  users_1.id, 
  users_1.websiteurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.profileimageurl is not NULL
group by users_1.id, users_1.websiteurl
limit 3;
select  
  users_1.displayname, 
  users_1.accountid, 
  users_1.displayname, 
  avg(
    users_1.id)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.aboutme is not NULL
group by users_1.accountid, users_1.displayname
limit 21;
select  
  comments_1.userid, 
  comments_1.text, 
  comments_1.text, 
  comments_1.userid, 
  comments_1.contentlicense, 
  comments_1.userid, 
  comments_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join users as users_1
    on (comments_1.id = users_1.id )
where comments_1.creationdate is not NULL
limit 33;
select  
  votes_1.userid, 
  max(
    votes_1.creationdate), 
  postlinks_1.postid, 
  postlinks_1.creationdate, 
  votes_1.id, 
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join postlinks as postlinks_1
    on (votes_1.id = postlinks_1.id )
where votes_1.votetypeid is not NULL
group by postlinks_1.creationdate, postlinks_1.postid, votes_1.id, votes_1.userid
limit 28;
select  
  badges_1.name, 
  badges_1.date, 
  posthistory_1.contentlicense, 
  posthistory_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join badges as badges_1
      inner join postlinks as postlinks_1
      on (badges_1.id = postlinks_1.id )
    on (posthistory_1.id = badges_1.id )
where badges_1.id > postlinks_1.relatedpostid
limit 38;
select  
  posthistory_1.contentlicense, 
  posthistory_1.creationdate, 
  posthistory_1.id, 
  posthistory_1.contentlicense, 
  min(
    posthistory_1.creationdate), 
  max(
    posthistory_1.creationdate), 
  posthistory_1.creationdate, 
  posthistory_1.userdisplayname, 
  posthistory_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.creationdate < posthistory_1.creationdate
group by posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.id, posthistory_1.text, posthistory_1.userdisplayname
limit 16;
select  
  users_1.id, 
  users_1.creationdate, 
  users_1.websiteurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.creationdate is not NULL
limit 34;
select  
  comments_1.contentlicense, 
  comments_1.userid, 
  comments_1.id, 
  comments_1.postid, 
  comments_1.userid, 
  comments_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.contentlicense = comments_1.userdisplayname
limit 18;
select  
  max(
    posthistory_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.text is not NULL
limit 29;
select  
  posthistory_1.userid, 
  posthistory_1.comment, 
  posthistory_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.creationdate is not NULL
limit 32;
select  
  postlinks_1.relatedpostid, 
  votes_1.votetypeid, 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join votes as votes_1
      inner join votes as votes_2
      on (votes_1.id = votes_2.id )
    on (postlinks_1.id = votes_1.id )
where votes_1.votetypeid is not NULL
limit 2;
select  
  posthistory_2.postid, 
  votes_1.creationdate, 
  votes_1.creationdate, 
  votes_1.id, 
  max(
    votes_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join posthistory as posthistory_2
      inner join votes as votes_1
      on (posthistory_2.id = votes_1.id )
    on (posthistory_1.id = posthistory_2.id )
where posthistory_1.creationdate is not NULL
group by posthistory_2.postid, votes_1.creationdate, votes_1.id
limit 1;
select  
  count(
    badges_1.date), 
  posts_1.owneruserid, 
  badges_1.tagbased, 
  posthistory_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
      inner join posthistory as posthistory_2
        inner join posts as posts_1
        on (posthistory_2.id = posts_1.id )
      on (posthistory_1.id = posts_1.id )
    inner join badges as badges_1
    on (posts_1.id = badges_1.id )
where posthistory_2.contentlicense is not NULL
group by badges_1.tagbased, posthistory_1.text, posts_1.owneruserid
limit 13;
select  
  min(
    badges_3.userid), 
  badges_2.date, 
  badges_2.userid, 
  count(
    posthistory_1.creationdate), 
  posthistory_1.posthistorytypeid, 
  badges_3.id, 
  posthistory_1.comment, 
  badges_2.class, 
  posts_1.parentid, 
  badges_2.tagbased, 
  badges_2.tagbased, 
  badges_3.userid, 
  posts_1.id, 
  posthistory_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
      inner join badges as badges_2
        inner join users as users_1
          inner join posts as posts_1
          on (users_1.id = posts_1.id )
        on (badges_2.id = posts_1.id )
      on (badges_1.id = badges_2.id )
    inner join posthistory as posthistory_1
      inner join badges as badges_3
      on (posthistory_1.id = badges_3.id )
    on (badges_1.id = badges_3.id )
where posts_1.creationdate > badges_1.date
group by badges_2.class, badges_2.date, badges_2.tagbased, badges_2.userid, badges_3.id, badges_3.userid, posthistory_1.comment, posthistory_1.posthistorytypeid, posthistory_1.userid, posts_1.id, posts_1.parentid
limit 24;
select  
  badges_1.id, 
  badges_1.class, 
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.name is not NULL
limit 41;
select  
  count(
    users_1.accountid), 
  users_1.aboutme, 
  users_1.displayname, 
  users_1.id, 
  users_1.accountid, 
  users_1.accountid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.id is not NULL
group by users_1.aboutme, users_1.accountid, users_1.displayname, users_1.id
limit 7;
select  
  posthistory_1.posthistorytypeid, 
  votes_1.userid, 
  max(
    votes_1.creationdate), 
  min(
    votes_1.id), 
  votes_1.postid, 
  posthistory_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join votes as votes_1
    on (posthistory_1.id = votes_1.id )
where posthistory_1.revisionguid is not NULL
group by posthistory_1.posthistorytypeid, posthistory_1.userdisplayname, votes_1.postid, votes_1.userid
limit 13;
select  
  users_1.accountid, 
  users_1.websiteurl, 
  avg(
    users_1.id), 
  users_1.displayname, 
  min(
    users_1.creationdate), 
  max(
    users_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.accountid is not NULL
group by users_1.accountid, users_1.displayname, users_1.websiteurl
limit 5;
select  
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate > votes_1.creationdate
limit 21;
select  
  comments_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.postid is not NULL
limit 1;
select  
  votes_1.userid, 
  count(
    votes_1.id), 
  votes_1.userid, 
  min(
    votes_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate is not NULL
group by votes_1.userid
limit 41;
select  
  posts_1.tags, 
  posts_1.tags, 
  posts_1.title
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.body is not NULL
limit 39;
select  
  votes_2.postid, 
  badges_2.date, 
  badges_1.class, 
  posts_1.acceptedanswerid, 
  votes_2.id, 
  badges_1.userid, 
  votes_1.id, 
  votes_1.votetypeid, 
  votes_1.creationdate, 
  votes_2.postid, 
  max(
    badges_2.class), 
  votes_2.creationdate, 
  max(
    votes_1.creationdate), 
  posts_1.creationdate, 
  min(
    users_1.accountid), 
  votes_1.votetypeid, 
  postlinks_1.linktypeid, 
  sum(
    votes_2.votetypeid), 
  badges_2.name, 
  users_1.aboutme, 
  max(
    postlinks_1.creationdate), 
  max(
    votes_1.creationdate), 
  votes_2.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
        inner join posts as posts_1
          inner join votes as votes_2
            inner join badges as badges_1
            on (votes_2.id = badges_1.id )
          on (posts_1.id = badges_1.id )
        on (votes_1.id = badges_1.id )
      inner join badges as badges_2
      on (badges_1.id = badges_2.id )
    inner join comments as comments_1
      inner join postlinks as postlinks_1
        inner join users as users_1
        on (postlinks_1.id = users_1.id )
      on (comments_1.id = postlinks_1.id )
    on (badges_2.id = comments_1.id )
where comments_1.creationdate is not NULL
group by badges_1.class, badges_1.userid, badges_2.date, badges_2.name, postlinks_1.linktypeid, posts_1.acceptedanswerid, posts_1.creationdate, users_1.aboutme, votes_1.creationdate, votes_1.id, votes_1.votetypeid, votes_2.creationdate, votes_2.id, votes_2.postid
limit 13;
select  
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.userid is not NULL
limit 36;
select  
  users_1.websiteurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.profileimageurl is not NULL
limit 17;
select  
  votes_1.userid, 
  votes_1.creationdate, 
  votes_1.userid, 
  votes_1.votetypeid, 
  votes_1.id, 
  min(
    votes_1.creationdate), 
  min(
    votes_1.creationdate), 
  votes_1.postid, 
  votes_1.id, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.postid is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 18;
select  
  votes_1.postid, 
  votes_1.id, 
  votes_1.postid, 
  votes_1.creationdate, 
  votes_1.userid, 
  max(
    votes_1.creationdate), 
  votes_1.id, 
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid
limit 40;
select  
  posthistory_1.comment, 
  posthistory_1.userid, 
  max(
    posthistory_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.text >= posthistory_1.contentlicense
group by posthistory_1.comment, posthistory_1.userid
limit 6;
select  
  max(
    badges_1.date), 
  posts_1.acceptedanswerid, 
  badges_1.date, 
  posts_2.ownerdisplayname, 
  users_1.accountid, 
  count(*), 
  posts_2.id, 
  sum(
    posts_2.posttypeid), 
  min(
    postlinks_1.creationdate), 
  comments_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join posts as posts_2
        inner join badges as badges_1
          inner join postlinks as postlinks_1
          on (badges_1.id = postlinks_1.id )
        on (posts_2.id = badges_1.id )
      inner join comments as comments_1
        inner join users as users_1
        on (comments_1.id = users_1.id )
      on (posts_2.id = comments_1.id )
    on (posts_1.id = comments_1.id )
where posts_2.id is not NULL
group by badges_1.date, comments_1.userid, posts_1.acceptedanswerid, posts_2.id, posts_2.ownerdisplayname, users_1.accountid
limit 3;
select  
  postlinks_1.id, 
  posthistory_1.userdisplayname, 
  posthistory_1.revisionguid, 
  postlinks_1.creationdate, 
  postlinks_1.creationdate, 
  posthistory_1.posthistorytypeid, 
  postlinks_1.linktypeid, 
  posthistory_1.userid, 
  min(
    posthistory_1.creationdate), 
  postlinks_1.id, 
  postlinks_1.relatedpostid, 
  postlinks_1.linktypeid, 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join postlinks as postlinks_1
    on (posthistory_1.id = postlinks_1.id )
where postlinks_1.creationdate is not NULL
group by posthistory_1.posthistorytypeid, posthistory_1.revisionguid, posthistory_1.userdisplayname, posthistory_1.userid, postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 32;
select  
  votes_1.votetypeid, 
  max(
    votes_1.creationdate), 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.postid is not NULL
group by votes_1.creationdate, votes_1.votetypeid
limit 39;
select  
  votes_1.votetypeid, 
  min(
    votes_1.creationdate), 
  votes_1.postid, 
  votes_1.postid, 
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.userid is not NULL
group by votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 13;
select  
  posthistory_1.userid, 
  min(
    posthistory_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.userdisplayname <= posthistory_1.revisionguid
group by posthistory_1.userid
limit 27;
select  
  posthistory_2.id, 
  posts_1.owneruserid, 
  posthistory_2.userid, 
  posthistory_1.userid, 
  posts_1.parentid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
      inner join posts as posts_1
      on (posthistory_1.id = posts_1.id )
    inner join posthistory as posthistory_2
    on (posts_1.id = posthistory_2.id )
where posts_1.posttypeid is not NULL
limit 38;
select  
  posthistory_1.id, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.userid, 
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join posthistory as posthistory_1
    on (votes_1.id = posthistory_1.id )
where posthistory_1.postid is not NULL
limit 36;
select  
  posthistory_1.creationdate, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.contentlicense, 
  posthistory_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.userid <= posthistory_1.id
limit 19;
select  
  comments_1.id, 
  comments_1.userdisplayname, 
  comments_1.userdisplayname, 
  comments_1.text, 
  sum(
    comments_1.userid), 
  comments_1.postid, 
  max(
    comments_1.creationdate), 
  comments_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.creationdate > comments_1.creationdate
group by comments_1.contentlicense, comments_1.id, comments_1.postid, comments_1.text, comments_1.userdisplayname
limit 36;
select  
  users_1.accountid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.profileimageurl = users_1.accountid
limit 35;
select  
  posthistory_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join posthistory as posthistory_1
    on (users_1.id = posthistory_1.id )
where users_1.creationdate is not NULL
limit 31;
select  
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  postlinks_1.linktypeid, 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
limit 25;
select  
  sum(
    badges_1.id), 
  badges_1.tagbased, 
  badges_1.tagbased, 
  badges_1.id, 
  badges_1.userid, 
  badges_1.userid, 
  badges_1.date, 
  badges_1.date, 
  max(
    badges_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.class is not NULL
group by badges_1.date, badges_1.id, badges_1.tagbased, badges_1.userid
limit 27;
select  
  users_1.creationdate, 
  users_1.aboutme, 
  users_1.aboutme, 
  users_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.location is not NULL
limit 16;
select  
  min(
    postlinks_1.linktypeid), 
  postlinks_1.linktypeid, 
  postlinks_1.linktypeid, 
  postlinks_1.postid, 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
group by postlinks_1.linktypeid, postlinks_1.postid
limit 1;
select  
  badges_1.tagbased, 
  comments_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
      inner join posts as posts_1
        inner join posts as posts_2
        on (posts_1.id = posts_2.id )
      on (badges_1.id = posts_2.id )
    inner join badges as badges_2
        inner join posts as posts_3
        on (badges_2.id = posts_3.id )
      inner join comments as comments_1
        inner join votes as votes_1
        on (comments_1.id = votes_1.id )
      on (badges_2.id = votes_1.id )
    on (posts_2.id = votes_1.id )
where posts_2.body is not NULL
limit 28;
select  
  comments_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.id is not NULL
limit 38;
select  
  badges_1.userid, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join comments as comments_1
        inner join votes as votes_1
        on (comments_1.id = votes_1.id )
      inner join comments as comments_2
      on (votes_1.id = comments_2.id )
    on (badges_1.id = votes_1.id )
where badges_1.class is not NULL
limit 6;
select  
  max(
    posthistory_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
      inner join users as users_1
      on (posts_1.id = users_1.id )
    inner join posthistory as posthistory_1
    on (users_1.id = posthistory_1.id )
where users_1.websiteurl is not NULL
limit 26;
select  
  badges_1.id, 
  badges_1.id, 
  badges_1.class, 
  max(
    badges_1.class)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.name is not NULL
group by badges_1.class, badges_1.id
limit 24;
select  
  users_1.websiteurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join postlinks as postlinks_1
        inner join posts as posts_1
          inner join postlinks as postlinks_2
          on (posts_1.id = postlinks_2.id )
        on (postlinks_1.id = posts_1.id )
      inner join comments as comments_1
          inner join posthistory as posthistory_1
          on (comments_1.id = posthistory_1.id )
        inner join users as users_1
          inner join users as users_2
          on (users_1.id = users_2.id )
        on (comments_1.id = users_2.id )
      on (postlinks_2.id = comments_1.id )
    on (badges_1.id = posts_1.id )
where posts_1.posttypeid is not NULL
limit 3;
select  
  posthistory_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.creationdate = posthistory_1.creationdate
limit 1;
select  
  postlinks_1.relatedpostid, 
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid, 
  postlinks_1.id, 
  postlinks_1.creationdate, 
  postlinks_1.id, 
  postlinks_1.creationdate, 
  postlinks_1.postid, 
  max(
    postlinks_1.postid), 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.id is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 11;
select  
  posthistory_2.id, 
  posthistory_2.revisionguid, 
  posthistory_2.comment, 
  posthistory_1.creationdate, 
  posthistory_1.userdisplayname, 
  posthistory_1.userdisplayname, 
  badges_1.id, 
  badges_1.class, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.text, 
  posthistory_1.postid, 
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
      inner join posthistory as posthistory_2
      on (posthistory_1.id = posthistory_2.id )
    inner join badges as badges_1
    on (posthistory_2.id = badges_1.id )
where badges_1.tagbased is not NULL
limit 4;
select  
  postlinks_1.relatedpostid, 
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  postlinks_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
limit 8;
select  
  badges_1.userid, 
  count(*), 
  badges_1.tagbased, 
  max(
    badges_1.date), 
  postlinks_1.creationdate, 
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join badges as badges_1
    on (postlinks_1.id = badges_1.id )
where badges_1.class is not NULL
group by badges_1.tagbased, badges_1.userid, postlinks_1.creationdate
limit 30;
select  
  comments_1.userid, 
  min(
    posts_1.creationdate), 
  posthistory_1.userdisplayname, 
  posthistory_1.id, 
  posthistory_1.postid, 
  comments_1.creationdate, 
  comments_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join badges as badges_1
      inner join posts as posts_1
          inner join posthistory as posthistory_1
          on (posts_1.id = posthistory_1.id )
        inner join comments as comments_2
        on (posthistory_1.id = comments_2.id )
      on (badges_1.id = posts_1.id )
    on (comments_1.id = posthistory_1.id )
where comments_2.creationdate > badges_1.date
group by comments_1.contentlicense, comments_1.creationdate, comments_1.userid, posthistory_1.id, posthistory_1.postid, posthistory_1.userdisplayname
limit 1;
select  
  postlinks_1.creationdate, 
  badges_1.userid, 
  postlinks_1.linktypeid, 
  badges_1.tagbased
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join badges as badges_1
    on (postlinks_1.id = badges_1.id )
where badges_1.userid < badges_1.class
limit 27;
select  
  posts_1.parentid, 
  posts_1.body, 
  posts_1.parentid, 
  posts_1.id, 
  min(
    posts_1.creationdate), 
  min(
    posts_1.creationdate), 
  posts_1.title, 
  posts_1.owneruserid, 
  posts_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.title is not NULL
group by posts_1.body, posts_1.contentlicense, posts_1.id, posts_1.owneruserid, posts_1.parentid, posts_1.title
limit 38;
select  
  postlinks_1.postid, 
  postlinks_1.linktypeid, 
  postlinks_1.linktypeid, 
  postlinks_1.creationdate, 
  postlinks_1.id, 
  postlinks_1.id, 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
limit 25;
select  
  users_1.aboutme, 
  users_1.websiteurl, 
  users_1.creationdate, 
  users_1.websiteurl, 
  users_1.profileimageurl, 
  users_1.profileimageurl, 
  posts_1.tags
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join users as users_1
    on (posts_1.id = users_1.id )
where posts_1.acceptedanswerid is not NULL
limit 35;
select  
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
      inner join posthistory as posthistory_1
      on (votes_1.id = posthistory_1.id )
    inner join posthistory as posthistory_2
    on (votes_1.id = posthistory_2.id )
where votes_1.id = posthistory_2.postid
limit 42;
select  
  comments_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.contentlicense is not NULL
limit 11;
select  
  users_1.location, 
  users_1.location, 
  users_1.aboutme, 
  users_1.accountid, 
  users_1.websiteurl, 
  min(
    users_1.creationdate), 
  users_1.location
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.websiteurl is not NULL
group by users_1.aboutme, users_1.accountid, users_1.location, users_1.websiteurl
limit 17;
select  
  votes_1.userid, 
  max(
    votes_1.creationdate), 
  max(
    votes_1.postid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join postlinks as postlinks_1
    on (votes_1.id = postlinks_1.id )
where postlinks_1.relatedpostid is not NULL
group by votes_1.userid
limit 6;
select  
  posts_1.creationdate, 
  posts_1.body, 
  posts_1.posttypeid, 
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.tags is not NULL
limit 10;
select  
  posthistory_1.userid, 
  posthistory_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.revisionguid is not NULL
limit 8;
select  
  max(
    votes_1.creationdate), 
  max(
    votes_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.votetypeid >= votes_1.postid
limit 12;
select  
  badges_1.tagbased, 
  max(
    votes_1.votetypeid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
      inner join badges as badges_1
        inner join votes as votes_1
        on (badges_1.id = votes_1.id )
      on (postlinks_1.id = votes_1.id )
    inner join postlinks as postlinks_2
      inner join badges as badges_2
      on (postlinks_2.id = badges_2.id )
    on (postlinks_1.id = badges_2.id )
where postlinks_1.creationdate is not NULL
group by badges_1.tagbased
limit 23;
select  
  votes_1.votetypeid, 
  count(*), 
  sum(
    votes_1.postid), 
  votes_1.userid, 
  votes_1.userid, 
  min(
    votes_1.id), 
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.postid is not NULL
group by votes_1.userid, votes_1.votetypeid
limit 12;
select  
  users_1.profileimageurl, 
  users_1.creationdate, 
  badges_1.date, 
  min(
    badges_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join badges as badges_1
    on (users_1.id = badges_1.id )
where users_1.profileimageurl is not NULL
group by badges_1.date, users_1.creationdate, users_1.profileimageurl
limit 28;
select  
  votes_1.userid, 
  votes_1.creationdate, 
  votes_1.userid, 
  votes_1.votetypeid, 
  votes_1.votetypeid, 
  votes_1.postid, 
  votes_1.id, 
  votes_1.id, 
  votes_1.creationdate, 
  votes_1.postid, 
  votes_1.userid, 
  votes_1.userid, 
  min(
    votes_1.creationdate), 
  votes_1.creationdate, 
  max(
    votes_1.postid), 
  votes_1.id, 
  votes_1.postid, 
  votes_1.postid, 
  votes_1.postid, 
  max(
    votes_1.creationdate), 
  max(
    votes_1.postid), 
  votes_1.votetypeid, 
  votes_1.creationdate, 
  votes_1.creationdate, 
  votes_1.id, 
  count(*), 
  votes_1.userid, 
  votes_1.votetypeid, 
  min(
    votes_1.userid), 
  votes_1.id, 
  sum(
    votes_1.votetypeid), 
  votes_1.votetypeid, 
  sum(
    votes_1.id), 
  votes_1.postid, 
  votes_1.id, 
  votes_1.postid, 
  votes_1.userid, 
  votes_1.id, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.userid is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 17;
select  
  users_1.accountid, 
  posthistory_1.posthistorytypeid, 
  posts_1.creationdate, 
  posts_2.title, 
  users_1.location, 
  min(
    posts_2.id), 
  posthistory_1.creationdate, 
  comments_1.userdisplayname, 
  posts_1.ownerdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
      inner join posthistory as posthistory_1
      on (posts_1.id = posthistory_1.id )
    inner join posts as posts_2
        inner join users as users_1
        on (posts_2.id = users_1.id )
      inner join comments as comments_1
      on (users_1.id = comments_1.id )
    on (posts_1.id = comments_1.id )
where posts_2.acceptedanswerid is not NULL
group by comments_1.userdisplayname, posthistory_1.creationdate, posthistory_1.posthistorytypeid, posts_1.creationdate, posts_1.ownerdisplayname, posts_2.title, users_1.accountid, users_1.location
limit 14;
select  
  posthistory_1.userdisplayname, 
  posthistory_1.userid, 
  posthistory_1.comment, 
  posthistory_1.postid, 
  posthistory_1.comment, 
  posthistory_1.userid, 
  posthistory_1.id, 
  posthistory_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.comment is not NULL
limit 10;
select  
  posthistory_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.id is not NULL
limit 20;
select  
  posts_1.creationdate, 
  posthistory_1.postid, 
  badges_1.id, 
  posthistory_1.userid, 
  posthistory_2.comment, 
  badges_1.tagbased, 
  posthistory_1.posthistorytypeid, 
  posthistory_2.userdisplayname, 
  posthistory_1.userid, 
  posts_1.acceptedanswerid, 
  posts_1.creationdate, 
  posthistory_1.posthistorytypeid, 
  posts_1.id, 
  badges_1.tagbased
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
      inner join posts as posts_1
      on (posthistory_1.id = posts_1.id )
    inner join badges as badges_1
      inner join posthistory as posthistory_2
      on (badges_1.id = posthistory_2.id )
    on (posthistory_1.id = posthistory_2.id )
where posthistory_1.text is not NULL
limit 15;
select  
  postlinks_1.relatedpostid, 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
limit 30;
select  
  max(
    postlinks_1.relatedpostid), 
  postlinks_1.relatedpostid, 
  max(
    badges_1.id), 
  postlinks_1.creationdate, 
  badges_1.tagbased, 
  avg(
    badges_1.class), 
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join postlinks as postlinks_1
    on (badges_1.id = postlinks_1.id )
where badges_1.tagbased >= badges_1.tagbased
group by badges_1.date, badges_1.tagbased, postlinks_1.creationdate, postlinks_1.relatedpostid
limit 10;
select  
  users_1.profileimageurl, 
  users_1.profileimageurl, 
  max(
    users_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.id is not NULL
group by users_1.profileimageurl
limit 34;
select  
  comments_1.postid, 
  min(
    comments_1.creationdate), 
  comments_1.text, 
  comments_1.postid, 
  comments_1.postid, 
  comments_1.contentlicense, 
  comments_1.creationdate, 
  comments_1.id, 
  comments_1.userdisplayname, 
  comments_1.userid, 
  comments_1.creationdate, 
  comments_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.postid is not NULL
group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.text, comments_1.userdisplayname, comments_1.userid
limit 4;
select  
  max(
    posthistory_1.creationdate), 
  comments_1.userdisplayname, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join comments as comments_1
    on (posthistory_1.id = comments_1.id )
where posthistory_1.creationdate is not NULL
group by comments_1.userdisplayname, posthistory_1.posthistorytypeid, posthistory_1.userdisplayname
limit 27;
select  
  badges_1.name, 
  badges_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.name <= badges_1.name
limit 14;
select  
  avg(
    comments_1.postid), 
  comments_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.contentlicense is not NULL
group by comments_1.userid
limit 18;
select  
  badges_1.tagbased, 
  badges_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.userid is not NULL
limit 35;
select  
  badges_1.tagbased, 
  badges_1.id, 
  badges_1.userid, 
  badges_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.date is not NULL
limit 5;
select  
  votes_1.userid, 
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate >= votes_1.creationdate
limit 24;
select  
  max(
    users_1.creationdate), 
  users_1.aboutme
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.aboutme is not NULL
group by users_1.aboutme
limit 24;
select  
  badges_1.id, 
  posts_2.creationdate, 
  postlinks_1.id, 
  comments_2.creationdate, 
  count(
    posts_2.tags), 
  comments_2.postid, 
  postlinks_1.linktypeid, 
  posts_1.contentlicense, 
  min(
    badges_1.date), 
  comments_2.postid, 
  comments_1.userdisplayname, 
  posts_1.body, 
  comments_2.contentlicense, 
  comments_2.userdisplayname, 
  posts_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
      inner join badges as badges_1
          inner join comments as comments_2
          on (badges_1.id = comments_2.id )
        inner join posts as posts_1
        on (comments_2.id = posts_1.id )
      on (comments_1.id = comments_2.id )
    inner join postlinks as postlinks_1
      inner join posts as posts_2
      on (postlinks_1.id = posts_2.id )
    on (comments_1.id = postlinks_1.id )
where badges_1.tagbased <= badges_1.tagbased
group by badges_1.id, comments_1.userdisplayname, comments_2.contentlicense, comments_2.creationdate, comments_2.postid, comments_2.userdisplayname, postlinks_1.id, postlinks_1.linktypeid, posts_1.body, posts_1.contentlicense, posts_1.id, posts_2.creationdate
limit 18;
select  
  postlinks_1.creationdate, 
  postlinks_1.creationdate, 
  postlinks_1.postid, 
  postlinks_1.relatedpostid, 
  postlinks_1.postid, 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
limit 16;
select  
  postlinks_1.relatedpostid, 
  postlinks_1.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
limit 18;
select  
  sum(
    comments_1.id), 
  comments_1.text, 
  comments_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.text is not NULL
group by comments_1.text, comments_1.userid
limit 6;
select  
  comments_1.text, 
  comments_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join votes as votes_1
    on (comments_1.id = votes_1.id )
where comments_1.text is not NULL
limit 13;
select  
  posts_1.acceptedanswerid, 
  posts_1.id, 
  posts_1.posttypeid, 
  posts_1.contentlicense, 
  posts_1.ownerdisplayname, 
  max(
    posts_1.creationdate), 
  posts_1.owneruserid, 
  posts_1.creationdate, 
  posts_1.parentid, 
  posts_1.ownerdisplayname, 
  posts_1.posttypeid, 
  posts_1.posttypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.body is not NULL
group by posts_1.acceptedanswerid, posts_1.contentlicense, posts_1.creationdate, posts_1.id, posts_1.ownerdisplayname, posts_1.owneruserid, posts_1.parentid, posts_1.posttypeid
limit 9;
select  
  posthistory_2.comment
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join posthistory as posthistory_2
    on (posthistory_1.id = posthistory_2.id )
where posthistory_2.creationdate >= posthistory_1.creationdate
limit 39;
select  
  votes_1.postid, 
  votes_1.postid, 
  votes_1.id, 
  votes_1.postid, 
  votes_1.id, 
  votes_1.votetypeid, 
  votes_1.id, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.userid = votes_1.votetypeid
limit 1;
select  
  comments_1.id, 
  badges_1.userid, 
  badges_2.id, 
  comments_1.creationdate, 
  badges_2.class, 
  postlinks_1.linktypeid, 
  badges_2.id, 
  postlinks_1.postid, 
  votes_1.postid, 
  count(
    votes_1.userid), 
  badges_1.tagbased, 
  votes_1.userid, 
  comments_1.id, 
  badges_2.tagbased, 
  postlinks_1.postid, 
  postlinks_1.creationdate, 
  comments_1.creationdate, 
  badges_1.id, 
  postlinks_1.linktypeid, 
  badges_2.date, 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join votes as votes_1
        inner join comments as comments_1
        on (votes_1.id = comments_1.id )
      inner join badges as badges_1
        inner join badges as badges_2
        on (badges_1.id = badges_2.id )
      on (comments_1.id = badges_2.id )
    on (postlinks_1.id = badges_1.id )
where postlinks_1.id >= votes_1.postid
group by badges_1.id, badges_1.tagbased, badges_1.userid, badges_2.class, badges_2.date, badges_2.id, badges_2.tagbased, comments_1.creationdate, comments_1.id, postlinks_1.creationdate, postlinks_1.linktypeid, postlinks_1.postid, votes_1.id, votes_1.postid, votes_1.userid
limit 39;
select  
  posts_1.parentid, 
  posts_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.tags is not NULL
limit 15;
select  
  users_1.accountid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join comments as comments_1
      inner join posts as posts_1
      on (comments_1.id = posts_1.id )
    on (users_1.id = comments_1.id )
where posts_1.tags is not NULL
limit 19;
select  
  comments_1.userdisplayname, 
  posts_1.ownerdisplayname, 
  comments_1.userid, 
  max(
    posts_1.creationdate), 
  comments_1.userdisplayname, 
  comments_1.contentlicense, 
  min(
    posts_1.id), 
  comments_1.contentlicense, 
  posts_1.posttypeid, 
  posts_1.posttypeid, 
  posts_1.acceptedanswerid, 
  posts_1.ownerdisplayname, 
  posts_1.body
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join comments as comments_1
    on (posts_1.id = comments_1.id )
where comments_1.userid is not NULL
group by comments_1.contentlicense, comments_1.userdisplayname, comments_1.userid, posts_1.acceptedanswerid, posts_1.body, posts_1.ownerdisplayname, posts_1.posttypeid
limit 30;
select  
  posts_1.acceptedanswerid, 
  avg(
    votes_1.id), 
  count(
    posts_1.ownerdisplayname), 
  posts_1.id, 
  min(
    posts_1.creationdate), 
  count(*), 
  posts_1.tags, 
  votes_1.id, 
  posts_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join posts as posts_1
    on (votes_1.id = posts_1.id )
where posts_1.parentid is not NULL
group by posts_1.acceptedanswerid, posts_1.creationdate, posts_1.id, posts_1.tags, votes_1.id
limit 17;
select  
  posts_1.parentid, 
  posts_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.creationdate > posts_1.creationdate
limit 30;
select  
  users_1.websiteurl, 
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join posthistory as posthistory_1
    on (users_1.id = posthistory_1.id )
where users_1.profileimageurl is not NULL
limit 27;
select  
  posts_1.posttypeid, 
  badges_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join badges as badges_1
    on (posts_1.id = badges_1.id )
where posts_1.contentlicense > badges_1.name
limit 6;
select  
  max(
    posthistory_1.creationdate), 
  posts_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
      inner join badges as badges_2
        inner join posts as posts_1
        on (badges_2.id = posts_1.id )
      on (badges_1.id = posts_1.id )
    inner join posthistory as posthistory_1
    on (badges_2.id = posthistory_1.id )
where posts_1.owneruserid is not NULL
group by posts_1.contentlicense
limit 8;
select  
  votes_1.creationdate, 
  min(
    badges_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join badges as badges_1
    on (votes_1.id = badges_1.id )
where badges_1.tagbased < badges_1.tagbased
group by votes_1.creationdate
limit 11;
select  
  postlinks_1.postid, 
  postlinks_1.postid, 
  postlinks_1.relatedpostid, 
  postlinks_1.relatedpostid, 
  postlinks_1.linktypeid, 
  postlinks_1.id, 
  postlinks_1.creationdate, 
  postlinks_1.postid, 
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  postlinks_1.id, 
  max(
    postlinks_1.creationdate), 
  avg(
    postlinks_1.relatedpostid), 
  postlinks_1.creationdate, 
  postlinks_1.creationdate, 
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid, 
  postlinks_1.postid, 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 31;
select  
  count(*), 
  badges_1.userid, 
  badges_1.class, 
  badges_1.id, 
  badges_1.id, 
  badges_1.date, 
  min(
    badges_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.name <= badges_1.name
group by badges_1.class, badges_1.date, badges_1.id, badges_1.userid
limit 7;
select  
  comments_1.userid, 
  posthistory_1.text, 
  posthistory_1.userdisplayname, 
  posthistory_1.text, 
  posthistory_1.text, 
  posthistory_1.comment, 
  comments_1.postid, 
  comments_1.postid, 
  comments_1.userid, 
  comments_1.id, 
  posthistory_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join comments as comments_1
    on (posthistory_1.id = comments_1.id )
where posthistory_1.postid >= posthistory_1.userid
limit 30;
select  
  badges_1.date, 
  badges_1.tagbased
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.date is not NULL
limit 32;
select  
  comments_1.text, 
  comments_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.contentlicense is not NULL
limit 30;
select  
  badges_1.class, 
  posthistory_1.comment, 
  badges_1.userid, 
  posthistory_1.userdisplayname, 
  max(
    posts_1.creationdate), 
  badges_1.date, 
  badges_1.class, 
  posts_1.title
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join posts as posts_1
      inner join posthistory as posthistory_1
      on (posts_1.id = posthistory_1.id )
    on (badges_1.id = posts_1.id )
where posthistory_1.text is not NULL
group by badges_1.class, badges_1.date, badges_1.userid, posthistory_1.comment, posthistory_1.userdisplayname, posts_1.title
limit 38;
select  
  postlinks_1.postid, 
  postlinks_1.relatedpostid, 
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  postlinks_1.postid, 
  min(
    postlinks_1.creationdate), 
  postlinks_1.linktypeid, 
  postlinks_1.postid, 
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid, 
  postlinks_1.postid, 
  postlinks_1.id, 
  max(
    postlinks_1.relatedpostid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 8;
select  
  comments_1.userdisplayname, 
  avg(
    comments_1.postid), 
  comments_1.creationdate, 
  comments_1.text, 
  comments_1.contentlicense, 
  comments_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.id is not NULL
group by comments_1.contentlicense, comments_1.creationdate, comments_1.text, comments_1.userdisplayname
limit 28;
select  
  min(
    users_1.profileimageurl), 
  users_1.websiteurl, 
  users_1.displayname, 
  min(
    users_1.creationdate), 
  users_1.id, 
  users_1.displayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.websiteurl is not NULL
group by users_1.displayname, users_1.id, users_1.websiteurl
limit 29;
select  
  min(
    posts_1.creationdate), 
  posts_1.parentid, 
  posts_1.owneruserid, 
  count(*), 
  posts_1.tags
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.acceptedanswerid is not NULL
group by posts_1.owneruserid, posts_1.parentid, posts_1.tags
limit 31;
select  
  users_1.location, 
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
      inner join comments as comments_1
      on (badges_1.id = comments_1.id )
    inner join votes as votes_1
        inner join postlinks as postlinks_1
        on (votes_1.id = postlinks_1.id )
      inner join users as users_1
        inner join posthistory as posthistory_1
        on (users_1.id = posthistory_1.id )
      on (postlinks_1.id = posthistory_1.id )
    on (badges_1.id = votes_1.id )
where users_1.creationdate is not NULL
limit 12;
select  
  posthistory_1.contentlicense, 
  posthistory_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.creationdate is not NULL
limit 1;
select  
  votes_1.id, 
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join votes as votes_1
    on (badges_1.id = votes_1.id )
where badges_1.tagbased = badges_1.tagbased
limit 29;
select  
  comments_1.userdisplayname, 
  comments_1.text, 
  comments_1.text, 
  comments_1.postid, 
  max(
    posts_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join posts as posts_1
    on (comments_1.id = posts_1.id )
where posts_1.parentid is not NULL
group by comments_1.postid, comments_1.text, comments_1.userdisplayname
limit 1;
select  
  users_1.websiteurl, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join users as users_1
    on (posts_1.id = users_1.id )
where posts_1.body < posts_1.contentlicense
group by users_1.websiteurl
limit 2;
select  
  posthistory_1.revisionguid, 
  min(
    posthistory_1.creationdate), 
  posthistory_1.creationdate, 
  posthistory_1.comment, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.userdisplayname is not NULL
group by posthistory_1.comment, posthistory_1.creationdate, posthistory_1.posthistorytypeid, posthistory_1.revisionguid, posthistory_1.text
limit 41;
select  
  votes_1.votetypeid, 
  votes_1.creationdate, 
  votes_1.userid, 
  votes_1.id, 
  max(
    votes_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.userid, votes_1.votetypeid
limit 4;
select  
  badges_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.id <= badges_1.class
limit 31;
select  
  comments_1.text, 
  min(
    comments_1.creationdate), 
  comments_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.id <= comments_1.postid
group by comments_1.postid, comments_1.text
limit 23;
select  
  posts_1.acceptedanswerid, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.postid, 
  count(*), 
  posts_1.owneruserid, 
  posthistory_1.contentlicense, 
  posthistory_1.revisionguid, 
  posts_1.id, 
  posthistory_1.creationdate, 
  avg(
    posts_1.acceptedanswerid), 
  posthistory_1.revisionguid, 
  posthistory_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join posthistory as posthistory_1
    on (posts_1.id = posthistory_1.id )
where posthistory_1.contentlicense is not NULL
group by posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posts_1.acceptedanswerid, posts_1.id, posts_1.owneruserid
limit 11;
select  
  postlinks_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join comments as comments_1
        inner join users as users_2
        on (comments_1.id = users_2.id )
      inner join postlinks as postlinks_1
      on (comments_1.id = postlinks_1.id )
    on (users_1.id = comments_1.id )
where comments_1.creationdate < users_1.creationdate
limit 15;
select  
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.accountid is not NULL
limit 30;
select  
  badges_1.id, 
  posthistory_1.creationdate, 
  posthistory_1.text, 
  posthistory_1.postid, 
  posthistory_2.posthistorytypeid, 
  badges_1.userid, 
  posthistory_1.posthistorytypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
      inner join posthistory as posthistory_1
      on (badges_1.id = posthistory_1.id )
    inner join posthistory as posthistory_2
    on (badges_1.id = posthistory_2.id )
where badges_1.name <= posthistory_2.revisionguid
limit 5;
select  
  posts_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.creationdate is not NULL
limit 32;
select  
  posts_1.contentlicense, 
  posts_1.title, 
  posts_1.acceptedanswerid, 
  posts_1.posttypeid, 
  posts_1.ownerdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.title is not NULL
limit 18;
select  
  postlinks_1.relatedpostid, 
  postlinks_1.id, 
  postlinks_1.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
limit 37;
select  
  badges_1.id, 
  badges_1.id, 
  badges_1.tagbased, 
  badges_1.name, 
  min(
    badges_1.date), 
  max(
    badges_1.id), 
  badges_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.userid is not NULL
group by badges_1.id, badges_1.name, badges_1.tagbased
limit 28;
select  
  postlinks_2.creationdate, 
  postlinks_3.creationdate, 
  postlinks_1.linktypeid, 
  postlinks_1.creationdate, 
  min(
    postlinks_1.relatedpostid), 
  postlinks_2.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join postlinks as postlinks_2
      inner join postlinks as postlinks_3
      on (postlinks_2.id = postlinks_3.id )
    on (postlinks_1.id = postlinks_2.id )
where postlinks_3.linktypeid is not NULL
group by postlinks_1.creationdate, postlinks_1.linktypeid, postlinks_2.creationdate, postlinks_2.linktypeid, postlinks_3.creationdate
limit 31;
select  
  max(
    posts_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
      inner join comments as comments_1
      on (badges_1.id = comments_1.id )
    inner join posts as posts_1
    on (badges_1.id = posts_1.id )
where comments_1.creationdate <= posts_1.creationdate
limit 2;
select  
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.votetypeid is not NULL
limit 6;
select  
  users_1.creationdate, 
  users_1.aboutme, 
  min(
    users_1.creationdate), 
  max(
    users_1.accountid), 
  users_1.profileimageurl, 
  users_1.creationdate, 
  users_1.id, 
  users_1.websiteurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.aboutme is not NULL
group by users_1.aboutme, users_1.creationdate, users_1.id, users_1.profileimageurl, users_1.websiteurl
limit 7;
select  
  posthistory_1.comment, 
  posthistory_1.creationdate, 
  max(
    posthistory_1.creationdate), 
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid, 
  postlinks_1.postid, 
  max(
    posthistory_1.creationdate), 
  posthistory_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join postlinks as postlinks_1
    on (posthistory_1.id = postlinks_1.id )
where posthistory_1.revisionguid is not NULL
group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.creationdate, postlinks_1.creationdate, postlinks_1.postid, postlinks_1.relatedpostid
limit 25;
select  
  users_1.aboutme, 
  users_1.location, 
  users_1.websiteurl, 
  users_1.displayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.id is not NULL
limit 24;
select  
  sum(
    comments_1.userid), 
  postlinks_1.id, 
  comments_1.userdisplayname, 
  postlinks_2.creationdate, 
  count(*), 
  postlinks_2.creationdate, 
  postlinks_2.linktypeid, 
  postlinks_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
      inner join comments as comments_1
      on (postlinks_1.id = comments_1.id )
    inner join postlinks as postlinks_2
    on (comments_1.id = postlinks_2.id )
where postlinks_2.postid is not NULL
group by comments_1.userdisplayname, postlinks_1.id, postlinks_2.creationdate, postlinks_2.linktypeid
limit 17;
select  
  min(
    users_1.creationdate), 
  users_1.location, 
  users_1.profileimageurl, 
  users_1.creationdate, 
  users_1.location, 
  users_1.websiteurl, 
  users_1.id, 
  users_1.profileimageurl, 
  users_1.displayname, 
  users_1.location, 
  users_1.displayname, 
  users_1.id, 
  users_1.location, 
  users_1.displayname, 
  users_1.creationdate, 
  users_1.aboutme, 
  users_1.displayname, 
  users_1.aboutme, 
  users_1.aboutme
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.accountid is not NULL
group by users_1.aboutme, users_1.creationdate, users_1.displayname, users_1.id, users_1.location, users_1.profileimageurl, users_1.websiteurl
limit 31;
select  
  posts_1.ownerdisplayname, 
  posts_1.id, 
  posts_1.tags, 
  sum(
    posts_1.id), 
  posts_1.posttypeid, 
  posts_1.parentid, 
  sum(
    posts_1.owneruserid), 
  count(*), 
  posts_1.tags, 
  count(*), 
  posts_1.id, 
  posts_1.contentlicense, 
  posts_1.owneruserid, 
  posts_1.body, 
  min(
    posts_1.creationdate), 
  posts_1.parentid, 
  posts_1.acceptedanswerid, 
  posts_1.body
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.acceptedanswerid is not NULL
group by posts_1.acceptedanswerid, posts_1.body, posts_1.contentlicense, posts_1.id, posts_1.ownerdisplayname, posts_1.owneruserid, posts_1.parentid, posts_1.posttypeid, posts_1.tags
limit 25;
select  
  users_1.displayname, 
  users_1.id, 
  users_1.location, 
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.creationdate is not NULL
limit 24;
select  
  postlinks_1.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
limit 10;
select  
  postlinks_1.creationdate, 
  min(
    postlinks_1.creationdate), 
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid, 
  count(*), 
  postlinks_1.linktypeid, 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
group by postlinks_1.creationdate, postlinks_1.linktypeid, postlinks_1.relatedpostid
limit 30;
select  
  votes_1.votetypeid, 
  votes_1.id, 
  votes_1.votetypeid, 
  votes_1.votetypeid, 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.userid > votes_1.votetypeid
limit 28;
select  
  postlinks_1.relatedpostid, 
  postlinks_1.postid, 
  postlinks_1.linktypeid, 
  postlinks_1.postid, 
  postlinks_1.creationdate, 
  postlinks_1.linktypeid, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
group by postlinks_1.creationdate, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 10;
select  
  votes_1.creationdate, 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate is not NULL
limit 21;
select  
  comments_1.contentlicense, 
  comments_1.text, 
  comments_1.id, 
  comments_1.userdisplayname, 
  comments_1.id, 
  comments_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userid is not NULL
limit 33;
select  
  max(
    votes_1.creationdate), 
  max(
    users_1.creationdate), 
  votes_1.userid, 
  users_1.creationdate, 
  users_1.websiteurl, 
  users_1.creationdate, 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
      inner join posts as posts_1
      on (users_1.id = posts_1.id )
    inner join votes as votes_1
    on (posts_1.id = votes_1.id )
where votes_1.creationdate is not NULL
group by users_1.creationdate, users_1.websiteurl, votes_1.id, votes_1.userid
limit 36;
select  
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join badges as badges_1
      inner join posthistory as posthistory_1
      on (badges_1.id = posthistory_1.id )
    on (votes_1.id = badges_1.id )
where votes_1.votetypeid is not NULL
limit 13;
select  
  votes_1.postid, 
  votes_1.creationdate, 
  votes_1.postid, 
  votes_1.votetypeid, 
  min(
    votes_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.votetypeid is not NULL
group by votes_1.creationdate, votes_1.postid, votes_1.votetypeid
limit 13;
select distinct 
  badges_1.userid, 
  badges_1.class, 

, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.date is not NULL
limit 27;
select  
  users_1.accountid, 
  users_1.creationdate, 
  min(
    comments_1.creationdate), 
  comments_1.contentlicense, 
  comments_1.contentlicense, 
  users_1.displayname, 
  postlinks_1.creationdate, 
  users_1.location, 
  users_1.location
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
      inner join comments as comments_1
      on (users_1.id = comments_1.id )
    inner join postlinks as postlinks_1
    on (users_1.id = postlinks_1.id )
where comments_1.userid is not NULL
group by comments_1.contentlicense, postlinks_1.creationdate, users_1.accountid, users_1.creationdate, users_1.displayname, users_1.location
limit 34;
select  
  posthistory_1.userid, 
  comments_1.userid, 
  comments_2.id, 
  max(
    posthistory_1.creationdate), 
  posthistory_1.comment, 
  max(
    comments_1.creationdate), 
  comments_1.userid, 
  posts_1.parentid, 
  comments_2.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
        inner join posthistory as posthistory_1
        on (posts_1.id = posthistory_1.id )
      inner join comments as comments_1
      on (posts_1.id = comments_1.id )
    inner join comments as comments_2
    on (posthistory_1.id = comments_2.id )
where comments_2.creationdate is not NULL
group by comments_1.userid, comments_2.id, comments_2.text, posthistory_1.comment, posthistory_1.userid, posts_1.parentid
limit 42;
select  
  min(
    badges_1.date), 
  badges_1.name, 
  badges_1.id, 
  badges_1.class, 
  badges_1.id, 
  badges_1.class, 
  badges_1.date, 
  badges_1.date, 
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.class = badges_1.id
group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.userid
limit 23;
select  
  max(
    votes_1.creationdate), 
  max(
    postlinks_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join posts as posts_1
        inner join badges as badges_1
        on (posts_1.id = badges_1.id )
      inner join postlinks as postlinks_1
      on (posts_1.id = postlinks_1.id )
    on (votes_1.id = posts_1.id )
where votes_1.votetypeid is not NULL
limit 9;
select  
  votes_1.creationdate, 
  votes_1.creationdate, 
  votes_1.userid, 
  votes_1.votetypeid, 
  votes_1.votetypeid, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate is not NULL
limit 13;
select  
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.class = badges_1.id
limit 4;
select  
  posts_1.posttypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join votes as votes_1
    on (posts_1.id = votes_1.id )
where posts_1.owneruserid is not NULL
limit 28;
select  
  posthistory_1.creationdate, 
  comments_1.contentlicense, 
  comments_2.creationdate, 
  posthistory_2.posthistorytypeid, 
  posthistory_2.revisionguid, 
  comments_1.contentlicense, 
  comments_1.contentlicense, 
  min(
    posthistory_2.creationdate), 
  max(
    posthistory_1.postid), 
  comments_2.creationdate, 
  comments_1.text, 
  max(
    comments_1.userid), 
  comments_2.id, 
  posthistory_1.userdisplayname, 
  comments_2.id, 
  min(
    comments_2.id), 
  max(
    posthistory_2.posthistorytypeid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join comments as comments_1
      inner join posthistory as posthistory_2
        inner join comments as comments_2
        on (posthistory_2.id = comments_2.id )
      on (comments_1.id = posthistory_2.id )
    on (posthistory_1.id = comments_1.id )
where posthistory_1.userdisplayname is not NULL
group by comments_1.contentlicense, comments_1.text, comments_2.creationdate, comments_2.id, posthistory_1.creationdate, posthistory_1.userdisplayname, posthistory_2.posthistorytypeid, posthistory_2.revisionguid
limit 35;
select  
  comments_2.userid, 
  posts_1.posttypeid, 
  postlinks_1.relatedpostid, 
  posts_1.title, 
  comments_1.userid, 
  max(
    comments_2.creationdate), 
  comments_2.userdisplayname, 
  comments_1.text, 
  comments_1.userdisplayname, 
  comments_1.postid, 
  comments_1.text, 
  comments_1.contentlicense, 
  posts_1.owneruserid, 
  comments_2.postid, 
  comments_2.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
      inner join comments as comments_1
        inner join postlinks as postlinks_1
        on (comments_1.id = postlinks_1.id )
      on (posts_1.id = comments_1.id )
    inner join comments as comments_2
    on (postlinks_1.id = comments_2.id )
where postlinks_1.linktypeid is not NULL
group by comments_1.contentlicense, comments_1.postid, comments_1.text, comments_1.userdisplayname, comments_1.userid, comments_2.postid, comments_2.userdisplayname, comments_2.userid, postlinks_1.relatedpostid, posts_1.owneruserid, posts_1.posttypeid, posts_1.title
limit 6;
select  
  badges_1.name, 
  badges_1.date, 
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.name is not NULL
limit 30;
select  
  votes_1.userid, 
  max(
    votes_1.creationdate), 
  max(
    votes_1.id), 
  votes_1.postid, 
  votes_1.votetypeid, 
  votes_1.postid, 
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.votetypeid >= votes_1.postid
group by votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 16;
select  
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.userid is not NULL
limit 8;
select  
  comments_1.text, 
  comments_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.text is not NULL
limit 23;
select  
  badges_1.class, 
  badges_1.id, 
  badges_1.date, 
  badges_1.id, 
  badges_1.date, 
  badges_1.id, 
  badges_1.tagbased, 
  badges_1.date, 
  badges_1.tagbased, 
  badges_1.tagbased, 
  badges_1.tagbased, 
  badges_1.date, 
  badges_1.tagbased, 
  badges_1.tagbased, 
  count(*), 
  badges_1.userid, 
  badges_1.name, 
  badges_1.class, 
  badges_1.date, 
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.name is not NULL
group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
limit 9;
select  
  count(*), 
  posthistory_1.postid, 
  posthistory_1.contentlicense, 
  posthistory_1.userdisplayname, 
  posthistory_1.comment, 
  posthistory_1.revisionguid, 
  posthistory_1.contentlicense, 
  posthistory_1.comment
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.contentlicense is not NULL
group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.userdisplayname
limit 25;
select  
  users_1.aboutme, 
  users_1.location, 
  users_1.websiteurl, 
  users_1.id, 
  users_1.id, 
  users_1.id, 
  users_1.accountid, 
  users_1.location, 
  users_1.location, 
  users_1.id, 
  users_1.location, 
  users_1.displayname, 
  users_1.creationdate, 
  min(
    users_1.creationdate), 
  users_1.creationdate, 
  max(
    users_1.creationdate), 
  users_1.creationdate, 
  users_1.profileimageurl, 
  users_1.location, 
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.id is not NULL
group by users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.displayname, users_1.id, users_1.location, users_1.profileimageurl, users_1.websiteurl
limit 28;
select  
  posts_1.owneruserid, 
  posts_1.ownerdisplayname, 
  posts_1.creationdate, 
  min(
    posts_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.title is not NULL
group by posts_1.creationdate, posts_1.ownerdisplayname, posts_1.owneruserid
limit 6;
select  
  postlinks_1.linktypeid, 
  postlinks_1.id, 
  count(*), 
  postlinks_1.creationdate, 
  min(
    postlinks_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid
limit 2;
select  
  count(
    users_1.profileimageurl), 
  users_1.aboutme, 
  users_1.location, 
  users_1.displayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.websiteurl <= users_1.displayname
group by users_1.aboutme, users_1.displayname, users_1.location
limit 38;
select  
  count(*), 
  postlinks_1.id, 
  postlinks_1.relatedpostid, 
  users_1.accountid, 
  postlinks_1.linktypeid, 
  max(
    users_1.accountid), 
  postlinks_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join postlinks as postlinks_1
      inner join users as users_2
      on (postlinks_1.id = users_2.id )
    on (users_1.id = postlinks_1.id )
where users_1.accountid is not NULL
group by postlinks_1.id, postlinks_1.linktypeid, postlinks_1.relatedpostid, users_1.accountid
limit 32;
select  
  posthistory_1.userid, 
  posthistory_1.posthistorytypeid, 
  posthistory_2.id, 
  posthistory_2.userdisplayname, 
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
      inner join posthistory as posthistory_2
      on (posthistory_1.id = posthistory_2.id )
    inner join badges as badges_1
    on (posthistory_2.id = badges_1.id )
where posthistory_1.comment is not NULL
limit 2;
select  
  postlinks_1.id, 
  badges_1.tagbased, 
  max(
    postlinks_1.relatedpostid), 
  badges_1.name, 
  badges_1.tagbased, 
  comments_1.userid, 
  badges_1.userid, 
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join postlinks as postlinks_1
      inner join comments as comments_1
      on (postlinks_1.id = comments_1.id )
    on (badges_1.id = postlinks_1.id )
where comments_1.postid is not NULL
group by badges_1.class, badges_1.name, badges_1.tagbased, badges_1.userid, comments_1.userid, postlinks_1.id
limit 27;
select  
  comments_3.userid, 
  comments_2.creationdate, 
  comments_1.userdisplayname, 
  badges_1.id, 
  badges_1.userid, 
  comments_3.text, 
  comments_2.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
      inner join comments as comments_2
      on (comments_1.id = comments_2.id )
    inner join comments as comments_3
      inner join badges as badges_1
      on (comments_3.id = badges_1.id )
    on (comments_2.id = comments_3.id )
where badges_1.date > comments_1.creationdate
limit 42;
select  
  posthistory_1.userdisplayname, 
  posthistory_1.postid, 
  posthistory_1.creationdate, 
  posthistory_1.revisionguid, 
  posthistory_1.userdisplayname, 
  sum(
    posthistory_1.userid), 
  posthistory_1.contentlicense, 
  sum(
    posthistory_1.userid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.posthistorytypeid is not NULL
group by posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.userdisplayname
limit 25;
select  
  votes_1.id, 
  sum(
    votes_1.id), 
  votes_1.postid, 
  votes_1.votetypeid, 
  votes_1.userid, 
  votes_1.creationdate, 
  count(*), 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 7;
select  
  posts_1.creationdate, 
  posts_1.contentlicense, 
  posts_1.body, 
  posts_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.acceptedanswerid is not NULL
limit 17;
select  
  votes_1.userid, 
  votes_1.postid, 
  postlinks_1.linktypeid, 
  postlinks_1.creationdate, 
  badges_1.tagbased
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join posthistory as posthistory_1
      inner join votes as votes_1
        inner join badges as badges_1
        on (votes_1.id = badges_1.id )
      on (posthistory_1.id = badges_1.id )
    on (postlinks_1.id = votes_1.id )
where posthistory_1.userdisplayname is not NULL
limit 11;
select  
  count(
    postlinks_1.id)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
limit 35;
select  
  min(
    comments_1.creationdate), 
  comments_1.id, 
  comments_1.text, 
  comments_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userdisplayname is not NULL
group by comments_1.id, comments_1.postid, comments_1.text
limit 5;
select  
  count(*), 
  min(
    posts_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
      inner join users as users_1
      on (posts_1.id = users_1.id )
    inner join users as users_2
    on (posts_1.id = users_2.id )
where users_1.websiteurl is not NULL
limit 24;
select  
  posthistory_2.creationdate, 
  badges_1.id, 
  badges_1.userid, 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join posthistory as posthistory_2
      inner join badges as badges_1
        inner join votes as votes_1
        on (badges_1.id = votes_1.id )
      on (posthistory_2.id = votes_1.id )
    on (posthistory_1.id = votes_1.id )
where posthistory_1.posthistorytypeid is not NULL
limit 12;
select  
  comments_1.userid, 
  badges_2.class, 
  comments_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join comments as comments_1
      inner join badges as badges_2
      on (comments_1.id = badges_2.id )
    on (badges_1.id = comments_1.id )
where comments_1.creationdate is not NULL
limit 24;
select  
  comments_1.text, 
  postlinks_1.postid, 
  users_1.websiteurl, 
  comments_1.userdisplayname, 
  postlinks_1.linktypeid, 
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join users as users_1
        inner join users as users_2
        on (users_1.id = users_2.id )
      inner join postlinks as postlinks_1
      on (users_1.id = postlinks_1.id )
    on (comments_1.id = users_1.id )
where comments_1.id > users_2.profileimageurl
limit 39;
select  
  badges_1.tagbased, 
  postlinks_1.relatedpostid, 
  badges_1.class, 
  postlinks_2.relatedpostid, 
  postlinks_2.postid, 
  postlinks_1.postid, 
  sum(
    postlinks_2.id)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join postlinks as postlinks_1
      inner join postlinks as postlinks_2
      on (postlinks_1.id = postlinks_2.id )
    on (badges_1.id = postlinks_1.id )
where badges_1.name > badges_1.name
group by badges_1.class, badges_1.tagbased, postlinks_1.postid, postlinks_1.relatedpostid, postlinks_2.postid, postlinks_2.relatedpostid
limit 18;
select  
  sum(
    posthistory_1.posthistorytypeid), 
  comments_2.id, 
  comments_2.contentlicense, 
  posthistory_1.posthistorytypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join posthistory as posthistory_1
      inner join comments as comments_2
      on (posthistory_1.id = comments_2.id )
    on (comments_1.id = comments_2.id )
where posthistory_1.postid is not NULL
group by comments_2.contentlicense, comments_2.id, posthistory_1.posthistorytypeid
limit 13;
select  
  comments_1.postid, 
  comments_1.creationdate, 
  comments_1.id, 
  comments_1.postid, 
  comments_1.creationdate, 
  comments_1.userdisplayname, 
  comments_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.text is not NULL
limit 12;
select  
  users_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join badges as badges_1
    on (users_1.id = badges_1.id )
where users_1.displayname > users_1.aboutme
limit 12;
select  
  posts_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
      inner join posts as posts_2
      on (posts_1.id = posts_2.id )
    inner join posts as posts_3
    on (posts_1.id = posts_3.id )
where posts_2.id is not NULL
limit 21;
select  
  users_1.id, 
  users_1.websiteurl, 
  max(
    users_1.profileimageurl), 
  users_1.displayname, 
  votes_2.creationdate, 
  votes_1.userid, 
  users_1.profileimageurl, 
  users_1.id, 
  votes_1.userid, 
  min(
    votes_2.postid), 
  votes_2.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
      inner join users as users_1
      on (votes_1.id = users_1.id )
    inner join votes as votes_2
    on (votes_1.id = votes_2.id )
where users_1.displayname is not NULL
group by users_1.displayname, users_1.id, users_1.profileimageurl, users_1.websiteurl, votes_1.userid, votes_2.creationdate, votes_2.votetypeid
limit 41;
select  
  badges_1.class, 
  badges_1.date, 
  min(
    badges_1.id), 
  badges_1.tagbased, 
  badges_1.date, 
  avg(
    badges_1.userid), 
  badges_1.class, 
  badges_1.tagbased, 
  badges_1.userid, 
  badges_1.date, 
  badges_1.name, 
  badges_1.id, 
  avg(
    badges_1.userid), 
  badges_1.userid, 
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.name is not NULL
group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
limit 23;
select  
  count(
    badges_1.tagbased), 
  badges_1.id, 
  badges_1.tagbased, 
  min(
    badges_1.date), 
  min(
    badges_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased > badges_1.tagbased
group by badges_1.id, badges_1.tagbased
limit 10;
select  
  badges_1.id, 
  badges_1.class, 
  badges_1.name, 
  badges_1.tagbased, 
  badges_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased > badges_1.tagbased
limit 35;
select  
  comments_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join comments as comments_1
    on (posts_1.id = comments_1.id )
where comments_1.id is not NULL
limit 41;
select  
  postlinks_2.postid, 
  sum(
    postlinks_2.relatedpostid), 
  users_1.aboutme, 
  postlinks_2.postid, 
  postlinks_1.creationdate, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
      inner join postlinks as postlinks_1
      on (users_1.id = postlinks_1.id )
    inner join postlinks as postlinks_2
    on (users_1.id = postlinks_2.id )
where users_1.websiteurl <= users_1.displayname
group by postlinks_1.creationdate, postlinks_2.postid, users_1.aboutme
limit 13;
select  
  users_1.displayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.websiteurl is not NULL
limit 35;
select  
  posthistory_1.id, 
  posthistory_1.id, 
  posthistory_2.contentlicense, 
  votes_1.userid, 
  sum(
    posts_1.acceptedanswerid), 
  max(
    posts_1.creationdate), 
  posthistory_1.contentlicense, 
  posts_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join posthistory as posthistory_1
        inner join votes as votes_1
        on (posthistory_1.id = votes_1.id )
      inner join posthistory as posthistory_2
      on (votes_1.id = posthistory_2.id )
    on (posts_1.id = posthistory_1.id )
where posthistory_1.comment <= posts_1.title
group by posthistory_1.contentlicense, posthistory_1.id, posthistory_2.contentlicense, posts_1.creationdate, votes_1.userid
limit 11;
select  
  votes_1.id, 
  votes_1.id, 
  max(
    votes_1.postid), 
  count(
    votes_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.postid <= votes_1.userid
group by votes_1.id
limit 31;
select  
  users_1.websiteurl, 
  users_1.displayname, 
  users_1.location, 
  users_1.location, 
  users_1.aboutme, 
  users_1.id, 
  users_1.id, 
  users_1.profileimageurl, 
  users_1.creationdate, 
  users_1.displayname, 
  users_1.aboutme, 
  users_1.location
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.displayname is not NULL
limit 12;
select  
  postlinks_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
limit 3;
select  
  count(
    postlinks_1.id), 
  min(
    postlinks_1.creationdate), 
  postlinks_1.relatedpostid, 
  postlinks_1.id, 
  postlinks_1.postid, 
  postlinks_1.relatedpostid, 
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid, 
  postlinks_1.postid, 
  postlinks_1.postid, 
  postlinks_1.relatedpostid, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.relatedpostid, 
  postlinks_1.creationdate, 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 32;
select  
  min(
    posts_1.acceptedanswerid), 
  badges_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join posts as posts_1
    on (badges_1.id = posts_1.id )
where badges_1.name is not NULL
group by badges_1.id
limit 15;
select  
  postlinks_1.postid, 
  postlinks_2.relatedpostid, 
  postlinks_2.id, 
  postlinks_1.relatedpostid, 
  postlinks_1.postid, 
  postlinks_2.id, 
  postlinks_1.linktypeid, 
  postlinks_1.creationdate, 
  postlinks_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join postlinks as postlinks_2
    on (postlinks_1.id = postlinks_2.id )
where postlinks_1.id is not NULL
limit 3;
select  
  votes_1.votetypeid, 
  count(*), 
  max(
    votes_1.creationdate), 
  posthistory_1.comment, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.revisionguid, 
  votes_1.postid, 
  max(
    posthistory_1.creationdate), 
  posthistory_1.posthistorytypeid, 
  min(
    votes_1.votetypeid), 
  posthistory_1.revisionguid, 
  posthistory_1.creationdate, 
  posthistory_1.text, 
  posthistory_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join votes as votes_1
    on (posthistory_1.id = votes_1.id )
where posthistory_1.creationdate >= votes_1.creationdate
group by posthistory_1.comment, posthistory_1.creationdate, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.revisionguid, posthistory_1.text, votes_1.postid, votes_1.votetypeid
limit 7;
select  
  comments_1.creationdate, 
  comments_1.userid, 
  users_1.websiteurl, 
  comments_1.id, 
  comments_1.userid, 
  min(
    users_1.creationdate), 
  comments_1.creationdate, 
  comments_1.contentlicense, 
  comments_1.userid, 
  users_1.websiteurl, 
  comments_1.id, 
  comments_1.id, 
  users_1.profileimageurl, 
  count(*), 
  comments_1.userid, 
  min(
    comments_1.creationdate), 
  comments_1.id, 
  users_1.websiteurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join users as users_1
    on (comments_1.id = users_1.id )
where users_1.creationdate is not NULL
group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.userid, users_1.profileimageurl, users_1.websiteurl
limit 29;
select  
  posts_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.id is not NULL
limit 29;
select  
  users_1.id, 
  posthistory_1.text, 
  posthistory_1.userdisplayname, 
  min(
    posthistory_1.creationdate), 
  users_1.websiteurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join posthistory as posthistory_1
    on (users_1.id = posthistory_1.id )
where users_1.aboutme is not NULL
group by posthistory_1.text, posthistory_1.userdisplayname, users_1.id, users_1.websiteurl
limit 9;
select  
  posts_1.id, 
  posts_1.parentid, 
  count(
    posts_1.ownerdisplayname), 
  posts_1.acceptedanswerid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.creationdate = posts_1.creationdate
group by posts_1.acceptedanswerid, posts_1.id, posts_1.parentid
limit 38;
select  
  count(*), 
  comments_1.creationdate, 
  comments_1.userid, 
  comments_1.userid, 
  comments_1.userdisplayname, 
  comments_1.postid, 
  comments_1.userdisplayname, 
  comments_1.userdisplayname, 
  comments_1.id, 
  min(
    comments_1.creationdate), 
  comments_1.userid, 
  comments_1.postid, 
  comments_1.text, 
  comments_1.id, 
  comments_1.userdisplayname, 
  comments_1.id, 
  comments_1.userid, 
  comments_1.userid, 
  comments_1.postid, 
  comments_1.contentlicense, 
  comments_1.id, 
  comments_1.userid, 
  comments_1.postid, 
  comments_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userdisplayname is not NULL
group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.text, comments_1.userdisplayname, comments_1.userid
limit 35;
select  
  avg(
    comments_1.id), 
  max(
    comments_1.creationdate), 
  comments_1.userid, 
  comments_1.userid, 
  comments_1.userid, 
  comments_1.userid, 
  comments_1.userid, 
  comments_1.userid, 
  max(
    comments_1.creationdate), 
  comments_1.contentlicense, 
  comments_1.userdisplayname, 
  comments_1.contentlicense, 
  comments_1.text, 
  comments_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userid < comments_1.id
group by comments_1.contentlicense, comments_1.creationdate, comments_1.text, comments_1.userdisplayname, comments_1.userid
limit 38;
select  
  users_1.aboutme, 
  max(
    users_1.creationdate), 
  users_1.websiteurl, 
  count(
    users_1.location), 
  users_1.creationdate, 
  count(
    users_1.creationdate), 
  users_1.websiteurl, 
  users_1.id, 
  users_1.displayname, 
  users_1.id, 
  users_1.accountid, 
  users_1.websiteurl, 
  max(
    users_1.creationdate), 
  users_1.profileimageurl, 
  users_1.aboutme, 
  users_1.accountid, 
  users_1.location, 
  count(
    users_1.displayname), 
  users_1.creationdate, 
  users_1.location, 
  users_1.creationdate, 
  users_1.aboutme, 
  users_1.accountid, 
  max(
    users_1.creationdate), 
  users_1.id, 
  users_1.websiteurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.creationdate is not NULL
group by users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.displayname, users_1.id, users_1.location, users_1.profileimageurl, users_1.websiteurl
limit 17;
select  
  users_1.aboutme
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.creationdate is not NULL
limit 25;
select  
  postlinks_1.relatedpostid, 
  avg(
    postlinks_1.linktypeid), 
  postlinks_1.relatedpostid, 
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join postlinks as postlinks_1
    on (users_1.id = postlinks_1.id )
where postlinks_1.postid = users_1.profileimageurl
group by postlinks_1.relatedpostid, users_1.creationdate
limit 27;
select  
  badges_1.tagbased, 
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.class is not NULL
limit 6;
select  
  posthistory_1.userid, 
  posthistory_1.id, 
  posthistory_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.contentlicense is not NULL
limit 31;
select  
  postlinks_1.linktypeid, 
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  postlinks_1.postid, 
  postlinks_1.creationdate, 
  postlinks_1.id, 
  postlinks_1.postid, 
  postlinks_1.relatedpostid, 
  min(
    postlinks_1.id), 
  postlinks_1.creationdate, 
  postlinks_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 32;
select  
  max(
    posts_2.parentid), 
  users_1.creationdate, 
  badges_1.tagbased, 
  posts_2.contentlicense, 
  posts_1.tags, 
  posts_2.acceptedanswerid, 
  posts_2.acceptedanswerid, 
  posts_2.body
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
      inner join users as users_1
      on (posts_1.id = users_1.id )
    inner join badges as badges_1
      inner join posts as posts_2
      on (badges_1.id = posts_2.id )
    on (users_1.id = posts_2.id )
where posts_1.acceptedanswerid is not NULL
group by badges_1.tagbased, posts_1.tags, posts_2.acceptedanswerid, posts_2.body, posts_2.contentlicense, users_1.creationdate
limit 32;
select  
  users_1.websiteurl, 
  users_1.aboutme, 
  users_1.location, 
  users_1.id, 
  users_1.creationdate, 
  min(
    users_1.creationdate), 
  users_1.location, 
  users_1.profileimageurl, 
  users_1.location
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.location is not NULL
group by users_1.aboutme, users_1.creationdate, users_1.id, users_1.location, users_1.profileimageurl, users_1.websiteurl
limit 29;
select  
  posthistory_1.revisionguid, 
  posthistory_1.creationdate, 
  posthistory_1.postid, 
  posthistory_1.revisionguid, 
  max(
    users_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
      inner join postlinks as postlinks_1
        inner join comments as comments_1
          inner join posthistory as posthistory_1
          on (comments_1.id = posthistory_1.id )
        on (postlinks_1.id = comments_1.id )
      on (users_1.id = comments_1.id )
    inner join comments as comments_2
    on (posthistory_1.id = comments_2.id )
where posthistory_1.creationdate > users_1.creationdate
group by posthistory_1.creationdate, posthistory_1.postid, posthistory_1.revisionguid
limit 14;
select  
  badges_3.userid, 
  min(
    postlinks_1.creationdate), 
  badges_2.name, 
  count(
    postlinks_1.postid), 
  posthistory_1.creationdate, 
  posthistory_1.creationdate, 
  badges_1.id, 
  postlinks_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
          inner join badges as badges_1
          on (postlinks_1.id = badges_1.id )
        inner join badges as badges_2
        on (postlinks_1.id = badges_2.id )
      inner join posthistory as posthistory_1
        inner join postlinks as postlinks_2
        on (posthistory_1.id = postlinks_2.id )
      on (badges_1.id = postlinks_2.id )
    inner join badges as badges_3
    on (badges_2.id = badges_3.id )
where badges_1.tagbased is not NULL
group by badges_1.id, badges_2.name, badges_3.userid, posthistory_1.creationdate, postlinks_1.creationdate
limit 32;
select  
  posts_1.acceptedanswerid, 
  posts_1.ownerdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.ownerdisplayname is not NULL
limit 37;
select  
  votes_1.id, 
  votes_1.id, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.userid = votes_1.postid
limit 30;
select  
  comments_1.creationdate, 
  comments_1.userid, 
  comments_1.text, 
  comments_1.creationdate, 
  comments_1.creationdate, 
  max(
    comments_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.creationdate >= comments_1.creationdate
group by comments_1.creationdate, comments_1.text, comments_1.userid
limit 32;
select  
  max(
    votes_1.creationdate), 
  votes_1.userid, 
  min(
    votes_1.creationdate), 
  votes_1.votetypeid, 
  votes_1.id, 
  count(
    votes_1.creationdate), 
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate is not NULL
group by votes_1.id, votes_1.userid, votes_1.votetypeid
limit 1;
select  
  posts_1.title, 
  posts_1.posttypeid, 
  max(
    comments_1.creationdate), 
  comments_1.userid, 
  posts_1.acceptedanswerid, 
  posts_1.body, 
  posts_1.owneruserid, 
  comments_1.text, 
  comments_1.userdisplayname, 
  posts_1.tags, 
  comments_1.creationdate, 
  comments_1.userdisplayname, 
  comments_1.text, 
  comments_1.userdisplayname, 
  sum(
    comments_1.id)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join comments as comments_1
    on (posts_1.id = comments_1.id )
where comments_1.postid is not NULL
group by comments_1.creationdate, comments_1.text, comments_1.userdisplayname, comments_1.userid, posts_1.acceptedanswerid, posts_1.body, posts_1.owneruserid, posts_1.posttypeid, posts_1.tags, posts_1.title
limit 29;
select  
  posthistory_1.creationdate, 
  posthistory_1.posthistorytypeid, 
  max(
    posthistory_1.userid), 
  posthistory_1.creationdate, 
  posthistory_1.revisionguid, 
  posthistory_1.userid, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.userdisplayname, 
  posthistory_1.comment, 
  posthistory_1.postid, 
  posthistory_1.userdisplayname, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.id, 
  posthistory_1.userdisplayname, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.id, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.postid, 
  posthistory_1.id, 
  avg(
    posthistory_1.id), 
  posthistory_1.postid, 
  posthistory_1.userid, 
  posthistory_1.postid, 
  min(
    posthistory_1.postid), 
  posthistory_1.creationdate, 
  posthistory_1.contentlicense, 
  posthistory_1.posthistorytypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.creationdate > posthistory_1.creationdate
group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.userdisplayname, posthistory_1.userid
limit 29;
select  
  min(
    posts_1.creationdate), 
  posts_2.acceptedanswerid, 
  posts_2.parentid, 
  posts_2.posttypeid, 
  posts_1.acceptedanswerid, 
  users_1.accountid, 
  posts_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
      inner join posts as posts_2
      on (posts_1.id = posts_2.id )
    inner join users as users_1
    on (posts_2.id = users_1.id )
where posts_2.contentlicense is not NULL
group by posts_1.acceptedanswerid, posts_1.creationdate, posts_2.acceptedanswerid, posts_2.parentid, posts_2.posttypeid, users_1.accountid
limit 34;
select  
  votes_1.postid, 
  posthistory_1.revisionguid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
      inner join votes as votes_1
      on (posthistory_1.id = votes_1.id )
    inner join users as users_1
      inner join posts as posts_1
      on (users_1.id = posts_1.id )
    on (votes_1.id = posts_1.id )
where posts_1.acceptedanswerid = votes_1.votetypeid
limit 31;
select  
  count(*), 
  users_1.creationdate, 
  users_1.displayname, 
  users_1.creationdate, 
  users_1.location, 
  users_1.displayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.location is not NULL
group by users_1.creationdate, users_1.displayname, users_1.location
limit 2;
select  
  badges_1.date, 
  posts_1.title, 
  posts_1.acceptedanswerid, 
  badges_1.id, 
  posts_1.tags, 
  posts_1.id, 
  posts_1.ownerdisplayname, 
  max(
    badges_1.date), 
  posts_1.creationdate, 
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join badges as badges_1
    on (posts_1.id = badges_1.id )
where posts_1.acceptedanswerid is not NULL
group by badges_1.date, badges_1.id, posts_1.acceptedanswerid, posts_1.creationdate, posts_1.id, posts_1.ownerdisplayname, posts_1.tags, posts_1.title
limit 25;
select  
  min(
    badges_2.date), 
  badges_2.class, 
  votes_1.userid, 
  badges_1.tagbased, 
  badges_2.class, 
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
      inner join votes as votes_1
      on (badges_1.id = votes_1.id )
    inner join badges as badges_2
    on (badges_1.id = badges_2.id )
where badges_1.class is not NULL
group by badges_1.tagbased, badges_1.userid, badges_2.class, votes_1.userid
limit 34;
select  
  avg(
    posthistory_1.posthistorytypeid), 
  max(
    posthistory_1.creationdate), 
  posthistory_1.comment
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join badges as badges_1
    on (posthistory_1.id = badges_1.id )
where posthistory_1.postid >= posthistory_1.userid
group by posthistory_1.comment
limit 17;
select  
  badges_3.tagbased, 
  badges_2.id, 
  badges_4.date, 
  badges_1.userid, 
  badges_1.class, 
  badges_4.tagbased
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
      inner join badges as badges_2
        inner join badges as badges_3
        on (badges_2.id = badges_3.id )
      on (badges_1.id = badges_2.id )
    inner join badges as badges_4
    on (badges_1.id = badges_4.id )
where badges_4.date <= badges_2.date
limit 22;
select  
  comments_1.userid, 
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join comments as comments_1
    on (badges_1.id = comments_1.id )
where comments_1.text is not NULL
limit 40;
select  
  postlinks_1.postid, 
  votes_1.creationdate, 
  posthistory_1.comment, 
  posthistory_2.comment
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
      inner join votes as votes_1
      on (posthistory_1.id = votes_1.id )
    inner join posthistory as posthistory_2
      inner join postlinks as postlinks_1
        inner join postlinks as postlinks_2
        on (postlinks_1.id = postlinks_2.id )
      on (posthistory_2.id = postlinks_1.id )
    on (posthistory_1.id = posthistory_2.id )
where posthistory_2.posthistorytypeid < postlinks_1.id
limit 13;
select  
  comments_1.userdisplayname, 
  comments_1.postid, 
  comments_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join posts as posts_1
      inner join badges as badges_1
      on (posts_1.id = badges_1.id )
    on (comments_1.id = badges_1.id )
where badges_1.date >= comments_1.creationdate
limit 11;
select  
  badges_1.userid, 
  badges_1.tagbased, 
  badges_1.class, 
  badges_1.class, 
  badges_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.userid is not NULL
limit 22;
select  
  postlinks_1.creationdate, 
  postlinks_1.linktypeid, 
  postlinks_1.linktypeid, 
  postlinks_1.id, 
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid, 
  min(
    postlinks_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.relatedpostid
limit 7;
select  
  badges_1.date, 
  badges_1.userid, 
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.userid is not NULL
limit 3;
select  
  votes_1.userid, 
  max(
    votes_1.creationdate), 
  count(
    posts_1.parentid), 
  posts_1.acceptedanswerid, 
  votes_1.id, 
  posts_1.id, 
  min(
    votes_1.creationdate), 
  votes_1.id, 
  posts_1.owneruserid, 
  max(
    posts_1.creationdate), 
  votes_1.postid, 
  votes_1.postid, 
  posts_1.owneruserid, 
  posts_1.parentid, 
  max(
    posts_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join votes as votes_1
    on (posts_1.id = votes_1.id )
where votes_1.id is not NULL
group by posts_1.acceptedanswerid, posts_1.id, posts_1.owneruserid, posts_1.parentid, votes_1.id, votes_1.postid, votes_1.userid
limit 42;
select  
  comments_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join posts as posts_1
    on (comments_1.id = posts_1.id )
where posts_1.body < posts_1.ownerdisplayname
limit 18;
select  
  comments_1.userdisplayname, 
  badges_1.date, 
  comments_1.text, 
  comments_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join comments as comments_1
    on (badges_1.id = comments_1.id )
where badges_1.name is not NULL
limit 8;
select  
  users_1.aboutme, 
  users_1.creationdate, 
  users_1.creationdate, 
  users_1.creationdate, 
  users_1.id, 
  users_1.websiteurl, 
  users_1.websiteurl, 
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.aboutme is not NULL
limit 14;
select  
  postlinks_1.linktypeid, 
  min(
    postlinks_1.creationdate), 
  postlinks_1.postid, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate > postlinks_1.creationdate
group by postlinks_1.linktypeid, postlinks_1.postid
limit 27;
select  
  posthistory_1.comment, 
  posthistory_1.postid, 
  posthistory_1.creationdate, 
  posthistory_1.userid, 
  posthistory_1.creationdate, 
  posthistory_1.creationdate, 
  posthistory_1.userid, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.posthistorytypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.posthistorytypeid >= posthistory_1.id
limit 16;
select  
  postlinks_1.creationdate, 
  postlinks_1.creationdate, 
  postlinks_1.linktypeid, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.id is not NULL
group by postlinks_1.creationdate, postlinks_1.linktypeid
limit 10;
select  
  count(
    badges_1.name), 
  badges_1.date, 
  badges_1.id, 
  badges_1.class, 
  badges_1.name, 
  badges_1.userid, 
  badges_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.name is not NULL
group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.userid
limit 24;
select  
  badges_1.tagbased, 
  badges_1.name, 
  badges_1.class, 
  badges_1.userid, 
  posthistory_1.id, 
  badges_1.class, 
  max(
    badges_1.id), 
  badges_1.id, 
  badges_1.userid, 
  posthistory_1.id, 
  posthistory_1.postid, 
  badges_1.tagbased, 
  posthistory_1.posthistorytypeid, 
  max(
    badges_1.date), 
  badges_1.userid, 
  posthistory_1.revisionguid, 
  count(
    posthistory_1.userid), 
  badges_1.userid, 
  badges_1.date, 
  posthistory_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join badges as badges_1
    on (posthistory_1.id = badges_1.id )
where posthistory_1.revisionguid = posthistory_1.comment
group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid
limit 36;
select  
  posts_1.tags, 
  posts_1.owneruserid, 
  postlinks_1.creationdate, 
  posts_1.acceptedanswerid, 
  users_2.id, 
  users_1.profileimageurl, 
  min(
    users_1.accountid), 
  postlinks_1.linktypeid, 
  users_1.profileimageurl, 
  users_2.location, 
  users_1.accountid, 
  posts_1.posttypeid, 
  min(
    users_1.creationdate), 
  users_1.displayname, 
  count(*), 
  users_2.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join users as users_2
      inner join postlinks as postlinks_1
        inner join posts as posts_1
        on (postlinks_1.id = posts_1.id )
      on (users_2.id = postlinks_1.id )
    on (users_1.id = posts_1.id )
where posts_1.id <= users_2.accountid
group by postlinks_1.creationdate, postlinks_1.linktypeid, posts_1.acceptedanswerid, posts_1.owneruserid, posts_1.posttypeid, posts_1.tags, users_1.accountid, users_1.displayname, users_1.profileimageurl, users_2.id, users_2.location
limit 30;
select  
  badges_1.name, 
  min(
    badges_1.date), 
  posthistory_1.postid, 
  users_1.accountid, 
  users_1.displayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
      inner join users as users_1
        inner join posthistory as posthistory_1
        on (users_1.id = posthistory_1.id )
      on (comments_1.id = posthistory_1.id )
    inner join badges as badges_1
    on (users_1.id = badges_1.id )
where comments_1.userdisplayname is not NULL
group by badges_1.name, posthistory_1.postid, users_1.accountid, users_1.displayname
limit 21;
select  
  votes_1.id, 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.userid is not NULL
limit 3;
select  
  badges_1.date, 
  badges_1.userid, 
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased is not NULL
limit 4;
select  
  badges_1.name, 
  badges_1.date, 
  badges_1.userid, 
  sum(
    badges_1.id), 
  min(
    badges_1.date), 
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.userid <= badges_1.class
group by badges_1.class, badges_1.date, badges_1.name, badges_1.userid
limit 24;
select  
  votes_1.creationdate, 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join users as users_1
    on (votes_1.id = users_1.id )
where users_1.profileimageurl <= votes_1.userid
limit 22;
select  
  postlinks_1.creationdate, 
  postlinks_1.creationdate, 
  postlinks_1.id, 
  postlinks_1.creationdate, 
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid, 
  postlinks_1.creationdate, 
  postlinks_1.postid, 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
limit 10;
select  
  posts_1.parentid, 
  posts_1.owneruserid, 
  posts_1.owneruserid, 
  sum(
    posts_1.acceptedanswerid), 
  votes_1.postid, 
  posts_1.acceptedanswerid, 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join posts as posts_1
    on (votes_1.id = posts_1.id )
where posts_1.title = posts_1.ownerdisplayname
group by posts_1.acceptedanswerid, posts_1.owneruserid, posts_1.parentid, votes_1.id, votes_1.postid
limit 7;
select  
  posthistory_1.postid, 
  posthistory_1.comment, 
  posthistory_1.userdisplayname, 
  posthistory_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.posthistorytypeid = posthistory_1.id
limit 28;
select  
  posthistory_1.postid, 
  users_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join users as users_1
    on (posthistory_1.id = users_1.id )
where posthistory_1.postid > users_1.profileimageurl
limit 19;
select  
  users_1.accountid, 
  min(
    users_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.id is not NULL
group by users_1.accountid
limit 12;
select  
  votes_1.creationdate, 
  votes_2.votetypeid, 
  votes_3.creationdate, 
  votes_3.userid, 
  votes_2.votetypeid, 
  votes_3.userid, 
  votes_2.votetypeid, 
  votes_3.votetypeid, 
  votes_3.id, 
  votes_2.creationdate, 
  votes_2.creationdate, 
  votes_3.postid, 
  votes_3.postid, 
  votes_2.creationdate, 
  max(
    votes_2.userid), 
  votes_1.votetypeid, 
  votes_3.postid, 
  votes_2.id, 
  votes_3.id, 
  votes_1.creationdate, 
  max(
    votes_1.creationdate), 
  votes_2.userid, 
  votes_2.creationdate, 
  votes_2.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
      inner join votes as votes_2
      on (votes_1.id = votes_2.id )
    inner join votes as votes_3
    on (votes_2.id = votes_3.id )
where votes_3.creationdate = votes_1.creationdate
group by votes_1.creationdate, votes_1.votetypeid, votes_2.creationdate, votes_2.id, votes_2.userid, votes_2.votetypeid, votes_3.creationdate, votes_3.id, votes_3.postid, votes_3.userid, votes_3.votetypeid
limit 9;
select  
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased is not NULL
limit 39;
select  
  posthistory_1.text, 
  posthistory_1.revisionguid, 
  posthistory_1.userid, 
  max(
    posthistory_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.postid is not NULL
group by posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userid
limit 38;
select  
  posts_1.title, 
  posts_1.tags, 
  posts_1.body
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.body is not NULL
limit 40;
select  
  posts_2.owneruserid, 
  posts_1.title, 
  posts_2.creationdate, 
  posts_2.title, 
  posts_1.acceptedanswerid, 
  posts_2.parentid, 
  min(
    posts_1.owneruserid), 
  min(
    posts_2.parentid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join posts as posts_2
    on (posts_1.id = posts_2.id )
where posts_1.owneruserid <= posts_1.posttypeid
group by posts_1.acceptedanswerid, posts_1.title, posts_2.creationdate, posts_2.owneruserid, posts_2.parentid, posts_2.title
limit 20;
select  
  badges_1.date, 
  badges_1.tagbased, 
  badges_1.date, 
  badges_1.class, 
  badges_1.date, 
  badges_1.date, 
  badges_1.userid, 
  badges_1.date, 
  badges_1.name, 
  badges_1.name, 
  badges_1.date, 
  badges_1.name, 
  badges_1.date, 
  badges_1.id, 
  max(
    badges_1.date), 
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.class is not NULL
group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
limit 22;
select  
  posthistory_1.comment, 
  max(
    badges_1.userid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join posthistory as posthistory_2
        inner join comments as comments_1
          inner join posthistory as posthistory_3
          on (comments_1.id = posthistory_3.id )
        on (posthistory_2.id = comments_1.id )
      inner join badges as badges_1
      on (posthistory_3.id = badges_1.id )
    on (posthistory_1.id = posthistory_2.id )
where badges_1.userid is not NULL
group by posthistory_1.comment
limit 23;
select  
  comments_1.userid, 
  max(
    votes_1.creationdate), 
  comments_1.postid, 
  postlinks_1.creationdate, 
  postlinks_1.linktypeid, 
  comments_1.contentlicense, 
  max(
    users_1.creationdate), 
  votes_1.votetypeid, 
  votes_1.creationdate, 
  users_1.location, 
  votes_1.creationdate, 
  count(
    votes_1.userid), 
  users_1.websiteurl, 
  postlinks_1.creationdate, 
  comments_1.contentlicense, 
  postlinks_1.linktypeid, 
  comments_1.contentlicense, 
  comments_1.creationdate, 
  comments_1.userid, 
  postlinks_1.postid, 
  postlinks_1.id, 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
      inner join users as users_1
        inner join postlinks as postlinks_1
        on (users_1.id = postlinks_1.id )
      on (comments_1.id = users_1.id )
    inner join votes as votes_1
    on (postlinks_1.id = votes_1.id )
where votes_1.id is not NULL
group by comments_1.contentlicense, comments_1.creationdate, comments_1.postid, comments_1.userid, postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, users_1.location, users_1.websiteurl, votes_1.creationdate, votes_1.id, votes_1.votetypeid
limit 15;
select  
  posthistory_2.contentlicense, 
  badges_1.userid, 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join badges as badges_1
      inner join posthistory as posthistory_2
        inner join postlinks as postlinks_1
        on (posthistory_2.id = postlinks_1.id )
      on (badges_1.id = posthistory_2.id )
    on (posthistory_1.id = posthistory_2.id )
where postlinks_1.relatedpostid is not NULL
limit 36;
select  
  votes_1.postid, 
  votes_1.postid, 
  votes_1.id, 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.postid is not NULL
limit 30;
select  
  postlinks_1.creationdate, 
  votes_1.postid, 
  min(
    votes_1.creationdate), 
  max(
    votes_1.creationdate), 
  votes_1.votetypeid, 
  min(
    postlinks_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join postlinks as postlinks_1
    on (votes_1.id = postlinks_1.id )
where votes_1.postid is not NULL
group by postlinks_1.creationdate, votes_1.postid, votes_1.votetypeid
limit 1;
select  
  badges_1.tagbased, 
  postlinks_1.relatedpostid, 
  badges_1.userid, 
  postlinks_1.creationdate, 
  badges_1.name, 
  badges_1.tagbased, 
  postlinks_1.relatedpostid, 
  postlinks_1.postid, 
  min(
    badges_1.date), 
  postlinks_1.linktypeid, 
  min(
    postlinks_1.creationdate), 
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join postlinks as postlinks_1
    on (badges_1.id = postlinks_1.id )
where postlinks_1.linktypeid is not NULL
group by badges_1.name, badges_1.tagbased, badges_1.userid, postlinks_1.creationdate, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 34;
select  
  posthistory_1.contentlicense, 
  posthistory_1.id, 
  posthistory_1.contentlicense, 
  posthistory_1.id, 
  posthistory_1.text, 
  posthistory_1.postid, 
  posthistory_1.postid, 
  min(
    posthistory_1.posthistorytypeid), 
  posthistory_1.contentlicense, 
  posthistory_1.revisionguid, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.contentlicense, 
  posthistory_1.text, 
  posthistory_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.contentlicense >= posthistory_1.userdisplayname
group by posthistory_1.contentlicense, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.text
limit 37;
select  
  posts_1.acceptedanswerid, 
  posts_1.title, 
  max(
    posts_1.id), 
  count(*), 
  posts_1.creationdate, 
  count(
    posts_1.title), 
  posts_1.parentid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.title is not NULL
group by posts_1.acceptedanswerid, posts_1.creationdate, posts_1.parentid, posts_1.title
limit 10;
select  
  avg(
    users_1.profileimageurl), 
  users_1.id, 
  users_1.displayname, 
  users_1.aboutme
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.profileimageurl is not NULL
group by users_1.aboutme, users_1.displayname, users_1.id
limit 33;
select  
  posts_1.posttypeid, 
  max(
    posthistory_1.creationdate), 
  posts_1.ownerdisplayname, 
  posthistory_1.text, 
  posts_1.body, 
  max(
    posts_1.creationdate), 
  posthistory_1.userid, 
  posthistory_1.postid, 
  posthistory_1.text, 
  posthistory_1.userdisplayname, 
  posthistory_1.revisionguid, 
  min(
    posts_1.creationdate), 
  posts_1.body, 
  posthistory_1.userid, 
  posthistory_1.comment, 
  posts_1.tags, 
  posts_1.acceptedanswerid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join posts as posts_1
    on (posthistory_1.id = posts_1.id )
where posthistory_1.text is not NULL
group by posthistory_1.comment, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userdisplayname, posthistory_1.userid, posts_1.acceptedanswerid, posts_1.body, posts_1.ownerdisplayname, posts_1.posttypeid, posts_1.tags
limit 1;
select  
  comments_1.userid, 
  comments_1.userid, 
  comments_1.creationdate, 
  comments_1.text, 
  comments_1.contentlicense, 
  comments_1.text, 
  comments_1.userid, 
  comments_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userid is not NULL
limit 19;
select  
  posts_1.body, 
  posts_1.tags, 
  votes_1.votetypeid, 
  posts_1.id, 
  posts_1.contentlicense, 
  posts_1.id, 
  votes_1.postid, 
  sum(
    posts_1.parentid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join votes as votes_1
    on (posts_1.id = votes_1.id )
where votes_1.id is not NULL
group by posts_1.body, posts_1.contentlicense, posts_1.id, posts_1.tags, votes_1.postid, votes_1.votetypeid
limit 9;
select  
  votes_1.votetypeid, 
  votes_1.userid, 
  min(
    votes_1.creationdate), 
  min(
    votes_1.userid), 
  votes_1.votetypeid, 
  votes_1.votetypeid, 
  votes_1.postid, 
  votes_1.creationdate, 
  votes_1.userid, 
  votes_1.creationdate, 
  votes_1.userid, 
  max(
    votes_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.votetypeid < votes_1.userid
group by votes_1.creationdate, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 30;
select  
  users_1.id, 
  users_1.creationdate, 
  min(
    users_1.accountid), 
  users_1.id, 
  users_1.accountid, 
  users_1.accountid, 
  users_1.creationdate, 
  count(
    users_1.profileimageurl), 
  users_1.id, 
  users_1.websiteurl, 
  users_1.creationdate, 
  users_1.websiteurl, 
  users_1.websiteurl, 
  users_1.id, 
  users_1.aboutme, 
  users_1.aboutme, 
  users_1.aboutme, 
  sum(
    users_1.id), 
  users_1.displayname, 
  users_1.websiteurl, 
  users_1.aboutme, 
  users_1.accountid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.creationdate is not NULL
group by users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.displayname, users_1.id, users_1.websiteurl
limit 22;
select  
  badges_1.date, 
  posts_1.owneruserid, 
  badges_1.id, 
  badges_1.name, 
  posts_1.acceptedanswerid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join posts as posts_1
    on (badges_1.id = posts_1.id )
where badges_1.tagbased < badges_1.tagbased
limit 37;
select  
  min(
    postlinks_1.creationdate), 
  postlinks_1.creationdate, 
  posts_1.parentid, 
  min(
    postlinks_1.creationdate), 
  sum(
    postlinks_1.postid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join postlinks as postlinks_1
    on (posts_1.id = postlinks_1.id )
where posts_1.title is not NULL
group by postlinks_1.creationdate, posts_1.parentid
limit 7;
select  
  posts_1.owneruserid, 
  min(
    posts_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.contentlicense >= posts_1.ownerdisplayname
group by posts_1.owneruserid
limit 1;
select  
  count(*), 
  posthistory_1.revisionguid, 
  posthistory_1.postid, 
  min(
    posthistory_1.id)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.revisionguid is not NULL
group by posthistory_1.postid, posthistory_1.revisionguid
limit 34;
select  
  posthistory_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.contentlicense is not NULL
limit 14;
select  
  badges_1.tagbased, 
  badges_1.name, 
  badges_1.class, 
  badges_1.id, 
  max(
    badges_1.userid), 
  badges_1.name, 
  badges_1.id, 
  badges_1.date, 
  badges_1.class, 
  badges_1.tagbased, 
  badges_1.tagbased, 
  badges_1.name, 
  badges_1.name, 
  badges_1.id, 
  max(
    badges_1.date), 
  badges_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.date is not NULL
group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased
limit 32;
select  
  max(
    posts_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.parentid is not NULL
limit 37;
select  
  users_1.displayname, 
  users_1.accountid, 
  users_1.profileimageurl, 
  users_1.id, 
  min(
    users_1.creationdate), 
  users_1.aboutme, 
  users_1.aboutme, 
  users_1.accountid, 
  users_1.id, 
  users_1.id, 
  users_1.websiteurl, 
  users_1.aboutme, 
  avg(
    users_1.profileimageurl), 
  users_1.creationdate, 
  max(
    users_1.creationdate), 
  users_1.creationdate, 
  users_1.displayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.id is not NULL
group by users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.displayname, users_1.id, users_1.profileimageurl, users_1.websiteurl
limit 42;
select  
  users_1.aboutme, 
  users_1.displayname, 
  users_1.accountid, 
  users_1.websiteurl, 
  users_1.profileimageurl, 
  users_1.displayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.id is not NULL
limit 33;
select  
  avg(
    users_1.id), 
  users_1.id, 
  min(
    users_1.creationdate), 
  users_1.aboutme
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.accountid <= users_1.id
group by users_1.aboutme, users_1.id
limit 28;
select  
  comments_1.creationdate, 
  comments_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.creationdate is not NULL
limit 24;
select  
  comments_1.id, 
  comments_1.postid, 
  comments_1.text, 
  count(
    comments_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userid >= comments_1.id
group by comments_1.id, comments_1.postid, comments_1.text
limit 42;
select  
  users_1.displayname, 
  posts_1.parentid, 
  min(
    posts_1.creationdate), 
  badges_1.id, 
  badges_1.userid, 
  users_1.displayname, 
  posts_1.creationdate, 
  badges_1.date, 
  users_1.aboutme, 
  badges_1.class, 
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
      inner join posts as posts_1
      on (badges_1.id = posts_1.id )
    inner join users as users_1
    on (posts_1.id = users_1.id )
where badges_1.tagbased is not NULL
group by badges_1.class, badges_1.date, badges_1.id, badges_1.userid, posts_1.creationdate, posts_1.parentid, users_1.aboutme, users_1.displayname
limit 37;
select  
  max(
    comments_1.creationdate), 
  comments_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.postid is not NULL
group by comments_1.userid
limit 33;
select  
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased is not NULL
limit 32;
select  
  posthistory_1.userid, 
  posthistory_1.postid, 
  posthistory_1.contentlicense, 
  avg(
    postlinks_1.linktypeid), 
  max(
    postlinks_1.creationdate), 
  posthistory_1.contentlicense, 
  postlinks_1.linktypeid, 
  min(
    posthistory_1.creationdate), 
  postlinks_1.postid, 
  posthistory_1.revisionguid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join postlinks as postlinks_1
    on (posthistory_1.id = postlinks_1.id )
where posthistory_1.contentlicense is not NULL
group by posthistory_1.contentlicense, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.userid, postlinks_1.linktypeid, postlinks_1.postid
limit 16;
select  
  badges_1.tagbased, 
  min(
    badges_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join badges as badges_1
    on (postlinks_1.id = badges_1.id )
where badges_1.date is not NULL
group by badges_1.tagbased
limit 6;
select  
  users_1.id, 
  users_1.creationdate, 
  users_1.creationdate, 
  users_1.creationdate, 
  users_1.location, 
  min(
    users_1.accountid), 
  users_1.displayname, 
  users_1.displayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.profileimageurl is not NULL
group by users_1.creationdate, users_1.displayname, users_1.id, users_1.location
limit 6;
select  
  posts_1.acceptedanswerid, 
  count(*), 
  comments_1.userdisplayname, 
  comments_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
      inner join posthistory as posthistory_1
          inner join comments as comments_1
          on (posthistory_1.id = comments_1.id )
        inner join posts as posts_1
        on (posthistory_1.id = posts_1.id )
      on (badges_1.id = posthistory_1.id )
    inner join badges as badges_2
    on (posts_1.id = badges_2.id )
where posthistory_1.posthistorytypeid is not NULL
group by comments_1.id, comments_1.userdisplayname, posts_1.acceptedanswerid
limit 32;
select  
  postlinks_1.linktypeid, 
  postlinks_1.creationdate, 
  posts_1.contentlicense, 
  users_1.aboutme, 
  posts_1.body
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join posthistory as posthistory_2
        inner join postlinks as postlinks_1
          inner join users as users_1
          on (postlinks_1.id = users_1.id )
        on (posthistory_2.id = users_1.id )
      inner join posts as posts_1
      on (postlinks_1.id = posts_1.id )
    on (posthistory_1.id = posts_1.id )
where postlinks_1.creationdate is not NULL
limit 23;
select  
  votes_1.userid, 
  votes_1.id, 
  votes_1.id, 
  votes_1.postid, 
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.postid is not NULL
limit 26;
select  
  sum(
    postlinks_1.id)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
      inner join users as users_1
      on (comments_1.id = users_1.id )
    inner join postlinks as postlinks_1
    on (users_1.id = postlinks_1.id )
where postlinks_1.relatedpostid = comments_1.postid
limit 7;
select  
  max(
    badges_1.id), 
  posthistory_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join votes as votes_1
      inner join badges as badges_1
      on (votes_1.id = badges_1.id )
    on (posthistory_1.id = votes_1.id )
where votes_1.creationdate is not NULL
group by posthistory_1.userdisplayname
limit 25;
select  
  users_1.accountid, 
  users_1.accountid, 
  users_1.websiteurl, 
  users_1.aboutme, 
  max(
    comments_1.creationdate), 
  comments_1.id, 
  users_1.accountid, 
  max(
    users_1.creationdate), 
  users_1.creationdate, 
  users_1.profileimageurl, 
  users_1.displayname, 
  min(
    users_1.creationdate), 
  users_1.accountid, 
  sum(
    users_1.profileimageurl), 
  comments_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join users as users_1
    on (comments_1.id = users_1.id )
where users_1.id >= comments_1.postid
group by comments_1.id, comments_1.postid, users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.displayname, users_1.profileimageurl, users_1.websiteurl
limit 35;
select  
  badges_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join votes as votes_1
    on (badges_1.id = votes_1.id )
where badges_1.date >= votes_1.creationdate
limit 16;
select  
  postlinks_1.id, 
  postlinks_1.creationdate, 
  postlinks_1.id, 
  count(
    postlinks_1.linktypeid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
group by postlinks_1.creationdate, postlinks_1.id
limit 23;
select  
  comments_1.contentlicense, 
  comments_1.postid, 
  comments_1.id, 
  comments_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.text is not NULL
limit 10;
select  
  posts_1.owneruserid, 
  min(
    votes_1.creationdate), 
  min(
    votes_1.creationdate), 
  posthistory_1.contentlicense, 
  count(
    posts_1.acceptedanswerid), 
  posts_1.title
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join posts as posts_1
      inner join votes as votes_1
      on (posts_1.id = votes_1.id )
    on (posthistory_1.id = posts_1.id )
where votes_1.postid is not NULL
group by posthistory_1.contentlicense, posts_1.owneruserid, posts_1.title
limit 7;
select  
  max(
    users_1.creationdate), 
  users_1.id, 
  users_1.profileimageurl, 
  users_1.id, 
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.aboutme is not NULL
group by users_1.creationdate, users_1.id, users_1.profileimageurl
limit 38;
select  
  users_1.profileimageurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
      inner join comments as comments_1
      on (users_1.id = comments_1.id )
    inner join postlinks as postlinks_1
    on (comments_1.id = postlinks_1.id )
where postlinks_1.linktypeid is not NULL
limit 34;
select  
  posthistory_1.id, 
  posthistory_1.userid, 
  posthistory_1.text, 
  posthistory_1.userdisplayname, 
  posthistory_1.comment, 
  posthistory_1.revisionguid, 
  posthistory_1.userid, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.text, 
  max(
    posthistory_1.creationdate), 
  posthistory_1.text, 
  posthistory_1.postid, 
  posthistory_1.revisionguid, 
  posthistory_1.text, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.id, 
  posthistory_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.revisionguid is not NULL
group by posthistory_1.comment, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userdisplayname, posthistory_1.userid
limit 30;
select  
  avg(
    badges_1.userid), 
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased is not NULL
group by badges_1.userid
limit 20;
select  
  badges_1.class, 
  max(
    badges_1.date), 
  badges_1.id, 
  badges_1.userid, 
  badges_1.tagbased, 
  badges_1.id, 
  count(
    badges_1.id), 
  badges_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.date is not NULL
group by badges_1.class, badges_1.id, badges_1.tagbased, badges_1.userid
limit 10;
select  
  votes_1.creationdate, 
  votes_1.votetypeid, 
  votes_1.userid, 
  votes_1.creationdate, 
  votes_1.userid, 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.id is not NULL
limit 17;
select  
  votes_1.userid, 
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.votetypeid is not NULL
limit 28;
select  
  posts_1.creationdate, 
  min(
    posts_1.posttypeid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.id is not NULL
group by posts_1.creationdate
limit 5;
select  
  badges_1.id, 
  badges_1.tagbased, 
  badges_1.name, 
  badges_1.name, 
  count(*), 
  badges_1.userid, 
  badges_1.userid, 
  badges_1.id, 
  min(
    badges_1.date), 
  badges_1.name, 
  badges_1.userid, 
  badges_1.id, 
  max(
    badges_1.date), 
  min(
    badges_1.class), 
  badges_1.tagbased, 
  badges_1.userid, 
  badges_1.tagbased
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.userid is not NULL
group by badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
limit 20;
select  
  users_1.location, 
  users_1.websiteurl, 
  posthistory_1.contentlicense, 
  posthistory_1.text, 
  users_1.aboutme
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join users as users_1
    on (posthistory_1.id = users_1.id )
where users_1.websiteurl is not NULL
limit 22;
select  
  users_1.websiteurl, 
  avg(
    users_1.profileimageurl), 
  users_1.displayname, 
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.aboutme is not NULL
group by users_1.creationdate, users_1.displayname, users_1.websiteurl
limit 40;
select  
  comments_1.text, 
  max(
    posthistory_1.creationdate), 
  posthistory_1.revisionguid, 
  comments_1.userid, 
  posthistory_1.userid, 
  posthistory_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join comments as comments_1
    on (posthistory_1.id = comments_1.id )
where comments_1.text is not NULL
group by comments_1.text, comments_1.userid, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userid
limit 17;
select  
  users_1.aboutme, 
  users_1.websiteurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join users as users_1
    on (comments_1.id = users_1.id )
where comments_1.userid is not NULL
limit 15;
select  
  posthistory_1.revisionguid, 
  posthistory_1.userid, 
  posthistory_1.userid, 
  max(
    badges_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join posthistory as posthistory_1
    on (badges_1.id = posthistory_1.id )
where badges_1.name is not NULL
group by posthistory_1.revisionguid, posthistory_1.userid
limit 17;
select  
  comments_1.postid, 
  votes_1.votetypeid, 
  badges_2.tagbased
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
      inner join badges as badges_2
        inner join comments as comments_1
        on (badges_2.id = comments_1.id )
      on (badges_1.id = badges_2.id )
    inner join votes as votes_1
    on (badges_1.id = votes_1.id )
where comments_1.contentlicense is not NULL
limit 20;
select  
  users_1.accountid, 
  max(
    users_1.creationdate), 
  users_1.location
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.location is not NULL
group by users_1.accountid, users_1.location
limit 40;
select  
  badges_1.id, 
  posts_1.posttypeid, 
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join badges as badges_1
    on (posts_1.id = badges_1.id )
where posts_1.title is not NULL
limit 35;
select  
  comments_1.userdisplayname, 
  comments_1.contentlicense, 
  comments_1.text, 
  comments_1.text, 
  min(
    comments_1.postid), 
  comments_1.id, 
  comments_1.text, 
  comments_1.id, 
  comments_1.creationdate, 
  comments_1.userdisplayname, 
  comments_1.userdisplayname, 
  comments_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.contentlicense is not NULL
group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.text, comments_1.userdisplayname, comments_1.userid
limit 30;
select  
  badges_1.userid, 
  sum(
    badges_1.id), 
  badges_1.tagbased, 
  badges_1.userid, 
  badges_1.class, 
  badges_1.name, 
  badges_1.userid, 
  badges_1.name, 
  badges_1.tagbased, 
  badges_1.tagbased, 
  badges_1.tagbased, 
  badges_1.userid, 
  badges_1.id, 
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.id is not NULL
group by badges_1.class, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
limit 16;
select  
  users_1.profileimageurl, 
  users_1.creationdate, 
  users_1.accountid, 
  users_1.websiteurl, 
  users_1.profileimageurl, 
  users_1.accountid, 
  users_1.aboutme, 
  users_1.websiteurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.displayname is not NULL
limit 17;
select  
  max(
    comments_1.creationdate), 
  comments_1.id, 
  comments_1.postid, 
  comments_1.creationdate, 
  comments_1.postid, 
  comments_1.creationdate, 
  avg(
    comments_1.userid), 
  comments_1.id, 
  comments_1.postid, 
  comments_1.contentlicense, 
  comments_1.contentlicense, 
  comments_1.userdisplayname, 
  comments_1.text, 
  comments_1.id, 
  min(
    comments_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userid is not NULL
group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.text, comments_1.userdisplayname
limit 9;
select  
  badges_1.tagbased, 
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
      inner join votes as votes_2
      on (votes_1.id = votes_2.id )
    inner join badges as badges_1
    on (votes_1.id = badges_1.id )
where badges_1.name > badges_1.name
limit 30;
select  
  votes_1.creationdate, 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.id is not NULL
limit 14;
select  
  users_1.profileimageurl, 
  users_1.accountid, 
  min(
    users_1.creationdate), 
  users_1.displayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.aboutme is not NULL
group by users_1.accountid, users_1.displayname, users_1.profileimageurl
limit 6;
select  
  postlinks_1.linktypeid, 
  postlinks_1.postid, 
  postlinks_1.linktypeid, 
  postlinks_1.linktypeid, 
  postlinks_1.postid, 
  postlinks_1.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
limit 28;
select  
  postlinks_1.postid, 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
limit 11;
select  
  comments_1.id, 
  comments_1.id, 
  comments_1.contentlicense, 
  comments_1.userdisplayname, 
  comments_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.postid is not NULL
limit 18;
select  
  badges_1.class, 
  badges_1.tagbased, 
  badges_1.userid, 
  avg(
    badges_1.class), 
  badges_1.name, 
  badges_1.tagbased, 
  badges_1.userid, 
  max(
    badges_1.date), 
  badges_1.class, 
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.date >= badges_1.date
group by badges_1.class, badges_1.date, badges_1.name, badges_1.tagbased, badges_1.userid
limit 11;
select  
  posts_1.parentid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.acceptedanswerid < posts_1.id
limit 42;
select  
  postlinks_1.relatedpostid, 
  avg(
    postlinks_1.linktypeid), 
  posts_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
        inner join posts as posts_1
        on (comments_1.id = posts_1.id )
      inner join postlinks as postlinks_1
      on (comments_1.id = postlinks_1.id )
    inner join users as users_1
      inner join postlinks as postlinks_2
      on (users_1.id = postlinks_2.id )
    on (comments_1.id = postlinks_2.id )
where comments_1.postid < postlinks_1.relatedpostid
group by postlinks_1.relatedpostid, posts_1.contentlicense
limit 42;
select  
  users_1.websiteurl, 
  users_1.location, 
  comments_1.id, 
  comments_1.contentlicense, 
  max(
    users_1.creationdate), 
  comments_1.contentlicense, 
  users_1.accountid, 
  avg(
    users_1.accountid), 
  comments_1.userid, 
  users_1.aboutme, 
  comments_1.userid, 
  comments_1.postid, 
  count(
    comments_1.id), 
  min(
    comments_1.creationdate), 
  comments_1.postid, 
  users_1.websiteurl, 
  comments_1.postid, 
  users_1.id, 
  users_1.websiteurl, 
  comments_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join comments as comments_1
    on (users_1.id = comments_1.id )
where users_1.creationdate is not NULL
group by comments_1.contentlicense, comments_1.id, comments_1.postid, comments_1.userid, users_1.aboutme, users_1.accountid, users_1.id, users_1.location, users_1.websiteurl
limit 21;
select  
  posthistory_1.revisionguid, 
  posthistory_1.revisionguid, 
  min(
    posthistory_1.creationdate), 
  posthistory_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.userdisplayname is not NULL
group by posthistory_1.revisionguid, posthistory_1.text
limit 41;
select  
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.id is not NULL
limit 16;
select  
  count(*), 
  comments_1.id, 
  count(*), 
  comments_1.contentlicense, 
  comments_1.userdisplayname, 
  comments_1.creationdate, 
  comments_1.id, 
  comments_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join comments as comments_2
    on (comments_1.id = comments_2.id )
where comments_2.userid is not NULL
group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.userdisplayname
limit 5;
select  
  posts_2.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join users as users_1
      inner join posts as posts_2
      on (users_1.id = posts_2.id )
    on (posts_1.id = posts_2.id )
where posts_1.id is not NULL
limit 22;
select  
  votes_1.userid, 
  votes_1.creationdate, 
  votes_1.postid, 
  votes_1.id, 
  votes_1.creationdate, 
  posthistory_1.userid, 
  posthistory_1.comment, 
  votes_1.userid, 
  votes_1.votetypeid, 
  posthistory_1.revisionguid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join posthistory as posthistory_1
    on (votes_1.id = posthistory_1.id )
where votes_1.creationdate = posthistory_1.creationdate
limit 11;
select  
  posthistory_1.userdisplayname, 
  posthistory_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.posthistorytypeid is not NULL
limit 10;
select  
  comments_1.userid, 
  comments_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.creationdate is not NULL
limit 27;
select  
  comments_1.userdisplayname, 
  comments_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.text is not NULL
limit 38;
select  
  posthistory_1.comment, 
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join posthistory as posthistory_1
      inner join badges as badges_1
        inner join posthistory as posthistory_2
        on (badges_1.id = posthistory_2.id )
      on (posthistory_1.id = posthistory_2.id )
    on (votes_1.id = posthistory_2.id )
where posthistory_1.contentlicense is not NULL
limit 35;
select  
  users_1.location, 
  max(
    users_1.creationdate), 
  users_1.accountid, 
  users_1.creationdate, 
  users_1.location, 
  users_1.id, 
  users_1.location, 
  max(
    users_1.profileimageurl), 
  users_1.creationdate, 
  users_1.creationdate, 
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.displayname is not NULL
group by users_1.accountid, users_1.creationdate, users_1.id, users_1.location
limit 12;
select  
  posts_1.contentlicense, 
  posts_1.title, 
  posts_1.acceptedanswerid, 
  posts_1.ownerdisplayname, 
  posts_1.acceptedanswerid, 
  posts_1.title, 
  min(
    posts_1.creationdate), 
  posts_1.body, 
  min(
    posts_1.creationdate), 
  posts_1.tags, 
  posts_1.acceptedanswerid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.title is not NULL
group by posts_1.acceptedanswerid, posts_1.body, posts_1.contentlicense, posts_1.ownerdisplayname, posts_1.tags, posts_1.title
limit 24;
select  
  min(
    comments_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.creationdate is not NULL
limit 3;
select  
  postlinks_1.id, 
  postlinks_1.postid, 
  postlinks_1.relatedpostid, 
  postlinks_1.postid, 
  postlinks_1.id, 
  postlinks_1.id, 
  postlinks_1.relatedpostid, 
  postlinks_1.id, 
  postlinks_1.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
limit 15;
select  
  posthistory_1.contentlicense, 
  posthistory_1.text, 
  count(
    posthistory_1.contentlicense), 
  posthistory_1.userdisplayname, 
  posthistory_1.text, 
  posthistory_1.text, 
  posthistory_1.userid, 
  posthistory_1.revisionguid, 
  posthistory_1.contentlicense, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.userid, 
  posthistory_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.userid is not NULL
group by posthistory_1.contentlicense, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userdisplayname, posthistory_1.userid
limit 4;
select  
  sum(
    postlinks_1.relatedpostid), 
  postlinks_1.id, 
  postlinks_1.id, 
  postlinks_1.relatedpostid, 
  postlinks_1.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.id is not NULL
group by postlinks_1.id, postlinks_1.relatedpostid
limit 20;
select  
  badges_1.date, 
  badges_1.tagbased, 
  badges_1.userid, 
  badges_1.date, 
  avg(
    badges_1.class), 
  count(*), 
  sum(
    badges_1.id), 
  badges_1.userid, 
  badges_1.date, 
  avg(
    badges_1.userid), 
  badges_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased is not NULL
group by badges_1.date, badges_1.id, badges_1.tagbased, badges_1.userid
limit 9;
select  
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.class is not NULL
limit 38;
select  
  posthistory_1.posthistorytypeid, 
  posthistory_2.revisionguid, 
  posthistory_2.text, 
  votes_1.votetypeid, 
  posthistory_1.userid, 
  min(
    posthistory_2.creationdate), 
  votes_1.votetypeid, 
  votes_1.id, 
  votes_1.creationdate, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.id, 
  posthistory_2.userid, 
  posthistory_1.revisionguid, 
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join votes as votes_1
      inner join posthistory as posthistory_2
      on (votes_1.id = posthistory_2.id )
    on (posthistory_1.id = posthistory_2.id )
where posthistory_2.postid is not NULL
group by posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.revisionguid, posthistory_1.userid, posthistory_2.revisionguid, posthistory_2.text, posthistory_2.userid, votes_1.creationdate, votes_1.id, votes_1.votetypeid
limit 18;
select  
  votes_1.postid, 
  max(
    votes_1.creationdate), 
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.votetypeid is not NULL
group by votes_1.postid, votes_1.userid
limit 42;
select  
  posthistory_1.comment, 
  posthistory_1.creationdate, 
  avg(
    posthistory_1.posthistorytypeid), 
  posthistory_1.postid, 
  posthistory_1.comment, 
  posthistory_1.posthistorytypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.userid is not NULL
group by posthistory_1.comment, posthistory_1.creationdate, posthistory_1.posthistorytypeid, posthistory_1.postid
limit 31;
select  
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.name is not NULL
limit 35;
select  
  posthistory_1.postid, 
  min(
    posthistory_1.creationdate), 
  posthistory_1.userdisplayname, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.id is not NULL
group by posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.userdisplayname
limit 34;
select  
  max(
    postlinks_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join comments as comments_1
    on (postlinks_1.id = comments_1.id )
where comments_1.contentlicense is not NULL
limit 39;
select  
  comments_1.userid, 
  comments_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join posts as posts_1
    on (comments_1.id = posts_1.id )
where comments_1.postid is not NULL
limit 19;
select  
  max(
    comments_1.creationdate), 
  users_1.aboutme
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
        inner join badges as badges_1
        on (users_1.id = badges_1.id )
      inner join posts as posts_1
      on (badges_1.id = posts_1.id )
    inner join comments as comments_1
    on (posts_1.id = comments_1.id )
where comments_1.creationdate < users_1.creationdate
group by users_1.aboutme
limit 29;
select  
  postlinks_1.postid, 
  postlinks_1.postid, 
  postlinks_1.creationdate, 
  postlinks_1.creationdate, 
  postlinks_1.linktypeid, 
  postlinks_1.linktypeid, 
  postlinks_1.postid, 
  postlinks_1.id, 
  postlinks_1.postid, 
  postlinks_1.relatedpostid, 
  postlinks_1.postid, 
  postlinks_1.linktypeid, 
  postlinks_1.id, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.id, 
  postlinks_1.relatedpostid, 
  postlinks_1.linktypeid, 
  count(
    postlinks_1.linktypeid), 
  postlinks_1.linktypeid, 
  postlinks_1.creationdate, 
  postlinks_1.postid, 
  postlinks_1.postid, 
  postlinks_1.id, 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 28;
select  
  badges_1.date, 
  users_1.accountid, 
  badges_1.date, 
  badges_1.date, 
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join badges as badges_1
    on (users_1.id = badges_1.id )
where users_1.aboutme is not NULL
limit 2;
select  
  postlinks_1.postid, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.relatedpostid, 
  postlinks_1.creationdate, 
  postlinks_1.id, 
  postlinks_1.relatedpostid, 
  postlinks_1.relatedpostid, 
  postlinks_1.relatedpostid, 
  postlinks_1.relatedpostid, 
  postlinks_1.linktypeid, 
  min(
    postlinks_1.postid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate > postlinks_1.creationdate
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 8;
select  
  posthistory_1.posthistorytypeid, 
  posthistory_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.text is not NULL
limit 17;
select  
  users_1.aboutme
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.websiteurl is not NULL
limit 42;
select  
  badges_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join badges as badges_2
    on (badges_1.id = badges_2.id )
where badges_1.userid is not NULL
limit 25;
select  
  count(
    votes_1.postid), 
  postlinks_1.relatedpostid, 
  min(
    posthistory_1.userid), 
  max(
    postlinks_1.creationdate), 
  posts_1.owneruserid, 
  min(
    posthistory_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join posthistory as posthistory_1
      inner join posts as posts_1
        inner join votes as votes_1
        on (posts_1.id = votes_1.id )
      on (posthistory_1.id = posts_1.id )
    on (postlinks_1.id = posthistory_1.id )
where posts_1.acceptedanswerid = posts_1.owneruserid
group by postlinks_1.relatedpostid, posts_1.owneruserid
limit 37;
select  
  postlinks_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
limit 38;
select  
  badges_1.date, 
  sum(
    badges_1.id), 
  badges_2.tagbased, 
  badges_1.date, 
  min(
    badges_2.date), 
  badges_2.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join badges as badges_2
    on (badges_1.id = badges_2.id )
where badges_2.date is not NULL
group by badges_1.date, badges_2.name, badges_2.tagbased
limit 28;
select  
  posts_1.parentid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.contentlicense is not NULL
limit 5;
select  
  min(
    badges_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.userid is not NULL
limit 41;
select  
  min(
    users_1.creationdate), 
  users_1.id, 
  sum(
    users_1.id), 
  users_1.accountid, 
  min(
    users_1.creationdate), 
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.profileimageurl is not NULL
group by users_1.accountid, users_1.creationdate, users_1.id
limit 25;
select  
  users_1.accountid, 
  max(
    users_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.accountid is not NULL
group by users_1.accountid
limit 14;
select distinct 
  postlinks_1.postid, 
  postlinks_1.creationdate, 
  postlinks_1.id, 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
limit 28;
select  
  count(*), 
  votes_1.userid, 
  votes_1.creationdate, 
  votes_1.creationdate, 
  votes_1.creationdate, 
  votes_1.postid, 
  votes_1.votetypeid, 
  votes_1.postid, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.userid is not NULL
group by votes_1.creationdate, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 20;
select  
  postlinks_1.creationdate, 
  comments_1.postid, 
  comments_1.id, 
  min(
    badges_1.date), 
  badges_2.id, 
  postlinks_1.linktypeid, 
  users_1.profileimageurl, 
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
        inner join badges as badges_1
        on (postlinks_1.id = badges_1.id )
      inner join badges as badges_2
        inner join comments as comments_1
        on (badges_2.id = comments_1.id )
      on (postlinks_1.id = badges_2.id )
    inner join votes as votes_1
      inner join users as users_1
      on (votes_1.id = users_1.id )
    on (badges_1.id = votes_1.id )
where comments_1.postid is not NULL
group by badges_1.date, badges_2.id, comments_1.id, comments_1.postid, postlinks_1.creationdate, postlinks_1.linktypeid, users_1.profileimageurl
limit 27;
select  
  comments_1.contentlicense, 
  comments_2.postid, 
  comments_2.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
      inner join comments as comments_1
      on (posthistory_1.id = comments_1.id )
    inner join comments as comments_2
        inner join votes as votes_1
        on (comments_2.id = votes_1.id )
      inner join postlinks as postlinks_1
      on (votes_1.id = postlinks_1.id )
    on (comments_1.id = comments_2.id )
where comments_1.contentlicense < comments_2.text
limit 8;
select  
  posts_1.title, 
  max(
    posthistory_1.creationdate), 
  min(
    posts_1.creationdate), 
  posthistory_1.id, 
  count(*), 
  posthistory_1.contentlicense, 
  posthistory_1.revisionguid, 
  posthistory_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join posts as posts_1
    on (posthistory_1.id = posts_1.id )
where posthistory_1.creationdate is not NULL
group by posthistory_1.contentlicense, posthistory_1.id, posthistory_1.revisionguid, posts_1.title
limit 12;
select  
  count(*), 
  votes_1.userid, 
  votes_1.votetypeid, 
  comments_1.userid, 
  votes_1.creationdate, 
  postlinks_1.postid, 
  postlinks_1.relatedpostid, 
  comments_1.postid, 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
      inner join comments as comments_1
      on (votes_1.id = comments_1.id )
    inner join postlinks as postlinks_1
    on (comments_1.id = postlinks_1.id )
where comments_1.userdisplayname is not NULL
group by comments_1.postid, comments_1.userid, postlinks_1.postid, postlinks_1.relatedpostid, votes_1.creationdate, votes_1.userid, votes_1.votetypeid
limit 29;
select  
  votes_1.userid, 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.userid is not NULL
limit 19;
select  
  badges_1.tagbased, 
  badges_1.id, 
  badges_1.id, 
  comments_1.creationdate, 
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join posts as posts_1
          inner join badges as badges_2
          on (posts_1.id = badges_2.id )
        inner join comments as comments_1
        on (badges_2.id = comments_1.id )
      inner join votes as votes_1
      on (posts_1.id = votes_1.id )
    on (badges_1.id = badges_2.id )
where votes_1.creationdate is not NULL
limit 26;
select  
  avg(
    postlinks_1.linktypeid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
limit 7;
select  
  badges_1.name, 
  users_1.location
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join users as users_1
    on (badges_1.id = users_1.id )
where badges_1.tagbased <= badges_1.tagbased
limit 21;
select  
  min(
    comments_1.creationdate), 
  comments_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.id is not NULL
group by comments_1.creationdate
limit 34;
select  
  votes_1.id, 
  votes_1.id, 
  users_1.displayname, 
  votes_1.userid, 
  votes_1.votetypeid, 
  users_1.location, 
  votes_1.votetypeid, 
  votes_1.id, 
  votes_1.id, 
  users_1.aboutme, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join users as users_1
    on (votes_1.id = users_1.id )
where votes_1.creationdate >= users_1.creationdate
limit 21;
select  
  posthistory_1.revisionguid, 
  posthistory_1.contentlicense, 
  posthistory_1.revisionguid, 
  posthistory_1.creationdate, 
  sum(
    posthistory_1.posthistorytypeid), 
  posthistory_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.creationdate = posthistory_1.creationdate
group by posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.revisionguid
limit 2;
select  
  badges_1.userid, 
  badges_1.id, 
  badges_1.date, 
  badges_1.userid, 
  badges_1.userid, 
  badges_1.tagbased, 
  badges_1.tagbased, 
  badges_1.userid, 
  badges_1.tagbased, 
  min(
    badges_1.class)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.name is not NULL
group by badges_1.date, badges_1.id, badges_1.tagbased, badges_1.userid
limit 25;
select  
  votes_1.id, 
  users_1.id, 
  max(
    votes_1.postid), 
  users_1.aboutme, 
  posts_1.id, 
  votes_1.id, 
  users_1.creationdate, 
  posts_1.tags, 
  posts_1.ownerdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
      inner join votes as votes_1
        inner join posts as posts_1
        on (votes_1.id = posts_1.id )
      on (postlinks_1.id = votes_1.id )
    inner join users as users_1
    on (posts_1.id = users_1.id )
where postlinks_1.creationdate is not NULL
group by posts_1.id, posts_1.ownerdisplayname, posts_1.tags, users_1.aboutme, users_1.creationdate, users_1.id, votes_1.id
limit 30;
select  
  min(
    users_2.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join users as users_2
    on (users_1.id = users_2.id )
where users_2.aboutme is not NULL
limit 38;
select  
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.id >= votes_1.userid
limit 3;
select  
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join posts as posts_2
      inner join badges as badges_1
            inner join users as users_1
            on (badges_1.id = users_1.id )
          inner join votes as votes_1
          on (badges_1.id = votes_1.id )
        inner join postlinks as postlinks_1
          inner join postlinks as postlinks_2
          on (postlinks_1.id = postlinks_2.id )
        on (votes_1.id = postlinks_1.id )
      on (posts_2.id = badges_1.id )
    on (posts_1.id = users_1.id )
where badges_1.id is not NULL
limit 17;
select  
  comments_1.id, 
  comments_1.userid, 
  comments_1.text, 
  comments_1.postid, 
  comments_1.text, 
  comments_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.id is not NULL
limit 7;
select  
  posts_2.acceptedanswerid, 
  posts_1.contentlicense, 
  avg(
    posthistory_1.userid), 
  count(
    posts_2.title), 
  posts_1.posttypeid, 
  posts_2.ownerdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
      inner join posthistory as posthistory_1
      on (posts_1.id = posthistory_1.id )
    inner join posts as posts_2
    on (posthistory_1.id = posts_2.id )
where posts_2.contentlicense is not NULL
group by posts_1.contentlicense, posts_1.posttypeid, posts_2.acceptedanswerid, posts_2.ownerdisplayname
limit 10;
select  
  votes_1.id, 
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.votetypeid is not NULL
limit 6;
select  
  posts_2.title, 
  posts_2.id, 
  users_1.accountid, 
  votes_1.postid, 
  users_1.id, 
  votes_1.votetypeid, 
  posts_1.owneruserid, 
  count(*), 
  users_1.aboutme
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
      inner join posts as posts_1
        inner join posts as posts_2
        on (posts_1.id = posts_2.id )
      on (votes_1.id = posts_1.id )
    inner join users as users_1
    on (posts_1.id = users_1.id )
where posts_2.id is not NULL
group by posts_1.owneruserid, posts_2.id, posts_2.title, users_1.aboutme, users_1.accountid, users_1.id, votes_1.postid, votes_1.votetypeid
limit 36;
select  
  users_1.creationdate, 
  count(*), 
  users_1.aboutme, 
  users_1.profileimageurl, 
  users_1.id, 
  users_1.aboutme, 
  users_1.id, 
  users_1.id, 
  users_1.profileimageurl, 
  max(
    users_1.id), 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.location is not NULL
group by users_1.aboutme, users_1.creationdate, users_1.id, users_1.profileimageurl
limit 29;
select  
  comments_1.contentlicense, 
  comments_1.postid, 
  comments_1.text, 
  avg(
    comments_1.id), 
  comments_1.userdisplayname, 
  comments_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.id is not NULL
group by comments_1.contentlicense, comments_1.id, comments_1.postid, comments_1.text, comments_1.userdisplayname
limit 9;
select  
  users_1.accountid, 
  users_1.profileimageurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.creationdate <= users_1.creationdate
limit 24;
select  
  posthistory_3.userdisplayname, 
  posthistory_2.creationdate, 
  min(
    votes_1.postid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
        inner join posthistory as posthistory_1
        on (posts_1.id = posthistory_1.id )
      inner join posthistory as posthistory_2
      on (posts_1.id = posthistory_2.id )
    inner join posthistory as posthistory_3
      inner join votes as votes_1
      on (posthistory_3.id = votes_1.id )
    on (posthistory_1.id = posthistory_3.id )
where posthistory_3.creationdate > votes_1.creationdate
group by posthistory_2.creationdate, posthistory_3.userdisplayname
limit 42;
select  
  posts_1.id, 
  votes_1.userid, 
  sum(
    posts_1.parentid), 
  posts_2.creationdate, 
  count(*), 
  votes_1.creationdate, 
  posts_2.parentid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join posts as posts_2
      inner join votes as votes_1
      on (posts_2.id = votes_1.id )
    on (posts_1.id = posts_2.id )
where votes_1.id is not NULL
group by posts_1.id, posts_2.creationdate, posts_2.parentid, votes_1.creationdate, votes_1.userid
limit 11;
select  
  badges_1.tagbased
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.date is not NULL
limit 33;
select  
  votes_1.postid, 
  votes_1.id, 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.postid is not NULL
limit 13;
select  
  posts_3.acceptedanswerid, 
  posts_2.id, 
  comments_1.userdisplayname, 
  posts_1.acceptedanswerid, 
  comments_1.creationdate, 
  posts_2.body, 
  posts_2.id, 
  posts_2.title
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join posts as posts_2
      inner join posts as posts_3
        inner join comments as comments_1
        on (posts_3.id = comments_1.id )
      on (posts_2.id = comments_1.id )
    on (posts_1.id = posts_3.id )
where posts_2.posttypeid = posts_3.acceptedanswerid
limit 1;
select  
  posthistory_1.creationdate, 
  posthistory_2.comment, 
  posthistory_2.postid, 
  posthistory_2.contentlicense, 
  posthistory_2.creationdate, 
  posthistory_1.contentlicense, 
  posthistory_2.creationdate, 
  posthistory_1.userid, 
  posthistory_2.userid, 
  min(
    postlinks_1.creationdate), 
  posthistory_2.contentlicense, 
  posthistory_1.contentlicense, 
  postlinks_1.creationdate, 
  posthistory_1.text, 
  posthistory_2.userid, 
  posthistory_1.postid, 
  posthistory_1.userid, 
  posthistory_2.contentlicense, 
  posthistory_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
      inner join posthistory as posthistory_1
      on (postlinks_1.id = posthistory_1.id )
    inner join posthistory as posthistory_2
    on (postlinks_1.id = posthistory_2.id )
where postlinks_1.creationdate is not NULL
group by posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.postid, posthistory_1.text, posthistory_1.userid, posthistory_2.comment, posthistory_2.contentlicense, posthistory_2.creationdate, posthistory_2.postid, posthistory_2.userid, postlinks_1.creationdate
limit 33;
select  
  postlinks_1.id, 
  postlinks_1.id, 
  postlinks_1.id, 
  users_1.location, 
  postlinks_1.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join users as users_1
    on (postlinks_1.id = users_1.id )
where postlinks_1.postid > postlinks_1.linktypeid
limit 26;
select  
  votes_1.id, 
  votes_1.userid, 
  min(
    votes_1.creationdate), 
  votes_1.creationdate, 
  avg(
    votes_1.postid), 
  votes_1.postid, 
  votes_1.creationdate, 
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.userid is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid
limit 32;
select  
  postlinks_1.linktypeid, 
  postlinks_1.id, 
  postlinks_1.creationdate, 
  postlinks_1.linktypeid, 
  min(
    postlinks_1.creationdate), 
  postlinks_1.id, 
  postlinks_1.creationdate, 
  postlinks_1.creationdate, 
  count(
    postlinks_1.creationdate), 
  min(
    postlinks_1.relatedpostid), 
  postlinks_1.linktypeid, 
  postlinks_1.creationdate, 
  postlinks_1.postid, 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid
limit 41;
select  
  min(
    posthistory_1.postid), 
  posthistory_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.postid > posthistory_1.posthistorytypeid
group by posthistory_1.creationdate
limit 27;
select  
  comments_1.id, 
  avg(
    comments_1.id), 
  comments_1.userdisplayname, 
  comments_1.userdisplayname, 
  comments_1.contentlicense, 
  comments_1.userdisplayname, 
  comments_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.text is not NULL
group by comments_1.contentlicense, comments_1.id, comments_1.userdisplayname, comments_1.userid
limit 18;
select  
  users_1.profileimageurl, 
  posts_1.ownerdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
      inner join badges as badges_1
      on (posts_1.id = badges_1.id )
    inner join users as users_1
        inner join posts as posts_2
        on (users_1.id = posts_2.id )
      inner join votes as votes_1
        inner join badges as badges_2
        on (votes_1.id = badges_2.id )
      on (posts_2.id = votes_1.id )
    on (badges_1.id = badges_2.id )
where posts_1.acceptedanswerid < badges_1.userid
limit 28;
select  
  badges_1.name, 
  badges_1.tagbased, 
  badges_1.tagbased, 
  badges_1.name, 
  badges_1.userid, 
  badges_1.tagbased, 
  badges_1.name, 
  badges_1.class, 
  badges_1.tagbased, 
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.date is not NULL
limit 10;
select  
  comments_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.id is not NULL
limit 28;
select  
  users_1.websiteurl, 
  users_1.id, 
  users_1.profileimageurl, 
  users_1.aboutme, 
  min(
    users_1.creationdate), 
  max(
    users_1.id), 
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.id is not NULL
group by users_1.aboutme, users_1.creationdate, users_1.id, users_1.profileimageurl, users_1.websiteurl
limit 16;
select  
  badges_1.tagbased
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join badges as badges_1
    on (comments_1.id = badges_1.id )
where badges_1.tagbased is not NULL
limit 21;
select  
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate is not NULL
limit 30;
select  
  postlinks_1.linktypeid, 
  avg(
    postlinks_1.linktypeid), 
  postlinks_1.postid, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
group by postlinks_1.linktypeid, postlinks_1.postid
limit 28;
select  
  avg(
    posts_1.acceptedanswerid), 
  max(
    users_1.creationdate), 
  users_1.accountid, 
  posts_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join users as users_1
        inner join postlinks as postlinks_1
        on (users_1.id = postlinks_1.id )
      inner join votes as votes_1
      on (users_1.id = votes_1.id )
    on (posts_1.id = votes_1.id )
where posts_1.contentlicense is not NULL
group by posts_1.id, users_1.accountid
limit 29;
select  
  posthistory_1.userid, 
  posts_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join posthistory as posthistory_1
      inner join postlinks as postlinks_1
      on (posthistory_1.id = postlinks_1.id )
    on (posts_1.id = postlinks_1.id )
where posthistory_1.creationdate < postlinks_1.creationdate
limit 4;
select  
  min(
    posts_1.creationdate), 
  posts_1.posttypeid, 
  posts_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.id is not NULL
group by posts_1.creationdate, posts_1.posttypeid
limit 9;
select  
  posthistory_1.contentlicense, 
  posthistory_1.postid, 
  posthistory_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.creationdate < posthistory_1.creationdate
limit 22;
select  
  badges_1.userid, 
  badges_1.userid, 
  badges_1.class, 
  badges_1.tagbased
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.userid is not NULL
limit 42;
select  
  posthistory_2.text, 
  posthistory_2.userid, 
  posthistory_2.text, 
  posthistory_1.contentlicense, 
  posthistory_2.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join posthistory as posthistory_2
    on (posthistory_1.id = posthistory_2.id )
where posthistory_1.userid is not NULL
limit 13;
select  
  comments_1.userdisplayname, 
  comments_1.contentlicense, 
  comments_1.postid, 
  max(
    comments_1.creationdate), 
  comments_1.userid, 
  comments_1.userid, 
  comments_1.userdisplayname, 
  comments_1.postid, 
  comments_1.contentlicense, 
  comments_1.postid, 
  comments_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.contentlicense >= comments_1.userdisplayname
group by comments_1.contentlicense, comments_1.creationdate, comments_1.postid, comments_1.userdisplayname, comments_1.userid
limit 20;
select  
  min(
    posthistory_1.id)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.userdisplayname is not NULL
limit 29;
select  
  comments_1.userdisplayname, 
  comments_1.text, 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join comments as comments_1
    on (votes_1.id = comments_1.id )
where votes_1.votetypeid is not NULL
limit 6;
select  
  votes_1.votetypeid, 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate is not NULL
limit 21;
select  
  comments_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.postid is not NULL
limit 3;
select  
  posthistory_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.creationdate >= posthistory_1.creationdate
limit 36;
select  
  comments_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.contentlicense is not NULL
limit 19;
select  
  votes_3.id, 
  votes_3.postid, 
  votes_1.postid, 
  min(
    votes_1.votetypeid), 
  votes_3.id, 
  votes_3.votetypeid, 
  votes_1.userid, 
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
        inner join votes as votes_2
        on (votes_1.id = votes_2.id )
      inner join votes as votes_3
      on (votes_2.id = votes_3.id )
    inner join postlinks as postlinks_1
    on (votes_2.id = postlinks_1.id )
where votes_1.creationdate <= votes_3.creationdate
group by votes_1.postid, votes_1.userid, votes_3.id, votes_3.postid, votes_3.votetypeid
limit 29;
select  
  posthistory_1.text, 
  posthistory_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.creationdate is not NULL
limit 38;
select  
  postlinks_1.postid, 
  postlinks_1.creationdate, 
  postlinks_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join posts as posts_1
      inner join postlinks as postlinks_1
        inner join users as users_1
        on (postlinks_1.id = users_1.id )
      on (posts_1.id = postlinks_1.id )
    on (badges_1.id = posts_1.id )
where postlinks_1.relatedpostid is not NULL
limit 24;
select  
  posts_2.contentlicense, 
  sum(
    posts_1.acceptedanswerid), 
  count(
    posts_2.contentlicense), 
  posts_1.parentid, 
  count(*), 
  min(
    posts_1.creationdate), 
  posts_2.ownerdisplayname, 
  min(
    posts_2.creationdate), 
  posts_1.id, 
  min(
    posts_2.creationdate), 
  posts_1.body, 
  posts_1.id, 
  posts_2.tags, 
  posts_2.creationdate, 
  posts_2.parentid, 
  posts_2.posttypeid, 
  posts_2.contentlicense, 
  posts_1.posttypeid, 
  max(
    posts_1.posttypeid), 
  posts_2.tags, 
  avg(
    posts_1.posttypeid), 
  posts_2.tags
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join posts as posts_2
    on (posts_1.id = posts_2.id )
where posts_1.posttypeid is not NULL
group by posts_1.body, posts_1.id, posts_1.parentid, posts_1.posttypeid, posts_2.contentlicense, posts_2.creationdate, posts_2.ownerdisplayname, posts_2.parentid, posts_2.posttypeid, posts_2.tags
limit 28;
select  
  posts_1.id, 
  posts_1.posttypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.acceptedanswerid is not NULL
limit 2;
select  
  posthistory_1.userdisplayname, 
  users_1.websiteurl, 
  votes_1.votetypeid, 
  posthistory_1.contentlicense, 
  max(
    votes_1.creationdate), 
  posthistory_1.creationdate, 
  votes_1.userid, 
  votes_1.id, 
  posts_1.title, 
  posthistory_1.postid, 
  users_1.websiteurl, 
  posthistory_1.userdisplayname, 
  posts_1.body, 
  votes_1.votetypeid, 
  comments_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
      inner join posts as posts_1
          inner join votes as votes_1
          on (posts_1.id = votes_1.id )
        inner join posthistory as posthistory_1
        on (posts_1.id = posthistory_1.id )
      on (users_1.id = posthistory_1.id )
    inner join comments as comments_1
    on (posthistory_1.id = comments_1.id )
where posthistory_1.posthistorytypeid is not NULL
group by comments_1.postid, posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.postid, posthistory_1.userdisplayname, posts_1.body, posts_1.title, users_1.websiteurl, votes_1.id, votes_1.userid, votes_1.votetypeid
limit 15;
select  
  posts_1.tags, 
  posts_1.owneruserid, 
  posts_1.acceptedanswerid, 
  posts_1.contentlicense, 
  posts_1.parentid, 
  max(
    posts_1.creationdate), 
  posts_1.id, 
  posts_1.acceptedanswerid, 
  posts_1.acceptedanswerid, 
  posts_1.parentid, 
  max(
    posts_1.posttypeid), 
  posts_1.ownerdisplayname, 
  posts_1.ownerdisplayname, 
  posts_1.contentlicense, 
  posts_1.owneruserid, 
  max(
    posts_1.parentid), 
  posts_1.parentid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.contentlicense is not NULL
group by posts_1.acceptedanswerid, posts_1.contentlicense, posts_1.id, posts_1.ownerdisplayname, posts_1.owneruserid, posts_1.parentid, posts_1.tags
limit 1;
select  
  posthistory_1.comment, 
  posthistory_1.comment, 
  max(
    posthistory_1.creationdate), 
  posthistory_1.postid, 
  posthistory_1.revisionguid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.userdisplayname > posthistory_1.contentlicense
group by posthistory_1.comment, posthistory_1.postid, posthistory_1.revisionguid
limit 30;
select  
  posthistory_1.creationdate, 
  posthistory_1.revisionguid, 
  min(
    posthistory_1.id), 
  badges_1.userid, 
  max(
    posthistory_1.creationdate), 
  badges_1.class, 
  badges_1.userid, 
  posthistory_1.revisionguid, 
  badges_1.tagbased, 
  posthistory_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join posthistory as posthistory_1
    on (badges_1.id = posthistory_1.id )
where posthistory_1.userdisplayname is not NULL
group by badges_1.class, badges_1.tagbased, badges_1.userid, posthistory_1.creationdate, posthistory_1.revisionguid
limit 14;
select  
  badges_1.class, 
  badges_1.id, 
  badges_1.class, 
  badges_1.id, 
  badges_1.name, 
  badges_1.userid, 
  badges_1.date, 
  badges_1.id, 
  badges_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased is not NULL
limit 14;
select  
  postlinks_1.id, 
  users_1.location, 
  max(
    posts_1.creationdate), 
  postlinks_1.linktypeid, 
  postlinks_2.creationdate, 
  postlinks_2.linktypeid, 
  count(
    posts_1.id), 
  postlinks_2.linktypeid, 
  users_1.aboutme, 
  postlinks_2.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
      inner join posts as posts_1
      on (postlinks_1.id = posts_1.id )
    inner join users as users_1
      inner join postlinks as postlinks_2
      on (users_1.id = postlinks_2.id )
    on (posts_1.id = postlinks_2.id )
where users_1.id > postlinks_2.linktypeid
group by postlinks_1.id, postlinks_1.linktypeid, postlinks_2.creationdate, postlinks_2.linktypeid, users_1.aboutme, users_1.location
limit 40;
select  
  postlinks_1.postid, 
  postlinks_1.id, 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
limit 26;
select  
  comments_1.id, 
  comments_1.contentlicense, 
  comments_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userdisplayname is not NULL
limit 17;
select  
  posts_1.creationdate, 
  posts_1.contentlicense, 
  posts_1.parentid, 
  posts_1.ownerdisplayname, 
  posts_1.acceptedanswerid, 
  posts_1.contentlicense, 
  posts_1.creationdate, 
  posts_1.acceptedanswerid, 
  posts_1.parentid, 
  min(
    posts_1.creationdate), 
  posts_1.creationdate, 
  posts_1.tags, 
  posts_1.contentlicense, 
  posts_1.id, 
  posts_1.acceptedanswerid, 
  max(
    posts_1.creationdate), 
  posts_1.acceptedanswerid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.creationdate > posts_1.creationdate
group by posts_1.acceptedanswerid, posts_1.contentlicense, posts_1.creationdate, posts_1.id, posts_1.ownerdisplayname, posts_1.parentid, posts_1.tags
limit 22;
select  
  max(
    users_1.creationdate), 
  users_1.profileimageurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.creationdate is not NULL
group by users_1.profileimageurl
limit 40;
select  
  badges_2.tagbased, 
  badges_2.class, 
  badges_2.id, 
  posthistory_1.contentlicense, 
  badges_1.date, 
  badges_3.name, 
  users_1.accountid, 
  badges_3.class, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
      inner join posthistory as posthistory_1
        inner join users as users_1
        on (posthistory_1.id = users_1.id )
      on (badges_1.id = posthistory_1.id )
    inner join postlinks as postlinks_1
        inner join badges as badges_2
        on (postlinks_1.id = badges_2.id )
      inner join badges as badges_3
      on (badges_2.id = badges_3.id )
    on (posthistory_1.id = badges_3.id )
where postlinks_1.creationdate is not NULL
group by badges_1.date, badges_2.class, badges_2.id, badges_2.tagbased, badges_3.class, badges_3.name, posthistory_1.contentlicense, users_1.accountid
limit 39;
select  
  comments_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.creationdate is not NULL
limit 31;
select  
  badges_1.class, 
  badges_1.tagbased, 
  count(
    badges_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.date >= badges_1.date
group by badges_1.class, badges_1.tagbased
limit 5;
select  
  min(
    users_1.creationdate), 
  max(
    users_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
      inner join users as users_1
      on (votes_1.id = users_1.id )
    inner join posthistory as posthistory_1
    on (votes_1.id = posthistory_1.id )
where votes_1.votetypeid is not NULL
limit 14;
select  
  count(
    users_1.location), 
  users_1.profileimageurl, 
  users_1.profileimageurl, 
  users_1.accountid, 
  users_1.displayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.aboutme is not NULL
group by users_1.accountid, users_1.displayname, users_1.profileimageurl
limit 3;
select  
  comments_2.userid, 
  comments_1.contentlicense, 
  posthistory_2.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
      inner join comments as comments_2
        inner join posthistory as posthistory_1
          inner join comments as comments_3
          on (posthistory_1.id = comments_3.id )
        on (comments_2.id = comments_3.id )
      on (comments_1.id = comments_2.id )
    inner join posthistory as posthistory_2
    on (comments_3.id = posthistory_2.id )
where posthistory_2.id <= posthistory_2.postid
limit 14;
select  
  posts_1.id, 
  posts_2.contentlicense, 
  posts_2.contentlicense, 
  posts_2.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join posts as posts_2
    on (posts_1.id = posts_2.id )
where posts_1.id < posts_1.owneruserid
limit 29;
select  
  posthistory_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join postlinks as postlinks_1
    on (posthistory_1.id = postlinks_1.id )
where posthistory_1.postid <= posthistory_1.userid
limit 3;
select  
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join posts as posts_1
    on (users_1.id = posts_1.id )
where posts_1.acceptedanswerid is not NULL
limit 2;
select  
  posts_1.creationdate, 
  posts_1.title, 
  posts_1.tags, 
  posts_1.creationdate, 
  posts_1.ownerdisplayname, 
  posts_1.ownerdisplayname, 
  posts_1.posttypeid, 
  posts_1.ownerdisplayname, 
  posts_1.ownerdisplayname, 
  max(
    posts_1.owneruserid), 
  posts_1.ownerdisplayname, 
  posts_1.id, 
  posts_1.id, 
  posts_1.title
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.contentlicense is not NULL
group by posts_1.creationdate, posts_1.id, posts_1.ownerdisplayname, posts_1.posttypeid, posts_1.tags, posts_1.title
limit 26;
select  
  users_1.profileimageurl, 
  votes_1.postid, 
  votes_1.votetypeid, 
  max(
    users_1.creationdate), 
  users_1.profileimageurl, 
  users_1.accountid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join votes as votes_1
    on (users_1.id = votes_1.id )
where votes_1.creationdate < users_1.creationdate
group by users_1.accountid, users_1.profileimageurl, votes_1.postid, votes_1.votetypeid
limit 8;
select  
  users_1.websiteurl, 
  users_1.location, 
  users_1.id, 
  users_1.profileimageurl, 
  users_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.accountid is not NULL
limit 13;
select  
  badges_1.name, 
  max(
    badges_1.date), 
  badges_1.id, 
  badges_1.tagbased, 
  badges_1.userid, 
  badges_1.userid, 
  badges_1.class, 
  badges_1.class, 
  badges_1.date, 
  badges_1.userid, 
  badges_1.name, 
  badges_1.date, 
  badges_1.name, 
  badges_1.class, 
  badges_1.date, 
  badges_1.class, 
  badges_1.date, 
  badges_1.id, 
  badges_1.name, 
  max(
    badges_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.date < badges_1.date
group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
limit 25;
select  
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join badges as badges_1
    on (posthistory_1.id = badges_1.id )
where badges_1.date is not NULL
limit 35;
select  
  votes_1.id, 
  votes_1.postid, 
  min(
    votes_1.votetypeid), 
  badges_1.date, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join badges as badges_1
    on (votes_1.id = badges_1.id )
where badges_1.tagbased >= badges_1.tagbased
group by badges_1.date, votes_1.id, votes_1.postid
limit 4;
select  
  posthistory_1.userid, 
  posthistory_2.comment, 
  posthistory_2.revisionguid, 
  posthistory_2.postid, 
  posthistory_1.posthistorytypeid, 
  max(
    posts_1.id), 
  posthistory_2.userdisplayname, 
  badges_1.date, 
  users_1.profileimageurl, 
  max(
    posts_1.parentid), 
  posts_1.contentlicense, 
  count(*), 
  users_1.displayname, 
  min(
    posthistory_2.creationdate), 
  posts_1.creationdate, 
  posthistory_1.creationdate, 
  posthistory_1.creationdate, 
  posts_1.posttypeid, 
  posthistory_1.text, 
  users_1.websiteurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
      inner join users as users_1
          inner join posts as posts_1
          on (users_1.id = posts_1.id )
        inner join posthistory as posthistory_1
        on (posts_1.id = posthistory_1.id )
      on (badges_1.id = users_1.id )
    inner join posthistory as posthistory_2
    on (users_1.id = posthistory_2.id )
where users_1.creationdate > posts_1.creationdate
group by badges_1.date, posthistory_1.creationdate, posthistory_1.posthistorytypeid, posthistory_1.text, posthistory_1.userid, posthistory_2.comment, posthistory_2.postid, posthistory_2.revisionguid, posthistory_2.userdisplayname, posts_1.contentlicense, posts_1.creationdate, posts_1.posttypeid, users_1.displayname, users_1.profileimageurl, users_1.websiteurl
limit 14;
select  
  badges_1.tagbased, 
  count(*), 
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.date < badges_1.date
group by badges_1.class, badges_1.tagbased
limit 41;
select  
  comments_1.creationdate, 
  comments_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.contentlicense is not NULL
limit 15;
select  
  postlinks_1.id, 
  comments_1.postid, 
  comments_1.contentlicense, 
  posts_1.title, 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
      inner join postlinks as postlinks_1
      on (comments_1.id = postlinks_1.id )
    inner join posts as posts_1
    on (comments_1.id = posts_1.id )
where posts_1.posttypeid is not NULL
limit 26;
select  
  postlinks_1.creationdate, 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
limit 42;
select  
  postlinks_1.linktypeid, 
  postlinks_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate < postlinks_1.creationdate
limit 34;
select  
  posts_1.owneruserid, 
  posts_1.parentid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.tags is not NULL
limit 37;
select  
  posthistory_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.text is not NULL
limit 42;
select  
  avg(
    users_1.accountid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
        inner join comments as comments_1
        on (posthistory_1.id = comments_1.id )
      inner join comments as comments_2
      on (posthistory_1.id = comments_2.id )
    inner join users as users_1
      inner join badges as badges_1
      on (users_1.id = badges_1.id )
    on (comments_1.id = badges_1.id )
where badges_1.class is not NULL
limit 26;
select  
  users_1.profileimageurl, 
  users_1.accountid, 
  min(
    users_1.creationdate), 
  max(
    users_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.location <= users_1.displayname
group by users_1.accountid, users_1.profileimageurl
limit 20;
select  
  users_1.displayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.creationdate >= users_1.creationdate
limit 41;
select  
  users_1.id, 
  sum(
    comments_1.userid), 
  postlinks_1.id, 
  users_1.aboutme
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join postlinks as postlinks_1
      inner join comments as comments_1
      on (postlinks_1.id = comments_1.id )
    on (users_1.id = comments_1.id )
where comments_1.userid is not NULL
group by postlinks_1.id, users_1.aboutme, users_1.id
limit 11;
select  
  posts_1.acceptedanswerid, 
  posts_1.posttypeid, 
  count(*), 
  max(
    posts_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.title is not NULL
group by posts_1.acceptedanswerid, posts_1.posttypeid
limit 35;
select  
  posthistory_1.userdisplayname, 
  posthistory_1.revisionguid, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.postid, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.id, 
  posthistory_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.id is not NULL
limit 32;
select  
  comments_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userid is not NULL
limit 33;
select  
  max(
    users_1.creationdate), 
  comments_1.text, 
  comments_1.creationdate, 
  comments_1.postid, 
  max(
    comments_1.creationdate), 
  comments_1.creationdate, 
  comments_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join users as users_1
    on (comments_1.id = users_1.id )
where comments_1.postid is not NULL
group by comments_1.creationdate, comments_1.postid, comments_1.text, comments_1.userid
limit 41;
select  
  min(
    votes_1.userid), 
  posthistory_1.id, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.contentlicense, 
  votes_1.votetypeid, 
  count(
    votes_1.postid), 
  posthistory_1.id, 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join posthistory as posthistory_1
    on (votes_1.id = posthistory_1.id )
where votes_1.votetypeid = posthistory_1.id
group by posthistory_1.contentlicense, posthistory_1.id, posthistory_1.posthistorytypeid, votes_1.id, votes_1.votetypeid
limit 14;
select  
  comments_1.creationdate, 
  comments_1.creationdate, 
  votes_3.creationdate, 
  votes_1.creationdate, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
      inner join postlinks as postlinks_1
            inner join users as users_1
            on (postlinks_1.id = users_1.id )
          inner join comments as comments_1
          on (users_1.id = comments_1.id )
        inner join votes as votes_2
        on (postlinks_1.id = votes_2.id )
      on (votes_1.id = votes_2.id )
    inner join votes as votes_3
    on (users_1.id = votes_3.id )
where votes_1.creationdate is not NULL
limit 11;
select  
  posts_1.parentid, 
  posts_1.acceptedanswerid, 
  posts_1.ownerdisplayname, 
  posts_1.title, 
  posts_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.ownerdisplayname is not NULL
limit 24;
select  
  badges_1.class, 
  max(
    badges_1.date), 
  users_1.creationdate, 
  users_1.websiteurl, 
  users_1.location, 
  max(
    users_1.creationdate), 
  posts_1.title, 
  badges_1.class, 
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join users as users_1
      inner join badges as badges_2
        inner join posts as posts_1
        on (badges_2.id = posts_1.id )
      on (users_1.id = badges_2.id )
    on (badges_1.id = users_1.id )
where badges_2.tagbased is not NULL
group by badges_1.class, badges_1.userid, posts_1.title, users_1.creationdate, users_1.location, users_1.websiteurl
limit 18;
select  
  posthistory_1.id, 
  posthistory_1.userdisplayname, 
  posthistory_1.comment, 
  posthistory_1.contentlicense, 
  posthistory_1.userdisplayname, 
  posthistory_1.userid, 
  posthistory_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.userid is not NULL
limit 27;
select  
  users_1.displayname, 
  badges_1.date, 
  badges_1.date, 
  users_1.websiteurl, 
  min(
    badges_1.date), 
  max(
    users_1.creationdate), 
  badges_1.userid, 
  badges_1.tagbased, 
  users_1.displayname, 
  badges_1.date, 
  badges_1.userid, 
  avg(
    users_1.accountid), 
  users_1.websiteurl, 
  badges_1.tagbased, 
  users_1.creationdate, 
  users_1.websiteurl, 
  users_1.aboutme
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join badges as badges_1
    on (users_1.id = badges_1.id )
where users_1.id is not NULL
group by badges_1.date, badges_1.tagbased, badges_1.userid, users_1.aboutme, users_1.creationdate, users_1.displayname, users_1.websiteurl
limit 2;
select  
  votes_1.id, 
  votes_1.votetypeid, 
  votes_1.creationdate, 
  votes_1.userid, 
  votes_1.creationdate, 
  count(*), 
  votes_1.votetypeid, 
  votes_1.userid, 
  votes_1.id, 
  votes_1.votetypeid, 
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate < votes_1.creationdate
group by votes_1.creationdate, votes_1.id, votes_1.userid, votes_1.votetypeid
limit 24;
select  
  posts_1.parentid, 
  posts_1.body, 
  posts_1.tags, 
  posts_1.title, 
  posts_1.tags, 
  posts_1.body, 
  min(
    posts_1.id), 
  posts_1.acceptedanswerid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.creationdate <= posts_1.creationdate
group by posts_1.acceptedanswerid, posts_1.body, posts_1.parentid, posts_1.tags, posts_1.title
limit 29;
select  
  users_1.aboutme, 
  users_1.aboutme, 
  users_1.websiteurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.aboutme is not NULL
limit 17;
select  
  users_1.aboutme, 
  users_1.location
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join postlinks as postlinks_1
      inner join users as users_1
      on (postlinks_1.id = users_1.id )
    on (votes_1.id = postlinks_1.id )
where votes_1.postid is not NULL
limit 1;
select  
  posthistory_1.comment
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.postid is not NULL
limit 17;
select  
  min(
    posts_1.id), 
  badges_1.userid, 
  badges_1.tagbased, 
  badges_1.id, 
  users_1.creationdate, 
  posthistory_1.userdisplayname, 
  users_1.websiteurl, 
  posthistory_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join users as users_1
      inner join posts as posts_1
        inner join posthistory as posthistory_1
        on (posts_1.id = posthistory_1.id )
      on (users_1.id = posthistory_1.id )
    on (badges_1.id = users_1.id )
where badges_1.date < posts_1.creationdate
group by badges_1.id, badges_1.tagbased, badges_1.userid, posthistory_1.userdisplayname, users_1.creationdate, users_1.websiteurl
limit 36;
select  
  votes_1.postid, 
  votes_1.id, 
  sum(
    votes_1.userid), 
  votes_1.postid, 
  votes_1.postid, 
  count(
    votes_1.userid), 
  votes_1.id, 
  votes_1.id, 
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate is not NULL
group by votes_1.id, votes_1.postid, votes_1.userid
limit 7;
select  
  posthistory_1.revisionguid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join comments as comments_1
    on (posthistory_1.id = comments_1.id )
where comments_1.userdisplayname is not NULL
limit 17;
select  
  min(
    postlinks_1.creationdate), 
  postlinks_1.creationdate, 
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  postlinks_1.postid, 
  postlinks_1.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 31;
select  
  comments_1.contentlicense, 
  comments_1.creationdate, 
  max(
    comments_1.id), 
  comments_1.postid, 
  comments_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.creationdate >= comments_1.creationdate
group by comments_1.contentlicense, comments_1.creationdate, comments_1.postid, comments_1.text
limit 10;
select  
  votes_1.creationdate, 
  votes_1.id, 
  votes_1.votetypeid, 
  votes_1.id, 
  max(
    votes_1.creationdate), 
  votes_1.postid, 
  votes_1.userid, 
  votes_1.votetypeid, 
  votes_1.userid, 
  votes_1.votetypeid, 
  votes_1.postid, 
  votes_1.userid, 
  count(
    votes_1.votetypeid), 
  count(
    votes_1.postid), 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.id is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 21;
select  
  postlinks_1.linktypeid, 
  votes_1.userid, 
  postlinks_1.linktypeid, 
  votes_1.userid, 
  postlinks_1.postid, 
  votes_1.postid, 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join votes as votes_1
    on (postlinks_1.id = votes_1.id )
where postlinks_1.id is not NULL
limit 36;
select  
  posthistory_1.postid, 
  posthistory_1.userid, 
  posthistory_1.userdisplayname, 
  posthistory_1.contentlicense, 
  posthistory_1.id, 
  posthistory_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.revisionguid is not NULL
limit 6;
select  
  votes_1.id, 
  votes_1.votetypeid, 
  votes_1.votetypeid, 
  sum(
    votes_1.postid), 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.id is not NULL
group by votes_1.id, votes_1.postid, votes_1.votetypeid
limit 42;
select  
  max(
    votes_1.creationdate), 
  votes_1.postid, 
  votes_1.postid, 
  comments_1.creationdate, 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join votes as votes_1
    on (comments_1.id = votes_1.id )
where comments_1.id is not NULL
group by comments_1.creationdate, votes_1.id, votes_1.postid
limit 4;
select  
  posts_2.title, 
  posts_1.body, 
  posts_2.owneruserid, 
  posts_2.owneruserid, 
  posts_2.acceptedanswerid, 
  posts_1.body, 
  posts_1.body, 
  posts_1.owneruserid, 
  posts_1.parentid, 
  sum(
    posts_1.owneruserid), 
  posts_1.ownerdisplayname, 
  posts_2.creationdate, 
  posts_1.acceptedanswerid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join posts as posts_2
    on (posts_1.id = posts_2.id )
where posts_1.creationdate <= posts_2.creationdate
group by posts_1.acceptedanswerid, posts_1.body, posts_1.ownerdisplayname, posts_1.owneruserid, posts_1.parentid, posts_2.acceptedanswerid, posts_2.creationdate, posts_2.owneruserid, posts_2.title
limit 33;
select  
  comments_1.creationdate, 
  avg(
    comments_2.postid), 
  comments_2.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join comments as comments_2
    on (comments_1.id = comments_2.id )
where comments_1.contentlicense <= comments_1.userdisplayname
group by comments_1.creationdate, comments_2.postid
limit 7;
select  
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
      inner join votes as votes_1
      on (comments_1.id = votes_1.id )
    inner join posthistory as posthistory_1
    on (comments_1.id = posthistory_1.id )
where posthistory_1.contentlicense is not NULL
limit 23;
select  
  comments_1.userdisplayname, 
  sum(
    badges_1.class), 
  comments_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join badges as badges_1
      inner join posts as posts_1
      on (badges_1.id = posts_1.id )
    on (comments_1.id = badges_1.id )
where comments_1.id is not NULL
group by comments_1.text, comments_1.userdisplayname
limit 3;
select  
  badges_1.tagbased
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join badges as badges_2
    on (badges_1.id = badges_2.id )
where badges_1.name is not NULL
limit 11;
select  
  votes_1.id, 
  votes_1.id, 
  votes_1.id, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate is not NULL
limit 40;
select  
  users_1.id, 
  users_1.id, 
  users_1.aboutme
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join badges as badges_1
    on (users_1.id = badges_1.id )
where badges_1.tagbased < badges_1.tagbased
limit 9;
select  
  badges_1.date, 
  badges_2.tagbased, 
  min(
    comments_1.creationdate), 
  comments_1.postid, 
  badges_2.name, 
  comments_1.userdisplayname, 
  badges_1.tagbased
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join comments as comments_1
      inner join badges as badges_1
        inner join badges as badges_2
        on (badges_1.id = badges_2.id )
      on (comments_1.id = badges_2.id )
    on (posts_1.id = badges_2.id )
where comments_1.postid is not NULL
group by badges_1.date, badges_1.tagbased, badges_2.name, badges_2.tagbased, comments_1.postid, comments_1.userdisplayname
limit 23;
select  
  min(
    badges_1.class), 
  badges_1.userid, 
  badges_1.class, 
  badges_1.date, 
  badges_1.userid, 
  badges_1.userid, 
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.id is not NULL
group by badges_1.class, badges_1.date, badges_1.userid
limit 38;
select  
  postlinks_1.creationdate, 
  count(
    postlinks_1.id), 
  count(*), 
  postlinks_1.postid, 
  postlinks_1.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
group by postlinks_1.creationdate, postlinks_1.postid, postlinks_1.relatedpostid
limit 29;
select  
  postlinks_1.creationdate, 
  votes_2.postid, 
  max(
    posthistory_1.creationdate), 
  comments_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
          inner join postlinks as postlinks_1
          on (comments_1.id = postlinks_1.id )
        inner join posthistory as posthistory_1
        on (postlinks_1.id = posthistory_1.id )
      inner join postlinks as postlinks_2
        inner join posts as posts_1
        on (postlinks_2.id = posts_1.id )
      on (comments_1.id = posts_1.id )
    inner join badges as badges_1
      inner join votes as votes_1
        inner join comments as comments_2
          inner join votes as votes_2
          on (comments_2.id = votes_2.id )
        on (votes_1.id = comments_2.id )
      on (badges_1.id = votes_1.id )
    on (posts_1.id = comments_2.id )
where votes_1.votetypeid is not NULL
group by comments_1.userid, postlinks_1.creationdate, votes_2.postid
limit 7;
select  
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate < votes_1.creationdate
limit 19;
select  
  postlinks_1.id, 
  posthistory_1.text, 
  max(
    posthistory_1.userid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join postlinks as postlinks_1
    on (posthistory_1.id = postlinks_1.id )
where posthistory_1.contentlicense is not NULL
group by posthistory_1.text, postlinks_1.id
limit 32;
select  
  max(
    posthistory_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.id is not NULL
limit 21;
select  
  postlinks_1.postid, 
  min(
    postlinks_1.creationdate), 
  postlinks_1.linktypeid, 
  postlinks_1.linktypeid, 
  postlinks_1.id, 
  avg(
    postlinks_1.relatedpostid), 
  postlinks_1.linktypeid, 
  postlinks_1.id, 
  postlinks_1.id, 
  postlinks_1.relatedpostid, 
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid, 
  postlinks_1.postid, 
  postlinks_1.creationdate, 
  postlinks_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 39;
select  
  votes_1.userid, 
  votes_1.postid, 
  votes_1.userid, 
  votes_1.postid, 
  votes_1.id, 
  votes_1.creationdate, 
  votes_1.postid, 
  sum(
    votes_1.id), 
  count(
    votes_1.creationdate), 
  votes_1.userid, 
  votes_1.postid, 
  max(
    votes_1.creationdate), 
  votes_1.votetypeid, 
  votes_1.creationdate, 
  votes_1.userid, 
  count(
    votes_1.votetypeid), 
  avg(
    votes_1.userid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate <= votes_1.creationdate
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 29;
select  
  users_2.websiteurl, 
  votes_1.id, 
  max(
    postlinks_1.id), 
  max(
    votes_1.creationdate), 
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
        inner join postlinks as postlinks_1
        on (users_1.id = postlinks_1.id )
      inner join votes as votes_1
      on (postlinks_1.id = votes_1.id )
    inner join comments as comments_1
      inner join users as users_2
      on (comments_1.id = users_2.id )
    on (postlinks_1.id = users_2.id )
where postlinks_1.linktypeid is not NULL
group by users_2.websiteurl, votes_1.id, votes_1.votetypeid
limit 34;
select  
  max(
    posthistory_1.id), 
  posthistory_2.posthistorytypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join comments as comments_1
        inner join posthistory as posthistory_1
        on (comments_1.id = posthistory_1.id )
      inner join comments as comments_2
        inner join posthistory as posthistory_2
        on (comments_2.id = posthistory_2.id )
      on (comments_1.id = posthistory_2.id )
    on (users_1.id = comments_2.id )
where comments_1.creationdate is not NULL
group by posthistory_2.posthistorytypeid
limit 42;
select  
  posts_1.body, 
  votes_1.userid, 
  posts_1.title, 
  votes_1.id, 
  min(
    votes_1.userid), 
  avg(
    votes_1.postid), 
  posts_1.parentid, 
  count(*), 
  posts_1.creationdate, 
  votes_1.postid, 
  votes_1.id, 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join posts as posts_1
    on (votes_1.id = posts_1.id )
where posts_1.creationdate is not NULL
group by posts_1.body, posts_1.creationdate, posts_1.parentid, posts_1.title, votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid
limit 7;
select  
  users_1.aboutme, 
  votes_1.id, 
  users_2.id, 
  votes_1.creationdate, 
  users_1.location, 
  users_2.location, 
  users_1.creationdate, 
  count(
    users_2.location), 
  users_2.profileimageurl, 
  votes_1.userid, 
  users_2.displayname, 
  min(
    users_1.creationdate), 
  votes_1.votetypeid, 
  max(
    users_1.creationdate), 
  users_1.accountid, 
  users_1.id, 
  users_1.profileimageurl, 
  users_2.creationdate, 
  users_1.accountid, 
  max(
    users_2.accountid), 
  users_1.displayname, 
  min(
    users_1.creationdate), 
  users_1.aboutme
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join users as users_2
      inner join votes as votes_1
      on (users_2.id = votes_1.id )
    on (users_1.id = votes_1.id )
where users_1.creationdate is not NULL
group by users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.displayname, users_1.id, users_1.location, users_1.profileimageurl, users_2.creationdate, users_2.displayname, users_2.id, users_2.location, users_2.profileimageurl, votes_1.creationdate, votes_1.id, votes_1.userid, votes_1.votetypeid
limit 26;
select  
  postlinks_1.postid, 
  postlinks_1.postid, 
  postlinks_1.relatedpostid, 
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid, 
  postlinks_1.relatedpostid, 
  postlinks_1.creationdate, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.id, 
  postlinks_1.creationdate, 
  postlinks_1.postid, 
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.postid, postlinks_1.relatedpostid
limit 33;
select  
  max(
    users_1.creationdate), 
  users_1.location, 
  users_1.creationdate, 
  users_1.location, 
  users_1.accountid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.location is not NULL
group by users_1.accountid, users_1.creationdate, users_1.location
limit 11;
select  
  min(
    postlinks_1.creationdate), 
  postlinks_1.postid, 
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  postlinks_1.id, 
  postlinks_1.creationdate, 
  postlinks_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid
limit 11;
select  
  badges_1.id, 
  posts_1.acceptedanswerid, 
  badges_1.date, 
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join badges as badges_1
    on (posts_1.id = badges_1.id )
where badges_1.userid is not NULL
limit 42;
select  
  votes_1.votetypeid, 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.userid is not NULL
limit 31;
select  
  badges_2.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join badges as badges_1
      inner join posthistory as posthistory_1
        inner join badges as badges_2
        on (posthistory_1.id = badges_2.id )
      on (badges_1.id = posthistory_1.id )
    on (postlinks_1.id = posthistory_1.id )
where postlinks_1.linktypeid >= posthistory_1.id
limit 6;
select  
  posthistory_1.userid, 
  votes_1.userid, 
  min(
    posthistory_1.creationdate), 
  votes_1.postid, 
  posthistory_1.userdisplayname, 
  votes_1.postid, 
  votes_1.votetypeid, 
  posthistory_1.comment
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join posthistory as posthistory_1
    on (votes_1.id = posthistory_1.id )
where votes_1.creationdate = posthistory_1.creationdate
group by posthistory_1.comment, posthistory_1.userdisplayname, posthistory_1.userid, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 16;
select  
  min(
    postlinks_1.creationdate), 
  postlinks_1.postid, 
  postlinks_1.id, 
  postlinks_1.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.id is not NULL
group by postlinks_1.id, postlinks_1.postid, postlinks_1.relatedpostid
limit 16;
select  
  posthistory_1.posthistorytypeid, 
  posthistory_1.postid, 
  posthistory_1.postid, 
  posthistory_1.postid, 
  posthistory_1.userid, 
  posthistory_1.id, 
  posthistory_1.revisionguid, 
  posthistory_1.comment, 
  posthistory_1.postid, 
  posthistory_1.contentlicense, 
  posthistory_1.userid, 
  sum(
    posthistory_1.posthistorytypeid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.revisionguid = posthistory_1.userdisplayname
group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.userid
limit 37;
select  
  comments_1.userid, 
  comments_1.contentlicense, 
  comments_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.creationdate < comments_1.creationdate
limit 11;
select  
  posts_2.acceptedanswerid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
      inner join posts as posts_1
      on (votes_1.id = posts_1.id )
    inner join badges as badges_1
      inner join posts as posts_2
      on (badges_1.id = posts_2.id )
    on (votes_1.id = posts_2.id )
where badges_1.id is not NULL
limit 6;
select  
  posts_1.title, 
  max(
    posts_1.creationdate), 
  posts_1.title, 
  posthistory_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join posts as posts_1
      inner join badges as badges_1
      on (posts_1.id = badges_1.id )
    on (posthistory_1.id = badges_1.id )
where posthistory_1.text is not NULL
group by posthistory_1.creationdate, posts_1.title
limit 10;
select  
  max(
    posts_1.id), 
  posts_1.body, 
  posts_1.ownerdisplayname, 
  posts_1.contentlicense, 
  posts_1.contentlicense, 
  posts_1.owneruserid, 
  posts_1.body, 
  posts_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.creationdate >= posts_1.creationdate
group by posts_1.body, posts_1.contentlicense, posts_1.id, posts_1.ownerdisplayname, posts_1.owneruserid
limit 26;
select  
  posts_1.posttypeid, 
  posts_1.title, 
  posts_1.contentlicense, 
  posts_1.parentid, 
  posts_1.title, 
  posts_1.ownerdisplayname, 
  posts_1.parentid, 
  posts_1.id, 
  posts_1.tags, 
  posts_1.creationdate, 
  posts_1.title
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.ownerdisplayname is not NULL
limit 35;
select  
  posts_1.tags, 
  posts_1.contentlicense, 
  posts_1.body, 
  posts_1.tags
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.tags is not NULL
limit 34;
select  
  postlinks_1.id, 
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid, 
  min(
    postlinks_1.relatedpostid), 
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  postlinks_1.creationdate, 
  postlinks_1.creationdate, 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.id = postlinks_1.relatedpostid
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 4;
select  
  max(
    users_1.creationdate), 
  users_1.aboutme, 
  users_1.displayname, 
  users_1.displayname, 
  sum(
    users_1.accountid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.location is not NULL
group by users_1.aboutme, users_1.displayname
limit 23;
select  
  max(
    posts_1.acceptedanswerid), 
  users_1.websiteurl, 
  posts_1.title, 
  postlinks_1.postid, 
  users_1.websiteurl, 
  votes_1.creationdate, 
  votes_1.postid, 
  posts_1.title
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join votes as votes_1
      inner join posts as posts_1
        inner join postlinks as postlinks_1
        on (posts_1.id = postlinks_1.id )
      on (votes_1.id = postlinks_1.id )
    on (users_1.id = postlinks_1.id )
where votes_1.creationdate is not NULL
group by postlinks_1.postid, posts_1.title, users_1.websiteurl, votes_1.creationdate, votes_1.postid
limit 34;
select  
  posthistory_1.id, 
  avg(
    posthistory_1.id), 
  posthistory_1.postid, 
  posthistory_1.userdisplayname, 
  posthistory_1.userdisplayname, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.creationdate, 
  posthistory_1.comment, 
  posthistory_1.comment, 
  posthistory_1.userid, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.userdisplayname, 
  posthistory_1.userdisplayname, 
  max(
    posthistory_1.creationdate), 
  avg(
    posthistory_1.userid), 
  posthistory_1.creationdate, 
  min(
    posthistory_1.creationdate), 
  min(
    posthistory_1.creationdate), 
  posthistory_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.id > posthistory_1.userid
group by posthistory_1.comment, posthistory_1.creationdate, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.userdisplayname, posthistory_1.userid
limit 34;
select  
  users_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.location is not NULL
limit 7;
select  
  avg(
    users_1.id), 
  users_1.aboutme, 
  users_1.id, 
  users_1.creationdate, 
  users_1.profileimageurl, 
  users_1.creationdate, 
  users_1.creationdate, 
  sum(
    users_1.accountid), 
  users_1.creationdate, 
  users_1.aboutme
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.websiteurl = users_1.displayname
group by users_1.aboutme, users_1.creationdate, users_1.id, users_1.profileimageurl
limit 7;
select  
  max(
    badges_1.date), 
  sum(
    badges_1.id), 
  badges_1.tagbased
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.name > badges_1.name
group by badges_1.tagbased
limit 26;
select  
  comments_1.userid, 
  users_1.accountid, 
  posts_1.owneruserid, 
  comments_1.text, 
  users_1.id, 
  posts_1.posttypeid, 
  postlinks_1.creationdate, 
  postlinks_1.linktypeid, 
  users_1.websiteurl, 
  comments_1.text, 
  avg(
    users_1.id), 
  posts_1.acceptedanswerid, 
  users_1.websiteurl, 
  min(
    posts_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
      inner join comments as comments_1
      on (postlinks_1.id = comments_1.id )
    inner join posts as posts_1
      inner join users as users_1
      on (posts_1.id = users_1.id )
    on (comments_1.id = users_1.id )
where users_1.displayname is not NULL
group by comments_1.text, comments_1.userid, postlinks_1.creationdate, postlinks_1.linktypeid, posts_1.acceptedanswerid, posts_1.owneruserid, posts_1.posttypeid, users_1.accountid, users_1.id, users_1.websiteurl
limit 16;
select  
  max(
    votes_1.creationdate), 
  votes_1.votetypeid, 
  votes_1.creationdate, 
  votes_1.id, 
  min(
    votes_1.creationdate), 
  votes_1.id, 
  votes_1.creationdate, 
  votes_1.userid, 
  min(
    votes_1.creationdate), 
  max(
    votes_1.creationdate), 
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.userid >= votes_1.id
group by votes_1.creationdate, votes_1.id, votes_1.userid, votes_1.votetypeid
limit 8;
select  
  votes_1.votetypeid, 
  max(
    votes_1.votetypeid), 
  votes_1.creationdate, 
  votes_1.id, 
  votes_1.userid, 
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.id is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.userid, votes_1.votetypeid
limit 36;
select  
  users_1.location, 
  users_1.id, 
  users_1.creationdate, 
  users_1.websiteurl, 
  min(
    users_1.creationdate), 
  users_1.id, 
  users_1.displayname, 
  users_1.profileimageurl, 
  max(
    users_1.profileimageurl), 
  users_1.creationdate, 
  users_1.aboutme, 
  users_1.creationdate, 
  avg(
    users_1.profileimageurl), 
  users_1.id, 
  count(*), 
  users_1.id, 
  users_1.displayname, 
  min(
    users_1.creationdate), 
  users_1.accountid, 
  min(
    users_1.creationdate), 
  users_1.profileimageurl, 
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.id is not NULL
group by users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.displayname, users_1.id, users_1.location, users_1.profileimageurl, users_1.websiteurl
limit 39;
select  
  badges_1.tagbased, 
  badges_1.userid, 
  min(
    badges_1.date), 
  badges_1.date, 
  min(
    badges_1.date), 
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased is not NULL
group by badges_1.date, badges_1.tagbased, badges_1.userid
limit 21;
select  
  users_1.aboutme, 
  users_1.displayname, 
  max(
    users_1.profileimageurl), 
  users_1.displayname, 
  users_1.profileimageurl, 
  users_1.profileimageurl, 
  users_1.location, 
  users_1.aboutme, 
  users_1.profileimageurl, 
  users_1.creationdate, 
  users_1.id, 
  users_1.aboutme, 
  users_1.displayname, 
  users_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.location is not NULL
group by users_1.aboutme, users_1.creationdate, users_1.displayname, users_1.id, users_1.location, users_1.profileimageurl
limit 23;
select  
  users_1.location, 
  count(*), 
  users_1.creationdate, 
  users_1.creationdate, 
  users_1.profileimageurl, 
  users_1.aboutme, 
  users_1.displayname, 
  users_1.websiteurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.location is not NULL
group by users_1.aboutme, users_1.creationdate, users_1.displayname, users_1.location, users_1.profileimageurl, users_1.websiteurl
limit 25;
select  
  comments_1.text, 
  comments_1.text, 
  comments_1.postid, 
  comments_1.contentlicense, 
  comments_1.contentlicense, 
  comments_1.text, 
  comments_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.postid is not NULL
limit 23;
select  
  postlinks_1.id, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.postid, 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
group by postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid
limit 5;
select  
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid, 
  postlinks_1.id, 
  postlinks_1.creationdate, 
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid, 
  postlinks_1.postid, 
  postlinks_1.creationdate, 
  max(
    postlinks_1.relatedpostid), 
  postlinks_1.id, 
  postlinks_1.id, 
  postlinks_1.id, 
  postlinks_1.creationdate, 
  min(
    postlinks_1.creationdate), 
  postlinks_1.creationdate, 
  postlinks_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid = postlinks_1.linktypeid
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 9;
select  
  users_1.aboutme, 
  posts_1.creationdate, 
  posthistory_1.posthistorytypeid, 
  count(
    posts_1.owneruserid), 
  users_1.location, 
  posts_1.parentid, 
  users_1.creationdate, 
  posthistory_1.postid, 
  comments_1.id, 
  count(
    comments_1.id)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join posts as posts_1
      inner join posthistory as posthistory_1
        inner join users as users_1
        on (posthistory_1.id = users_1.id )
      on (posts_1.id = posthistory_1.id )
    on (comments_1.id = posthistory_1.id )
where posthistory_1.revisionguid is not NULL
group by comments_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posts_1.creationdate, posts_1.parentid, users_1.aboutme, users_1.creationdate, users_1.location
limit 17;
select  
  posts_1.ownerdisplayname, 
  posts_1.contentlicense, 
  posts_1.parentid, 
  min(
    posts_1.owneruserid), 
  posts_1.title, 
  posts_1.parentid, 
  count(*), 
  posts_1.body, 
  posts_1.parentid, 
  posts_1.id, 
  posts_1.tags, 
  posts_1.creationdate, 
  posts_1.body, 
  posts_1.posttypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.creationdate <= posts_1.creationdate
group by posts_1.body, posts_1.contentlicense, posts_1.creationdate, posts_1.id, posts_1.ownerdisplayname, posts_1.parentid, posts_1.posttypeid, posts_1.tags, posts_1.title
limit 30;
select  
  badges_1.id, 
  min(
    badges_1.date), 
  badges_1.id, 
  min(
    badges_1.date), 
  badges_1.class, 
  min(
    badges_1.class), 
  badges_1.class, 
  min(
    badges_1.date), 
  badges_1.date, 
  badges_1.id, 
  badges_1.tagbased, 
  badges_1.date, 
  max(
    badges_1.date), 
  badges_1.date, 
  badges_1.name, 
  badges_1.userid, 
  badges_1.tagbased, 
  badges_1.class, 
  badges_1.class, 
  sum(
    badges_1.userid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.id is not NULL
group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
limit 8;
select  
  posts_1.body, 
  posts_1.contentlicense, 
  posts_1.id, 
  posts_1.posttypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.ownerdisplayname is not NULL
limit 4;
select  
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.name is not NULL
limit 9;
select  
  posthistory_1.comment, 
  posthistory_1.userid, 
  posthistory_1.userid, 
  posthistory_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.revisionguid is not NULL
limit 29;
select  
  max(
    badges_1.userid), 
  badges_1.date, 
  min(
    badges_1.userid), 
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.date is not NULL
group by badges_1.date, badges_1.userid
limit 24;
select  
  avg(
    votes_1.postid), 
  votes_1.votetypeid, 
  votes_1.creationdate, 
  votes_1.userid, 
  votes_1.postid, 
  votes_1.creationdate, 
  votes_1.id, 
  min(
    votes_1.creationdate), 
  votes_1.postid, 
  min(
    votes_1.id), 
  votes_1.creationdate, 
  votes_1.votetypeid, 
  votes_1.id, 
  votes_1.postid, 
  votes_1.userid, 
  votes_1.votetypeid, 
  min(
    votes_1.creationdate), 
  votes_1.creationdate, 
  votes_1.id, 
  votes_1.postid, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.votetypeid is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 5;
select  
  comments_1.postid, 
  comments_1.postid, 
  comments_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.postid > comments_1.userid
limit 23;
select  
  posthistory_1.id, 
  posthistory_1.postid, 
  posthistory_1.userdisplayname, 
  posthistory_1.userdisplayname, 
  posthistory_1.revisionguid, 
  min(
    posthistory_1.creationdate), 
  posthistory_1.comment, 
  posthistory_1.comment, 
  posthistory_1.contentlicense, 
  posthistory_1.postid, 
  posthistory_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.contentlicense is not NULL
group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.id, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.userdisplayname
limit 14;
select  
  users_2.id, 
  users_1.creationdate, 
  users_2.id, 
  users_1.id, 
  users_1.accountid, 
  users_2.id, 
  users_2.accountid, 
  users_1.websiteurl, 
  users_1.id, 
  users_2.displayname, 
  users_1.profileimageurl, 
  users_2.aboutme, 
  users_1.profileimageurl, 
  min(
    users_1.accountid), 
  users_2.websiteurl, 
  users_1.displayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join users as users_2
    on (users_1.id = users_2.id )
where users_1.location is not NULL
group by users_1.accountid, users_1.creationdate, users_1.displayname, users_1.id, users_1.profileimageurl, users_1.websiteurl, users_2.aboutme, users_2.accountid, users_2.displayname, users_2.id, users_2.websiteurl
limit 30;
select  
  votes_1.votetypeid, 
  votes_2.id, 
  postlinks_1.relatedpostid, 
  postlinks_1.relatedpostid, 
  avg(
    votes_2.votetypeid), 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join postlinks as postlinks_1
      inner join votes as votes_2
      on (postlinks_1.id = votes_2.id )
    on (votes_1.id = postlinks_1.id )
where votes_2.creationdate = votes_1.creationdate
group by postlinks_1.postid, postlinks_1.relatedpostid, votes_1.votetypeid, votes_2.id
limit 21;
select  
  comments_1.contentlicense, 
  comments_1.contentlicense, 
  comments_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.id is not NULL
limit 39;
select  
  users_1.accountid, 
  users_1.creationdate, 
  users_1.profileimageurl, 
  users_1.aboutme, 
  users_1.profileimageurl, 
  users_1.websiteurl, 
  users_1.profileimageurl, 
  users_1.location, 
  users_1.aboutme
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.creationdate = users_1.creationdate
limit 2;
select  
  comments_1.contentlicense, 
  comments_1.postid, 
  comments_1.id, 
  count(*), 
  posthistory_1.text, 
  posthistory_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join comments as comments_1
    on (posthistory_1.id = comments_1.id )
where comments_1.postid is not NULL
group by comments_1.contentlicense, comments_1.id, comments_1.postid, posthistory_1.contentlicense, posthistory_1.text
limit 7;
select  
  badges_1.tagbased, 
  badges_1.date, 
  badges_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased is not NULL
limit 30;
select  
  comments_1.userdisplayname, 
  posts_1.parentid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
      inner join posts as posts_1
      on (comments_1.id = posts_1.id )
    inner join posts as posts_2
        inner join votes as votes_1
        on (posts_2.id = votes_1.id )
      inner join badges as badges_1
      on (posts_2.id = badges_1.id )
    on (comments_1.id = posts_2.id )
where posts_1.creationdate is not NULL
limit 20;
select  
  postlinks_1.id, 
  max(
    postlinks_1.postid), 
  min(
    postlinks_1.creationdate), 
  postlinks_1.creationdate, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join comments as comments_1
    on (postlinks_1.id = comments_1.id )
where postlinks_1.relatedpostid is not NULL
group by postlinks_1.creationdate, postlinks_1.id
limit 7;
select  
  posthistory_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join posthistory as posthistory_1
    on (posts_1.id = posthistory_1.id )
where posts_1.parentid is not NULL
limit 17;
select  
  badges_1.class, 
  badges_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join badges as badges_1
    on (posts_1.id = badges_1.id )
where badges_1.userid is not NULL
limit 36;
select  
  votes_1.creationdate, 
  votes_1.postid, 
  votes_1.postid, 
  votes_1.postid, 
  votes_1.votetypeid, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.id is not NULL
limit 24;
select  
  posts_1.tags, 
  max(
    posts_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join votes as votes_1
    on (posts_1.id = votes_1.id )
where posts_1.acceptedanswerid is not NULL
group by posts_1.tags
limit 11;
select  
  max(
    badges_1.date), 
  postlinks_2.creationdate, 
  postlinks_1.id, 
  postlinks_2.creationdate, 
  users_1.id, 
  users_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join badges as badges_1
      inner join postlinks as postlinks_1
          inner join postlinks as postlinks_2
          on (postlinks_1.id = postlinks_2.id )
        inner join users as users_1
        on (postlinks_1.id = users_1.id )
      on (badges_1.id = users_1.id )
    on (posts_1.id = badges_1.id )
where postlinks_2.creationdate <= badges_1.date
group by postlinks_1.id, postlinks_2.creationdate, users_1.id
limit 7;
select  
  posts_1.ownerdisplayname, 
  max(
    comments_1.id), 
  posts_1.contentlicense, 
  posts_1.parentid, 
  posts_1.body, 
  comments_1.postid, 
  posts_1.id, 
  comments_1.userdisplayname, 
  posts_1.posttypeid, 
  posts_1.acceptedanswerid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join posts as posts_1
    on (comments_1.id = posts_1.id )
where posts_1.creationdate is not NULL
group by comments_1.postid, comments_1.userdisplayname, posts_1.acceptedanswerid, posts_1.body, posts_1.contentlicense, posts_1.id, posts_1.ownerdisplayname, posts_1.parentid, posts_1.posttypeid
limit 9;
select  
  badges_1.tagbased, 
  badges_1.name, 
  badges_1.name, 
  badges_1.id, 
  badges_1.class, 
  badges_1.tagbased, 
  badges_1.date, 
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.date = badges_1.date
limit 34;
select  
  postlinks_1.relatedpostid, 
  min(
    postlinks_1.relatedpostid), 
  postlinks_1.creationdate, 
  postlinks_1.id, 
  postlinks_1.id, 
  postlinks_1.id, 
  postlinks_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.relatedpostid
limit 31;
select  
  count(*), 
  votes_1.userid, 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
      inner join postlinks as postlinks_1
      on (votes_1.id = postlinks_1.id )
    inner join votes as votes_2
    on (votes_1.id = votes_2.id )
where votes_1.creationdate is not NULL
group by votes_1.id, votes_1.userid
limit 16;
select  
  posthistory_1.comment, 
  posthistory_1.contentlicense, 
  min(
    posthistory_1.creationdate), 
  posthistory_1.id, 
  posthistory_1.contentlicense, 
  posthistory_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.contentlicense is not NULL
group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.id
limit 23;
select  
  posthistory_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.id is not NULL
limit 31;
select  
  votes_1.votetypeid, 
  votes_1.id, 
  votes_1.id, 
  max(
    votes_1.userid), 
  sum(
    votes_1.votetypeid), 
  count(
    votes_1.id), 
  votes_1.userid, 
  votes_1.postid, 
  votes_1.userid, 
  votes_1.postid, 
  votes_1.userid, 
  min(
    votes_1.creationdate), 
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.userid = votes_1.votetypeid
group by votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 11;
select  
  postlinks_1.linktypeid, 
  max(
    postlinks_1.creationdate), 
  posthistory_1.creationdate, 
  posthistory_1.postid, 
  posthistory_1.creationdate, 
  posthistory_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join posthistory as posthistory_1
    on (postlinks_1.id = posthistory_1.id )
where postlinks_1.relatedpostid is not NULL
group by posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.postid, postlinks_1.linktypeid
limit 6;
select  
  votes_1.postid, 
  votes_1.creationdate, 
  votes_1.votetypeid, 
  count(*), 
  votes_1.id, 
  votes_1.votetypeid, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.votetypeid <= votes_1.postid
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.votetypeid
limit 8;
select  
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate is not NULL
limit 14;
select  
  users_1.displayname, 
  users_1.profileimageurl, 
  users_1.accountid, 
  users_1.accountid, 
  users_1.displayname, 
  users_1.location, 
  users_1.profileimageurl, 
  max(
    users_1.id), 
  users_1.aboutme, 
  users_1.location, 
  users_1.profileimageurl, 
  users_1.displayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.creationdate <= users_1.creationdate
group by users_1.aboutme, users_1.accountid, users_1.displayname, users_1.location, users_1.profileimageurl
limit 25;
select  
  users_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.displayname is not NULL
limit 21;
select  
  users_1.aboutme, 
  users_1.creationdate, 
  users_1.aboutme, 
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.profileimageurl is not NULL
limit 6;
select  
  users_1.displayname, 
  max(
    users_1.creationdate), 
  users_1.id, 
  users_1.creationdate, 
  users_1.aboutme, 
  users_1.aboutme, 
  users_1.profileimageurl, 
  users_1.profileimageurl, 
  users_1.creationdate, 
  min(
    users_1.creationdate), 
  users_1.aboutme, 
  max(
    users_1.creationdate), 
  avg(
    users_1.id), 
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.aboutme is not NULL
group by users_1.aboutme, users_1.creationdate, users_1.displayname, users_1.id, users_1.profileimageurl
limit 31;
select  
  comments_1.id, 
  comments_1.creationdate, 
  min(
    comments_1.creationdate), 
  sum(
    comments_1.id), 
  comments_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.id <= comments_1.userid
group by comments_1.creationdate, comments_1.id
limit 11;
select  
  votes_1.postid, 
  votes_1.creationdate, 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.postid <= votes_1.userid
limit 36;
select  
  votes_1.id, 
  posts_1.acceptedanswerid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
      inner join votes as votes_1
      on (posts_1.id = votes_1.id )
    inner join comments as comments_1
    on (votes_1.id = comments_1.id )
where votes_1.id is not NULL
limit 28;
select  
  badges_1.tagbased, 
  users_1.displayname, 
  badges_1.tagbased, 
  posts_1.body
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join comments as comments_1
          inner join users as users_1
          on (comments_1.id = users_1.id )
        inner join votes as votes_1
          inner join badges as badges_1
          on (votes_1.id = badges_1.id )
        on (users_1.id = votes_1.id )
      inner join posts as posts_1
      on (comments_1.id = posts_1.id )
    on (postlinks_1.id = votes_1.id )
where comments_1.id is not NULL
limit 28;
select  
  comments_1.contentlicense, 
  min(
    comments_1.creationdate), 
  min(
    posthistory_1.id), 
  votes_1.votetypeid, 
  votes_1.userid, 
  comments_1.creationdate, 
  max(
    votes_1.creationdate), 
  posthistory_1.creationdate, 
  posthistory_1.postid, 
  votes_1.creationdate, 
  comments_1.postid, 
  posthistory_1.userdisplayname, 
  votes_1.userid, 
  votes_1.postid, 
  comments_1.contentlicense, 
  comments_1.contentlicense, 
  comments_1.userid, 
  max(
    votes_1.creationdate), 
  comments_1.userid, 
  votes_1.votetypeid, 
  posthistory_1.revisionguid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join posthistory as posthistory_1
      inner join votes as votes_1
      on (posthistory_1.id = votes_1.id )
    on (comments_1.id = posthistory_1.id )
where posthistory_1.contentlicense >= comments_1.contentlicense
group by comments_1.contentlicense, comments_1.creationdate, comments_1.postid, comments_1.userid, posthistory_1.creationdate, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.userdisplayname, votes_1.creationdate, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 32;
select  
  postlinks_1.relatedpostid, 
  postlinks_1.postid, 
  postlinks_1.creationdate, 
  postlinks_1.postid, 
  postlinks_1.relatedpostid, 
  postlinks_1.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate >= postlinks_1.creationdate
limit 14;
select  
  count(
    votes_1.userid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.id is not NULL
limit 41;
select  
  votes_1.postid, 
  votes_1.id, 
  posthistory_1.id, 
  min(
    posthistory_1.creationdate), 
  posthistory_1.comment, 
  max(
    votes_1.userid), 
  posthistory_1.revisionguid, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join posthistory as posthistory_1
    on (votes_1.id = posthistory_1.id )
where votes_1.id is not NULL
group by posthistory_1.comment, posthistory_1.id, posthistory_1.revisionguid, votes_1.id, votes_1.postid
limit 26;
select  
  users_2.websiteurl, 
  max(
    comments_1.creationdate), 
  users_2.aboutme, 
  users_2.location
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join users as users_1
      inner join users as users_2
      on (users_1.id = users_2.id )
    on (comments_1.id = users_1.id )
where comments_1.userdisplayname is not NULL
group by users_2.aboutme, users_2.location, users_2.websiteurl
limit 19;
select  
  max(
    postlinks_1.id), 
  postlinks_1.creationdate, 
  postlinks_1.postid, 
  postlinks_1.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
group by postlinks_1.creationdate, postlinks_1.postid, postlinks_1.relatedpostid
limit 12;
select  
  votes_1.postid, 
  postlinks_1.linktypeid, 
  votes_1.id, 
  postlinks_1.id, 
  votes_1.creationdate, 
  postlinks_1.creationdate, 
  postlinks_1.postid, 
  postlinks_1.relatedpostid, 
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join votes as votes_1
    on (postlinks_1.id = votes_1.id )
where postlinks_1.relatedpostid is not NULL
limit 42;
select  
  posthistory_1.revisionguid, 
  min(
    posthistory_1.userid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.posthistorytypeid is not NULL
group by posthistory_1.revisionguid
limit 22;
select  
  votes_1.id, 
  votes_1.votetypeid, 
  votes_1.votetypeid, 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.userid >= votes_1.postid
limit 19;
select  
  votes_1.userid, 
  votes_1.votetypeid, 
  votes_1.votetypeid, 
  votes_1.creationdate, 
  votes_1.userid, 
  votes_1.votetypeid, 
  votes_1.id, 
  votes_1.postid, 
  votes_1.creationdate, 
  votes_1.userid, 
  votes_1.id, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.postid is not NULL
limit 33;
select  
  min(
    posts_1.creationdate), 
  votes_1.id, 
  votes_1.votetypeid, 
  posts_1.owneruserid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join posts as posts_1
    on (votes_1.id = posts_1.id )
where votes_1.id is not NULL
group by posts_1.owneruserid, votes_1.id, votes_1.votetypeid
limit 9;
select  
  users_1.profileimageurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.aboutme is not NULL
limit 39;
select  
  min(
    posts_1.creationdate), 
  posts_1.parentid, 
  posts_1.parentid, 
  posts_1.posttypeid, 
  posts_1.posttypeid, 
  posts_1.owneruserid, 
  max(
    posts_1.creationdate), 
  posts_1.id, 
  max(
    posts_1.parentid), 
  posts_1.ownerdisplayname, 
  posts_1.parentid, 
  posts_1.contentlicense, 
  posts_1.title, 
  posts_1.posttypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.posttypeid is not NULL
group by posts_1.contentlicense, posts_1.id, posts_1.ownerdisplayname, posts_1.owneruserid, posts_1.parentid, posts_1.posttypeid, posts_1.title
limit 6;
select  
  posts_1.parentid, 
  posts_1.owneruserid, 
  posts_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.creationdate <= posts_1.creationdate
limit 7;
select  
  badges_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.name >= badges_1.name
limit 31;
select  
  badges_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.userid is not NULL
limit 36;
select  
  posthistory_1.posthistorytypeid, 
  posthistory_1.id, 
  posthistory_1.id, 
  posthistory_1.text, 
  posthistory_1.contentlicense, 
  posthistory_1.text, 
  posthistory_1.postid, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.revisionguid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.posthistorytypeid is not NULL
limit 8;
select  
  users_2.creationdate, 
  users_2.accountid, 
  max(
    users_2.profileimageurl), 
  users_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join users as users_2
    on (users_1.id = users_2.id )
where users_2.profileimageurl is not NULL
group by users_1.id, users_2.accountid, users_2.creationdate
limit 8;
select  
  comments_1.userdisplayname, 
  max(
    votes_1.creationdate), 
  votes_1.id, 
  votes_1.creationdate, 
  comments_1.contentlicense, 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join votes as votes_1
    on (comments_1.id = votes_1.id )
where comments_1.contentlicense is not NULL
group by comments_1.contentlicense, comments_1.userdisplayname, votes_1.creationdate, votes_1.id
limit 42;
select  
  max(
    comments_1.creationdate), 
  comments_1.id, 
  comments_1.creationdate, 
  comments_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.postid is not NULL
group by comments_1.creationdate, comments_1.id, comments_1.postid
limit 11;
select  
  users_1.websiteurl, 
  users_1.aboutme, 
  users_1.profileimageurl, 
  users_1.location, 
  users_1.creationdate, 
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.websiteurl is not NULL
limit 5;
select  
  posts_1.parentid, 
  posts_1.parentid, 
  posts_1.ownerdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.posttypeid is not NULL
limit 20;
select  
  count(
    votes_1.id)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
      inner join votes as votes_1
      on (badges_1.id = votes_1.id )
    inner join votes as votes_2
      inner join users as users_1
      on (votes_2.id = users_1.id )
    on (votes_1.id = users_1.id )
where votes_2.id is not NULL
limit 29;
select  
  posts_3.parentid, 
  posts_3.parentid, 
  posts_3.title
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
      inner join posts as posts_1
      on (users_1.id = posts_1.id )
    inner join posts as posts_2
        inner join posthistory as posthistory_1
        on (posts_2.id = posthistory_1.id )
      inner join posts as posts_3
        inner join posts as posts_4
          inner join users as users_2
          on (posts_4.id = users_2.id )
        on (posts_3.id = users_2.id )
      on (posthistory_1.id = users_2.id )
    on (users_1.id = posts_3.id )
where posts_3.parentid < users_2.accountid
limit 22;
select  
  badges_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join badges as badges_1
    on (posts_1.id = badges_1.id )
where posts_1.creationdate >= badges_1.date
limit 9;
select  
  votes_1.userid, 
  votes_1.userid, 
  votes_1.creationdate, 
  votes_1.votetypeid, 
  votes_1.postid, 
  votes_1.id, 
  votes_1.id, 
  votes_1.userid, 
  votes_1.postid, 
  votes_1.creationdate, 
  min(
    votes_1.creationdate), 
  votes_1.id, 
  votes_1.userid, 
  min(
    votes_1.creationdate), 
  votes_1.postid, 
  votes_1.userid, 
  votes_1.creationdate, 
  votes_1.postid, 
  votes_1.id, 
  votes_1.votetypeid, 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate >= votes_1.creationdate
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 18;
select  
  badges_1.tagbased, 
  votes_1.id, 
  badges_1.tagbased, 
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join votes as votes_1
    on (badges_1.id = votes_1.id )
where badges_1.name is not NULL
limit 10;
select  
  badges_2.id, 
  badges_2.class, 
  badges_2.tagbased
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join badges as badges_2
    on (badges_1.id = badges_2.id )
where badges_2.tagbased <= badges_1.tagbased
limit 7;
select  
  votes_2.userid, 
  badges_1.id, 
  votes_2.id, 
  min(
    votes_1.creationdate), 
  max(
    votes_2.creationdate), 
  min(
    votes_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join badges as badges_1
      inner join votes as votes_2
      on (badges_1.id = votes_2.id )
    on (votes_1.id = votes_2.id )
where badges_1.name is not NULL
group by badges_1.id, votes_2.id, votes_2.userid
limit 38;
select  
  posts_1.title, 
  min(
    posts_1.owneruserid), 
  posts_1.owneruserid, 
  posts_1.acceptedanswerid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.body < posts_1.ownerdisplayname
group by posts_1.acceptedanswerid, posts_1.owneruserid, posts_1.title
limit 26;
select  
  votes_1.votetypeid, 
  votes_1.postid, 
  max(
    votes_1.creationdate), 
  votes_1.userid, 
  votes_1.creationdate, 
  votes_1.userid, 
  count(*), 
  votes_1.votetypeid, 
  votes_1.userid, 
  votes_1.creationdate, 
  votes_1.userid, 
  votes_1.creationdate, 
  votes_1.creationdate, 
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate is not NULL
group by votes_1.creationdate, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 18;
select  
  badges_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.date = badges_1.date
limit 21;
select distinct 

  posts_1.owneruserid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.posttypeid is not NULL
limit 26;
select  
  users_1.aboutme, 
  users_1.websiteurl, 
  min(
    users_1.creationdate), 
  users_1.accountid, 
  users_1.location, 
  users_1.location, 
  users_1.accountid, 
  users_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.websiteurl is not NULL
group by users_1.aboutme, users_1.accountid, users_1.id, users_1.location, users_1.websiteurl
limit 38;
select  
  users_2.accountid, 
  users_2.displayname, 
  users_1.websiteurl, 
  users_2.id, 
  max(
    users_2.creationdate), 
  users_2.profileimageurl, 
  users_2.displayname, 
  users_2.creationdate, 
  users_1.accountid, 
  users_1.websiteurl, 
  min(
    postlinks_1.creationdate), 
  users_2.creationdate, 
  users_2.profileimageurl, 
  users_1.creationdate, 
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
      inner join users as users_2
      on (users_1.id = users_2.id )
    inner join postlinks as postlinks_1
    on (users_2.id = postlinks_1.id )
where users_1.displayname is not NULL
group by postlinks_1.linktypeid, postlinks_1.relatedpostid, users_1.accountid, users_1.creationdate, users_1.websiteurl, users_2.accountid, users_2.creationdate, users_2.displayname, users_2.id, users_2.profileimageurl
limit 31;
select  
  comments_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join postlinks as postlinks_2
      inner join comments as comments_1
      on (postlinks_2.id = comments_1.id )
    on (postlinks_1.id = comments_1.id )
where comments_1.userdisplayname is not NULL
limit 39;
select  
  postlinks_1.postid, 
  postlinks_1.relatedpostid, 
  min(
    postlinks_1.creationdate), 
  postlinks_1.relatedpostid, 
  postlinks_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
group by postlinks_1.id, postlinks_1.postid, postlinks_1.relatedpostid
limit 27;
select  
  votes_1.id, 
  votes_1.creationdate, 
  votes_1.votetypeid, 
  votes_1.creationdate, 
  votes_1.creationdate, 
  votes_1.userid, 
  votes_1.id, 
  min(
    votes_1.creationdate), 
  votes_1.creationdate, 
  votes_1.votetypeid, 
  votes_1.creationdate, 
  votes_1.userid, 
  avg(
    votes_1.id), 
  votes_1.id, 
  votes_1.id, 
  votes_1.postid, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate > votes_1.creationdate
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 11;
select  
  posthistory_1.userdisplayname, 
  posthistory_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.postid = posthistory_1.userid
limit 6;
select  
  postlinks_1.postid, 
  postlinks_1.id, 
  postlinks_1.relatedpostid, 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
limit 17;
select  
  badges_1.userid, 
  badges_1.name, 
  badges_1.tagbased, 
  avg(
    badges_1.userid), 
  badges_1.tagbased, 
  badges_1.userid, 
  avg(
    badges_1.userid), 
  badges_1.userid, 
  badges_1.name, 
  badges_1.date, 
  max(
    badges_1.userid), 
  badges_1.tagbased, 
  badges_1.id, 
  badges_1.tagbased, 
  sum(
    badges_1.class)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased is not NULL
group by badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
limit 25;
select  
  posts_1.owneruserid, 
  posts_1.title
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.acceptedanswerid is not NULL
limit 24;
select  
  posthistory_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.userdisplayname > posthistory_1.revisionguid
limit 37;
select  
  votes_1.id, 
  posts_1.parentid, 
  votes_1.votetypeid, 
  votes_1.creationdate, 
  max(
    votes_1.creationdate), 
  posts_1.contentlicense, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join posts as posts_1
    on (votes_1.id = posts_1.id )
where posts_1.title is not NULL
group by posts_1.contentlicense, posts_1.parentid, votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.votetypeid
limit 12;
select  
  posts_1.tags
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.creationdate is not NULL
limit 5;
select  
  comments_1.contentlicense, 
  postlinks_1.id, 
  max(
    comments_1.id), 
  posts_1.title, 
  postlinks_1.relatedpostid, 
  postlinks_1.id, 
  comments_1.id, 
  min(
    posthistory_1.creationdate), 
  posts_1.acceptedanswerid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
      inner join postlinks as postlinks_1
        inner join posts as posts_1
        on (postlinks_1.id = posts_1.id )
      on (posthistory_1.id = postlinks_1.id )
    inner join comments as comments_1
    on (postlinks_1.id = comments_1.id )
where posthistory_1.comment is not NULL
group by comments_1.contentlicense, comments_1.id, postlinks_1.id, postlinks_1.relatedpostid, posts_1.acceptedanswerid, posts_1.title
limit 30;
select  
  badges_1.tagbased, 
  badges_1.class, 
  badges_1.date, 
  badges_1.userid, 
  badges_1.class, 
  min(
    badges_1.userid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.class is not NULL
group by badges_1.class, badges_1.date, badges_1.tagbased, badges_1.userid
limit 19;
select  
  votes_1.postid, 
  votes_1.creationdate, 
  votes_1.id, 
  votes_1.userid, 
  votes_1.creationdate, 
  max(
    votes_1.creationdate), 
  votes_1.postid, 
  votes_1.creationdate, 
  votes_1.id, 
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.userid is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid
limit 41;
select  
  posts_1.posttypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.parentid < posts_1.posttypeid
limit 4;
select  
  votes_1.postid, 
  votes_1.creationdate, 
  votes_1.id, 
  votes_1.votetypeid, 
  votes_1.creationdate, 
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.userid is not NULL
limit 16;
select  
  posts_1.owneruserid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.tags is not NULL
limit 42;
select  
  postlinks_2.id, 
  postlinks_2.relatedpostid, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.linktypeid, 
  max(
    postlinks_1.creationdate), 
  postlinks_2.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join postlinks as postlinks_2
    on (postlinks_1.id = postlinks_2.id )
where postlinks_1.relatedpostid is not NULL
group by postlinks_1.linktypeid, postlinks_2.id, postlinks_2.relatedpostid
limit 14;
select  
  min(
    comments_1.creationdate), 
  postlinks_1.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
      inner join badges as badges_1
      on (posthistory_1.id = badges_1.id )
    inner join comments as comments_1
      inner join postlinks as postlinks_1
        inner join users as users_1
        on (postlinks_1.id = users_1.id )
      on (comments_1.id = postlinks_1.id )
    on (posthistory_1.id = users_1.id )
where badges_1.tagbased <= badges_1.tagbased
group by postlinks_1.relatedpostid
limit 33;
select  
  badges_1.name, 
  badges_1.tagbased, 
  badges_1.date, 
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.date >= badges_1.date
limit 23;
select  
  users_1.profileimageurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.profileimageurl is not NULL
limit 24;
select  
  votes_2.id, 
  votes_2.id, 
  min(
    votes_1.creationdate), 
  votes_1.id, 
  votes_2.creationdate, 
  votes_2.votetypeid, 
  avg(
    votes_1.votetypeid), 
  votes_2.userid, 
  votes_2.userid, 
  votes_2.votetypeid, 
  votes_2.votetypeid, 
  votes_2.id, 
  votes_2.votetypeid, 
  votes_1.votetypeid, 
  votes_1.votetypeid, 
  votes_2.votetypeid, 
  votes_2.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join votes as votes_2
    on (votes_1.id = votes_2.id )
where votes_2.votetypeid is not NULL
group by votes_1.id, votes_1.votetypeid, votes_2.creationdate, votes_2.id, votes_2.userid, votes_2.votetypeid
limit 32;
select  
  min(
    votes_1.id), 
  comments_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join votes as votes_1
    on (comments_1.id = votes_1.id )
where comments_1.creationdate < votes_1.creationdate
group by comments_1.text
limit 22;
select  
  posts_1.title, 
  posts_1.acceptedanswerid, 
  posts_1.tags
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.acceptedanswerid is not NULL
limit 25;
select  
  badges_2.id, 
  votes_1.votetypeid, 
  count(
    posts_2.posttypeid), 
  posts_1.creationdate, 
  min(
    posts_2.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join posts as posts_1
          inner join votes as votes_1
          on (posts_1.id = votes_1.id )
        inner join postlinks as postlinks_1
        on (votes_1.id = postlinks_1.id )
      inner join badges as badges_1
          inner join badges as badges_2
          on (badges_1.id = badges_2.id )
        inner join posts as posts_2
        on (badges_2.id = posts_2.id )
      on (posts_1.id = badges_1.id )
    on (posthistory_1.id = posts_2.id )
where posthistory_1.posthistorytypeid < badges_2.class
group by badges_2.id, posts_1.creationdate, votes_1.votetypeid
limit 1;
select  
  comments_1.text, 
  sum(
    comments_1.postid), 
  count(
    comments_1.userid), 
  comments_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.contentlicense is not NULL
group by comments_1.text
limit 34;
select  
  posthistory_1.revisionguid, 
  posthistory_2.postid, 
  comments_1.postid, 
  comments_1.creationdate, 
  posthistory_1.comment, 
  posthistory_2.userdisplayname, 
  posthistory_2.comment, 
  posthistory_2.revisionguid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join posthistory as posthistory_1
      inner join posthistory as posthistory_2
      on (posthistory_1.id = posthistory_2.id )
    on (comments_1.id = posthistory_1.id )
where comments_1.id is not NULL
limit 24;
select  
  comments_1.userid, 
  comments_1.userid, 
  comments_1.creationdate, 
  comments_1.userid, 
  comments_1.id, 
  comments_1.text, 
  comments_1.text, 
  comments_1.userdisplayname, 
  comments_1.text, 
  comments_1.text, 
  comments_1.id, 
  comments_1.contentlicense, 
  comments_1.contentlicense, 
  comments_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.creationdate >= comments_1.creationdate
limit 10;
select  
  badges_1.id, 
  badges_1.date, 
  badges_1.tagbased, 
  badges_1.tagbased, 
  min(
    badges_1.date), 
  badges_1.tagbased
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased is not NULL
group by badges_1.date, badges_1.id, badges_1.tagbased
limit 41;
select  
  badges_1.id, 
  badges_1.id, 
  badges_1.tagbased, 
  badges_1.tagbased, 
  max(
    badges_1.id), 
  badges_1.date, 
  badges_1.userid, 
  badges_1.class, 
  badges_1.tagbased, 
  badges_1.class, 
  badges_1.tagbased, 
  min(
    badges_1.date), 
  badges_1.id, 
  badges_1.class, 
  badges_1.id, 
  badges_1.id, 
  badges_1.date, 
  badges_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.id is not NULL
group by badges_1.class, badges_1.date, badges_1.id, badges_1.tagbased, badges_1.userid
limit 30;
select  
  badges_1.id, 
  users_1.displayname, 
  max(
    badges_1.date), 
  users_1.accountid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join badges as badges_1
    on (users_1.id = badges_1.id )
where users_1.id is not NULL
group by badges_1.id, users_1.accountid, users_1.displayname
limit 35;
select  
  postlinks_1.postid, 
  postlinks_1.linktypeid, 
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid, 
  count(
    postlinks_1.relatedpostid), 
  postlinks_1.id, 
  postlinks_1.postid, 
  postlinks_1.postid, 
  postlinks_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 20;
select  
  users_2.websiteurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join comments as comments_1
        inner join posts as posts_1
        on (comments_1.id = posts_1.id )
      inner join comments as comments_2
        inner join users as users_2
        on (comments_2.id = users_2.id )
      on (comments_1.id = users_2.id )
    on (users_1.id = comments_1.id )
where posts_1.tags is not NULL
limit 3;
select  
  badges_1.userid, 
  comments_1.creationdate, 
  badges_1.class, 
  comments_1.contentlicense, 
  comments_1.postid, 
  comments_2.userdisplayname, 
  badges_1.tagbased, 
  comments_1.postid, 
  avg(
    badges_1.class), 
  min(
    badges_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join badges as badges_1
      inner join comments as comments_2
      on (badges_1.id = comments_2.id )
    on (comments_1.id = comments_2.id )
where badges_1.date is not NULL
group by badges_1.class, badges_1.tagbased, badges_1.userid, comments_1.contentlicense, comments_1.creationdate, comments_1.postid, comments_2.userdisplayname
limit 24;
select  
  min(
    postlinks_1.creationdate), 
  users_1.location, 
  users_1.displayname, 
  users_1.aboutme, 
  postlinks_1.creationdate, 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join users as users_1
    on (postlinks_1.id = users_1.id )
where postlinks_1.creationdate = users_1.creationdate
group by postlinks_1.creationdate, postlinks_1.linktypeid, users_1.aboutme, users_1.displayname, users_1.location
limit 33;
select  
  max(
    users_1.creationdate), 
  users_1.accountid, 
  users_1.profileimageurl, 
  users_1.aboutme, 
  users_1.accountid, 
  users_1.displayname, 
  users_1.accountid, 
  users_1.id, 
  min(
    users_1.profileimageurl), 
  users_1.displayname, 
  users_1.location, 
  users_1.id, 
  users_1.id, 
  users_1.profileimageurl, 
  users_1.location, 
  users_1.aboutme, 
  users_1.location
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.accountid is not NULL
group by users_1.aboutme, users_1.accountid, users_1.displayname, users_1.id, users_1.location, users_1.profileimageurl
limit 42;
select  
  votes_1.creationdate, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.userid is not NULL
limit 16;
select  
  posthistory_1.contentlicense, 
  posthistory_1.userdisplayname, 
  posthistory_1.userid, 
  min(
    posthistory_1.id), 
  posthistory_1.revisionguid, 
  posthistory_1.revisionguid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.revisionguid is not NULL
group by posthistory_1.contentlicense, posthistory_1.revisionguid, posthistory_1.userdisplayname, posthistory_1.userid
limit 6;
select  
  users_1.profileimageurl, 
  users_1.creationdate, 
  users_1.displayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.id is not NULL
limit 22;
select  
  comments_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
      inner join postlinks as postlinks_1
        inner join badges as badges_1
        on (postlinks_1.id = badges_1.id )
      on (users_1.id = badges_1.id )
    inner join comments as comments_1
    on (users_1.id = comments_1.id )
where badges_1.class is not NULL
limit 19;
select  
  posthistory_1.revisionguid, 
  count(
    posthistory_1.revisionguid), 
  posthistory_1.text, 
  posthistory_1.id, 
  posthistory_1.text, 
  posthistory_1.id, 
  posthistory_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.creationdate > posthistory_1.creationdate
group by posthistory_1.id, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.text
limit 29;
select  
  posts_1.owneruserid, 
  posts_1.owneruserid, 
  posthistory_1.revisionguid, 
  posthistory_1.revisionguid, 
  posthistory_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join posthistory as posthistory_1
    on (posts_1.id = posthistory_1.id )
where posthistory_1.comment is not NULL
limit 12;
select  
  votes_1.creationdate, 
  votes_1.votetypeid, 
  votes_1.votetypeid, 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.votetypeid is not NULL
limit 14;
select  
  max(
    comments_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join postlinks as postlinks_1
    on (comments_1.id = postlinks_1.id )
where comments_1.postid is not NULL
limit 35;
select  
  votes_1.userid, 
  users_1.creationdate, 
  count(*), 
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join votes as votes_1
    on (users_1.id = votes_1.id )
where votes_1.creationdate is not NULL
group by users_1.creationdate, votes_1.userid
limit 5;
select  
  avg(
    comments_1.userid), 
  comments_1.creationdate, 
  comments_1.userid, 
  postlinks_1.linktypeid, 
  comments_1.text, 
  postlinks_1.relatedpostid, 
  max(
    postlinks_1.creationdate), 
  max(
    postlinks_1.creationdate), 
  postlinks_1.creationdate, 
  comments_1.id, 
  postlinks_1.creationdate, 
  comments_1.userdisplayname, 
  postlinks_1.creationdate, 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join postlinks as postlinks_1
    on (comments_1.id = postlinks_1.id )
where comments_1.text is not NULL
group by comments_1.creationdate, comments_1.id, comments_1.text, comments_1.userdisplayname, comments_1.userid, postlinks_1.creationdate, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 8;
select  
  posthistory_1.posthistorytypeid, 
  posthistory_1.comment, 
  posthistory_1.posthistorytypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.revisionguid is not NULL
limit 30;
select  
  votes_1.userid, 
  badges_1.id, 
  votes_1.id, 
  votes_1.id, 
  badges_1.userid, 
  max(
    votes_1.creationdate), 
  votes_1.votetypeid, 
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join badges as badges_1
    on (votes_1.id = badges_1.id )
where votes_1.votetypeid is not NULL
group by badges_1.id, badges_1.userid, votes_1.id, votes_1.userid, votes_1.votetypeid
limit 36;
select  
  posthistory_1.posthistorytypeid, 
  min(
    postlinks_1.creationdate), 
  min(
    postlinks_1.relatedpostid), 
  posthistory_1.comment, 
  postlinks_1.creationdate, 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join posthistory as posthistory_1
      inner join users as users_1
      on (posthistory_1.id = users_1.id )
    on (postlinks_1.id = posthistory_1.id )
where users_1.location is not NULL
group by posthistory_1.comment, posthistory_1.posthistorytypeid, postlinks_1.creationdate, postlinks_1.linktypeid
limit 31;
select  
  comments_1.postid, 
  comments_1.postid, 
  postlinks_1.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join comments as comments_1
    on (postlinks_1.id = comments_1.id )
where postlinks_1.linktypeid is not NULL
limit 36;
select  
  posthistory_1.id, 
  users_1.accountid, 
  users_1.id, 
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
        inner join comments as comments_1
        on (posthistory_1.id = comments_1.id )
      inner join users as users_1
      on (comments_1.id = users_1.id )
    inner join badges as badges_1
    on (comments_1.id = badges_1.id )
where badges_1.class is not NULL
limit 23;
select  
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
      inner join posts as posts_1
          inner join comments as comments_2
          on (posts_1.id = comments_2.id )
        inner join badges as badges_1
        on (comments_2.id = badges_1.id )
      on (comments_1.id = posts_1.id )
    inner join comments as comments_3
      inner join comments as comments_4
      on (comments_3.id = comments_4.id )
    on (badges_1.id = comments_4.id )
where comments_2.id is not NULL
limit 28;
select  
  count(*), 
  badges_1.userid, 
  users_1.id, 
  users_1.websiteurl, 
  max(
    users_1.id), 
  badges_1.id, 
  posthistory_1.revisionguid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join posthistory as posthistory_1
      inner join users as users_1
      on (posthistory_1.id = users_1.id )
    on (badges_1.id = posthistory_1.id )
where badges_1.date = posthistory_1.creationdate
group by badges_1.id, badges_1.userid, posthistory_1.revisionguid, users_1.id, users_1.websiteurl
limit 5;
select  
  users_1.aboutme, 
  users_1.creationdate, 
  users_1.accountid, 
  users_1.websiteurl, 
  users_1.location
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.creationdate < users_1.creationdate
limit 1;
select  
  posthistory_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
      inner join postlinks as postlinks_1
      on (posthistory_1.id = postlinks_1.id )
    inner join comments as comments_1
    on (postlinks_1.id = comments_1.id )
where postlinks_1.creationdate is not NULL
limit 25;
select  
  posts_1.ownerdisplayname, 
  posts_1.title
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join posts as posts_1
    on (postlinks_1.id = posts_1.id )
where postlinks_1.id is not NULL
limit 10;
select  
  users_1.websiteurl, 
  min(
    users_1.creationdate), 
  users_1.displayname, 
  users_1.id, 
  min(
    users_1.accountid), 
  users_1.id, 
  users_1.id, 
  users_1.creationdate, 
  users_1.websiteurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.websiteurl = users_1.displayname
group by users_1.creationdate, users_1.displayname, users_1.id, users_1.websiteurl
limit 10;
select  
  comments_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.contentlicense is not NULL
limit 9;
select  
  posts_1.body, 
  posts_1.ownerdisplayname, 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join posts as posts_1
      inner join postlinks as postlinks_1
      on (posts_1.id = postlinks_1.id )
    on (users_1.id = posts_1.id )
where users_1.aboutme <= users_1.location
limit 41;
select  
  posts_1.body, 
  posthistory_1.posthistorytypeid, 
  posthistory_2.contentlicense, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
      inner join posts as posts_1
      on (badges_1.id = posts_1.id )
    inner join users as users_1
      inner join posthistory as posthistory_1
        inner join posthistory as posthistory_2
        on (posthistory_1.id = posthistory_2.id )
      on (users_1.id = posthistory_1.id )
    on (badges_1.id = users_1.id )
where posts_1.posttypeid is not NULL
group by posthistory_1.posthistorytypeid, posthistory_2.contentlicense, posts_1.body
limit 10;
select  
  posthistory_1.revisionguid, 
  posthistory_1.comment, 
  posthistory_1.comment, 
  posthistory_1.comment, 
  posthistory_1.contentlicense, 
  posthistory_1.revisionguid, 
  posthistory_1.id, 
  posthistory_1.id, 
  posthistory_1.postid, 
  posthistory_1.text, 
  posthistory_1.id, 
  posthistory_1.id, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.posthistorytypeid, 
  min(
    posthistory_1.id)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.userid is not NULL
group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.text
limit 8;
select  
  posthistory_1.postid, 
  posthistory_1.id, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.text, 
  posthistory_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.postid is not NULL
limit 16;
select  
  comments_1.userdisplayname, 
  comments_1.id, 
  comments_1.userdisplayname, 
  comments_1.id, 
  comments_1.creationdate, 
  comments_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userid is not NULL
limit 30;
select  
  comments_1.postid, 
  min(
    comments_1.creationdate), 
  comments_1.postid, 
  comments_1.userdisplayname, 
  comments_1.postid, 
  comments_1.userdisplayname, 
  max(
    comments_1.id), 
  comments_1.contentlicense, 
  comments_1.contentlicense, 
  comments_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.text is not NULL
group by comments_1.contentlicense, comments_1.id, comments_1.postid, comments_1.userdisplayname
limit 27;
select  
  comments_1.userdisplayname, 
  max(
    comments_1.id), 
  comments_1.id, 
  comments_1.contentlicense, 
  comments_1.id, 
  comments_1.text, 
  comments_1.text, 
  comments_1.contentlicense, 
  comments_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.contentlicense is not NULL
group by comments_1.contentlicense, comments_1.id, comments_1.text, comments_1.userdisplayname
limit 29;
select  
  posthistory_1.revisionguid, 
  count(*), 
  max(
    posthistory_1.id), 
  posthistory_1.creationdate, 
  posthistory_1.userid, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.userid > posthistory_1.id
group by posthistory_1.creationdate, posthistory_1.posthistorytypeid, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userid
limit 19;
select  
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.userid is not NULL
limit 8;
select  
  comments_1.text, 
  comments_1.userdisplayname, 
  comments_1.postid, 
  comments_1.text, 
  comments_1.userdisplayname, 
  comments_1.text, 
  comments_1.creationdate, 
  comments_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.id > comments_1.postid
limit 19;
select  
  posts_1.id, 
  posts_1.contentlicense, 
  posts_1.acceptedanswerid, 
  sum(
    posts_1.posttypeid), 
  posts_1.acceptedanswerid, 
  posts_1.contentlicense, 
  posts_1.posttypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.title is not NULL
group by posts_1.acceptedanswerid, posts_1.contentlicense, posts_1.id, posts_1.posttypeid
limit 11;
select  
  postlinks_1.postid, 
  postlinks_1.creationdate, 
  postlinks_1.linktypeid, 
  postlinks_1.postid, 
  count(
    postlinks_1.linktypeid), 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
group by postlinks_1.creationdate, postlinks_1.linktypeid, postlinks_1.postid
limit 26;
select  
  votes_1.postid, 
  votes_1.postid, 
  votes_1.creationdate, 
  votes_1.userid, 
  votes_1.id, 
  votes_1.postid, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join votes as votes_1
    on (badges_1.id = votes_1.id )
where badges_1.name is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid
limit 6;
select  
  posts_1.parentid, 
  max(
    posts_1.id), 
  posts_1.owneruserid, 
  posts_1.title, 
  count(
    posts_1.id), 
  posts_1.posttypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.acceptedanswerid is not NULL
group by posts_1.owneruserid, posts_1.parentid, posts_1.posttypeid, posts_1.title
limit 3;
select  
  badges_1.userid, 
  badges_1.name, 
  badges_1.tagbased
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.date is not NULL
limit 40;
select  
  votes_1.postid, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join postlinks as postlinks_1
    on (votes_1.id = postlinks_1.id )
where postlinks_1.linktypeid is not NULL
limit 28;
select  
  posts_1.ownerdisplayname, 
  posthistory_1.posthistorytypeid, 
  count(
    posthistory_1.contentlicense), 
  posts_1.ownerdisplayname, 
  count(
    posts_1.id), 
  posthistory_1.userid, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.contentlicense, 
  posts_1.tags, 
  posts_1.creationdate, 
  posts_1.contentlicense, 
  posthistory_1.creationdate, 
  posthistory_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join posthistory as posthistory_1
    on (posts_1.id = posthistory_1.id )
where posts_1.owneruserid is not NULL
group by posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.userid, posts_1.contentlicense, posts_1.creationdate, posts_1.ownerdisplayname, posts_1.tags
limit 12;
select  
  comments_1.creationdate, 
  comments_1.userid, 
  comments_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.creationdate > comments_1.creationdate
limit 39;
select  
  comments_1.text, 
  posts_1.creationdate, 
  comments_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join comments as comments_1
    on (posts_1.id = comments_1.id )
where posts_1.creationdate < comments_1.creationdate
limit 29;
select  
  users_1.displayname, 
  users_1.creationdate, 
  users_1.aboutme, 
  users_1.aboutme, 
  users_1.creationdate, 
  users_1.location, 
  users_1.aboutme, 
  users_1.profileimageurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.accountid is not NULL
limit 30;
select  
  comments_1.userid, 
  postlinks_1.linktypeid, 
  users_1.accountid, 
  posthistory_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join posthistory as posthistory_1
        inner join comments as comments_1
          inner join users as users_1
          on (comments_1.id = users_1.id )
        on (posthistory_1.id = users_1.id )
      inner join postlinks as postlinks_1
      on (comments_1.id = postlinks_1.id )
    on (posts_1.id = posthistory_1.id )
where postlinks_1.creationdate is not NULL
limit 15;
select  
  posthistory_1.text, 
  posthistory_1.userdisplayname, 
  avg(
    posthistory_1.posthistorytypeid), 
  posthistory_1.id, 
  posthistory_1.text, 
  posthistory_1.creationdate, 
  posthistory_1.userdisplayname, 
  posthistory_1.comment, 
  min(
    posthistory_1.creationdate), 
  max(
    posthistory_1.creationdate), 
  posthistory_1.text, 
  posthistory_1.userid, 
  posthistory_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.userdisplayname is not NULL
group by posthistory_1.comment, posthistory_1.creationdate, posthistory_1.id, posthistory_1.text, posthistory_1.userdisplayname, posthistory_1.userid
limit 26;
select  
  posthistory_1.text, 
  count(
    posthistory_1.comment), 
  posthistory_1.revisionguid, 
  count(
    users_1.location), 
  users_1.id, 
  users_1.websiteurl, 
  posthistory_1.postid, 
  posthistory_1.userdisplayname, 
  posthistory_1.id, 
  posthistory_1.creationdate, 
  min(
    posthistory_1.userid), 
  users_1.accountid, 
  posthistory_1.creationdate, 
  posthistory_1.posthistorytypeid, 
  count(
    users_1.accountid), 
  posthistory_1.userdisplayname, 
  posthistory_1.contentlicense, 
  posthistory_1.text, 
  min(
    posthistory_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join users as users_1
    on (posthistory_1.id = users_1.id )
where posthistory_1.contentlicense is not NULL
group by posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userdisplayname, users_1.accountid, users_1.id, users_1.websiteurl
limit 39;
select  
  votes_1.postid, 
  votes_1.userid, 
  count(
    votes_1.votetypeid), 
  votes_1.id, 
  max(
    votes_1.postid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate is not NULL
group by votes_1.id, votes_1.postid, votes_1.userid
limit 5;
select  
  posts_1.id, 
  posts_1.id, 
  min(
    posts_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.title is not NULL
group by posts_1.id
limit 30;
select  
  users_1.websiteurl, 
  users_1.id, 
  users_1.websiteurl, 
  users_1.profileimageurl, 
  users_1.creationdate, 
  users_1.profileimageurl, 
  users_1.websiteurl, 
  users_1.location, 
  count(*), 
  users_1.accountid, 
  users_1.displayname, 
  users_1.aboutme, 
  users_1.displayname, 
  users_1.location, 
  users_1.location, 
  users_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.profileimageurl is not NULL
group by users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.displayname, users_1.id, users_1.location, users_1.profileimageurl, users_1.websiteurl
limit 21;
select  
  min(
    comments_1.creationdate), 
  comments_1.postid, 
  max(
    comments_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.text is not NULL
group by comments_1.postid
limit 26;
select  
  posts_1.id, 
  min(
    posts_2.parentid), 
  min(
    posts_1.creationdate), 
  comments_1.id, 
  min(
    posts_1.creationdate), 
  posts_1.tags, 
  posts_1.title, 
  postlinks_1.linktypeid, 
  posts_1.posttypeid, 
  comments_1.postid, 
  postlinks_1.relatedpostid, 
  users_2.id, 
  users_1.creationdate, 
  votes_1.votetypeid, 
  posts_1.posttypeid, 
  users_1.aboutme, 
  postlinks_1.relatedpostid, 
  min(
    votes_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
          inner join users as users_1
          on (posts_1.id = users_1.id )
        inner join posts as posts_2
        on (posts_1.id = posts_2.id )
      inner join votes as votes_1
      on (posts_1.id = votes_1.id )
    inner join users as users_2
      inner join postlinks as postlinks_1
        inner join comments as comments_1
        on (postlinks_1.id = comments_1.id )
      on (users_2.id = postlinks_1.id )
    on (posts_2.id = postlinks_1.id )
where votes_1.creationdate is not NULL
group by comments_1.id, comments_1.postid, postlinks_1.linktypeid, postlinks_1.relatedpostid, posts_1.id, posts_1.posttypeid, posts_1.tags, posts_1.title, users_1.aboutme, users_1.creationdate, users_2.id, votes_1.votetypeid
limit 7;
select  
  votes_1.postid, 
  comments_1.text, 
  comments_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
      inner join users as users_1
      on (comments_1.id = users_1.id )
    inner join votes as votes_1
    on (users_1.id = votes_1.id )
where votes_1.id is not NULL
limit 41;
select  
  votes_1.creationdate, 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.id is not NULL
limit 9;
select  
  badges_1.tagbased, 
  badges_1.tagbased, 
  sum(
    badges_1.id), 
  badges_1.userid, 
  min(
    badges_1.date), 
  max(
    badges_1.date), 
  badges_1.tagbased, 
  badges_1.date, 
  badges_1.class, 
  badges_1.userid, 
  badges_1.tagbased, 
  badges_1.date, 
  badges_1.class, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.name is not NULL
group by badges_1.class, badges_1.date, badges_1.tagbased, badges_1.userid
limit 13;
select  
  comments_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join posthistory as posthistory_1
      inner join comments as comments_1
      on (posthistory_1.id = comments_1.id )
    on (users_1.id = comments_1.id )
where comments_1.postid is not NULL
limit 24;
select  
  posts_1.posttypeid, 
  posts_1.acceptedanswerid, 
  sum(
    posts_1.parentid), 
  posts_1.posttypeid, 
  posts_1.tags, 
  posts_1.posttypeid, 
  posts_1.ownerdisplayname, 
  posts_1.body
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.acceptedanswerid < posts_1.owneruserid
group by posts_1.acceptedanswerid, posts_1.body, posts_1.ownerdisplayname, posts_1.posttypeid, posts_1.tags
limit 10;
select  
  comments_1.creationdate, 
  comments_1.userdisplayname, 
  comments_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.postid is not NULL
limit 19;
select  
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.name is not NULL
limit 11;
select  
  posts_2.owneruserid, 
  posts_1.ownerdisplayname, 
  comments_2.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
        inner join posts as posts_2
        on (posts_1.id = posts_2.id )
      inner join comments as comments_1
      on (posts_1.id = comments_1.id )
    inner join comments as comments_2
    on (posts_2.id = comments_2.id )
where posts_2.ownerdisplayname > posts_1.body
limit 31;
select  
  posthistory_1.id, 
  votes_1.votetypeid, 
  votes_1.votetypeid, 
  posthistory_1.creationdate, 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join posthistory as posthistory_1
    on (votes_1.id = posthistory_1.id )
where posthistory_1.postid >= votes_1.votetypeid
limit 13;
select  
  min(
    votes_1.creationdate), 
  votes_1.votetypeid, 
  votes_1.creationdate, 
  votes_1.id, 
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.postid = votes_1.userid
group by votes_1.creationdate, votes_1.id, votes_1.votetypeid
limit 3;
select  
  votes_2.id, 
  postlinks_1.linktypeid, 
  posthistory_1.creationdate, 
  votes_2.userid, 
  max(
    badges_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join posts as posts_2
          inner join postlinks as postlinks_1
            inner join badges as badges_1
            on (postlinks_1.id = badges_1.id )
          on (posts_2.id = badges_1.id )
        inner join posthistory as posthistory_1
          inner join votes as votes_1
          on (posthistory_1.id = votes_1.id )
        on (posts_2.id = votes_1.id )
      inner join votes as votes_2
      on (postlinks_1.id = votes_2.id )
    on (posts_1.id = posts_2.id )
where postlinks_1.linktypeid >= badges_1.userid
group by posthistory_1.creationdate, postlinks_1.linktypeid, votes_2.id, votes_2.userid
limit 10;
select  
  badges_1.date, 
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.userid is not NULL
limit 23;
select  
  posthistory_1.userdisplayname, 
  posthistory_1.comment, 
  posthistory_1.text, 
  posthistory_1.revisionguid, 
  posthistory_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.contentlicense >= posthistory_1.revisionguid
limit 41;
select  
  posts_1.owneruserid, 
  posts_1.body, 
  posts_1.ownerdisplayname, 
  posts_1.parentid, 
  posts_1.posttypeid, 
  min(
    posts_1.creationdate), 
  posts_1.title, 
  max(
    posts_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.id is not NULL
group by posts_1.body, posts_1.ownerdisplayname, posts_1.owneruserid, posts_1.parentid, posts_1.posttypeid, posts_1.title
limit 2;
select  
  comments_1.text, 
  avg(
    comments_1.postid), 
  comments_1.userdisplayname, 
  comments_1.postid, 
  max(
    comments_1.creationdate), 
  comments_1.contentlicense, 
  comments_1.userid, 
  comments_1.userid, 
  comments_1.contentlicense, 
  comments_1.contentlicense, 
  comments_1.text, 
  comments_1.id, 
  comments_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.contentlicense is not NULL
group by comments_1.contentlicense, comments_1.id, comments_1.postid, comments_1.text, comments_1.userdisplayname, comments_1.userid
limit 18;
select  
  postlinks_1.creationdate, 
  max(
    postlinks_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.id is not NULL
group by postlinks_1.creationdate
limit 4;
select  
  posthistory_3.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join posthistory as posthistory_1
        inner join badges as badges_1
        on (posthistory_1.id = badges_1.id )
      inner join posthistory as posthistory_2
        inner join posthistory as posthistory_3
        on (posthistory_2.id = posthistory_3.id )
      on (badges_1.id = posthistory_2.id )
    on (users_1.id = badges_1.id )
where posthistory_1.postid is not NULL
limit 33;
select  
  users_1.displayname, 
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.location is not NULL
limit 25;
select  
  badges_1.userid, 
  avg(
    votes_3.postid), 
  posts_1.owneruserid, 
  count(
    users_1.id), 
  min(
    votes_2.creationdate), 
  votes_3.postid, 
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
        inner join votes as votes_1
        on (postlinks_1.id = votes_1.id )
      inner join badges as badges_1
          inner join votes as votes_2
          on (badges_1.id = votes_2.id )
        inner join posts as posts_1
          inner join votes as votes_3
            inner join badges as badges_2
            on (votes_3.id = badges_2.id )
          on (posts_1.id = votes_3.id )
        on (badges_1.id = votes_3.id )
      on (postlinks_1.id = badges_2.id )
    inner join votes as votes_4
      inner join users as users_1
      on (votes_4.id = users_1.id )
    on (badges_2.id = users_1.id )
where users_1.creationdate is not NULL
group by badges_1.class, badges_1.userid, posts_1.owneruserid, votes_3.postid
limit 26;
select  
  posthistory_1.id, 
  votes_1.creationdate, 
  votes_1.votetypeid, 
  posthistory_1.userdisplayname, 
  votes_1.userid, 
  votes_1.postid, 
  votes_1.userid, 
  posthistory_1.contentlicense, 
  votes_1.id, 
  max(
    votes_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join posthistory as posthistory_1
    on (votes_1.id = posthistory_1.id )
where votes_1.userid is not NULL
group by posthistory_1.contentlicense, posthistory_1.id, posthistory_1.userdisplayname, votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 3;
select  
  comments_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userdisplayname is not NULL
limit 13;
select  
  users_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.displayname is not NULL
limit 27;
select  
  comments_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.creationdate is not NULL
limit 8;
select  
  badges_1.userid, 
  badges_1.userid, 
  count(*), 
  badges_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.date is not NULL
group by badges_1.id, badges_1.userid
limit 18;
select  
  postlinks_1.creationdate, 
  postlinks_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
limit 37;
select  
  posts_1.body, 
  posts_1.title, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.contentlicense is not NULL
group by posts_1.body, posts_1.title
limit 25;
select  
  posthistory_1.posthistorytypeid, 
  posthistory_1.contentlicense, 
  posthistory_1.posthistorytypeid, 
  count(
    posthistory_1.creationdate), 
  posthistory_1.creationdate, 
  posthistory_1.contentlicense, 
  posthistory_1.comment, 
  posthistory_1.contentlicense, 
  posthistory_1.text, 
  posthistory_1.comment, 
  posthistory_1.creationdate, 
  posthistory_1.comment, 
  posthistory_1.text, 
  posthistory_1.text, 
  posthistory_1.userid, 
  posthistory_1.postid, 
  posthistory_1.postid, 
  max(
    posthistory_1.creationdate), 
  posthistory_1.text, 
  posthistory_1.text, 
  posthistory_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.id is not NULL
group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.text, posthistory_1.userid
limit 42;
select  
  badges_1.class, 
  badges_1.userid, 
  badges_1.tagbased
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased is not NULL
limit 38;
select  
  posts_1.parentid, 
  posts_1.owneruserid, 
  posts_1.contentlicense, 
  posts_1.owneruserid, 
  posts_1.posttypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.creationdate is not NULL
limit 41;
select  
  sum(
    postlinks_1.id), 
  posts_1.id, 
  users_2.websiteurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
      inner join postlinks as postlinks_1
        inner join users as users_2
        on (postlinks_1.id = users_2.id )
      on (users_1.id = users_2.id )
    inner join posts as posts_1
    on (users_2.id = posts_1.id )
where posts_1.parentid is not NULL
group by posts_1.id, users_2.websiteurl
limit 16;
select  
  users_1.aboutme, 
  badges_1.tagbased, 
  badges_1.tagbased, 
  badges_1.name, 
  users_1.displayname, 
  badges_1.name, 
  min(
    users_1.profileimageurl), 
  users_1.profileimageurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join users as users_1
    on (badges_1.id = users_1.id )
where users_1.location is not NULL
group by badges_1.name, badges_1.tagbased, users_1.aboutme, users_1.displayname, users_1.profileimageurl
limit 8;
select  
  posthistory_1.posthistorytypeid, 
  posthistory_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.creationdate < posthistory_1.creationdate
limit 5;
select  
  max(
    comments_1.creationdate), 
  votes_1.votetypeid, 
  posts_1.owneruserid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join votes as votes_1
      inner join comments as comments_1
      on (votes_1.id = comments_1.id )
    on (posts_1.id = comments_1.id )
where votes_1.creationdate is not NULL
group by posts_1.owneruserid, votes_1.votetypeid
limit 6;
select  
  posts_1.owneruserid, 
  posts_1.parentid, 
  posts_1.tags, 
  posts_1.body, 
  posts_1.acceptedanswerid, 
  posts_1.contentlicense, 
  posts_1.contentlicense, 
  posts_1.posttypeid, 
  max(
    posts_1.owneruserid), 
  posts_1.creationdate, 
  posts_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.ownerdisplayname is not NULL
group by posts_1.acceptedanswerid, posts_1.body, posts_1.contentlicense, posts_1.creationdate, posts_1.owneruserid, posts_1.parentid, posts_1.posttypeid, posts_1.tags
limit 12;
select  
  votes_1.votetypeid, 
  votes_1.postid, 
  votes_1.postid, 
  votes_1.id, 
  min(
    votes_1.creationdate), 
  votes_1.creationdate, 
  votes_1.userid, 
  min(
    votes_1.userid), 
  votes_1.creationdate, 
  votes_1.votetypeid, 
  votes_1.votetypeid, 
  votes_1.userid, 
  votes_1.userid, 
  votes_1.userid, 
  votes_1.postid, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.postid is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 14;
select  
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join comments as comments_1
      inner join postlinks as postlinks_1
      on (comments_1.id = postlinks_1.id )
    on (votes_1.id = comments_1.id )
where postlinks_1.linktypeid is not NULL
limit 3;
select  
  badges_1.tagbased, 
  badges_1.date, 
  badges_1.id, 
  badges_1.name, 
  min(
    badges_1.date), 
  badges_1.class, 
  badges_1.tagbased, 
  badges_1.name, 
  badges_1.class, 
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased < badges_1.tagbased
group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
limit 22;
select  
  users_1.creationdate, 
  comments_2.userdisplayname, 
  comments_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join comments as comments_1
        inner join users as users_1
        on (comments_1.id = users_1.id )
      inner join comments as comments_2
      on (users_1.id = comments_2.id )
    on (badges_1.id = users_1.id )
where users_1.creationdate < comments_1.creationdate
limit 26;
select  
  badges_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.class is not NULL
limit 25;
select  
  postlinks_1.postid, 
  postlinks_1.postid, 
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid, 
  postlinks_1.creationdate, 
  min(
    postlinks_1.creationdate), 
  min(
    postlinks_1.creationdate), 
  postlinks_1.id, 
  postlinks_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.postid, postlinks_1.relatedpostid
limit 29;
select  
  comments_2.postid, 
  comments_2.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
        inner join posthistory as posthistory_1
        on (posts_1.id = posthistory_1.id )
      inner join comments as comments_1
        inner join comments as comments_2
        on (comments_1.id = comments_2.id )
      on (posthistory_1.id = comments_1.id )
    inner join votes as votes_1
    on (comments_1.id = votes_1.id )
where posts_1.body < posthistory_1.comment
limit 15;
select  
  users_1.accountid, 
  users_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.accountid is not NULL
limit 35;
select  
  users_1.id, 
  users_1.displayname, 
  users_1.id, 
  users_1.profileimageurl, 
  users_1.displayname, 
  users_1.id, 
  users_1.id, 
  users_1.displayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.displayname is not NULL
limit 42;
select  
  min(
    votes_2.creationdate), 
  votes_2.creationdate, 
  votes_1.postid, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
        inner join posthistory as posthistory_1
        on (votes_1.id = posthistory_1.id )
      inner join users as users_1
      on (votes_1.id = users_1.id )
    inner join votes as votes_2
    on (posthistory_1.id = votes_2.id )
where posthistory_1.contentlicense is not NULL
group by votes_1.postid, votes_2.creationdate
limit 39;
select  
  comments_1.contentlicense, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.relatedpostid, 
  max(
    postlinks_1.relatedpostid), 
  postlinks_1.relatedpostid, 
  sum(
    posts_1.posttypeid), 
  max(
    comments_1.creationdate), 
  comments_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join posts as posts_1
      inner join comments as comments_1
      on (posts_1.id = comments_1.id )
    on (postlinks_1.id = comments_1.id )
where comments_1.contentlicense is not NULL
group by comments_1.contentlicense, comments_1.id, postlinks_1.relatedpostid
limit 20;
select  
  posthistory_1.posthistorytypeid, 
  posthistory_1.postid, 
  posthistory_1.comment, 
  posthistory_1.revisionguid, 
  max(
    posthistory_1.creationdate), 
  max(
    posthistory_1.id), 
  avg(
    posthistory_1.id), 
  posthistory_1.contentlicense, 
  posthistory_1.revisionguid, 
  sum(
    posthistory_1.userid), 
  min(
    posthistory_1.id)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.comment is not NULL
group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid
limit 15;
select  
  posthistory_1.userid, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.contentlicense, 
  posthistory_1.comment, 
  posthistory_1.revisionguid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.creationdate is not NULL
limit 4;
select  
  postlinks_1.relatedpostid, 
  postlinks_1.creationdate, 
  posthistory_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join postlinks as postlinks_1
    on (posthistory_1.id = postlinks_1.id )
where postlinks_1.creationdate is not NULL
limit 31;
select  
  users_1.id, 
  max(
    users_1.creationdate), 
  users_1.displayname, 
  users_1.location, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.location is not NULL
group by users_1.displayname, users_1.id, users_1.location
limit 18;
select distinct 
  votes_1.userid, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join votes as votes_1
    on (badges_1.id = votes_1.id )
where badges_1.tagbased is not NULL
limit 17;
select  
  votes_1.postid, 
  votes_1.userid, 
  votes_1.id, 
  votes_1.votetypeid, 
  min(
    votes_1.creationdate), 
  min(
    votes_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.id is not NULL
group by votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 30;
select  
  comments_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.postid is not NULL
limit 31;
select  
  postlinks_1.linktypeid, 
  badges_1.id, 
  comments_1.postid, 
  posts_1.tags, 
  comments_1.userid, 
  posts_1.id, 
  comments_1.userdisplayname, 
  min(
    comments_1.creationdate), 
  comments_1.contentlicense, 
  postlinks_1.id, 
  posts_1.ownerdisplayname, 
  badges_1.date, 
  postlinks_1.id, 
  comments_1.creationdate, 
  badges_1.name, 
  badges_1.date, 
  badges_1.name, 
  badges_1.userid, 
  postlinks_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
      inner join postlinks as postlinks_1
        inner join comments as comments_1
        on (postlinks_1.id = comments_1.id )
      on (posts_1.id = postlinks_1.id )
    inner join badges as badges_1
    on (postlinks_1.id = badges_1.id )
where badges_1.tagbased is not NULL
group by badges_1.date, badges_1.id, badges_1.name, badges_1.userid, comments_1.contentlicense, comments_1.creationdate, comments_1.postid, comments_1.userdisplayname, comments_1.userid, postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, posts_1.id, posts_1.ownerdisplayname, posts_1.tags
limit 11;
select  
  comments_1.userid, 
  comments_1.id, 
  comments_1.postid, 
  min(
    comments_1.creationdate), 
  comments_1.text, 
  comments_1.userid, 
  comments_1.userid, 
  comments_1.contentlicense, 
  comments_1.postid, 
  comments_1.userid, 
  count(*), 
  comments_1.id, 
  comments_1.postid, 
  comments_1.userdisplayname, 
  comments_1.text, 
  comments_1.userid, 
  comments_1.contentlicense, 
  comments_1.creationdate, 
  comments_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userid is not NULL
group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.text, comments_1.userdisplayname, comments_1.userid
limit 29;
select  
  count(
    comments_1.userdisplayname)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join comments as comments_2
    on (comments_1.id = comments_2.id )
where comments_2.text is not NULL
limit 9;
select  
  comments_2.postid, 
  min(
    comments_1.creationdate), 
  comments_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
      inner join comments as comments_1
      on (users_1.id = comments_1.id )
    inner join comments as comments_2
      inner join posts as posts_1
      on (comments_2.id = posts_1.id )
    on (users_1.id = comments_2.id )
where comments_2.creationdate <= comments_1.creationdate
group by comments_1.userdisplayname, comments_2.postid
limit 21;
select  
  max(
    badges_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased is not NULL
limit 12;
select  
  postlinks_1.relatedpostid, 
  postlinks_1.creationdate, 
  count(*), 
  postlinks_1.linktypeid, 
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid, 
  count(*), 
  postlinks_1.creationdate, 
  postlinks_1.creationdate, 
  postlinks_1.linktypeid, 
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid, 
  postlinks_1.postid, 
  postlinks_1.linktypeid, 
  postlinks_1.creationdate, 
  count(
    postlinks_1.id), 
  postlinks_1.linktypeid, 
  postlinks_1.creationdate, 
  postlinks_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.id is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 36;
select  
  badges_1.class, 
  count(
    posthistory_1.text), 
  avg(
    posthistory_1.postid), 
  badges_1.date, 
  posthistory_1.userdisplayname, 
  badges_2.date, 
  min(
    posthistory_1.userid), 
  badges_1.id, 
  badges_2.id, 
  max(
    badges_2.date), 
  posthistory_1.userdisplayname, 
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
      inner join badges as badges_2
        inner join posthistory as posthistory_1
        on (badges_2.id = posthistory_1.id )
      on (badges_1.id = badges_2.id )
    inner join votes as votes_1
    on (badges_2.id = votes_1.id )
where posthistory_1.userdisplayname is not NULL
group by badges_1.class, badges_1.date, badges_1.id, badges_2.date, badges_2.id, posthistory_1.userdisplayname, votes_1.userid
limit 32;
select  
  min(
    badges_1.date), 
  badges_1.id, 
  badges_1.name, 
  badges_1.class, 
  badges_1.userid, 
  badges_1.date, 
  badges_1.name, 
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.userid is not NULL
group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.userid
limit 3;
select  
  users_1.creationdate, 
  users_1.accountid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join posthistory as posthistory_1
    on (users_1.id = posthistory_1.id )
where posthistory_1.postid > posthistory_1.id
limit 40;
select  
  posthistory_1.creationdate, 
  posthistory_1.revisionguid, 
  posthistory_1.text, 
  posthistory_1.contentlicense, 
  posthistory_1.comment, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.comment
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.postid is not NULL
limit 16;
select  
  max(
    posts_1.creationdate), 
  count(
    posts_1.id), 
  max(
    posts_1.posttypeid), 
  posts_1.posttypeid, 
  min(
    posts_1.creationdate), 
  posts_1.body
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.creationdate > posts_1.creationdate
group by posts_1.body, posts_1.posttypeid
limit 10;
select  
  badges_1.tagbased, 
  badges_1.name, 
  badges_1.id, 
  badges_1.date, 
  badges_1.userid, 
  badges_1.tagbased, 
  badges_1.userid, 
  badges_1.tagbased, 
  badges_1.id, 
  badges_1.tagbased, 
  badges_1.userid, 
  badges_1.name, 
  badges_1.id, 
  badges_1.date, 
  badges_1.name, 
  badges_1.class, 
  badges_1.class, 
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.date <= badges_1.date
limit 18;
select  
  votes_1.id, 
  votes_1.votetypeid, 
  min(
    votes_1.votetypeid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.votetypeid is not NULL
group by votes_1.id, votes_1.votetypeid
limit 12;
select  
  users_1.profileimageurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join users as users_1
    on (postlinks_1.id = users_1.id )
where postlinks_1.linktypeid = users_1.accountid
limit 4;
select  
  posthistory_1.contentlicense, 
  posthistory_1.text, 
  votes_1.votetypeid, 
  posthistory_1.userid, 
  votes_1.userid, 
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  postlinks_1.creationdate, 
  postlinks_1.creationdate, 
  postlinks_1.postid, 
  posthistory_1.revisionguid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
      inner join postlinks as postlinks_1
      on (posthistory_1.id = postlinks_1.id )
    inner join votes as votes_1
    on (posthistory_1.id = votes_1.id )
where posthistory_1.comment = posthistory_1.userdisplayname
limit 33;
select  
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join votes as votes_1
        inner join users as users_1
          inner join badges as badges_1
          on (users_1.id = badges_1.id )
        on (votes_1.id = users_1.id )
      inner join users as users_2
      on (votes_1.id = users_2.id )
    on (posts_1.id = users_2.id )
where badges_1.date = posts_1.creationdate
limit 32;
select  
  max(
    votes_1.votetypeid), 
  min(
    postlinks_1.creationdate), 
  postlinks_1.relatedpostid, 
  badges_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join votes as votes_1
      inner join badges as badges_1
      on (votes_1.id = badges_1.id )
    on (postlinks_1.id = badges_1.id )
where votes_1.postid is not NULL
group by badges_1.id, postlinks_1.relatedpostid
limit 23;
select  
  min(
    posts_1.creationdate), 
  users_1.creationdate, 
  posts_1.contentlicense, 
  users_1.location
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join users as users_1
    on (posts_1.id = users_1.id )
where users_1.websiteurl > users_1.displayname
group by posts_1.contentlicense, users_1.creationdate, users_1.location
limit 25;
select  
  posts_1.body, 
  count(
    users_1.aboutme), 
  posts_1.contentlicense, 
  posts_1.ownerdisplayname, 
  users_1.websiteurl, 
  posts_1.parentid, 
  posts_1.acceptedanswerid, 
  posts_1.id, 
  users_1.location, 
  posts_1.tags, 
  posts_1.id, 
  posts_1.posttypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join users as users_1
    on (posts_1.id = users_1.id )
where users_1.location is not NULL
group by posts_1.acceptedanswerid, posts_1.body, posts_1.contentlicense, posts_1.id, posts_1.ownerdisplayname, posts_1.parentid, posts_1.posttypeid, posts_1.tags, users_1.location, users_1.websiteurl
limit 28;
select  
  users_1.id, 
  users_1.aboutme
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.id <= users_1.profileimageurl
limit 31;
select  
  count(
    comments_1.userdisplayname), 
  comments_1.userdisplayname, 
  comments_1.userdisplayname, 
  comments_1.text, 
  comments_1.text, 
  comments_1.contentlicense, 
  comments_1.contentlicense, 
  min(
    comments_1.creationdate), 
  comments_1.userid, 
  comments_1.contentlicense, 
  comments_1.text, 
  comments_1.userdisplayname, 
  comments_1.text, 
  comments_1.creationdate, 
  comments_1.contentlicense, 
  comments_1.userdisplayname, 
  comments_1.id, 
  comments_1.userid, 
  avg(
    comments_1.userid), 
  comments_1.postid, 
  comments_1.id, 
  max(
    comments_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.id is not NULL
group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.text, comments_1.userdisplayname, comments_1.userid
limit 34;
select  
  badges_1.tagbased, 
  badges_1.date, 
  badges_1.id, 
  min(
    badges_1.date), 
  badges_1.userid, 
  badges_1.class, 
  avg(
    badges_1.class), 
  badges_1.userid, 
  badges_1.date, 
  count(*), 
  badges_1.class, 
  badges_1.class, 
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased <= badges_1.tagbased
group by badges_1.class, badges_1.date, badges_1.id, badges_1.tagbased, badges_1.userid
limit 5;
select  
  posthistory_1.posthistorytypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join users as users_1
    on (posthistory_1.id = users_1.id )
where users_1.websiteurl is not NULL
limit 20;
select  
  posthistory_1.contentlicense, 
  votes_1.id, 
  posthistory_2.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join badges as badges_1
      inner join posthistory as posthistory_1
        inner join comments as comments_1
          inner join posthistory as posthistory_2
          on (comments_1.id = posthistory_2.id )
        on (posthistory_1.id = comments_1.id )
      on (badges_1.id = comments_1.id )
    on (votes_1.id = posthistory_1.id )
where comments_1.postid is not NULL
limit 36;
select  
  users_1.creationdate, 
  users_2.location, 
  users_1.profileimageurl, 
  users_1.location, 
  users_1.id, 
  users_1.accountid, 
  users_2.websiteurl, 
  users_2.creationdate, 
  users_1.websiteurl, 
  users_2.location, 
  users_2.accountid, 
  users_2.creationdate, 
  users_1.creationdate, 
  users_2.aboutme, 
  users_1.id, 
  users_1.location, 
  users_1.displayname, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join users as users_2
    on (users_1.id = users_2.id )
where users_2.creationdate = users_1.creationdate
group by users_1.accountid, users_1.creationdate, users_1.displayname, users_1.id, users_1.location, users_1.profileimageurl, users_1.websiteurl, users_2.aboutme, users_2.accountid, users_2.creationdate, users_2.location, users_2.websiteurl
limit 32;
select  
  votes_1.userid, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.id is not NULL
limit 4;
select  
  max(
    posthistory_1.posthistorytypeid), 
  posthistory_1.userdisplayname, 
  posthistory_1.comment, 
  posthistory_1.id, 
  posthistory_1.creationdate, 
  posthistory_1.contentlicense, 
  posthistory_1.contentlicense, 
  posthistory_1.postid, 
  posthistory_1.postid, 
  posthistory_1.postid, 
  posthistory_1.posthistorytypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.creationdate >= posthistory_1.creationdate
group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.userdisplayname
limit 16;
select  
  votes_1.userid, 
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate > votes_1.creationdate
limit 36;
select  
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.votetypeid > votes_1.postid
limit 15;
select  
  posts_1.contentlicense, 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
      inner join posts as posts_1
      on (postlinks_1.id = posts_1.id )
    inner join users as users_1
    on (posts_1.id = users_1.id )
where posts_1.ownerdisplayname is not NULL
limit 11;
select  
  badges_1.class, 
  sum(
    badges_1.id), 
  badges_1.userid, 
  badges_1.name, 
  badges_1.name, 
  min(
    badges_1.date), 
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.name is not NULL
group by badges_1.class, badges_1.name, badges_1.userid
limit 8;
select  
  posthistory_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.id is not NULL
limit 42;
select  
  users_1.id, 
  posthistory_1.comment, 
  posthistory_1.contentlicense, 
  posthistory_1.contentlicense, 
  posthistory_1.creationdate, 
  posthistory_1.contentlicense, 
  posthistory_1.postid, 
  users_1.id, 
  users_1.accountid, 
  max(
    users_1.id)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join posthistory as posthistory_1
    on (users_1.id = posthistory_1.id )
where posthistory_1.text is not NULL
group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.postid, users_1.accountid, users_1.id
limit 17;
select  
  posthistory_2.posthistorytypeid, 
  posthistory_1.revisionguid, 
  posthistory_2.userdisplayname, 
  posthistory_1.contentlicense, 
  min(
    posthistory_1.creationdate), 
  posthistory_1.id, 
  avg(
    posthistory_1.posthistorytypeid), 
  posthistory_2.posthistorytypeid, 
  posthistory_1.id, 
  posthistory_2.id, 
  posthistory_2.text, 
  posthistory_1.creationdate, 
  posthistory_1.comment, 
  posthistory_1.text, 
  posthistory_1.id, 
  posthistory_2.postid, 
  posthistory_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join posthistory as posthistory_2
    on (posthistory_1.id = posthistory_2.id )
where posthistory_1.userdisplayname is not NULL
group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.id, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userdisplayname, posthistory_2.id, posthistory_2.posthistorytypeid, posthistory_2.postid, posthistory_2.text, posthistory_2.userdisplayname
limit 9;
select  
  posthistory_1.userid, 
  min(
    posts_1.id), 
  posthistory_1.posthistorytypeid, 
  posthistory_1.userdisplayname, 
  posts_1.acceptedanswerid, 
  posts_1.posttypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join posts as posts_1
    on (posthistory_1.id = posts_1.id )
where posthistory_1.postid is not NULL
group by posthistory_1.posthistorytypeid, posthistory_1.userdisplayname, posthistory_1.userid, posts_1.acceptedanswerid, posts_1.posttypeid
limit 28;
select  
  users_1.creationdate, 
  users_1.id, 
  comments_1.id, 
  comments_1.userdisplayname, 
  comments_1.userdisplayname, 
  users_1.displayname, 
  votes_1.votetypeid, 
  users_1.id, 
  users_1.location
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
      inner join users as users_1
      on (votes_1.id = users_1.id )
    inner join comments as comments_1
    on (votes_1.id = comments_1.id )
where comments_1.contentlicense is not NULL
limit 35;
select  
  comments_1.id, 
  votes_1.votetypeid, 
  comments_1.userdisplayname, 
  votes_1.creationdate, 
  comments_1.userdisplayname, 
  votes_1.userid, 
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join comments as comments_1
    on (votes_1.id = comments_1.id )
where comments_1.postid <= votes_1.postid
limit 34;
select  
  users_1.accountid, 
  posthistory_1.userdisplayname, 
  posthistory_1.id, 
  posthistory_1.userdisplayname, 
  users_1.websiteurl, 
  posthistory_1.comment
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join posthistory as posthistory_1
    on (users_1.id = posthistory_1.id )
where posthistory_1.posthistorytypeid = posthistory_1.userid
limit 29;
select  
  posthistory_1.creationdate, 
  posthistory_1.text, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.posthistorytypeid, 
  sum(
    posthistory_1.posthistorytypeid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.comment is not NULL
group by posthistory_1.creationdate, posthistory_1.posthistorytypeid, posthistory_1.text
limit 18;
select  
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.name is not NULL
limit 31;
select  
  posthistory_1.revisionguid, 
  posthistory_1.contentlicense, 
  postlinks_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join posthistory as posthistory_1
    on (postlinks_1.id = posthistory_1.id )
where postlinks_1.postid is not NULL
limit 9;
select  
  users_1.accountid, 
  users_1.location, 
  users_1.aboutme
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.accountid is not NULL
limit 19;
select  
  min(
    posts_1.creationdate), 
  posts_1.contentlicense, 
  posts_1.parentid, 
  avg(
    posts_1.acceptedanswerid), 
  posts_1.creationdate, 
  posts_1.id, 
  posts_1.title, 
  posts_1.id, 
  posts_1.id, 
  min(
    posts_1.creationdate), 
  posts_1.posttypeid, 
  posts_1.posttypeid, 
  posts_1.posttypeid, 
  posts_1.tags
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.ownerdisplayname >= posts_1.contentlicense
group by posts_1.contentlicense, posts_1.creationdate, posts_1.id, posts_1.parentid, posts_1.posttypeid, posts_1.tags, posts_1.title
limit 19;
select  
  badges_1.name, 
  min(
    users_1.creationdate), 
  badges_1.name, 
  badges_1.class, 
  users_1.aboutme, 
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join users as users_1
    on (badges_1.id = users_1.id )
where badges_1.tagbased is not NULL
group by badges_1.class, badges_1.name, users_1.aboutme, users_1.creationdate
limit 6;
select  
  min(
    posts_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
      inner join badges as badges_1
      on (posts_1.id = badges_1.id )
    inner join postlinks as postlinks_1
      inner join comments as comments_1
      on (postlinks_1.id = comments_1.id )
    on (badges_1.id = postlinks_1.id )
where badges_1.userid is not NULL
limit 16;
select  
  users_1.location, 
  users_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.creationdate <= users_1.creationdate
limit 26;
select  
  users_1.aboutme, 
  users_1.websiteurl, 
  min(
    users_1.accountid), 
  users_2.location, 
  users_1.profileimageurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join users as users_2
    on (users_1.id = users_2.id )
where users_2.profileimageurl = users_1.accountid
group by users_1.aboutme, users_1.profileimageurl, users_1.websiteurl, users_2.location
limit 11;
select  
  users_1.location, 
  users_1.accountid, 
  users_1.accountid, 
  users_1.displayname, 
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.aboutme is not NULL
limit 25;
select  
  sum(
    badges_1.userid), 
  badges_1.name, 
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.date >= badges_1.date
group by badges_1.name, badges_1.userid
limit 9;
select  
  users_1.location, 
  users_1.websiteurl, 
  users_1.displayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.aboutme is not NULL
limit 22;
select  
  posthistory_1.revisionguid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.userid is not NULL
limit 10;
select  
  badges_1.userid, 
  badges_1.name, 
  badges_1.name, 
  badges_1.tagbased, 
  badges_1.id, 
  badges_1.name, 
  badges_1.name, 
  badges_1.userid, 
  badges_1.name, 
  badges_1.date, 
  badges_1.class, 
  badges_1.userid, 
  badges_1.name, 
  badges_1.class, 
  badges_1.id, 
  badges_1.date, 
  badges_1.date, 
  badges_1.class, 
  badges_1.id, 
  count(
    badges_1.userid), 
  badges_1.date, 
  badges_1.name, 
  badges_1.tagbased, 
  badges_1.userid, 
  badges_1.class, 
  badges_1.id, 
  badges_1.tagbased, 
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased is not NULL
group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
limit 25;
select  
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join posts as posts_1
      inner join votes as votes_1
      on (posts_1.id = votes_1.id )
    on (comments_1.id = votes_1.id )
where posts_1.contentlicense is not NULL
limit 5;
select  
  postlinks_1.id, 
  posts_1.acceptedanswerid, 
  users_1.profileimageurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
      inner join users as users_1
      on (badges_1.id = users_1.id )
    inner join postlinks as postlinks_1
      inner join posts as posts_1
      on (postlinks_1.id = posts_1.id )
    on (users_1.id = posts_1.id )
where badges_1.tagbased is not NULL
limit 37;
select  
  max(
    postlinks_1.creationdate), 
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid, 
  postlinks_1.creationdate, 
  postlinks_1.id, 
  postlinks_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.relatedpostid
limit 33;
select  
  posts_1.id, 
  comments_1.id, 
  posts_1.acceptedanswerid, 
  max(
    comments_1.id), 
  comments_1.postid, 
  comments_1.creationdate, 
  posts_1.title, 
  posts_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join comments as comments_1
    on (posts_1.id = comments_1.id )
where posts_1.tags is not NULL
group by comments_1.creationdate, comments_1.id, comments_1.postid, posts_1.acceptedanswerid, posts_1.id, posts_1.title
limit 5;
select  
  badges_1.class, 
  badges_1.name, 
  badges_1.userid, 
  badges_1.name, 
  badges_1.tagbased, 
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.userid is not NULL
limit 8;
select  
  max(
    posts_1.id), 
  posts_1.contentlicense, 
  posts_1.ownerdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.posttypeid > posts_1.id
group by posts_1.contentlicense, posts_1.ownerdisplayname
limit 26;
select  
  badges_1.date, 
  users_1.creationdate, 
  badges_1.tagbased, 
  badges_1.userid, 
  badges_1.name, 
  users_1.profileimageurl, 
  badges_1.userid, 
  count(*), 
  users_1.accountid, 
  count(
    badges_1.date), 
  badges_1.class, 
  badges_1.date, 
  users_1.aboutme
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join badges as badges_1
    on (users_1.id = badges_1.id )
where users_1.location = badges_1.name
group by badges_1.class, badges_1.date, badges_1.name, badges_1.tagbased, badges_1.userid, users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.profileimageurl
limit 11;
select  
  posthistory_1.postid, 
  posthistory_1.postid, 
  posthistory_1.id, 
  max(
    posthistory_1.creationdate), 
  posthistory_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.revisionguid is not NULL
group by posthistory_1.id, posthistory_1.postid, posthistory_1.userid
limit 39;
select  
  min(
    votes_1.userid), 
  votes_1.creationdate, 
  votes_1.creationdate, 
  votes_1.postid, 
  votes_1.id, 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.votetypeid is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid
limit 32;
select  
  badges_1.tagbased, 
  badges_1.tagbased, 
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join users as users_1
        inner join users as users_2
        on (users_1.id = users_2.id )
      inner join posthistory as posthistory_1
      on (users_1.id = posthistory_1.id )
    on (badges_1.id = posthistory_1.id )
where users_1.accountid is not NULL
limit 32;
select  
  postlinks_1.linktypeid, 
  postlinks_1.postid, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.text, 
  posthistory_1.userid, 
  posthistory_1.id, 
  posthistory_1.userdisplayname, 
  posthistory_1.userid, 
  postlinks_1.linktypeid, 
  posthistory_1.creationdate, 
  posthistory_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join postlinks as postlinks_1
    on (posthistory_1.id = postlinks_1.id )
where postlinks_1.creationdate = posthistory_1.creationdate
limit 4;
select  
  posthistory_1.postid, 
  posthistory_1.userdisplayname, 
  posthistory_1.contentlicense, 
  posthistory_1.postid, 
  count(*), 
  min(
    posthistory_1.creationdate), 
  posthistory_1.revisionguid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.comment is not NULL
group by posthistory_1.contentlicense, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.userdisplayname
limit 24;
select  
  votes_1.postid, 
  votes_1.votetypeid, 
  avg(
    votes_1.postid), 
  votes_1.id, 
  min(
    votes_1.creationdate), 
  min(
    votes_1.votetypeid), 
  votes_1.votetypeid, 
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.postid is not NULL
group by votes_1.id, votes_1.postid, votes_1.votetypeid
limit 28;
select  
  posthistory_1.revisionguid, 
  posthistory_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.id >= posthistory_1.posthistorytypeid
limit 26;
select  
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
        inner join posthistory as posthistory_1
          inner join postlinks as postlinks_1
          on (posthistory_1.id = postlinks_1.id )
        on (posts_1.id = posthistory_1.id )
      inner join votes as votes_1
      on (posthistory_1.id = votes_1.id )
    inner join posthistory as posthistory_2
    on (postlinks_1.id = posthistory_2.id )
where posts_1.title is not NULL
limit 29;
select  
  badges_1.class, 
  badges_1.id, 
  badges_1.id, 
  max(
    badges_1.date), 
  badges_1.userid, 
  badges_1.tagbased, 
  badges_1.date, 
  badges_1.tagbased, 
  badges_1.date, 
  badges_1.tagbased, 
  count(
    badges_1.class), 
  badges_1.id, 
  badges_1.date, 
  badges_1.userid, 
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.date is not NULL
group by badges_1.class, badges_1.date, badges_1.id, badges_1.tagbased, badges_1.userid
limit 21;
select  
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join users as users_1
    on (votes_1.id = users_1.id )
where votes_1.id is not NULL
limit 19;
select  
  postlinks_2.id, 
  postlinks_1.id, 
  postlinks_2.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join postlinks as postlinks_2
    on (postlinks_1.id = postlinks_2.id )
where postlinks_1.postid is not NULL
limit 29;
select  
  posthistory_1.revisionguid, 
  posthistory_1.comment, 
  badges_1.name, 
  badges_1.userid, 
  min(
    badges_1.id), 
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join badges as badges_1
    on (posthistory_1.id = badges_1.id )
where posthistory_1.comment is not NULL
group by badges_1.name, badges_1.userid, posthistory_1.comment, posthistory_1.revisionguid
limit 15;
select  
  postlinks_1.linktypeid, 
  postlinks_1.id, 
  postlinks_1.id, 
  postlinks_1.creationdate, 
  postlinks_1.postid, 
  postlinks_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate <= postlinks_1.creationdate
limit 3;
select  
  badges_1.class, 
  badges_1.userid, 
  badges_1.id, 
  badges_1.name, 
  badges_1.tagbased, 
  max(
    badges_1.date), 
  badges_1.tagbased, 
  badges_1.name, 
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.name is not NULL
group by badges_1.class, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
limit 1;
select  
  badges_1.class, 
  badges_1.name, 
  badges_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased is not NULL
limit 34;
select  
  badges_1.date, 
  badges_1.tagbased
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.date < badges_1.date
limit 18;
select  
  posthistory_1.posthistorytypeid, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.contentlicense, 
  posthistory_1.postid, 
  posthistory_1.userdisplayname, 
  avg(
    posthistory_1.id), 
  posthistory_1.comment, 
  posthistory_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.contentlicense is not NULL
group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.userdisplayname
limit 14;
select  
  votes_1.postid, 
  posts_1.contentlicense, 
  posts_1.contentlicense, 
  max(
    posts_1.creationdate), 
  votes_1.votetypeid, 
  min(
    posts_1.id), 
  votes_1.userid, 
  votes_1.id, 
  posts_1.title, 
  badges_1.name, 
  max(
    posts_1.parentid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
      inner join votes as votes_1
      on (badges_1.id = votes_1.id )
    inner join posts as posts_1
    on (votes_1.id = posts_1.id )
where badges_1.tagbased < badges_1.tagbased
group by badges_1.name, posts_1.contentlicense, posts_1.title, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 39;
select  
  votes_1.creationdate, 
  votes_1.userid, 
  min(
    votes_1.postid), 
  votes_1.creationdate, 
  count(*), 
  votes_1.creationdate, 
  votes_1.votetypeid, 
  votes_1.id, 
  votes_1.id, 
  votes_1.creationdate, 
  votes_1.postid, 
  votes_1.userid, 
  sum(
    votes_1.votetypeid), 
  votes_1.id, 
  votes_1.creationdate, 
  votes_1.votetypeid, 
  avg(
    votes_1.id), 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate < votes_1.creationdate
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 14;
select  
  posthistory_1.revisionguid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.userdisplayname is not NULL
limit 40;
select  
  postlinks_1.creationdate, 
  postlinks_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
limit 30;
select  
  badges_1.name, 
  badges_1.name, 
  badges_1.date, 
  badges_1.date, 
  badges_1.date, 
  badges_1.tagbased
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.userid is not NULL
limit 5;
select  
  comments_1.contentlicense, 
  comments_1.userdisplayname, 
  comments_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userid is not NULL
limit 14;
select  
  votes_1.votetypeid, 
  votes_1.creationdate, 
  posthistory_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join posthistory as posthistory_1
    on (votes_1.id = posthistory_1.id )
where posthistory_1.revisionguid is not NULL
limit 12;
select  
  min(
    votes_1.postid), 
  users_1.profileimageurl, 
  users_1.displayname, 
  users_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join votes as votes_1
    on (users_1.id = votes_1.id )
where votes_1.votetypeid is not NULL
group by users_1.displayname, users_1.id, users_1.profileimageurl
limit 25;
select  
  comments_1.userid, 
  comments_1.contentlicense, 
  count(
    comments_1.creationdate), 
  comments_1.contentlicense, 
  sum(
    comments_1.postid), 
  max(
    comments_1.userid), 
  comments_1.userdisplayname, 
  comments_1.userdisplayname, 
  comments_1.postid, 
  comments_1.id, 
  comments_1.contentlicense, 
  comments_1.userid, 
  comments_1.creationdate, 
  comments_1.postid, 
  max(
    comments_1.creationdate), 
  comments_1.postid, 
  min(
    comments_1.creationdate), 
  comments_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userdisplayname is not NULL
group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.userdisplayname, comments_1.userid
limit 11;
select  
  postlinks_1.postid, 
  postlinks_1.relatedpostid, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.postid, 
  postlinks_1.relatedpostid, 
  postlinks_1.relatedpostid, 
  postlinks_1.linktypeid, 
  sum(
    postlinks_1.postid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
group by postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 14;
select  
  comments_1.userdisplayname, 
  min(
    comments_1.creationdate), 
  comments_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.text < comments_1.contentlicense
group by comments_1.text, comments_1.userdisplayname
limit 34;
select  
  comments_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.contentlicense is not NULL
limit 18;
select  
  sum(
    posts_1.posttypeid), 
  count(*), 
  min(
    votes_1.creationdate), 
  votes_1.postid, 
  votes_1.id, 
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join posts as posts_1
      inner join votes as votes_1
      on (posts_1.id = votes_1.id )
    on (posthistory_1.id = votes_1.id )
where votes_1.votetypeid is not NULL
group by votes_1.id, votes_1.postid, votes_1.votetypeid
limit 29;
select  
  count(*), 
  votes_1.userid, 
  count(
    posts_1.creationdate), 
  posts_1.creationdate, 
  votes_1.creationdate, 
  min(
    votes_1.creationdate), 
  max(
    votes_2.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join votes as votes_1
      inner join votes as votes_2
      on (votes_1.id = votes_2.id )
    on (posts_1.id = votes_2.id )
where posts_1.creationdate is not NULL
group by posts_1.creationdate, votes_1.creationdate, votes_1.userid
limit 11;
select  
  max(
    posthistory_1.postid), 
  votes_1.votetypeid, 
  votes_1.postid, 
  votes_1.creationdate, 
  votes_1.votetypeid, 
  votes_1.userid, 
  votes_1.postid, 
  votes_1.creationdate, 
  votes_1.creationdate, 
  posthistory_1.contentlicense, 
  votes_1.userid, 
  votes_1.votetypeid, 
  posthistory_1.creationdate, 
  votes_1.votetypeid, 
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join posthistory as posthistory_1
    on (votes_1.id = posthistory_1.id )
where posthistory_1.id is not NULL
group by posthistory_1.contentlicense, posthistory_1.creationdate, votes_1.creationdate, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 36;
select  
  posts_1.title, 
  posts_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.creationdate < posts_1.creationdate
limit 31;
select  
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join postlinks as postlinks_1
    on (votes_1.id = postlinks_1.id )
where postlinks_1.creationdate > votes_1.creationdate
limit 34;
select  
  comments_1.text, 
  comments_1.creationdate, 
  comments_1.contentlicense, 
  comments_1.userdisplayname, 
  comments_1.id, 
  comments_1.userdisplayname, 
  comments_1.creationdate, 
  comments_1.postid, 
  max(
    comments_1.creationdate), 
  comments_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.creationdate is not NULL
group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.text, comments_1.userdisplayname
limit 19;
select  
  users_1.websiteurl, 
  max(
    badges_1.userid), 
  posthistory_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
      inner join users as users_1
      on (badges_1.id = users_1.id )
    inner join posthistory as posthistory_1
    on (badges_1.id = posthistory_1.id )
where users_1.profileimageurl >= posthistory_1.id
group by posthistory_1.userdisplayname, users_1.websiteurl
limit 13;
select  
  votes_1.id, 
  votes_1.userid, 
  votes_1.postid, 
  votes_1.votetypeid, 
  votes_1.id, 
  votes_1.userid, 
  count(*), 
  votes_1.id, 
  votes_1.id, 
  votes_1.postid, 
  votes_1.userid, 
  votes_1.id, 
  votes_1.creationdate, 
  min(
    votes_1.votetypeid), 
  votes_1.userid, 
  votes_1.id, 
  votes_1.postid, 
  votes_1.userid, 
  votes_1.userid, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 4;
select  
  min(
    posts_1.creationdate), 
  posts_1.acceptedanswerid, 
  posts_1.acceptedanswerid, 
  posts_1.ownerdisplayname, 
  posts_1.body, 
  posts_1.posttypeid, 
  max(
    posts_1.creationdate), 
  avg(
    posts_1.parentid), 
  posts_1.owneruserid, 
  posts_1.posttypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.contentlicense is not NULL
group by posts_1.acceptedanswerid, posts_1.body, posts_1.ownerdisplayname, posts_1.owneruserid, posts_1.posttypeid
limit 21;
select  
  posthistory_1.revisionguid, 
  posthistory_1.userid, 
  max(
    posthistory_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.creationdate <= posthistory_1.creationdate
group by posthistory_1.revisionguid, posthistory_1.userid
limit 38;
select  
  badges_1.userid, 
  min(
    badges_1.class), 
  postlinks_1.creationdate, 
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join badges as badges_1
    on (postlinks_1.id = badges_1.id )
where postlinks_1.relatedpostid > badges_1.id
group by badges_1.class, badges_1.userid, postlinks_1.creationdate
limit 4;
select  
  min(
    posthistory_2.creationdate), 
  posthistory_2.postid, 
  posthistory_1.comment
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join posthistory as posthistory_1
      inner join posthistory as posthistory_2
      on (posthistory_1.id = posthistory_2.id )
    on (votes_1.id = posthistory_2.id )
where posthistory_1.text is not NULL
group by posthistory_1.comment, posthistory_2.postid
limit 34;
select  
  postlinks_1.linktypeid, 
  postlinks_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
limit 4;
select  
  postlinks_1.linktypeid, 
  min(
    comments_1.creationdate), 
  min(
    postlinks_1.creationdate), 
  postlinks_1.creationdate, 
  users_1.location, 
  users_1.accountid, 
  comments_1.creationdate, 
  postlinks_1.creationdate, 
  postlinks_1.creationdate, 
  comments_1.contentlicense, 
  users_1.id, 
  postlinks_1.relatedpostid, 
  comments_1.creationdate, 
  comments_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
      inner join comments as comments_1
      on (postlinks_1.id = comments_1.id )
    inner join users as users_1
    on (postlinks_1.id = users_1.id )
where comments_1.postid is not NULL
group by comments_1.contentlicense, comments_1.creationdate, comments_1.userdisplayname, postlinks_1.creationdate, postlinks_1.linktypeid, postlinks_1.relatedpostid, users_1.accountid, users_1.id, users_1.location
limit 12;
select  
  postlinks_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
limit 34;
select  
  max(
    users_1.accountid), 
  count(
    posthistory_1.userdisplayname), 
  posthistory_1.posthistorytypeid, 
  postlinks_1.linktypeid, 
  posthistory_1.text, 
  max(
    posthistory_1.creationdate), 
  users_1.displayname, 
  posthistory_1.id, 
  postlinks_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
      inner join postlinks as postlinks_1
      on (posthistory_1.id = postlinks_1.id )
    inner join users as users_1
    on (posthistory_1.id = users_1.id )
where postlinks_1.relatedpostid is not NULL
group by posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.text, postlinks_1.id, postlinks_1.linktypeid, users_1.displayname
limit 24;
select  
  users_1.location, 
  users_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.creationdate is not NULL
limit 19;
select  
  votes_1.postid, 
  votes_1.creationdate, 
  max(
    votes_1.creationdate), 
  sum(
    votes_1.id), 
  sum(
    votes_1.userid), 
  count(*), 
  votes_1.creationdate, 
  votes_1.votetypeid, 
  votes_1.creationdate, 
  votes_1.postid, 
  votes_1.id, 
  votes_1.creationdate, 
  count(
    votes_1.userid), 
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.id is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.votetypeid
limit 40;
select  
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate >= postlinks_1.creationdate
limit 42;
select  
  users_1.location, 
  users_1.creationdate, 
  users_1.profileimageurl, 
  users_1.accountid, 
  users_1.accountid, 
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join users as users_1
      inner join badges as badges_1
      on (users_1.id = badges_1.id )
    on (votes_1.id = users_1.id )
where users_1.accountid is not NULL
limit 13;
select  
  users_1.location, 
  badges_1.name, 
  badges_1.class, 
  users_1.profileimageurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join users as users_1
    on (badges_1.id = users_1.id )
where users_1.accountid is not NULL
limit 19;
select  
  postlinks_1.creationdate, 
  sum(
    votes_2.postid), 
  votes_2.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
      inner join votes as votes_2
      on (votes_1.id = votes_2.id )
    inner join postlinks as postlinks_1
    on (votes_2.id = postlinks_1.id )
where votes_2.creationdate is not NULL
group by postlinks_1.creationdate, votes_2.creationdate
limit 42;
select  
  posthistory_1.revisionguid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.posthistorytypeid is not NULL
limit 20;
select  
  badges_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.id is not NULL
limit 40;
select  
  badges_1.id, 
  badges_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
      inner join badges as badges_1
      on (comments_1.id = badges_1.id )
    inner join users as users_1
    on (badges_1.id = users_1.id )
where users_1.aboutme is not NULL
limit 23;
select  
  votes_1.userid, 
  min(
    votes_1.userid), 
  votes_1.userid, 
  votes_1.postid, 
  votes_1.votetypeid, 
  votes_1.userid, 
  votes_1.postid, 
  votes_1.creationdate, 
  votes_1.id, 
  votes_1.userid, 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.votetypeid is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 9;
select  
  min(
    postlinks_1.id), 
  postlinks_1.id, 
  postlinks_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
group by postlinks_1.creationdate, postlinks_1.id
limit 28;
select  
  badges_1.class, 
  badges_1.id, 
  badges_1.id, 
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.date > badges_1.date
limit 27;
select  
  count(
    users_1.profileimageurl), 
  users_1.accountid, 
  users_1.aboutme, 
  users_1.creationdate, 
  users_1.aboutme, 
  users_1.websiteurl, 
  users_1.id, 
  users_1.creationdate, 
  users_1.websiteurl, 
  users_1.creationdate, 
  users_1.id, 
  users_1.profileimageurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.creationdate is not NULL
group by users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.id, users_1.profileimageurl, users_1.websiteurl
limit 28;
select  
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
        inner join users as users_1
        on (votes_1.id = users_1.id )
      inner join posts as posts_1
      on (users_1.id = posts_1.id )
    inner join badges as badges_1
    on (users_1.id = badges_1.id )
where badges_1.userid is not NULL
limit 2;
select  
  comments_1.userid, 
  comments_1.postid, 
  postlinks_1.postid, 
  postlinks_1.relatedpostid, 
  postlinks_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join comments as comments_1
      inner join postlinks as postlinks_2
      on (comments_1.id = postlinks_2.id )
    on (postlinks_1.id = comments_1.id )
where postlinks_2.linktypeid is not NULL
limit 5;
select  
  posthistory_1.posthistorytypeid, 
  posthistory_1.comment, 
  posthistory_1.id, 
  posthistory_1.revisionguid, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.creationdate is not NULL
limit 42;
select  
  posthistory_1.revisionguid, 
  posthistory_1.revisionguid, 
  posthistory_1.userid, 
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
        inner join posthistory as posthistory_1
        on (posts_1.id = posthistory_1.id )
      inner join badges as badges_1
      on (posthistory_1.id = badges_1.id )
    inner join posts as posts_2
    on (posts_1.id = posts_2.id )
where badges_1.date is not NULL
limit 33;
select  
  badges_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join users as users_1
        inner join posts as posts_1
        on (users_1.id = posts_1.id )
      inner join badges as badges_2
      on (users_1.id = badges_2.id )
    on (badges_1.id = badges_2.id )
where posts_1.ownerdisplayname > badges_1.name
limit 7;
select  
  posthistory_1.revisionguid, 
  posthistory_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.userid <= posthistory_1.postid
limit 35;
select  
  users_1.aboutme, 
  users_1.id, 
  users_1.creationdate, 
  min(
    users_1.creationdate), 
  users_1.profileimageurl, 
  users_1.creationdate, 
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.id is not NULL
group by users_1.aboutme, users_1.creationdate, users_1.id, users_1.profileimageurl
limit 16;
select  
  votes_3.votetypeid, 
  users_1.location, 
  votes_3.creationdate, 
  votes_1.userid, 
  votes_3.creationdate, 
  users_1.displayname, 
  posts_1.contentlicense, 
  users_1.creationdate, 
  min(
    votes_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join votes as votes_2
      inner join posts as posts_1
        inner join users as users_1
          inner join votes as votes_3
          on (users_1.id = votes_3.id )
        on (posts_1.id = votes_3.id )
      on (votes_2.id = users_1.id )
    on (votes_1.id = votes_2.id )
where users_1.creationdate is not NULL
group by posts_1.contentlicense, users_1.creationdate, users_1.displayname, users_1.location, votes_1.userid, votes_3.creationdate, votes_3.votetypeid
limit 19;
select  
  count(
    posthistory_1.comment), 
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join posthistory as posthistory_1
      inner join posts as posts_1
      on (posthistory_1.id = posts_1.id )
    on (votes_1.id = posts_1.id )
where posthistory_1.userid is not NULL
group by votes_1.userid
limit 18;
select  
  posts_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.parentid = posts_1.id
limit 39;
select  
  min(
    users_1.accountid), 
  users_1.aboutme, 
  users_1.displayname, 
  users_1.aboutme, 
  users_1.profileimageurl, 
  users_1.accountid, 
  users_1.aboutme, 
  users_1.accountid, 
  users_1.accountid, 
  users_1.accountid, 
  users_1.location
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.creationdate < users_1.creationdate
group by users_1.aboutme, users_1.accountid, users_1.displayname, users_1.location, users_1.profileimageurl
limit 39;
select  
  avg(
    users_1.accountid), 
  comments_2.contentlicense, 
  votes_2.id, 
  comments_2.creationdate, 
  max(
    users_1.creationdate), 
  votes_2.id, 
  comments_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
      inner join users as users_1
      on (comments_1.id = users_1.id )
    inner join votes as votes_1
      inner join comments as comments_2
        inner join votes as votes_2
        on (comments_2.id = votes_2.id )
      on (votes_1.id = comments_2.id )
    on (comments_1.id = votes_1.id )
where comments_1.postid is not NULL
group by comments_1.creationdate, comments_2.contentlicense, comments_2.creationdate, votes_2.id
limit 4;
select  
  votes_1.creationdate, 
  votes_1.votetypeid, 
  votes_1.userid, 
  votes_1.votetypeid, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.id is not NULL
limit 40;
select  
  votes_1.userid, 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.userid is not NULL
limit 9;
select  
  users_1.id, 
  users_1.websiteurl, 
  users_1.aboutme, 
  users_1.id, 
  max(
    users_1.id), 
  users_1.websiteurl, 
  users_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.creationdate is not NULL
group by users_1.aboutme, users_1.id, users_1.websiteurl
limit 8;
select  
  posts_2.body, 
  users_2.accountid, 
  users_1.accountid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
      inner join users as users_1
      on (postlinks_1.id = users_1.id )
    inner join users as users_2
        inner join comments as comments_1
          inner join posts as posts_1
          on (comments_1.id = posts_1.id )
        on (users_2.id = comments_1.id )
      inner join posts as posts_2
      on (users_2.id = posts_2.id )
    on (users_1.id = users_2.id )
where users_2.displayname is not NULL
limit 13;
select  
  votes_1.creationdate, 
  votes_1.id, 
  votes_1.id, 
  votes_1.userid, 
  count(*), 
  sum(
    votes_1.postid), 
  posthistory_1.postid, 
  votes_1.postid, 
  posthistory_1.userdisplayname, 
  votes_1.creationdate, 
  votes_1.postid, 
  posthistory_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join votes as votes_1
    on (posthistory_1.id = votes_1.id )
where votes_1.userid is not NULL
group by posthistory_1.postid, posthistory_1.userdisplayname, posthistory_1.userid, votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid
limit 23;
select  
  posts_1.tags, 
  posthistory_1.postid, 
  sum(
    posthistory_1.id), 
  max(
    posts_2.creationdate), 
  badges_1.tagbased
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
      inner join posts as posts_2
      on (posts_1.id = posts_2.id )
    inner join badges as badges_1
      inner join posthistory as posthistory_1
      on (badges_1.id = posthistory_1.id )
    on (posts_2.id = posthistory_1.id )
where posts_2.creationdate is not NULL
group by badges_1.tagbased, posthistory_1.postid, posts_1.tags
limit 7;
select  
  comments_1.userid, 
  postlinks_1.id, 
  comments_1.userid, 
  sum(
    postlinks_1.linktypeid), 
  comments_1.postid, 
  comments_1.id, 
  comments_1.postid, 
  max(
    comments_1.creationdate), 
  max(
    comments_1.id), 
  postlinks_1.relatedpostid, 
  comments_1.id, 
  postlinks_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join postlinks as postlinks_1
    on (comments_1.id = postlinks_1.id )
where postlinks_1.linktypeid is not NULL
group by comments_1.id, comments_1.postid, comments_1.userid, postlinks_1.creationdate, postlinks_1.id, postlinks_1.relatedpostid
limit 16;
select  
  badges_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.class is not NULL
limit 6;
select  
  comments_1.postid, 
  max(
    comments_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.id is not NULL
group by comments_1.postid
limit 7;
select  
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid, 
  postlinks_1.creationdate, 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
limit 34;
select  
  min(
    votes_1.userid), 
  votes_1.userid, 
  votes_1.id, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.postid is not NULL
group by votes_1.id, votes_1.postid, votes_1.userid
limit 22;
select  
  posts_1.parentid, 
  posts_1.ownerdisplayname, 
  votes_1.creationdate, 
  votes_2.userid, 
  votes_1.votetypeid, 
  max(
    posts_1.creationdate), 
  max(
    votes_2.creationdate), 
  min(
    votes_2.creationdate), 
  votes_2.id, 
  votes_2.creationdate, 
  votes_1.userid, 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join posts as posts_1
      inner join votes as votes_2
      on (posts_1.id = votes_2.id )
    on (votes_1.id = votes_2.id )
where votes_1.postid is not NULL
group by posts_1.ownerdisplayname, posts_1.parentid, votes_1.creationdate, votes_1.id, votes_1.userid, votes_1.votetypeid, votes_2.creationdate, votes_2.id, votes_2.userid
limit 4;
select  
  posts_1.tags, 
  posts_1.body, 
  sum(
    posts_1.posttypeid), 
  posts_1.title, 
  count(*), 
  posts_1.acceptedanswerid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.tags is not NULL
group by posts_1.acceptedanswerid, posts_1.body, posts_1.tags, posts_1.title
limit 11;
select  
  users_1.aboutme
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.profileimageurl is not NULL
limit 36;
select  
  comments_1.userdisplayname, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.postid is not NULL
group by comments_1.userdisplayname
limit 1;
select  
  postlinks_1.creationdate, 
  postlinks_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join postlinks as postlinks_1
    on (comments_1.id = postlinks_1.id )
where comments_1.userdisplayname is not NULL
limit 7;
select  
  postlinks_1.linktypeid, 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
limit 18;
select  
  posts_1.owneruserid, 
  posts_1.body
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.owneruserid <= posts_1.acceptedanswerid
limit 15;
select  
  comments_1.userdisplayname, 
  comments_1.creationdate, 
  comments_1.creationdate, 
  comments_1.userid, 
  comments_1.text, 
  comments_1.userid, 
  max(
    comments_1.userid), 
  min(
    comments_1.creationdate), 
  comments_1.userid, 
  comments_1.creationdate, 
  comments_1.postid, 
  comments_1.contentlicense, 
  comments_1.userid, 
  min(
    comments_1.userid), 
  comments_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.contentlicense <= comments_1.userdisplayname
group by comments_1.contentlicense, comments_1.creationdate, comments_1.postid, comments_1.text, comments_1.userdisplayname, comments_1.userid
limit 26;
select  
  avg(
    badges_1.class)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join badges as badges_2
      inner join posthistory as posthistory_1
      on (badges_2.id = posthistory_1.id )
    on (badges_1.id = badges_2.id )
where posthistory_1.contentlicense < badges_1.name
limit 32;
select  
  min(
    votes_1.userid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join votes as votes_1
    on (badges_1.id = votes_1.id )
where badges_1.id is not NULL
limit 12;
select  
  postlinks_1.postid, 
  min(
    postlinks_1.creationdate), 
  max(
    postlinks_1.relatedpostid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
group by postlinks_1.postid
limit 36;
select  
  avg(
    posthistory_1.postid), 
  posthistory_1.userdisplayname, 
  avg(
    posthistory_1.userid), 
  posthistory_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.postid <= posthistory_1.posthistorytypeid
group by posthistory_1.creationdate, posthistory_1.userdisplayname
limit 10;
select  
  users_1.aboutme, 
  users_1.displayname, 
  posthistory_1.userdisplayname, 
  users_1.creationdate, 
  posthistory_1.userid, 
  max(
    posthistory_1.creationdate), 
  posthistory_1.contentlicense, 
  users_1.accountid, 
  users_1.websiteurl, 
  count(
    posthistory_1.postid), 
  users_1.location, 
  posthistory_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join posthistory as posthistory_1
    on (users_1.id = posthistory_1.id )
where users_1.creationdate = posthistory_1.creationdate
group by posthistory_1.contentlicense, posthistory_1.userdisplayname, posthistory_1.userid, users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.displayname, users_1.location, users_1.websiteurl
limit 13;
select  
  min(
    badges_1.date), 
  badges_1.id, 
  badges_1.id, 
  badges_1.name, 
  badges_1.date, 
  badges_1.class, 
  min(
    badges_1.date), 
  badges_1.name, 
  badges_1.tagbased
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.userid is not NULL
group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased
limit 30;
select  
  votes_1.votetypeid, 
  comments_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join votes as votes_1
    on (comments_1.id = votes_1.id )
where comments_1.contentlicense < comments_1.userdisplayname
limit 32;
select  
  users_1.websiteurl, 
  users_1.accountid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.location is not NULL
limit 28;
select  
  posts_1.body, 
  posts_1.body, 
  badges_1.class, 
  min(
    badges_1.date), 
  badges_1.date, 
  avg(
    badges_1.userid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join posts as posts_1
    on (badges_1.id = posts_1.id )
where posts_1.acceptedanswerid <= posts_1.owneruserid
group by badges_1.class, badges_1.date, posts_1.body
limit 15;
select  
  badges_1.tagbased, 
  badges_1.tagbased, 
  badges_1.userid, 
  count(
    badges_1.class), 
  badges_1.tagbased, 
  badges_1.date, 
  min(
    badges_1.class), 
  badges_1.tagbased, 
  badges_1.id, 
  badges_1.class, 
  badges_1.class, 
  min(
    badges_1.userid), 
  badges_1.class, 
  badges_1.name, 
  badges_1.tagbased, 
  badges_1.class, 
  badges_1.userid, 
  badges_1.date, 
  badges_1.name, 
  min(
    badges_1.date), 
  badges_1.class, 
  max(
    badges_1.id)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.name < badges_1.name
group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
limit 31;
select  
  users_1.aboutme
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.websiteurl is not NULL
limit 18;
select  
  sum(
    posthistory_1.postid), 
  posthistory_1.posthistorytypeid, 
  posthistory_1.userid, 
  posthistory_1.creationdate, 
  posthistory_1.text, 
  posthistory_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.postid is not NULL
group by posthistory_1.creationdate, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.text, posthistory_1.userid
limit 39;
select  
  max(
    users_1.creationdate), 
  users_1.aboutme, 
  posthistory_1.id, 
  posthistory_1.userid, 
  posthistory_1.postid, 
  users_1.websiteurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join posthistory as posthistory_1
    on (users_1.id = posthistory_1.id )
where posthistory_1.postid is not NULL
group by posthistory_1.id, posthistory_1.postid, posthistory_1.userid, users_1.aboutme, users_1.websiteurl
limit 14;
select  
  max(
    posts_1.creationdate), 
  users_1.profileimageurl, 
  users_1.websiteurl, 
  posts_1.body, 
  posts_1.posttypeid, 
  users_1.creationdate, 
  posts_1.id, 
  users_1.profileimageurl, 
  posts_1.body, 
  max(
    users_1.creationdate), 
  posts_1.acceptedanswerid, 
  users_1.accountid, 
  users_1.websiteurl, 
  users_1.creationdate, 
  posts_1.owneruserid, 
  users_1.location, 
  max(
    posts_1.creationdate), 
  posts_1.acceptedanswerid, 
  users_1.aboutme, 
  users_1.creationdate, 
  users_1.creationdate, 
  posts_1.tags, 
  posts_1.creationdate, 
  users_1.websiteurl, 
  users_1.accountid, 
  posts_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join posts as posts_1
    on (users_1.id = posts_1.id )
where posts_1.ownerdisplayname = users_1.websiteurl
group by posts_1.acceptedanswerid, posts_1.body, posts_1.contentlicense, posts_1.creationdate, posts_1.id, posts_1.owneruserid, posts_1.posttypeid, posts_1.tags, users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.location, users_1.profileimageurl, users_1.websiteurl
limit 5;
select  
  users_2.id, 
  users_1.profileimageurl, 
  users_1.profileimageurl, 
  avg(
    posthistory_1.id), 
  votes_1.creationdate, 
  users_2.location, 
  users_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join votes as votes_1
      inner join users as users_1
          inner join users as users_2
          on (users_1.id = users_2.id )
        inner join posthistory as posthistory_1
        on (users_1.id = posthistory_1.id )
      on (votes_1.id = users_1.id )
    on (comments_1.id = users_1.id )
where users_1.creationdate is not NULL
group by users_1.id, users_1.profileimageurl, users_2.id, users_2.location, votes_1.creationdate
limit 33;
select  
  users_1.creationdate, 
  users_1.profileimageurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join postlinks as postlinks_1
      inner join comments as comments_1
      on (postlinks_1.id = comments_1.id )
    on (users_1.id = comments_1.id )
where users_1.websiteurl is not NULL
limit 7;
select  
  badges_1.date, 
  badges_1.id, 
  badges_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased is not NULL
limit 8;
select  
  users_1.websiteurl, 
  comments_1.userdisplayname, 
  posthistory_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
      inner join posthistory as posthistory_1
      on (comments_1.id = posthistory_1.id )
    inner join users as users_1
      inner join badges as badges_1
      on (users_1.id = badges_1.id )
    on (posthistory_1.id = badges_1.id )
where comments_1.contentlicense is not NULL
limit 26;
select  
  users_1.creationdate, 
  users_1.profileimageurl, 
  count(
    users_1.profileimageurl), 
  posts_1.tags, 
  posts_1.contentlicense, 
  users_1.accountid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join posts as posts_1
    on (users_1.id = posts_1.id )
where users_1.displayname is not NULL
group by posts_1.contentlicense, posts_1.tags, users_1.accountid, users_1.creationdate, users_1.profileimageurl
limit 5;
select  
  sum(
    votes_1.id), 
  count(
    votes_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate < votes_1.creationdate
limit 29;
select  
  badges_1.name, 
  badges_1.id, 
  min(
    badges_1.date), 
  badges_1.class, 
  badges_1.name, 
  badges_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.userid is not NULL
group by badges_1.class, badges_1.id, badges_1.name
limit 17;
select  
  comments_3.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
        inner join posthistory as posthistory_1
        on (comments_1.id = posthistory_1.id )
      inner join comments as comments_2
      on (posthistory_1.id = comments_2.id )
    inner join comments as comments_3
      inner join badges as badges_1
        inner join votes as votes_1
        on (badges_1.id = votes_1.id )
      on (comments_3.id = badges_1.id )
    on (comments_1.id = badges_1.id )
where badges_1.class is not NULL
limit 37;
select  
  postlinks_1.linktypeid, 
  postlinks_1.linktypeid, 
  min(
    postlinks_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.id is not NULL
group by postlinks_1.linktypeid
limit 29;
select  
  badges_1.userid, 
  posthistory_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
      inner join badges as badges_1
      on (comments_1.id = badges_1.id )
    inner join posthistory as posthistory_1
    on (badges_1.id = posthistory_1.id )
where badges_1.tagbased <= badges_1.tagbased
limit 22;
select  
  posthistory_1.contentlicense, 
  min(
    posthistory_1.posthistorytypeid), 
  posthistory_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join posthistory as posthistory_1
    on (comments_1.id = posthistory_1.id )
where comments_1.userdisplayname is not NULL
group by posthistory_1.contentlicense, posthistory_1.userdisplayname
limit 7;
select  
  votes_1.votetypeid, 
  postlinks_1.id, 
  users_1.profileimageurl, 
  postlinks_1.id, 
  votes_1.votetypeid, 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
      inner join users as users_1
      on (votes_1.id = users_1.id )
    inner join users as users_2
      inner join postlinks as postlinks_1
      on (users_2.id = postlinks_1.id )
    on (users_1.id = users_2.id )
where users_1.aboutme is not NULL
limit 20;
select  
  min(
    comments_1.creationdate), 
  comments_1.contentlicense, 
  comments_1.creationdate, 
  min(
    comments_1.creationdate), 
  comments_1.userid, 
  comments_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.contentlicense is not NULL
group by comments_1.contentlicense, comments_1.creationdate, comments_1.userid
limit 12;
select  
  users_1.aboutme, 
  users_1.aboutme, 
  users_1.location, 
  count(*), 
  users_1.displayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.creationdate is not NULL
group by users_1.aboutme, users_1.displayname, users_1.location
limit 30;
select  
  posthistory_1.userdisplayname, 
  posthistory_1.text, 
  posthistory_1.text, 
  posthistory_1.text, 
  posthistory_1.id, 
  posthistory_1.userdisplayname, 
  max(
    posthistory_1.creationdate), 
  min(
    posthistory_1.creationdate), 
  posthistory_1.id, 
  posthistory_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.id is not NULL
group by posthistory_1.creationdate, posthistory_1.id, posthistory_1.text, posthistory_1.userdisplayname
limit 4;
select  
  count(*), 
  posthistory_1.revisionguid, 
  count(
    postlinks_1.linktypeid), 
  min(
    postlinks_1.creationdate), 
  posthistory_1.creationdate, 
  max(
    postlinks_1.creationdate), 
  max(
    posthistory_1.posthistorytypeid), 
  posthistory_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
      inner join badges as badges_1
      on (postlinks_1.id = badges_1.id )
    inner join posthistory as posthistory_1
    on (postlinks_1.id = posthistory_1.id )
where badges_1.class >= posthistory_1.posthistorytypeid
group by posthistory_1.creationdate, posthistory_1.revisionguid, posthistory_1.userid
limit 15;
select  
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid, 
  votes_1.userid, 
  max(
    posthistory_1.creationdate), 
  max(
    postlinks_1.creationdate), 
  count(
    posthistory_1.postid), 
  posthistory_1.postid, 
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid, 
  votes_1.votetypeid, 
  max(
    postlinks_1.relatedpostid), 
  posthistory_1.comment, 
  posthistory_1.contentlicense, 
  votes_1.postid, 
  votes_1.id, 
  postlinks_1.postid, 
  posthistory_1.comment, 
  votes_1.userid, 
  max(
    postlinks_1.relatedpostid), 
  votes_1.postid, 
  postlinks_1.postid, 
  votes_1.creationdate, 
  postlinks_1.id, 
  posthistory_1.posthistorytypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join posthistory as posthistory_1
      inner join postlinks as postlinks_1
      on (posthistory_1.id = postlinks_1.id )
    on (votes_1.id = postlinks_1.id )
where posthistory_1.text < posthistory_1.contentlicense
group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.posthistorytypeid, posthistory_1.postid, postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid, votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 18;
select  
  posthistory_1.revisionguid, 
  users_1.location, 
  posthistory_1.id, 
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join users as users_1
    on (posthistory_1.id = users_1.id )
where users_1.displayname is not NULL
limit 10;
select  
  badges_1.id, 
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased is not NULL
limit 9;
select  
  users_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join votes as votes_1
    on (users_1.id = votes_1.id )
where votes_1.postid = users_1.accountid
limit 4;
select  
  badges_1.name, 
  badges_1.class, 
  badges_1.userid, 
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.userid is not NULL
limit 4;
select  
  max(
    votes_1.id), 
  badges_1.class, 
  votes_1.creationdate, 
  comments_1.id, 
  postlinks_1.creationdate, 
  posthistory_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join postlinks as postlinks_1
        inner join votes as votes_1
          inner join comments as comments_1
          on (votes_1.id = comments_1.id )
        on (postlinks_1.id = votes_1.id )
      inner join posthistory as posthistory_1
      on (comments_1.id = posthistory_1.id )
    on (badges_1.id = votes_1.id )
where posthistory_1.userdisplayname is not NULL
group by badges_1.class, comments_1.id, posthistory_1.userdisplayname, postlinks_1.creationdate, votes_1.creationdate
limit 37;
select  
  max(
    badges_1.date), 
  badges_1.id, 
  badges_1.class, 
  badges_1.id, 
  badges_1.userid, 
  badges_1.id, 
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.userid is not NULL
group by badges_1.class, badges_1.id, badges_1.userid
limit 17;
select  
  posthistory_1.id, 
  posts_1.id, 
  posts_1.body, 
  posts_1.owneruserid, 
  posthistory_1.creationdate, 
  posthistory_1.userdisplayname, 
  min(
    posts_1.creationdate), 
  posts_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join posthistory as posthistory_1
    on (posts_1.id = posthistory_1.id )
where posts_1.acceptedanswerid <= posthistory_1.id
group by posthistory_1.creationdate, posthistory_1.id, posthistory_1.userdisplayname, posts_1.body, posts_1.id, posts_1.owneruserid
limit 28;
select  
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join votes as votes_1
          inner join postlinks as postlinks_1
          on (votes_1.id = postlinks_1.id )
        inner join votes as votes_2
          inner join users as users_1
          on (votes_2.id = users_1.id )
        on (postlinks_1.id = users_1.id )
      inner join postlinks as postlinks_2
        inner join comments as comments_1
        on (postlinks_2.id = comments_1.id )
      on (votes_2.id = postlinks_2.id )
    on (posts_1.id = users_1.id )
where postlinks_2.relatedpostid is not NULL
limit 36;
select  
  max(
    comments_1.userid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userid = comments_1.id
limit 12;
select  
  users_1.aboutme, 
  users_1.id, 
  min(
    users_1.accountid), 
  users_1.id, 
  max(
    users_1.profileimageurl), 
  users_1.displayname, 
  max(
    users_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.creationdate <= users_1.creationdate
group by users_1.aboutme, users_1.displayname, users_1.id
limit 7;
select  
  badges_1.id, 
  badges_1.date, 
  badges_1.name, 
  sum(
    badges_1.id), 
  badges_1.class, 
  badges_1.name, 
  badges_1.date, 
  badges_1.class, 
  badges_1.date, 
  badges_1.tagbased, 
  badges_1.name, 
  badges_1.name, 
  badges_1.tagbased
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.class >= badges_1.id
group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased
limit 23;
select  
  sum(
    votes_1.userid), 
  votes_1.votetypeid, 
  votes_1.postid, 
  votes_1.id, 
  votes_1.creationdate, 
  votes_1.postid, 
  votes_1.id, 
  votes_1.postid, 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.id is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.votetypeid
limit 18;
select  
  min(
    posthistory_1.creationdate), 
  posthistory_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.userdisplayname is not NULL
group by posthistory_1.contentlicense
limit 20;
select  
  postlinks_1.id, 
  min(
    users_1.id)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join users as users_1
    on (postlinks_1.id = users_1.id )
where postlinks_1.id is not NULL
group by postlinks_1.id
limit 21;
select  
  postlinks_1.linktypeid, 
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  postlinks_1.linktypeid, 
  postlinks_1.id, 
  postlinks_1.relatedpostid, 
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid, 
  postlinks_1.linktypeid, 
  postlinks_1.postid, 
  max(
    postlinks_1.relatedpostid), 
  postlinks_1.linktypeid, 
  count(*), 
  postlinks_1.postid, 
  postlinks_1.linktypeid, 
  postlinks_1.id, 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
group by postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 37;
select  
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
limit 20;
select  
  posthistory_1.contentlicense, 
  posthistory_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.revisionguid is not NULL
limit 17;
select  
  posts_1.owneruserid, 
  posts_1.owneruserid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.parentid = posts_1.owneruserid
limit 22;
select  
  users_1.location, 
  users_1.websiteurl, 
  users_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.creationdate < users_1.creationdate
limit 36;
select  
  comments_1.id, 
  min(
    comments_1.creationdate), 
  posts_1.body, 
  posts_1.posttypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join comments as comments_1
    on (posts_1.id = comments_1.id )
where comments_1.contentlicense is not NULL
group by comments_1.id, posts_1.body, posts_1.posttypeid
limit 38;
select  
  postlinks_1.postid, 
  postlinks_1.relatedpostid, 
  postlinks_1.id, 
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid, 
  count(*), 
  postlinks_1.postid, 
  postlinks_1.id, 
  postlinks_1.postid, 
  postlinks_1.id, 
  postlinks_1.creationdate, 
  sum(
    postlinks_1.id), 
  postlinks_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.postid, postlinks_1.relatedpostid
limit 32;
select  
  badges_1.name, 
  badges_1.date, 
  badges_1.userid, 
  badges_1.name, 
  badges_1.class, 
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.date is not NULL
limit 6;
select  
  comments_1.creationdate, 
  comments_1.id, 
  comments_1.text, 
  min(
    comments_1.creationdate), 
  posts_1.creationdate, 
  count(*), 
  posts_1.tags, 
  comments_1.userid, 
  posts_1.contentlicense, 
  comments_1.contentlicense, 
  posts_1.body, 
  min(
    posts_1.creationdate), 
  comments_1.postid, 
  comments_1.userid, 
  comments_1.creationdate, 
  posts_1.title
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join posts as posts_1
    on (comments_1.id = posts_1.id )
where posts_1.owneruserid is not NULL
group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.text, comments_1.userid, posts_1.body, posts_1.contentlicense, posts_1.creationdate, posts_1.tags, posts_1.title
limit 33;
select  
  badges_2.userid, 
  badges_1.tagbased, 
  max(
    badges_1.userid), 
  max(
    posthistory_1.creationdate), 
  badges_1.name, 
  posthistory_1.userid, 
  badges_1.date, 
  badges_1.name, 
  badges_1.tagbased
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
      inner join posthistory as posthistory_1
      on (badges_1.id = posthistory_1.id )
    inner join badges as badges_2
    on (badges_1.id = badges_2.id )
where posthistory_1.contentlicense < posthistory_1.comment
group by badges_1.date, badges_1.name, badges_1.tagbased, badges_2.userid, posthistory_1.userid
limit 36;
select  
  posthistory_1.userdisplayname, 
  posthistory_1.revisionguid, 
  posthistory_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.creationdate is not NULL
limit 33;
select  
  posts_1.title, 
  sum(
    posts_1.acceptedanswerid), 
  posts_1.posttypeid, 
  posts_1.tags, 
  posts_1.id, 
  posts_1.posttypeid, 
  posts_1.body
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.parentid is not NULL
group by posts_1.body, posts_1.id, posts_1.posttypeid, posts_1.tags, posts_1.title
limit 16;
select  
  comments_1.id, 
  comments_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.creationdate <= comments_1.creationdate
limit 31;
select  
  sum(
    votes_1.postid), 
  votes_1.userid, 
  votes_1.creationdate, 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate >= votes_1.creationdate
group by votes_1.creationdate, votes_1.id, votes_1.userid
limit 1;
select  
  votes_2.creationdate, 
  votes_1.id, 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join votes as votes_2
    on (votes_1.id = votes_2.id )
where votes_1.votetypeid is not NULL
limit 36;
select  
  comments_1.userid, 
  comments_1.userid, 
  comments_1.creationdate, 
  comments_1.userid, 
  comments_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.contentlicense is not NULL
limit 31;
select  
  users_1.displayname, 
  max(
    users_1.creationdate), 
  min(
    users_1.profileimageurl), 
  users_1.accountid, 
  users_1.displayname, 
  users_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.accountid is not NULL
group by users_1.accountid, users_1.displayname, users_1.id
limit 27;
select  
  comments_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
      inner join users as users_1
      on (badges_1.id = users_1.id )
    inner join comments as comments_1
    on (badges_1.id = comments_1.id )
where badges_1.id is not NULL
limit 14;
select  
  badges_1.tagbased, 
  badges_1.userid, 
  postlinks_2.relatedpostid, 
  badges_1.class, 
  badges_1.class, 
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
        inner join badges as badges_1
        on (users_1.id = badges_1.id )
      inner join comments as comments_1
      on (badges_1.id = comments_1.id )
    inner join badges as badges_2
      inner join postlinks as postlinks_1
        inner join postlinks as postlinks_2
        on (postlinks_1.id = postlinks_2.id )
      on (badges_2.id = postlinks_1.id )
    on (badges_1.id = postlinks_1.id )
where comments_1.userdisplayname is not NULL
limit 27;
select  
  min(
    votes_1.creationdate), 
  votes_1.id, 
  min(
    votes_1.creationdate), 
  votes_1.postid, 
  votes_1.id, 
  max(
    votes_1.creationdate), 
  avg(
    votes_1.userid), 
  votes_1.userid, 
  votes_1.creationdate, 
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.votetypeid is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 10;
select  
  comments_1.userdisplayname, 
  comments_1.userdisplayname, 
  comments_1.postid, 
  sum(
    comments_1.postid), 
  comments_1.contentlicense, 
  comments_1.id, 
  comments_1.userid, 
  count(*), 
  comments_1.postid, 
  comments_1.text, 
  comments_1.userid, 
  comments_1.id, 
  comments_1.text, 
  comments_1.postid, 
  comments_1.contentlicense, 
  comments_1.postid, 
  comments_1.userid, 
  comments_1.contentlicense, 
  comments_1.userid, 
  comments_1.userdisplayname, 
  comments_1.creationdate, 
  comments_1.userid, 
  comments_1.creationdate, 
  comments_1.id, 
  comments_1.userid, 
  comments_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userdisplayname is not NULL
group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.text, comments_1.userdisplayname, comments_1.userid
limit 33;
select  
  posts_1.contentlicense, 
  posts_1.contentlicense, 
  posts_1.id, 
  posts_1.owneruserid, 
  posts_1.ownerdisplayname, 
  count(
    posts_1.contentlicense), 
  posts_1.title, 
  posts_1.id, 
  min(
    posts_1.owneruserid), 
  count(
    posts_1.body), 
  min(
    posts_1.creationdate), 
  max(
    posts_1.owneruserid), 
  posts_1.body, 
  posts_1.ownerdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.tags is not NULL
group by posts_1.body, posts_1.contentlicense, posts_1.id, posts_1.ownerdisplayname, posts_1.owneruserid, posts_1.title
limit 18;
select  
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid, 
  postlinks_1.relatedpostid, 
  postlinks_1.postid, 
  postlinks_1.postid, 
  postlinks_1.id, 
  postlinks_1.id, 
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid, 
  min(
    postlinks_1.creationdate), 
  postlinks_1.id, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 27;
select  
  votes_1.creationdate, 
  votes_1.userid, 
  votes_1.creationdate, 
  votes_1.id, 
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate < votes_1.creationdate
limit 7;
select  
  users_1.profileimageurl, 
  users_1.websiteurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.profileimageurl > users_1.accountid
limit 11;
select  
  posthistory_1.id, 
  max(
    posts_2.creationdate), 
  posthistory_1.comment, 
  posts_1.tags, 
  votes_1.creationdate, 
  posthistory_1.revisionguid, 
  posts_2.owneruserid, 
  badges_1.class, 
  badges_1.userid, 
  min(
    posthistory_1.userid), 
  posthistory_1.creationdate, 
  posts_1.body, 
  badges_1.tagbased, 
  votes_1.userid, 
  posts_2.owneruserid, 
  posts_1.id, 
  votes_1.creationdate, 
  posts_1.owneruserid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join posthistory as posthistory_1
        inner join badges as badges_1
        on (posthistory_1.id = badges_1.id )
      inner join posts as posts_2
        inner join votes as votes_1
        on (posts_2.id = votes_1.id )
      on (posthistory_1.id = posts_2.id )
    on (posts_1.id = badges_1.id )
where votes_1.votetypeid < posts_1.posttypeid
group by badges_1.class, badges_1.tagbased, badges_1.userid, posthistory_1.comment, posthistory_1.creationdate, posthistory_1.id, posthistory_1.revisionguid, posts_1.body, posts_1.id, posts_1.owneruserid, posts_1.tags, posts_2.owneruserid, votes_1.creationdate, votes_1.userid
limit 10;
select  
  posthistory_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.id >= posthistory_1.userid
limit 36;
select  
  votes_1.id, 
  votes_1.postid, 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.votetypeid = votes_1.id
limit 18;
select  
  posts_1.contentlicense, 
  votes_1.id, 
  posts_2.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
      inner join posts as posts_1
      on (votes_1.id = posts_1.id )
    inner join posts as posts_2
    on (posts_1.id = posts_2.id )
where posts_1.acceptedanswerid is not NULL
limit 21;
select  
  min(
    badges_1.class), 
  badges_1.class, 
  badges_1.name, 
  badges_1.name, 
  badges_1.class, 
  badges_1.tagbased, 
  badges_1.class, 
  badges_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased is not NULL
group by badges_1.class, badges_1.name, badges_1.tagbased
limit 28;
select  
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.id is not NULL
limit 35;
select  
  badges_1.tagbased, 
  votes_1.votetypeid, 
  posts_1.body, 
  max(
    posts_1.id), 
  badges_1.name, 
  badges_1.date, 
  votes_1.postid, 
  max(
    badges_1.date), 
  posts_1.ownerdisplayname, 
  badges_1.userid, 
  badges_1.id, 
  badges_1.id, 
  max(
    posts_1.creationdate), 
  badges_1.userid, 
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
      inner join badges as badges_1
      on (votes_1.id = badges_1.id )
    inner join posts as posts_1
    on (badges_1.id = posts_1.id )
where votes_1.id is not NULL
group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid, posts_1.body, posts_1.ownerdisplayname, votes_1.postid, votes_1.votetypeid
limit 17;
select  
  comments_1.text, 
  comments_1.userid, 
  comments_1.contentlicense, 
  comments_1.text, 
  comments_1.creationdate, 
  avg(
    comments_2.id), 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
      inner join postlinks as postlinks_1
      on (comments_1.id = postlinks_1.id )
    inner join comments as comments_2
      inner join votes as votes_1
      on (comments_2.id = votes_1.id )
    on (postlinks_1.id = votes_1.id )
where postlinks_1.creationdate <= votes_1.creationdate
group by comments_1.contentlicense, comments_1.creationdate, comments_1.text, comments_1.userid, votes_1.id
limit 34;
select  
  sum(
    votes_1.postid), 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
      inner join users as users_1
      on (votes_1.id = users_1.id )
    inner join users as users_2
    on (users_1.id = users_2.id )
where users_1.id is not NULL
group by votes_1.id
limit 23;
select  
  votes_1.creationdate, 
  votes_1.votetypeid, 
  votes_1.votetypeid, 
  votes_1.userid, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.id is not NULL
limit 39;
select  
  users_1.location, 
  users_1.websiteurl, 
  users_1.websiteurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.location is not NULL
limit 9;
select  
  postlinks_2.relatedpostid, 
  postlinks_1.relatedpostid, 
  postlinks_2.linktypeid, 
  postlinks_2.id, 
  postlinks_2.id, 
  postlinks_2.id, 
  max(
    postlinks_2.id), 
  postlinks_2.linktypeid, 
  postlinks_1.creationdate, 
  postlinks_2.postid, 
  postlinks_2.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join postlinks as postlinks_2
    on (postlinks_1.id = postlinks_2.id )
where postlinks_1.relatedpostid is not NULL
group by postlinks_1.creationdate, postlinks_1.relatedpostid, postlinks_2.id, postlinks_2.linktypeid, postlinks_2.postid, postlinks_2.relatedpostid
limit 41;
select  
  votes_1.userid, 
  votes_1.postid, 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join posthistory as posthistory_1
    on (votes_1.id = posthistory_1.id )
where posthistory_1.text > posthistory_1.comment
limit 26;
select  
  users_1.id, 
  posts_2.acceptedanswerid, 
  users_1.profileimageurl, 
  posts_1.ownerdisplayname, 
  posts_1.tags, 
  posts_2.ownerdisplayname, 
  posts_2.creationdate, 
  posts_1.tags, 
  posts_1.posttypeid, 
  posts_1.ownerdisplayname, 
  users_1.profileimageurl, 
  posts_1.body, 
  posts_1.creationdate, 
  users_1.websiteurl, 
  posts_2.parentid, 
  posts_1.posttypeid, 
  posts_2.parentid, 
  max(
    posts_1.acceptedanswerid), 
  posts_2.contentlicense, 
  users_1.profileimageurl, 
  users_1.accountid, 
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join users as users_1
      inner join posts as posts_2
      on (users_1.id = posts_2.id )
    on (posts_1.id = posts_2.id )
where posts_1.owneruserid is not NULL
group by posts_1.body, posts_1.creationdate, posts_1.ownerdisplayname, posts_1.posttypeid, posts_1.tags, posts_2.acceptedanswerid, posts_2.contentlicense, posts_2.creationdate, posts_2.ownerdisplayname, posts_2.parentid, users_1.accountid, users_1.creationdate, users_1.id, users_1.profileimageurl, users_1.websiteurl
limit 11;
select  
  users_1.websiteurl, 
  posthistory_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join users as users_1
      inner join posthistory as posthistory_1
      on (users_1.id = posthistory_1.id )
    on (comments_1.id = users_1.id )
where comments_1.userid is not NULL
limit 1;
select  
  posts_1.parentid, 
  posts_1.posttypeid, 
  posts_1.tags, 
  posts_1.posttypeid, 
  posts_1.ownerdisplayname, 
  posts_1.tags
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.owneruserid >= posts_1.id
limit 2;
select  
  comments_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
          inner join posts as posts_1
          on (comments_1.id = posts_1.id )
        inner join postlinks as postlinks_1
        on (comments_1.id = postlinks_1.id )
      inner join comments as comments_2
        inner join users as users_1
        on (comments_2.id = users_1.id )
      on (posts_1.id = users_1.id )
    inner join comments as comments_3
    on (comments_1.id = comments_3.id )
where comments_2.text is not NULL
limit 29;
select  
  comments_1.contentlicense, 
  comments_1.postid, 
  comments_1.userid, 
  comments_1.userdisplayname, 
  comments_1.userid, 
  comments_1.contentlicense, 
  comments_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.contentlicense < comments_1.text
limit 8;
select  
  posts_1.parentid, 
  postlinks_1.relatedpostid, 
  min(
    postlinks_1.postid), 
  posts_1.owneruserid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join posts as posts_1
    on (postlinks_1.id = posts_1.id )
where postlinks_1.postid is not NULL
group by postlinks_1.relatedpostid, posts_1.owneruserid, posts_1.parentid
limit 18;
select  
  comments_1.userdisplayname, 
  comments_1.postid, 
  count(
    comments_1.contentlicense)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.contentlicense is not NULL
group by comments_1.postid, comments_1.userdisplayname
limit 21;
select  
  posts_1.creationdate, 
  posts_1.body
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join badges as badges_1
    on (posts_1.id = badges_1.id )
where badges_1.id is not NULL
limit 12;
select  
  min(
    posthistory_1.posthistorytypeid), 
  posthistory_1.comment, 
  min(
    posthistory_1.id), 
  posts_1.posttypeid, 
  min(
    posts_1.creationdate), 
  posts_1.body, 
  posts_1.owneruserid, 
  posthistory_1.posthistorytypeid, 
  posts_1.title, 
  posts_1.body, 
  posts_1.body, 
  sum(
    posts_1.posttypeid), 
  posts_1.body, 
  posthistory_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join posts as posts_1
    on (posthistory_1.id = posts_1.id )
where posts_1.acceptedanswerid is not NULL
group by posthistory_1.comment, posthistory_1.posthistorytypeid, posthistory_1.postid, posts_1.body, posts_1.owneruserid, posts_1.posttypeid, posts_1.title
limit 25;
select  
  users_1.location, 
  max(
    users_1.creationdate), 
  users_1.id, 
  users_1.location, 
  min(
    users_1.id), 
  users_1.creationdate, 
  users_1.websiteurl, 
  min(
    users_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.aboutme is not NULL
group by users_1.creationdate, users_1.id, users_1.location, users_1.websiteurl
limit 31;
select  
  comments_1.creationdate, 
  comments_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join users as users_1
      inner join comments as comments_1
      on (users_1.id = comments_1.id )
    on (postlinks_1.id = users_1.id )
where users_1.id <= postlinks_1.linktypeid
limit 6;
select  
  badges_1.date, 
  badges_1.userid, 
  badges_1.date, 
  badges_1.name, 
  badges_1.name, 
  max(
    badges_1.date), 
  max(
    badges_1.userid), 
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.id >= badges_1.class
group by badges_1.date, badges_1.name, badges_1.userid
limit 16;
select  
  posthistory_1.contentlicense, 
  votes_1.votetypeid, 
  posthistory_1.userdisplayname, 
  posthistory_1.userdisplayname, 
  votes_2.postid, 
  posthistory_1.revisionguid, 
  votes_1.votetypeid, 
  votes_1.userid, 
  votes_1.creationdate, 
  votes_2.id, 
  max(
    votes_2.creationdate), 
  posthistory_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
      inner join votes as votes_2
      on (votes_1.id = votes_2.id )
    inner join posthistory as posthistory_1
    on (votes_1.id = posthistory_1.id )
where posthistory_1.text is not NULL
group by posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.revisionguid, posthistory_1.userdisplayname, votes_1.creationdate, votes_1.userid, votes_1.votetypeid, votes_2.id, votes_2.postid
limit 16;
select  
  posthistory_1.revisionguid, 
  max(
    posthistory_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join users as users_1
    on (posthistory_1.id = users_1.id )
where posthistory_1.creationdate is not NULL
group by posthistory_1.revisionguid
limit 32;
select  
  posthistory_1.text, 
  posthistory_1.userdisplayname, 
  sum(
    posthistory_1.id), 
  posthistory_1.contentlicense, 
  posthistory_1.comment, 
  max(
    posthistory_1.creationdate), 
  max(
    posthistory_1.creationdate), 
  max(
    posthistory_1.creationdate), 
  posthistory_1.posthistorytypeid, 
  min(
    posthistory_1.creationdate), 
  posthistory_1.userdisplayname, 
  posthistory_1.comment, 
  posthistory_1.userid, 
  posthistory_1.posthistorytypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.creationdate is not NULL
group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.posthistorytypeid, posthistory_1.text, posthistory_1.userdisplayname, posthistory_1.userid
limit 29;
select  
  posthistory_2.id, 
  posthistory_2.comment, 
  posthistory_2.id, 
  posthistory_2.comment
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join posthistory as posthistory_2
    on (posthistory_1.id = posthistory_2.id )
where posthistory_2.contentlicense is not NULL
limit 26;
select  
  votes_1.userid, 
  votes_1.id, 
  votes_1.userid, 
  avg(
    votes_1.votetypeid), 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.userid
limit 4;
select  
  users_1.accountid, 
  users_1.displayname, 
  users_1.accountid, 
  users_1.aboutme, 
  users_1.creationdate, 
  users_1.profileimageurl, 
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.id is not NULL
limit 24;
select  
  postlinks_1.id, 
  postlinks_1.creationdate, 
  postlinks_1.id, 
  max(
    postlinks_1.id), 
  postlinks_1.relatedpostid, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.creationdate, 
  postlinks_1.creationdate, 
  sum(
    postlinks_1.postid), 
  postlinks_1.linktypeid, 
  postlinks_1.creationdate, 
  postlinks_1.postid, 
  postlinks_1.linktypeid, 
  min(
    postlinks_1.relatedpostid), 
  postlinks_1.linktypeid, 
  postlinks_1.id, 
  postlinks_1.creationdate, 
  min(
    postlinks_1.creationdate), 
  postlinks_1.postid, 
  postlinks_1.linktypeid, 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.linktypeid <= postlinks_1.postid
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 41;
select  
  badges_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.name <= badges_1.name
limit 4;
select  
  badges_1.name, 
  count(*), 
  badges_1.userid, 
  count(
    badges_1.date), 
  badges_1.date, 
  badges_1.id, 
  badges_1.tagbased, 
  badges_1.name, 
  badges_1.userid, 
  badges_1.tagbased
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.date is not NULL
group by badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
limit 2;
select  
  max(
    votes_1.votetypeid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.id is not NULL
limit 17;
select  
  users_1.displayname, 
  users_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.id > users_1.accountid
limit 38;
select  
  badges_1.name, 
  badges_1.name, 
  badges_1.date, 
  badges_1.name, 
  count(
    badges_1.class), 
  badges_1.userid, 
  badges_1.tagbased, 
  badges_1.userid, 
  badges_1.class, 
  badges_1.userid, 
  badges_1.name, 
  badges_1.id, 
  badges_1.tagbased, 
  badges_1.class, 
  badges_1.tagbased, 
  badges_1.userid, 
  badges_1.class, 
  badges_1.userid, 
  badges_1.date, 
  badges_1.date, 
  max(
    badges_1.userid), 
  badges_1.date, 
  badges_1.class, 
  badges_1.date, 
  badges_1.tagbased, 
  badges_1.tagbased, 
  max(
    badges_1.date), 
  badges_1.userid, 
  min(
    badges_1.date), 
  badges_1.id, 
  sum(
    badges_1.class), 
  badges_1.id, 
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.class is not NULL
group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
limit 41;
select  
  votes_1.userid, 
  votes_1.postid, 
  min(
    posts_1.creationdate), 
  posts_1.body, 
  posts_1.acceptedanswerid, 
  posts_1.owneruserid, 
  count(*), 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join comments as comments_1
      inner join votes as votes_1
        inner join posts as posts_2
        on (votes_1.id = posts_2.id )
      on (comments_1.id = votes_1.id )
    on (posts_1.id = votes_1.id )
where posts_2.parentid > votes_1.votetypeid
group by posts_1.acceptedanswerid, posts_1.body, posts_1.owneruserid, votes_1.creationdate, votes_1.postid, votes_1.userid
limit 27;
select  
  postlinks_1.id, 
  postlinks_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
limit 5;
select  
  posts_1.creationdate, 
  posts_1.tags, 
  posts_1.title
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.creationdate <= posts_1.creationdate
limit 9;
select  
  comments_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join postlinks as postlinks_1
    on (comments_1.id = postlinks_1.id )
where postlinks_1.creationdate is not NULL
limit 4;
select  
  users_1.websiteurl, 
  min(
    users_1.id)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.id > users_1.accountid
group by users_1.websiteurl
limit 33;
select  
  users_1.profileimageurl, 
  users_1.profileimageurl, 
  postlinks_2.postid, 
  votes_1.id, 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
        inner join votes as votes_1
        on (postlinks_1.id = votes_1.id )
      inner join posthistory as posthistory_1
        inner join users as users_1
        on (posthistory_1.id = users_1.id )
      on (postlinks_1.id = users_1.id )
    inner join votes as votes_2
      inner join postlinks as postlinks_2
      on (votes_2.id = postlinks_2.id )
    on (posthistory_1.id = votes_2.id )
where votes_2.id < postlinks_2.relatedpostid
limit 14;
select  
  comments_1.contentlicense, 
  min(
    badges_1.date), 
  badges_1.class, 
  badges_1.userid, 
  max(
    badges_1.date), 
  min(
    comments_1.creationdate), 
  comments_1.userdisplayname, 
  avg(
    badges_1.userid), 
  comments_1.userid, 
  badges_1.userid, 
  avg(
    comments_1.postid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join badges as badges_1
    on (comments_1.id = badges_1.id )
where badges_1.name is not NULL
group by badges_1.class, badges_1.userid, comments_1.contentlicense, comments_1.userdisplayname, comments_1.userid
limit 30;
select  
  users_1.creationdate, 
  posts_1.body, 
  count(
    posts_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
      inner join users as users_1
      on (badges_1.id = users_1.id )
    inner join posts as posts_1
    on (badges_1.id = posts_1.id )
where badges_1.id is not NULL
group by posts_1.body, users_1.creationdate
limit 22;
select  
  votes_1.id, 
  votes_1.userid, 
  votes_1.userid, 
  votes_1.id, 
  votes_1.id, 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate < votes_1.creationdate
limit 27;
select  
  badges_1.id, 
  badges_1.date, 
  badges_1.id, 
  max(
    badges_1.date), 
  badges_1.class, 
  min(
    badges_1.userid), 
  avg(
    badges_1.userid), 
  badges_1.tagbased, 
  badges_1.userid, 
  badges_1.tagbased
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased < badges_1.tagbased
group by badges_1.class, badges_1.date, badges_1.id, badges_1.tagbased, badges_1.userid
limit 23;
select  
  posts_1.body, 
  posts_1.title
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.ownerdisplayname is not NULL
limit 21;
select  
  sum(
    users_1.profileimageurl), 
  users_2.creationdate, 
  users_2.id, 
  users_1.profileimageurl, 
  users_2.location, 
  users_2.profileimageurl, 
  users_1.websiteurl, 
  users_2.location, 
  max(
    users_2.profileimageurl), 
  users_2.displayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join users as users_2
    on (users_1.id = users_2.id )
where users_1.profileimageurl is not NULL
group by users_1.profileimageurl, users_1.websiteurl, users_2.creationdate, users_2.displayname, users_2.id, users_2.location, users_2.profileimageurl
limit 7;
select  
  min(
    postlinks_1.creationdate), 
  postlinks_1.linktypeid, 
  postlinks_1.creationdate, 
  postlinks_1.postid, 
  postlinks_1.id, 
  postlinks_1.id, 
  postlinks_1.relatedpostid, 
  postlinks_1.id, 
  postlinks_1.postid, 
  count(
    postlinks_1.linktypeid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 21;
select  
  posts_1.ownerdisplayname, 
  postlinks_1.id, 
  postlinks_1.postid, 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
      inner join posts as posts_1
          inner join posts as posts_2
          on (posts_1.id = posts_2.id )
        inner join votes as votes_1
        on (posts_1.id = votes_1.id )
      on (comments_1.id = posts_1.id )
    inner join votes as votes_2
      inner join posts as posts_3
        inner join postlinks as postlinks_1
        on (posts_3.id = postlinks_1.id )
      on (votes_2.id = posts_3.id )
    on (votes_1.id = posts_3.id )
where comments_1.id is not NULL
limit 17;
select  
  users_1.creationdate, 
  users_1.displayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.profileimageurl is not NULL
limit 7;
select  
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.userid <= votes_1.postid
limit 39;
select  
  users_1.websiteurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.creationdate is not NULL
limit 12;
select  
  max(
    users_1.profileimageurl), 
  max(
    users_1.creationdate), 
  users_1.websiteurl, 
  users_1.creationdate, 
  users_1.location, 
  users_1.profileimageurl, 
  count(*), 
  max(
    users_1.creationdate), 
  users_1.aboutme, 
  users_1.websiteurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.location is not NULL
group by users_1.aboutme, users_1.creationdate, users_1.location, users_1.profileimageurl, users_1.websiteurl
limit 19;
select  
  comments_1.text, 
  posthistory_1.contentlicense, 
  sum(
    posthistory_1.userid), 
  max(
    posthistory_1.id), 
  posthistory_1.posthistorytypeid, 
  comments_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join posthistory as posthistory_1
    on (comments_1.id = posthistory_1.id )
where comments_1.id = posthistory_1.postid
group by comments_1.id, comments_1.text, posthistory_1.contentlicense, posthistory_1.posthistorytypeid
limit 17;
select  
  users_1.displayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.aboutme is not NULL
limit 5;
select  
  posts_1.ownerdisplayname, 
  posts_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join posts as posts_1
    on (users_1.id = posts_1.id )
where users_1.creationdate is not NULL
limit 30;
select  
  postlinks_1.id, 
  postlinks_1.postid, 
  postlinks_1.postid, 
  postlinks_1.id, 
  postlinks_1.relatedpostid, 
  postlinks_1.creationdate, 
  postlinks_1.postid, 
  postlinks_1.postid, 
  postlinks_1.id, 
  postlinks_1.creationdate, 
  postlinks_1.linktypeid, 
  min(
    postlinks_1.creationdate), 
  postlinks_1.postid, 
  postlinks_1.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate = postlinks_1.creationdate
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 20;
select  
  votes_1.postid, 
  comments_1.postid, 
  comments_1.userid, 
  comments_1.contentlicense, 
  votes_1.votetypeid, 
  count(
    comments_1.userdisplayname), 
  votes_1.creationdate, 
  votes_1.creationdate, 
  users_1.aboutme, 
  votes_1.votetypeid, 
  comments_1.creationdate, 
  comments_1.userid, 
  users_1.websiteurl, 
  users_1.location, 
  votes_1.votetypeid, 
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join users as users_1
      inner join comments as comments_1
      on (users_1.id = comments_1.id )
    on (votes_1.id = users_1.id )
where comments_1.userdisplayname <= comments_1.contentlicense
group by comments_1.contentlicense, comments_1.creationdate, comments_1.postid, comments_1.userid, users_1.aboutme, users_1.location, users_1.websiteurl, votes_1.creationdate, votes_1.postid, votes_1.votetypeid
limit 9;
select  
  max(
    votes_1.creationdate), 
  votes_1.id, 
  min(
    votes_1.userid), 
  max(
    votes_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate < votes_1.creationdate
group by votes_1.id
limit 39;
select  
  posthistory_1.revisionguid, 
  min(
    posthistory_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.contentlicense is not NULL
group by posthistory_1.revisionguid
limit 40;
select  
  users_1.location, 
  min(
    users_1.creationdate), 
  badges_1.name, 
  min(
    users_1.creationdate), 
  comments_1.text, 
  comments_1.postid, 
  min(
    comments_1.userid), 
  comments_1.contentlicense, 
  badges_1.date, 
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join users as users_1
      inner join comments as comments_1
      on (users_1.id = comments_1.id )
    on (badges_1.id = comments_1.id )
where badges_1.date = comments_1.creationdate
group by badges_1.class, badges_1.date, badges_1.name, comments_1.contentlicense, comments_1.postid, comments_1.text, users_1.location
limit 1;
select  
  votes_1.id, 
  votes_1.userid, 
  count(
    votes_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate <= votes_1.creationdate
group by votes_1.id, votes_1.userid
limit 21;
select  
  sum(
    posts_1.owneruserid), 
  posts_1.title, 
  postlinks_1.id, 
  posts_1.posttypeid, 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join posts as posts_1
    on (postlinks_1.id = posts_1.id )
where posts_1.body = posts_1.title
group by postlinks_1.id, postlinks_1.linktypeid, posts_1.posttypeid, posts_1.title
limit 17;
select  
  users_1.creationdate, 
  votes_1.id, 
  votes_1.creationdate, 
  votes_1.userid, 
  votes_1.creationdate, 
  votes_1.postid, 
  users_1.profileimageurl, 
  votes_1.id, 
  votes_1.userid, 
  votes_1.creationdate, 
  max(
    users_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join votes as votes_1
    on (users_1.id = votes_1.id )
where users_1.creationdate is not NULL
group by users_1.creationdate, users_1.profileimageurl, votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid
limit 13;
select  
  posthistory_1.userid, 
  posthistory_1.text, 
  posthistory_1.userdisplayname, 
  posthistory_1.revisionguid, 
  posthistory_1.text, 
  badges_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join posthistory as posthistory_1
    on (badges_1.id = posthistory_1.id )
where posthistory_1.creationdate is not NULL
limit 5;
select  
  comments_1.creationdate, 
  comments_1.contentlicense, 
  comments_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.id is not NULL
limit 23;
select  
  postlinks_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
      inner join comments as comments_1
      on (postlinks_1.id = comments_1.id )
    inner join posthistory as posthistory_1
    on (postlinks_1.id = posthistory_1.id )
where comments_1.postid is not NULL
limit 20;
select  
  sum(
    posts_2.owneruserid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join posts as posts_2
    on (posts_1.id = posts_2.id )
where posts_1.acceptedanswerid is not NULL
limit 8;
select  
  badges_1.tagbased, 
  badges_1.tagbased, 
  max(
    badges_1.userid), 
  badges_1.tagbased, 
  max(
    badges_1.date), 
  badges_1.name, 
  badges_1.date, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased < badges_1.tagbased
group by badges_1.date, badges_1.name, badges_1.tagbased
limit 28;
select  
  comments_1.postid, 
  max(
    comments_1.creationdate), 
  comments_1.creationdate, 
  comments_1.creationdate, 
  max(
    comments_1.creationdate), 
  comments_1.userid, 
  comments_1.userdisplayname, 
  comments_1.contentlicense, 
  comments_1.userdisplayname, 
  comments_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.creationdate is not NULL
group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.userdisplayname, comments_1.userid
limit 40;
select  
  sum(
    posthistory_1.userid), 
  posthistory_1.postid, 
  posthistory_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.userid = posthistory_1.id
group by posthistory_1.id, posthistory_1.postid
limit 24;
select  
  badges_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.class is not NULL
limit 10;
select  
  posts_1.creationdate, 
  users_1.profileimageurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join posts as posts_1
    on (users_1.id = posts_1.id )
where posts_1.id > posts_1.posttypeid
limit 17;
select  
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
limit 39;
select  
  avg(
    users_1.profileimageurl), 
  users_1.websiteurl, 
  users_1.id, 
  users_1.displayname, 
  users_1.displayname, 
  users_1.creationdate, 
  users_1.aboutme, 
  users_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.accountid is not NULL
group by users_1.aboutme, users_1.creationdate, users_1.displayname, users_1.id, users_1.websiteurl
limit 11;
select  
  postlinks_1.creationdate, 
  min(
    posthistory_2.creationdate), 
  postlinks_1.postid, 
  users_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join posts as posts_1
          inner join badges as badges_1
          on (posts_1.id = badges_1.id )
        inner join postlinks as postlinks_1
        on (badges_1.id = postlinks_1.id )
      inner join posthistory as posthistory_2
        inner join users as users_1
        on (posthistory_2.id = users_1.id )
      on (badges_1.id = posthistory_2.id )
    on (posthistory_1.id = posts_1.id )
where badges_1.class is not NULL
group by postlinks_1.creationdate, postlinks_1.postid, users_1.id
limit 1;
select  
  votes_1.postid, 
  sum(
    posts_1.owneruserid), 
  posts_1.contentlicense, 
  posts_1.parentid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join votes as votes_1
    on (posts_1.id = votes_1.id )
where posts_1.acceptedanswerid is not NULL
group by posts_1.contentlicense, posts_1.parentid, votes_1.postid
limit 3;
select  
  votes_1.id, 
  badges_1.date, 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
      inner join badges as badges_1
      on (posts_1.id = badges_1.id )
    inner join votes as votes_1
    on (badges_1.id = votes_1.id )
where posts_1.title >= posts_1.contentlicense
limit 42;
select  
  posts_1.tags
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join badges as badges_1
      inner join posts as posts_1
      on (badges_1.id = posts_1.id )
    on (postlinks_1.id = badges_1.id )
where badges_1.userid is not NULL
limit 28;
select  
  postlinks_1.linktypeid, 
  posts_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join postlinks as postlinks_1
          inner join postlinks as postlinks_2
          on (postlinks_1.id = postlinks_2.id )
        inner join comments as comments_2
        on (postlinks_2.id = comments_2.id )
      inner join posts as posts_1
      on (postlinks_1.id = posts_1.id )
    on (comments_1.id = postlinks_1.id )
where postlinks_1.linktypeid is not NULL
limit 29;
select  
  comments_1.postid, 
  comments_1.id, 
  comments_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.creationdate is not NULL
limit 17;
select  
  posthistory_1.revisionguid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.creationdate >= posthistory_1.creationdate
limit 4;
select  
  postlinks_1.creationdate, 
  postlinks_1.creationdate, 
  postlinks_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.linktypeid > postlinks_1.relatedpostid
limit 16;
select  
  badges_1.id, 
  avg(
    badges_1.userid), 
  posthistory_1.creationdate, 
  sum(
    posts_1.id), 
  posts_1.creationdate, 
  posts_1.id, 
  posthistory_1.id, 
  posts_1.posttypeid, 
  posts_1.tags, 
  badges_1.date, 
  min(
    posts_1.parentid), 
  posthistory_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join posthistory as posthistory_1
        inner join users as users_1
        on (posthistory_1.id = users_1.id )
      inner join badges as badges_1
      on (users_1.id = badges_1.id )
    on (posts_1.id = badges_1.id )
where posts_1.tags is not NULL
group by badges_1.date, badges_1.id, posthistory_1.creationdate, posthistory_1.id, posts_1.creationdate, posts_1.id, posts_1.posttypeid, posts_1.tags
limit 2;
select  
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  postlinks_1.id, 
  postlinks_1.postid, 
  postlinks_1.creationdate, 
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid, 
  postlinks_1.creationdate, 
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  postlinks_1.id, 
  avg(
    postlinks_1.relatedpostid), 
  postlinks_1.relatedpostid, 
  postlinks_1.postid, 
  min(
    postlinks_1.creationdate), 
  postlinks_1.id, 
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid, 
  postlinks_1.creationdate, 
  postlinks_1.creationdate, 
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  postlinks_1.postid, 
  postlinks_1.creationdate, 
  postlinks_1.id, 
  postlinks_1.relatedpostid, 
  postlinks_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 1;
select  
  min(
    votes_1.userid), 
  votes_1.id, 
  count(
    votes_1.votetypeid), 
  max(
    votes_1.postid), 
  votes_1.votetypeid, 
  votes_1.postid, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.userid is not NULL
group by votes_1.id, votes_1.postid, votes_1.votetypeid
limit 27;
select  
  badges_1.tagbased, 
  comments_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
      inner join comments as comments_2
        inner join users as users_1
        on (comments_2.id = users_1.id )
      on (comments_1.id = users_1.id )
    inner join badges as badges_1
    on (comments_1.id = badges_1.id )
where comments_1.id is not NULL
limit 2;
select  
  min(
    posthistory_1.creationdate), 
  posthistory_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.revisionguid is not NULL
group by posthistory_1.userid
limit 2;
select  
  posts_1.contentlicense, 
  posts_1.creationdate, 
  posts_1.body
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.creationdate <= posts_1.creationdate
limit 9;
select  
  posts_1.id, 
  posts_1.parentid, 
  posts_1.parentid, 
  posts_1.ownerdisplayname, 
  posts_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.creationdate < posts_1.creationdate
limit 7;
select  
  votes_1.id, 
  postlinks_1.postid, 
  postlinks_1.relatedpostid, 
  avg(
    posts_1.owneruserid), 
  posts_2.creationdate, 
  min(
    posts_2.creationdate), 
  count(*), 
  posts_2.creationdate, 
  max(
    posts_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
      inner join postlinks as postlinks_1
        inner join posts as posts_2
          inner join badges as badges_1
          on (posts_2.id = badges_1.id )
        on (postlinks_1.id = badges_1.id )
      on (posts_1.id = postlinks_1.id )
    inner join votes as votes_1
    on (postlinks_1.id = votes_1.id )
where posts_2.title <= posts_2.tags
group by postlinks_1.postid, postlinks_1.relatedpostid, posts_2.creationdate, votes_1.id
limit 14;
select  
  posts_1.tags, 
  posts_1.id, 
  posts_1.ownerdisplayname, 
  posts_1.creationdate, 
  posts_1.acceptedanswerid, 
  posts_1.owneruserid, 
  posts_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.creationdate is not NULL
limit 19;
select  
  min(
    votes_1.userid), 
  votes_1.creationdate, 
  votes_1.votetypeid, 
  votes_1.creationdate, 
  sum(
    votes_1.postid), 
  votes_1.creationdate, 
  votes_1.postid, 
  votes_1.userid, 
  min(
    votes_1.creationdate), 
  votes_1.postid, 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.postid <= votes_1.userid
group by votes_1.creationdate, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 11;
select  
  users_1.aboutme, 
  max(
    users_1.creationdate), 
  users_1.creationdate, 
  users_1.accountid, 
  users_1.creationdate, 
  users_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.displayname is not NULL
group by users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.id
limit 2;
select  
  posthistory_1.id, 
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid, 
  postlinks_1.linktypeid, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.id, 
  postlinks_1.relatedpostid, 
  max(
    posthistory_1.posthistorytypeid), 
  posthistory_1.contentlicense, 
  posthistory_1.id, 
  postlinks_1.linktypeid, 
  min(
    posthistory_1.posthistorytypeid), 
  postlinks_1.linktypeid, 
  posthistory_1.id, 
  posthistory_1.postid, 
  posthistory_1.id, 
  count(*), 
  postlinks_1.postid, 
  posthistory_1.creationdate, 
  max(
    posthistory_1.creationdate), 
  max(
    postlinks_1.creationdate), 
  posthistory_1.comment, 
  posthistory_1.id, 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join postlinks as postlinks_1
    on (posthistory_1.id = postlinks_1.id )
where postlinks_1.linktypeid is not NULL
group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.id, posthistory_1.postid, postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 37;
select  
  comments_2.userid, 
  max(
    comments_2.creationdate), 
  postlinks_1.linktypeid, 
  comments_1.id, 
  comments_1.userid, 
  comments_2.id, 
  comments_2.creationdate, 
  comments_2.userid, 
  postlinks_1.postid, 
  comments_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join comments as comments_1
      inner join comments as comments_2
      on (comments_1.id = comments_2.id )
    on (postlinks_1.id = comments_2.id )
where comments_1.id is not NULL
group by comments_1.id, comments_1.postid, comments_1.userid, comments_2.creationdate, comments_2.id, comments_2.userid, postlinks_1.linktypeid, postlinks_1.postid
limit 4;
select  
  postlinks_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
        inner join postlinks as postlinks_2
        on (postlinks_1.id = postlinks_2.id )
      inner join votes as votes_1
        inner join votes as votes_2
          inner join badges as badges_1
            inner join comments as comments_1
            on (badges_1.id = comments_1.id )
          on (votes_2.id = badges_1.id )
        on (votes_1.id = comments_1.id )
      on (postlinks_2.id = votes_1.id )
    inner join comments as comments_2
    on (votes_2.id = comments_2.id )
where comments_1.creationdate <= postlinks_1.creationdate
limit 9;
select  
  users_1.aboutme, 
  users_1.profileimageurl, 
  count(
    users_1.websiteurl), 
  users_1.profileimageurl, 
  min(
    users_1.creationdate), 
  users_1.creationdate, 
  users_1.creationdate, 
  users_1.displayname, 
  users_1.accountid, 
  users_1.profileimageurl, 
  users_1.profileimageurl, 
  users_1.websiteurl, 
  users_1.displayname, 
  users_1.accountid, 
  users_1.websiteurl, 
  max(
    users_1.creationdate), 
  users_1.profileimageurl, 
  avg(
    users_1.id), 
  users_1.accountid, 
  users_1.location, 
  users_1.accountid, 
  users_1.accountid, 
  users_1.aboutme, 
  users_1.accountid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.profileimageurl is not NULL
group by users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.displayname, users_1.location, users_1.profileimageurl, users_1.websiteurl
limit 19;
select  
  avg(
    postlinks_2.linktypeid), 
  postlinks_2.linktypeid, 
  min(
    postlinks_2.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
      inner join postlinks as postlinks_1
      on (comments_1.id = postlinks_1.id )
    inner join postlinks as postlinks_2
    on (comments_1.id = postlinks_2.id )
where postlinks_1.relatedpostid is not NULL
group by postlinks_2.linktypeid
limit 21;
select  
  votes_2.postid, 
  votes_2.userid, 
  votes_2.userid, 
  votes_2.creationdate, 
  votes_2.userid, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join votes as votes_2
    on (votes_1.id = votes_2.id )
where votes_1.creationdate is not NULL
limit 38;
select  
  users_1.displayname, 
  posts_1.posttypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join posts as posts_1
    on (users_1.id = posts_1.id )
where users_1.creationdate = posts_1.creationdate
limit 31;
select  
  users_1.creationdate, 
  max(
    users_1.accountid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
      inner join users as users_1
      on (comments_1.id = users_1.id )
    inner join badges as badges_1
    on (comments_1.id = badges_1.id )
where comments_1.creationdate is not NULL
group by users_1.creationdate
limit 1;
select  
  votes_1.creationdate, 
  max(
    votes_1.votetypeid), 
  votes_1.id, 
  votes_1.userid, 
  votes_1.creationdate, 
  votes_1.id, 
  min(
    votes_1.postid), 
  votes_1.creationdate, 
  votes_1.id, 
  count(*), 
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.userid is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.userid, votes_1.votetypeid
limit 3;
select  
  posthistory_1.text, 
  posthistory_1.contentlicense, 
  posthistory_1.contentlicense, 
  posthistory_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.creationdate is not NULL
limit 37;
select  
  postlinks_1.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.id is not NULL
limit 2;
select  
  badges_1.tagbased, 
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.name > badges_1.name
limit 28;
select  
  postlinks_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
limit 35;
select  
  comments_1.userid, 
  comments_1.postid, 
  users_1.creationdate, 
  comments_1.postid, 
  avg(
    votes_1.postid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
      inner join comments as comments_1
      on (users_1.id = comments_1.id )
    inner join votes as votes_1
    on (users_1.id = votes_1.id )
where comments_1.id is not NULL
group by comments_1.postid, comments_1.userid, users_1.creationdate
limit 24;
select  
  posts_1.body, 
  posts_1.body, 
  posts_1.title
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.acceptedanswerid is not NULL
limit 10;
select  
  badges_1.tagbased, 
  max(
    badges_1.date), 
  badges_1.userid, 
  badges_1.name, 
  badges_1.date, 
  max(
    badges_1.date), 
  badges_1.date, 
  badges_1.date, 
  badges_1.date, 
  badges_1.tagbased, 
  badges_1.userid, 
  badges_1.userid, 
  badges_1.name, 
  min(
    badges_1.date), 
  badges_1.userid, 
  badges_1.id, 
  badges_1.tagbased, 
  badges_1.date, 
  badges_1.tagbased, 
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased > badges_1.tagbased
group by badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
limit 21;
select  
  users_1.creationdate, 
  users_1.aboutme
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join users as users_2
    on (users_1.id = users_2.id )
where users_1.aboutme > users_2.displayname
limit 39;
select  
  badges_1.id, 
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased is not NULL
limit 33;
select  
  users_1.id, 
  max(
    users_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.websiteurl is not NULL
group by users_1.id
limit 22;
select  
  comments_1.userdisplayname, 
  comments_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userdisplayname <= comments_1.text
limit 38;
select  
  comments_1.text, 
  comments_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.id is not NULL
limit 2;
select  
  votes_1.postid, 
  max(
    comments_1.postid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
          inner join votes as votes_1
          on (posts_1.id = votes_1.id )
        inner join users as users_1
        on (votes_1.id = users_1.id )
      inner join posthistory as posthistory_1
        inner join comments as comments_1
        on (posthistory_1.id = comments_1.id )
      on (users_1.id = comments_1.id )
    inner join badges as badges_1
    on (users_1.id = badges_1.id )
where comments_1.id is not NULL
group by votes_1.postid
limit 16;
select  
  max(
    badges_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join badges as badges_1
    on (posts_1.id = badges_1.id )
where posts_1.posttypeid is not NULL
limit 42;
select  
  comments_1.id, 
  min(
    comments_1.creationdate), 
  comments_1.creationdate, 
  count(
    comments_1.contentlicense), 
  comments_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userdisplayname is not NULL
group by comments_1.creationdate, comments_1.id
limit 26;
select  
  users_1.websiteurl, 
  badges_1.date, 
  users_1.id, 
  users_1.accountid, 
  users_1.location, 
  users_1.location, 
  users_1.profileimageurl, 
  users_1.profileimageurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join badges as badges_1
    on (users_1.id = badges_1.id )
where badges_1.class is not NULL
limit 42;
select  
  posthistory_1.revisionguid, 
  postlinks_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join posts as posts_1
      inner join postlinks as postlinks_1
      on (posts_1.id = postlinks_1.id )
    on (posthistory_1.id = posts_1.id )
where posts_1.body = posts_1.title
limit 41;
select  
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join postlinks as postlinks_1
    on (users_1.id = postlinks_1.id )
where postlinks_1.id <= postlinks_1.linktypeid
limit 25;
select  
  count(*), 
  badges_1.class, 
  max(
    badges_1.date), 
  badges_1.id, 
  badges_1.date, 
  min(
    badges_1.date), 
  badges_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.date is not NULL
group by badges_1.class, badges_1.date, badges_1.id, badges_1.name
limit 11;
select  
  badges_1.name, 
  badges_1.class, 
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased < badges_1.tagbased
limit 10;
select  
  min(
    votes_1.creationdate), 
  votes_1.votetypeid, 
  votes_1.postid, 
  count(*), 
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.id is not NULL
group by votes_1.postid, votes_1.votetypeid
limit 14;
select  
  posts_1.body, 
  posts_1.owneruserid, 
  max(
    posts_1.creationdate), 
  max(
    posts_1.owneruserid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.title <= posts_1.ownerdisplayname
group by posts_1.body, posts_1.owneruserid
limit 31;
select  
  users_1.creationdate, 
  users_1.location, 
  users_1.creationdate, 
  users_1.websiteurl, 
  users_1.websiteurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.location is not NULL
limit 12;
select  
  min(
    users_1.creationdate), 
  users_1.profileimageurl, 
  users_1.profileimageurl, 
  users_1.displayname, 
  users_1.websiteurl, 
  users_1.profileimageurl, 
  users_1.id, 
  users_1.websiteurl, 
  users_1.location, 
  users_1.profileimageurl, 
  users_1.websiteurl, 
  users_1.creationdate, 
  users_1.accountid, 
  users_1.websiteurl, 
  users_1.profileimageurl, 
  users_1.id, 
  users_1.location, 
  users_1.id, 
  users_1.displayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.aboutme is not NULL
group by users_1.accountid, users_1.creationdate, users_1.displayname, users_1.id, users_1.location, users_1.profileimageurl, users_1.websiteurl
limit 38;
select  
  posts_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
      inner join posts as posts_1
      on (badges_1.id = posts_1.id )
    inner join users as users_1
    on (posts_1.id = users_1.id )
where posts_1.parentid >= posts_1.owneruserid
limit 27;
select  
  comments_1.id, 
  comments_1.contentlicense, 
  count(*), 
  comments_1.id, 
  comments_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.id is not NULL
group by comments_1.contentlicense, comments_1.id
limit 34;
select  
  comments_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.creationdate is not NULL
limit 19;
select  
  posthistory_1.postid, 
  posthistory_1.userdisplayname, 
  posthistory_1.contentlicense, 
  posthistory_1.text, 
  avg(
    posthistory_1.userid), 
  posthistory_1.postid, 
  posthistory_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.postid is not NULL
group by posthistory_1.contentlicense, posthistory_1.postid, posthistory_1.text, posthistory_1.userdisplayname
limit 10;
select  
  max(
    posts_1.parentid), 
  posts_1.parentid, 
  posts_1.body, 
  posts_1.body, 
  posts_1.posttypeid, 
  count(*), 
  posts_1.id, 
  posts_1.ownerdisplayname, 
  posts_1.id, 
  posts_1.body, 
  posts_1.tags
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.creationdate is not NULL
group by posts_1.body, posts_1.id, posts_1.ownerdisplayname, posts_1.parentid, posts_1.posttypeid, posts_1.tags
limit 7;
select  
  votes_1.creationdate, 
  votes_1.creationdate, 
  votes_1.postid, 
  votes_1.votetypeid, 
  votes_1.id, 
  votes_1.postid, 
  count(
    votes_1.postid), 
  votes_1.userid, 
  min(
    votes_1.creationdate), 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.userid is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 29;
select  
  comments_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join comments as comments_1
    on (votes_1.id = comments_1.id )
where votes_1.votetypeid is not NULL
limit 5;
select  
  postlinks_1.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.id is not NULL
limit 41;
select  
  sum(
    posthistory_1.posthistorytypeid), 
  votes_1.postid, 
  comments_1.contentlicense, 
  min(
    posthistory_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join votes as votes_1
        inner join comments as comments_2
        on (votes_1.id = comments_2.id )
      inner join posthistory as posthistory_1
      on (votes_1.id = posthistory_1.id )
    on (comments_1.id = votes_1.id )
where votes_1.postid is not NULL
group by comments_1.contentlicense, votes_1.postid
limit 30;
select  
  posthistory_1.posthistorytypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
        inner join posts as posts_1
        on (comments_1.id = posts_1.id )
      inner join posthistory as posthistory_1
      on (comments_1.id = posthistory_1.id )
    inner join postlinks as postlinks_1
    on (posts_1.id = postlinks_1.id )
where comments_1.userid is not NULL
limit 12;
select  
  postlinks_1.creationdate, 
  postlinks_1.postid, 
  postlinks_1.creationdate, 
  postlinks_1.id, 
  postlinks_1.postid, 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
limit 33;
select  
  sum(
    posthistory_1.postid), 
  posthistory_1.userid, 
  votes_1.creationdate, 
  comments_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join votes as votes_1
      inner join posthistory as posthistory_1
      on (votes_1.id = posthistory_1.id )
    on (comments_1.id = votes_1.id )
where votes_1.votetypeid is not NULL
group by comments_1.text, posthistory_1.userid, votes_1.creationdate
limit 31;
select  
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join badges as badges_1
    on (votes_1.id = badges_1.id )
where badges_1.name > badges_1.name
limit 42;
select  
  posts_1.parentid, 
  count(
    posts_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.body <= posts_1.ownerdisplayname
group by posts_1.parentid
limit 18;
select  
  posts_1.body, 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join posts as posts_1
    on (postlinks_1.id = posts_1.id )
where posts_1.owneruserid > postlinks_1.postid
limit 26;
select  
  badges_2.date, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join posthistory as posthistory_1
      inner join badges as badges_1
          inner join badges as badges_2
          on (badges_1.id = badges_2.id )
        inner join users as users_2
        on (badges_2.id = users_2.id )
      on (posthistory_1.id = badges_2.id )
    on (users_1.id = badges_2.id )
where users_2.location is not NULL
group by badges_2.date
limit 42;
select  
  comments_1.id, 
  comments_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.postid = comments_1.userid
limit 38;
select  
  count(*), 
  posthistory_1.revisionguid, 
  users_1.websiteurl, 
  users_1.displayname, 
  users_1.aboutme, 
  users_1.accountid, 
  users_1.creationdate, 
  posthistory_1.revisionguid, 
  users_1.websiteurl, 
  users_1.aboutme, 
  posthistory_1.postid, 
  posthistory_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join posthistory as posthistory_1
    on (users_1.id = posthistory_1.id )
where posthistory_1.creationdate is not NULL
group by posthistory_1.contentlicense, posthistory_1.postid, posthistory_1.revisionguid, users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.displayname, users_1.websiteurl
limit 16;
select  
  posthistory_1.userdisplayname, 
  posthistory_1.text, 
  posthistory_1.comment
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.creationdate > posthistory_1.creationdate
limit 35;
select  
  posts_1.tags, 
  posts_1.tags, 
  posts_1.body, 
  posts_1.parentid, 
  posts_1.ownerdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.posttypeid is not NULL
limit 2;
select  
  posthistory_1.userdisplayname, 
  posthistory_1.text, 
  comments_1.creationdate, 
  comments_1.contentlicense, 
  posthistory_1.contentlicense, 
  max(
    comments_1.creationdate), 
  comments_1.creationdate, 
  comments_1.text, 
  posthistory_1.userdisplayname, 
  posthistory_1.userdisplayname, 
  comments_1.creationdate, 
  min(
    posthistory_1.postid), 
  comments_1.text, 
  posthistory_1.posthistorytypeid, 
  comments_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join posthistory as posthistory_1
    on (comments_1.id = posthistory_1.id )
where comments_1.contentlicense is not NULL
group by comments_1.contentlicense, comments_1.creationdate, comments_1.text, comments_1.userdisplayname, posthistory_1.contentlicense, posthistory_1.posthistorytypeid, posthistory_1.text, posthistory_1.userdisplayname
limit 4;
select  
  posthistory_1.userdisplayname, 
  posthistory_1.posthistorytypeid, 
  max(
    posthistory_1.creationdate), 
  posthistory_1.postid, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.postid, 
  avg(
    posthistory_1.id), 
  posthistory_1.posthistorytypeid, 
  posthistory_1.postid, 
  posthistory_1.userdisplayname, 
  posthistory_1.comment, 
  sum(
    posthistory_1.postid), 
  posthistory_1.userdisplayname, 
  posthistory_1.id, 
  min(
    posthistory_1.creationdate), 
  posthistory_1.contentlicense, 
  max(
    posthistory_1.creationdate), 
  posthistory_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.comment is not NULL
group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.text, posthistory_1.userdisplayname
limit 7;
select  
  badges_3.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join badges as badges_2
      inner join badges as badges_3
        inner join posthistory as posthistory_1
          inner join posts as posts_1
            inner join users as users_1
            on (posts_1.id = users_1.id )
          on (posthistory_1.id = users_1.id )
        on (badges_3.id = users_1.id )
      on (badges_2.id = posts_1.id )
    on (badges_1.id = posthistory_1.id )
where posthistory_1.postid is not NULL
limit 25;
select  
  posts_1.body, 
  postlinks_1.id, 
  count(
    votes_1.id), 
  votes_1.postid, 
  postlinks_1.linktypeid, 
  posthistory_1.contentlicense, 
  postlinks_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join posthistory as posthistory_1
        inner join votes as votes_1
        on (posthistory_1.id = votes_1.id )
      inner join postlinks as postlinks_1
        inner join posthistory as posthistory_2
        on (postlinks_1.id = posthistory_2.id )
      on (posthistory_1.id = posthistory_2.id )
    on (posts_1.id = posthistory_2.id )
where posthistory_1.comment is not NULL
group by posthistory_1.contentlicense, postlinks_1.id, postlinks_1.linktypeid, posts_1.body, votes_1.postid
limit 42;
select  
  postlinks_2.id, 
  postlinks_2.relatedpostid, 
  postlinks_1.relatedpostid, 
  users_1.websiteurl, 
  posts_1.tags, 
  users_1.profileimageurl, 
  posts_1.owneruserid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join postlinks as postlinks_2
      inner join posts as posts_1
        inner join users as users_1
        on (posts_1.id = users_1.id )
      on (postlinks_2.id = users_1.id )
    on (postlinks_1.id = posts_1.id )
where posts_1.contentlicense = users_1.websiteurl
limit 18;
select  
  count(
    postlinks_1.creationdate), 
  postlinks_2.linktypeid, 
  postlinks_1.postid, 
  postlinks_2.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join postlinks as postlinks_2
    on (postlinks_1.id = postlinks_2.id )
where postlinks_2.relatedpostid is not NULL
group by postlinks_1.postid, postlinks_2.linktypeid
limit 10;
select  
  comments_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userdisplayname is not NULL
limit 30;
select  
  users_1.creationdate, 
  users_1.profileimageurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.profileimageurl is not NULL
limit 34;
select  
  votes_1.creationdate, 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate is not NULL
limit 6;
select  
  users_1.displayname, 
  users_1.location, 
  users_1.websiteurl, 
  users_1.profileimageurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.profileimageurl is not NULL
limit 29;
select  
  count(*), 
  comments_1.text, 
  comments_2.userdisplayname, 
  min(
    posthistory_1.id), 
  posthistory_1.posthistorytypeid, 
  min(
    postlinks_1.creationdate), 
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
      inner join badges as badges_1
      on (postlinks_1.id = badges_1.id )
    inner join posthistory as posthistory_1
        inner join comments as comments_1
        on (posthistory_1.id = comments_1.id )
      inner join comments as comments_2
      on (comments_1.id = comments_2.id )
    on (badges_1.id = posthistory_1.id )
where comments_1.userid is not NULL
group by badges_1.class, comments_1.text, comments_2.userdisplayname, posthistory_1.posthistorytypeid
limit 28;
select  
  postlinks_1.postid, 
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid, 
  postlinks_1.relatedpostid, 
  min(
    postlinks_1.id), 
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid, 
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid, 
  postlinks_1.linktypeid, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.id, 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.id is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 42;
select  
  comments_1.creationdate, 
  posthistory_1.text, 
  comments_1.id, 
  posthistory_1.posthistorytypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join posthistory as posthistory_1
    on (comments_1.id = posthistory_1.id )
where posthistory_1.text is not NULL
limit 21;
select  
  comments_1.contentlicense, 
  comments_1.userdisplayname, 
  comments_1.id, 
  comments_1.userid, 
  comments_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.contentlicense is not NULL
limit 5;
select  
  users_1.profileimageurl, 
  users_1.id, 
  users_1.displayname, 
  comments_1.text, 
  users_1.websiteurl, 
  comments_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join users as users_1
    on (comments_1.id = users_1.id )
where comments_1.contentlicense is not NULL
limit 31;
select  
  badges_1.id, 
  badges_1.tagbased
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.name <= badges_1.name
limit 30;
select  
  users_1.displayname, 
  badges_1.userid, 
  users_1.aboutme, 
  users_1.creationdate, 
  users_1.profileimageurl, 
  users_1.location, 
  badges_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join badges as badges_1
    on (users_1.id = badges_1.id )
where badges_1.userid is not NULL
limit 37;
select  
  postlinks_1.linktypeid, 
  postlinks_1.linktypeid, 
  posthistory_1.posthistorytypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join postlinks as postlinks_1
      inner join postlinks as postlinks_2
        inner join posthistory as posthistory_1
        on (postlinks_2.id = posthistory_1.id )
      on (postlinks_1.id = postlinks_2.id )
    on (comments_1.id = posthistory_1.id )
where comments_1.creationdate is not NULL
limit 7;
select  
  min(
    posts_1.creationdate), 
  postlinks_1.creationdate, 
  posts_1.parentid, 
  postlinks_1.id, 
  max(
    posts_1.creationdate), 
  posts_1.acceptedanswerid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join posts as posts_1
    on (postlinks_1.id = posts_1.id )
where postlinks_1.postid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, posts_1.acceptedanswerid, posts_1.parentid
limit 41;
select  
  posts_1.creationdate, 
  posts_1.posttypeid, 
  comments_1.userdisplayname, 
  posts_1.id, 
  posts_1.acceptedanswerid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join comments as comments_1
    on (posts_1.id = comments_1.id )
where posts_1.tags is not NULL
limit 11;
select  
  votes_1.votetypeid, 
  avg(
    votes_1.id), 
  posthistory_1.userid, 
  posthistory_1.userdisplayname, 
  posthistory_1.creationdate, 
  posthistory_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
      inner join posthistory as posthistory_1
      on (votes_1.id = posthistory_1.id )
    inner join posthistory as posthistory_2
    on (votes_1.id = posthistory_2.id )
where votes_1.creationdate < posthistory_1.creationdate
group by posthistory_1.creationdate, posthistory_1.text, posthistory_1.userdisplayname, posthistory_1.userid, votes_1.votetypeid
limit 7;
select  
  posthistory_1.contentlicense, 
  posthistory_1.id, 
  posthistory_1.id, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.text, 
  posthistory_1.text, 
  posthistory_1.userdisplayname, 
  posthistory_1.id, 
  posthistory_1.postid, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.text, 
  posthistory_1.posthistorytypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.userid is not NULL
limit 10;
select  
  comments_1.userid, 
  badges_1.tagbased
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join comments as comments_1
      inner join badges as badges_1
      on (comments_1.id = badges_1.id )
    on (posts_1.id = badges_1.id )
where comments_1.userdisplayname is not NULL
limit 32;
select  
  votes_1.votetypeid, 
  users_1.aboutme
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join votes as votes_1
    on (users_1.id = votes_1.id )
where users_1.location = users_1.displayname
limit 23;
select  
  comments_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join postlinks as postlinks_1
        inner join comments as comments_1
        on (postlinks_1.id = comments_1.id )
      inner join users as users_2
      on (comments_1.id = users_2.id )
    on (users_1.id = users_2.id )
where postlinks_1.linktypeid = users_1.id
limit 33;
select  
  votes_1.postid, 
  votes_1.postid, 
  votes_1.creationdate, 
  max(
    votes_1.creationdate), 
  votes_1.creationdate, 
  votes_1.userid, 
  votes_1.creationdate, 
  votes_1.votetypeid, 
  votes_1.creationdate, 
  votes_1.userid, 
  votes_1.creationdate, 
  votes_1.id, 
  votes_1.postid, 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.id is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 13;
select  
  postlinks_1.id, 
  postlinks_1.id, 
  postlinks_1.creationdate, 
  postlinks_1.linktypeid, 
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid, 
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid, 
  postlinks_1.id, 
  count(
    postlinks_1.postid), 
  postlinks_1.id, 
  postlinks_1.postid, 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 8;
select  
  posthistory_1.contentlicense, 
  posthistory_1.contentlicense, 
  posthistory_1.userid, 
  min(
    posthistory_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.creationdate >= posthistory_1.creationdate
group by posthistory_1.contentlicense, posthistory_1.userid
limit 14;
select  
  postlinks_1.postid, 
  postlinks_1.creationdate, 
  postlinks_1.linktypeid, 
  count(*), 
  postlinks_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate > postlinks_1.creationdate
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid
limit 13;
select  
  posts_1.acceptedanswerid, 
  posts_1.owneruserid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.id is not NULL
limit 11;
select  
  posts_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.contentlicense is not NULL
limit 31;
select  
  votes_1.votetypeid, 
  sum(
    postlinks_1.postid), 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join votes as votes_1
    on (postlinks_1.id = votes_1.id )
where votes_1.userid is not NULL
group by postlinks_1.postid, votes_1.votetypeid
limit 14;
select  
  comments_1.creationdate, 
  comments_1.id, 
  comments_1.id, 
  max(
    comments_1.creationdate), 
  comments_1.creationdate, 
  count(
    comments_1.contentlicense), 
  comments_1.creationdate, 
  max(
    comments_1.creationdate), 
  avg(
    comments_1.userid), 
  comments_1.text, 
  comments_1.postid, 
  comments_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.id is not NULL
group by comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.text
limit 7;
select  
  max(
    posts_1.creationdate), 
  posts_1.acceptedanswerid, 
  posts_1.acceptedanswerid, 
  posts_1.body, 
  users_1.accountid, 
  comments_2.userdisplayname, 
  posthistory_1.creationdate, 
  posthistory_1.posthistorytypeid, 
  posts_1.acceptedanswerid, 
  comments_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join comments as comments_2
        inner join posts as posts_1
        on (comments_2.id = posts_1.id )
      inner join users as users_1
        inner join posthistory as posthistory_1
        on (users_1.id = posthistory_1.id )
      on (posts_1.id = posthistory_1.id )
    on (comments_1.id = comments_2.id )
where comments_1.contentlicense is not NULL
group by comments_1.id, comments_2.userdisplayname, posthistory_1.creationdate, posthistory_1.posthistorytypeid, posts_1.acceptedanswerid, posts_1.body, users_1.accountid
limit 20;
select  
  posthistory_1.userdisplayname, 
  posthistory_1.postid, 
  posthistory_1.revisionguid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join posts as posts_1
    on (posthistory_1.id = posts_1.id )
where posts_1.parentid is not NULL
limit 42;
select  
  posts_1.contentlicense, 
  posts_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.body is not NULL
limit 23;
select  
  postlinks_1.creationdate, 
  sum(
    postlinks_1.relatedpostid), 
  postlinks_1.postid, 
  postlinks_1.id, 
  postlinks_1.id, 
  postlinks_1.relatedpostid, 
  postlinks_1.id, 
  postlinks_1.creationdate, 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.id is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.postid, postlinks_1.relatedpostid
limit 16;
select  
  posts_1.contentlicense, 
  posts_1.posttypeid, 
  posts_1.owneruserid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.owneruserid <= posts_1.acceptedanswerid
limit 30;
select  
  postlinks_1.linktypeid, 
  postlinks_1.id, 
  postlinks_1.relatedpostid, 
  max(
    postlinks_1.creationdate), 
  posts_1.tags, 
  posts_1.contentlicense, 
  posts_1.contentlicense, 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join postlinks as postlinks_1
    on (posts_1.id = postlinks_1.id )
where postlinks_1.linktypeid is not NULL
group by postlinks_1.id, postlinks_1.linktypeid, postlinks_1.relatedpostid, posts_1.contentlicense, posts_1.tags
limit 23;
select  
  count(
    badges_1.id), 
  badges_1.name, 
  badges_1.date, 
  badges_1.date, 
  badges_1.userid, 
  badges_1.userid, 
  badges_1.date, 
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.userid is not NULL
group by badges_1.date, badges_1.name, badges_1.userid
limit 34;
select  
  postlinks_1.id, 
  postlinks_1.postid, 
  sum(
    postlinks_1.postid), 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
group by postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid
limit 32;
select  
  votes_1.creationdate, 
  votes_1.creationdate, 
  votes_1.id, 
  min(
    votes_1.creationdate), 
  votes_1.userid, 
  votes_1.userid, 
  count(*), 
  votes_1.creationdate, 
  votes_1.id, 
  max(
    votes_1.userid), 
  votes_1.votetypeid, 
  votes_1.id, 
  votes_1.postid, 
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.votetypeid is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 19;
select  
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate > postlinks_1.creationdate
limit 29;
select  
  users_1.profileimageurl, 
  votes_1.postid, 
  posts_1.parentid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join users as users_1
        inner join votes as votes_1
        on (users_1.id = votes_1.id )
      inner join posts as posts_2
      on (users_1.id = posts_2.id )
    on (posts_1.id = votes_1.id )
where posts_2.contentlicense is not NULL
limit 23;
select  
  max(
    votes_1.creationdate), 
  votes_1.votetypeid, 
  users_1.id, 
  votes_1.creationdate, 
  max(
    votes_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join votes as votes_1
    on (users_1.id = votes_1.id )
where users_1.accountid is not NULL
group by users_1.id, votes_1.creationdate, votes_1.votetypeid
limit 4;
select  
  count(*), 
  posts_1.tags, 
  posts_1.ownerdisplayname, 
  users_1.websiteurl, 
  max(
    posthistory_1.creationdate), 
  min(
    users_1.creationdate), 
  posts_1.body
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join posts as posts_1
      inner join users as users_1
      on (posts_1.id = users_1.id )
    on (posthistory_1.id = users_1.id )
where users_1.id <= posts_1.posttypeid
group by posts_1.body, posts_1.ownerdisplayname, posts_1.tags, users_1.websiteurl
limit 39;
select  
  postlinks_1.creationdate, 
  postlinks_1.id, 
  postlinks_1.postid, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.id, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.id, 
  postlinks_1.postid, 
  postlinks_1.id, 
  min(
    postlinks_1.creationdate), 
  postlinks_1.id, 
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid, 
  postlinks_1.id, 
  count(
    postlinks_1.creationdate), 
  postlinks_1.creationdate, 
  postlinks_1.postid, 
  postlinks_1.relatedpostid, 
  postlinks_1.relatedpostid, 
  postlinks_1.id, 
  count(*), 
  max(
    postlinks_1.creationdate), 
  postlinks_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.postid, postlinks_1.relatedpostid
limit 36;
select  
  postlinks_1.postid, 
  postlinks_1.postid, 
  postlinks_1.linktypeid, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.id is not NULL
group by postlinks_1.linktypeid, postlinks_1.postid
limit 37;
select  
  users_1.id, 
  users_1.creationdate, 
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.id > users_1.profileimageurl
limit 11;
select  
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  postlinks_1.linktypeid, 
  postlinks_1.postid, 
  postlinks_1.id, 
  postlinks_1.creationdate, 
  postlinks_1.postid, 
  postlinks_1.id, 
  postlinks_1.id, 
  count(
    postlinks_1.postid), 
  postlinks_1.id, 
  postlinks_1.postid, 
  postlinks_1.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 42;
select  
  postlinks_1.creationdate, 
  postlinks_1.creationdate, 
  count(*), 
  postlinks_1.creationdate, 
  min(
    postlinks_1.relatedpostid), 
  postlinks_1.postid, 
  postlinks_1.linktypeid, 
  postlinks_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid
limit 37;
select  
  votes_1.userid, 
  votes_1.creationdate, 
  votes_1.userid, 
  votes_1.id, 
  votes_1.creationdate, 
  votes_1.postid, 
  votes_1.id, 
  max(
    votes_1.postid), 
  votes_1.creationdate, 
  votes_1.userid, 
  votes_1.votetypeid, 
  votes_1.creationdate, 
  min(
    votes_1.creationdate), 
  count(
    votes_1.userid), 
  votes_1.votetypeid, 
  votes_1.id, 
  votes_1.votetypeid, 
  votes_1.id, 
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.userid is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 42;
select  
  postlinks_1.creationdate, 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
limit 24;
select  
  postlinks_1.postid, 
  postlinks_1.id, 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
limit 12;
select  
  votes_2.creationdate, 
  posthistory_1.posthistorytypeid, 
  votes_2.votetypeid, 
  posthistory_1.userid, 
  votes_2.id, 
  posthistory_1.revisionguid, 
  votes_2.userid, 
  votes_1.votetypeid, 
  votes_2.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
      inner join posthistory as posthistory_1
      on (votes_1.id = posthistory_1.id )
    inner join votes as votes_2
    on (votes_1.id = votes_2.id )
where posthistory_1.revisionguid is not NULL
limit 23;
select  
  comments_1.id, 
  count(*), 
  comments_1.creationdate, 
  comments_1.id, 
  comments_1.contentlicense, 
  comments_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userdisplayname is not NULL
group by comments_1.contentlicense, comments_1.creationdate, comments_1.id
limit 20;
select  
  comments_1.text, 
  comments_1.contentlicense, 
  max(
    comments_1.creationdate), 
  comments_1.contentlicense, 
  comments_1.id, 
  comments_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.text is not NULL
group by comments_1.contentlicense, comments_1.id, comments_1.text, comments_1.userid
limit 19;
select  
  sum(
    votes_1.id), 
  votes_1.votetypeid, 
  votes_1.userid, 
  votes_1.votetypeid, 
  count(*), 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.userid is not NULL
group by votes_1.creationdate, votes_1.userid, votes_1.votetypeid
limit 8;
select  
  users_1.id, 
  users_1.profileimageurl, 
  users_1.aboutme, 
  users_1.websiteurl, 
  users_1.creationdate, 
  users_1.accountid, 
  count(*), 
  users_1.location
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.location is not NULL
group by users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.id, users_1.location, users_1.profileimageurl, users_1.websiteurl
limit 25;
select  
  postlinks_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
limit 17;
select  
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid, 
  comments_1.text, 
  comments_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join comments as comments_1
    on (postlinks_1.id = comments_1.id )
where postlinks_1.linktypeid <= comments_1.userid
limit 23;
select  
  badges_1.name, 
  badges_1.class, 
  max(
    badges_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.userid is not NULL
group by badges_1.class, badges_1.name
limit 32;
select  
  comments_1.contentlicense, 
  comments_1.userdisplayname, 
  comments_1.text, 
  comments_1.text, 
  comments_1.text, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userdisplayname is not NULL
group by comments_1.contentlicense, comments_1.text, comments_1.userdisplayname
limit 41;
select  
  users_1.websiteurl, 
  users_1.aboutme, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join users as users_1
    on (votes_1.id = users_1.id )
where votes_1.postid is not NULL
limit 1;
select  
  count(*), 
  votes_1.id, 
  votes_1.postid, 
  sum(
    votes_1.postid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.userid < votes_1.votetypeid
group by votes_1.id, votes_1.postid
limit 7;
select  
  posts_1.ownerdisplayname, 
  posts_1.parentid, 
  posts_1.posttypeid, 
  posts_1.acceptedanswerid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.parentid is not NULL
limit 27;
select  
  postlinks_1.linktypeid, 
  posts_1.title, 
  postlinks_1.creationdate, 
  posts_1.id, 
  min(
    posts_1.creationdate), 
  posts_1.ownerdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join posts as posts_1
      inner join votes as votes_1
      on (posts_1.id = votes_1.id )
    on (postlinks_1.id = posts_1.id )
where votes_1.id is not NULL
group by postlinks_1.creationdate, postlinks_1.linktypeid, posts_1.id, posts_1.ownerdisplayname, posts_1.title
limit 22;
select  
  count(*), 
  max(
    badges_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join badges as badges_1
    on (votes_1.id = badges_1.id )
where badges_1.tagbased = badges_1.tagbased
limit 27;
select  
  comments_1.userdisplayname, 
  comments_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userdisplayname < comments_1.contentlicense
limit 33;
select  
  posthistory_1.comment, 
  badges_1.tagbased, 
  posthistory_1.revisionguid, 
  min(
    postlinks_1.creationdate), 
  posthistory_1.revisionguid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join posthistory as posthistory_1
          inner join badges as badges_1
          on (posthistory_1.id = badges_1.id )
        inner join comments as comments_1
        on (posthistory_1.id = comments_1.id )
      inner join comments as comments_2
        inner join posthistory as posthistory_2
        on (comments_2.id = posthistory_2.id )
      on (posthistory_1.id = comments_2.id )
    on (postlinks_1.id = comments_2.id )
where posthistory_2.revisionguid < comments_1.contentlicense
group by badges_1.tagbased, posthistory_1.comment, posthistory_1.revisionguid
limit 12;
select  
  users_1.id, 
  max(
    badges_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
      inner join badges as badges_1
      on (users_1.id = badges_1.id )
    inner join posthistory as posthistory_1
    on (badges_1.id = posthistory_1.id )
where users_1.profileimageurl is not NULL
group by users_1.id
limit 33;
select  
  postlinks_1.creationdate, 
  postlinks_1.creationdate, 
  postlinks_1.id, 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate < postlinks_1.creationdate
limit 20;
select  
  count(
    posts_1.parentid), 
  count(*), 
  posts_1.ownerdisplayname, 
  posts_1.title, 
  posts_1.posttypeid, 
  count(*), 
  posts_1.owneruserid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.creationdate >= posts_1.creationdate
group by posts_1.ownerdisplayname, posts_1.owneruserid, posts_1.posttypeid, posts_1.title
limit 33;
select  
  users_1.id, 
  users_1.websiteurl, 
  min(
    users_1.creationdate), 
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.creationdate is not NULL
group by users_1.creationdate, users_1.id, users_1.websiteurl
limit 5;
select  
  min(
    posts_1.creationdate), 
  posts_1.parentid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
      inner join posts as posts_1
          inner join users as users_1
            inner join votes as votes_1
            on (users_1.id = votes_1.id )
          on (posts_1.id = users_1.id )
        inner join comments as comments_1
          inner join posthistory as posthistory_2
          on (comments_1.id = posthistory_2.id )
        on (votes_1.id = posthistory_2.id )
      on (posthistory_1.id = posthistory_2.id )
    inner join postlinks as postlinks_1
    on (comments_1.id = postlinks_1.id )
where users_1.profileimageurl is not NULL
group by posts_1.parentid
limit 8;
select  
  posts_1.body, 
  posts_1.title, 
  posts_1.parentid, 
  max(
    posts_1.owneruserid), 
  posts_1.creationdate, 
  posts_1.title, 
  posts_1.ownerdisplayname, 
  max(
    posts_1.id), 
  min(
    posts_1.parentid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.contentlicense is not NULL
group by posts_1.body, posts_1.creationdate, posts_1.ownerdisplayname, posts_1.parentid, posts_1.title
limit 37;
select  
  comments_1.userid, 
  comments_1.postid, 
  count(
    comments_1.postid), 
  comments_1.userdisplayname, 
  comments_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.id is not NULL
group by comments_1.postid, comments_1.userdisplayname, comments_1.userid
limit 42;
select  
  posts_1.id, 
  votes_1.id, 
  min(
    votes_1.creationdate), 
  postlinks_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
      inner join postlinks as postlinks_1
      on (votes_1.id = postlinks_1.id )
    inner join posts as posts_1
    on (votes_1.id = posts_1.id )
where postlinks_1.linktypeid is not NULL
group by postlinks_1.id, posts_1.id, votes_1.id
limit 30;
select  
  posthistory_1.userid, 
  posthistory_1.text, 
  posthistory_1.text, 
  sum(
    posthistory_1.posthistorytypeid), 
  posthistory_1.postid, 
  posthistory_1.id, 
  posthistory_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.userdisplayname is not NULL
group by posthistory_1.id, posthistory_1.postid, posthistory_1.text, posthistory_1.userdisplayname, posthistory_1.userid
limit 14;
select  
  max(
    votes_1.creationdate), 
  users_1.profileimageurl, 
  users_1.profileimageurl, 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join votes as votes_1
    on (users_1.id = votes_1.id )
where users_1.websiteurl is not NULL
group by users_1.profileimageurl, votes_1.creationdate
limit 28;
select  
  postlinks_1.id, 
  postlinks_1.id, 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate < postlinks_1.creationdate
limit 22;
select  
  min(
    postlinks_1.creationdate), 
  users_1.accountid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
      inner join users as users_1
        inner join badges as badges_1
          inner join postlinks as postlinks_1
          on (badges_1.id = postlinks_1.id )
        on (users_1.id = postlinks_1.id )
      on (comments_1.id = badges_1.id )
    inner join badges as badges_2
    on (comments_1.id = badges_2.id )
where comments_1.userid is not NULL
group by users_1.accountid
limit 34;
select  
  postlinks_1.id, 
  postlinks_1.id, 
  count(
    postlinks_1.relatedpostid), 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
group by postlinks_1.id, postlinks_1.postid
limit 9;
select  
  votes_1.id, 
  votes_1.id, 
  votes_1.creationdate, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.postid is not NULL
limit 8;
select  
  posts_1.acceptedanswerid, 
  posts_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.tags > posts_1.title
limit 40;
select  
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join votes as votes_1
    on (users_1.id = votes_1.id )
where users_1.creationdate < votes_1.creationdate
limit 19;
select  
  postlinks_1.postid, 
  postlinks_1.id, 
  postlinks_1.relatedpostid, 
  postlinks_1.relatedpostid, 
  max(
    postlinks_1.linktypeid), 
  postlinks_1.creationdate, 
  postlinks_1.id, 
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid, 
  postlinks_1.id, 
  postlinks_1.id, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate <= postlinks_1.creationdate
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.postid, postlinks_1.relatedpostid
limit 8;
select  
  posthistory_1.text, 
  posthistory_1.userdisplayname, 
  posthistory_1.comment, 
  sum(
    users_1.id), 
  comments_1.id, 
  comments_1.id, 
  min(
    posthistory_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join badges as badges_1
        inner join posthistory as posthistory_1
        on (badges_1.id = posthistory_1.id )
      inner join users as users_1
      on (badges_1.id = users_1.id )
    on (comments_1.id = users_1.id )
where comments_1.id = users_1.accountid
group by comments_1.id, posthistory_1.comment, posthistory_1.text, posthistory_1.userdisplayname
limit 20;
select  
  users_1.location, 
  users_1.websiteurl, 
  postlinks_1.creationdate, 
  avg(
    users_1.id), 
  postlinks_1.creationdate, 
  count(
    postlinks_1.creationdate), 
  users_1.profileimageurl, 
  users_1.creationdate, 
  users_1.displayname, 
  max(
    postlinks_1.creationdate), 
  users_1.id, 
  users_1.location
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join postlinks as postlinks_1
    on (users_1.id = postlinks_1.id )
where postlinks_1.id < postlinks_1.relatedpostid
group by postlinks_1.creationdate, users_1.creationdate, users_1.displayname, users_1.id, users_1.location, users_1.profileimageurl, users_1.websiteurl
limit 31;
select  
  postlinks_1.id, 
  postlinks_1.id, 
  postlinks_1.postid, 
  min(
    postlinks_1.linktypeid), 
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid, 
  postlinks_1.creationdate, 
  postlinks_1.id, 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate >= postlinks_1.creationdate
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.postid, postlinks_1.relatedpostid
limit 6;
select  
  posts_1.parentid, 
  min(
    posts_1.acceptedanswerid), 
  posts_1.posttypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.body is not NULL
group by posts_1.parentid, posts_1.posttypeid
limit 31;
select  
  max(
    users_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join users as users_2
    on (users_1.id = users_2.id )
where users_1.creationdate is not NULL
limit 4;
select  
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid, 
  postlinks_1.creationdate, 
  users_2.aboutme, 
  postlinks_1.postid, 
  users_2.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
      inner join users as users_2
      on (users_1.id = users_2.id )
    inner join badges as badges_1
      inner join postlinks as postlinks_1
      on (badges_1.id = postlinks_1.id )
    on (users_1.id = badges_1.id )
where users_2.displayname is not NULL
limit 9;
select  
  badges_1.tagbased, 
  badges_1.userid, 
  count(
    badges_1.date), 
  badges_1.userid, 
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased is not NULL
group by badges_1.tagbased, badges_1.userid
limit 34;
select  
  comments_1.contentlicense, 
  comments_1.id, 
  sum(
    comments_1.postid), 
  comments_1.userid, 
  comments_1.text, 
  comments_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.contentlicense is not NULL
group by comments_1.contentlicense, comments_1.id, comments_1.text, comments_1.userdisplayname, comments_1.userid
limit 38;
select  
  comments_1.contentlicense, 
  comments_1.id, 
  votes_1.creationdate, 
  votes_1.postid, 
  votes_1.userid, 
  sum(
    comments_1.postid), 
  comments_1.userdisplayname, 
  comments_1.userid, 
  comments_1.creationdate, 
  comments_1.userid, 
  comments_1.creationdate, 
  votes_1.userid, 
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join votes as votes_1
    on (comments_1.id = votes_1.id )
where comments_1.creationdate > votes_1.creationdate
group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.userdisplayname, comments_1.userid, votes_1.creationdate, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 12;
select  
  posts_1.title, 
  posts_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.ownerdisplayname is not NULL
limit 13;
select  
  comments_1.creationdate, 
  comments_1.postid, 
  comments_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.creationdate > comments_1.creationdate
limit 17;
select  
  posts_1.tags, 
  posts_1.creationdate, 
  max(
    posts_1.acceptedanswerid), 
  posts_1.title, 
  posts_1.acceptedanswerid, 
  posts_1.contentlicense, 
  posts_1.body, 
  posts_1.body, 
  posts_1.id, 
  posts_1.id, 
  min(
    posts_1.acceptedanswerid), 
  posts_1.contentlicense, 
  posts_1.id, 
  posts_1.id, 
  posts_1.acceptedanswerid, 
  posts_1.creationdate, 
  posts_1.title, 
  posts_1.title, 
  posts_1.tags, 
  posts_1.owneruserid, 
  posts_1.id, 
  posts_1.parentid, 
  posts_1.posttypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.parentid <= posts_1.owneruserid
group by posts_1.acceptedanswerid, posts_1.body, posts_1.contentlicense, posts_1.creationdate, posts_1.id, posts_1.owneruserid, posts_1.parentid, posts_1.posttypeid, posts_1.tags, posts_1.title
limit 41;
select  
  votes_1.postid, 
  votes_1.userid, 
  votes_1.votetypeid, 
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate is not NULL
limit 32;
select  
  votes_1.postid, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate >= votes_1.creationdate
group by votes_1.postid
limit 13;
select  
  comments_1.creationdate, 
  comments_1.contentlicense, 
  comments_1.userid, 
  comments_1.contentlicense, 
  comments_1.postid, 
  min(
    comments_1.creationdate), 
  count(*), 
  comments_1.creationdate, 
  comments_1.id, 
  max(
    comments_1.userid), 
  comments_1.userid, 
  comments_1.id, 
  comments_1.creationdate, 
  comments_1.text, 
  count(*), 
  comments_1.creationdate, 
  comments_1.text, 
  max(
    comments_1.creationdate), 
  comments_1.contentlicense, 
  comments_1.userid, 
  max(
    comments_1.creationdate), 
  comments_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userid is not NULL
group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.text, comments_1.userid
limit 34;
select  
  max(
    postlinks_1.creationdate), 
  postlinks_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.id is not NULL
group by postlinks_1.creationdate
limit 10;
select  
  badges_1.date, 
  max(
    badges_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.date is not NULL
group by badges_1.date
limit 40;
select  
  posthistory_1.comment, 
  posthistory_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join posthistory as posthistory_2
    on (posthistory_1.id = posthistory_2.id )
where posthistory_1.comment is not NULL
limit 28;
select  
  badges_1.id, 
  users_1.aboutme, 
  users_1.location, 
  users_1.aboutme
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join badges as badges_1
    on (users_1.id = badges_1.id )
where users_1.aboutme is not NULL
limit 14;
select  
  postlinks_1.linktypeid, 
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid, 
  postlinks_1.postid, 
  postlinks_1.id, 
  postlinks_1.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.postid <= postlinks_1.linktypeid
limit 26;
select  
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
      inner join postlinks as postlinks_1
      on (votes_1.id = postlinks_1.id )
    inner join posts as posts_1
      inner join votes as votes_2
      on (posts_1.id = votes_2.id )
    on (postlinks_1.id = posts_1.id )
where votes_2.userid is not NULL
limit 29;
select  
  posts_1.tags, 
  posts_1.posttypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.posttypeid is not NULL
limit 11;
select  
  posthistory_1.creationdate, 
  posthistory_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.creationdate <= posthistory_1.creationdate
limit 40;
select  
  users_1.profileimageurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.accountid is not NULL
limit 11;
select  
  users_1.aboutme, 
  users_1.displayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.creationdate is not NULL
limit 35;
select  
  comments_2.userid, 
  posthistory_1.creationdate, 
  posthistory_1.creationdate, 
  comments_2.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
        inner join comments as comments_1
        on (posthistory_1.id = comments_1.id )
      inner join comments as comments_2
      on (posthistory_1.id = comments_2.id )
    inner join comments as comments_3
    on (comments_2.id = comments_3.id )
where comments_2.postid is not NULL
limit 27;
select  
  posthistory_1.comment
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.creationdate is not NULL
limit 7;
select  
  postlinks_1.linktypeid, 
  min(
    postlinks_1.id), 
  min(
    postlinks_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
group by postlinks_1.linktypeid
limit 2;
select  
  min(
    posts_1.creationdate), 
  posts_1.ownerdisplayname, 
  posts_1.creationdate, 
  posts_1.posttypeid, 
  posts_1.body, 
  posts_1.creationdate, 
  posts_1.body, 
  posts_1.acceptedanswerid, 
  posts_1.body, 
  min(
    posts_1.creationdate), 
  posts_1.acceptedanswerid, 
  posts_1.tags, 
  posts_1.ownerdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.body is not NULL
group by posts_1.acceptedanswerid, posts_1.body, posts_1.creationdate, posts_1.ownerdisplayname, posts_1.posttypeid, posts_1.tags
limit 39;
select  
  posts_1.contentlicense, 
  posts_1.owneruserid, 
  sum(
    posts_1.id), 
  posts_1.tags
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.tags <= posts_1.contentlicense
group by posts_1.contentlicense, posts_1.owneruserid, posts_1.tags
limit 23;
select  
  votes_1.creationdate, 
  users_1.aboutme
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join votes as votes_1
      inner join users as users_1
      on (votes_1.id = users_1.id )
    on (posthistory_1.id = users_1.id )
where votes_1.postid is not NULL
limit 17;
select  
  votes_2.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join badges as badges_1
      inner join votes as votes_2
      on (badges_1.id = votes_2.id )
    on (votes_1.id = badges_1.id )
where votes_2.votetypeid is not NULL
limit 20;
select  
  comments_1.postid, 
  comments_1.creationdate, 
  comments_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.contentlicense >= comments_1.text
limit 19;
select  
  comments_1.postid, 
  comments_1.userid,
  comments_1.text, 
  comments_1.contentlicense, 

  comments_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.postid is not NULL
limit 30;
select  
  badges_1.tagbased, 
  badges_1.name, 
  badges_1.id, 
  badges_1.name, 
  badges_1.name, 
  badges_1.tagbased, 
  count(*), 
  badges_1.name, 
  badges_1.userid, 
  badges_1.userid, 
  count(
    badges_1.name), 
  badges_1.date, 
  max(
    badges_1.date), 
  badges_1.class, 
  max(
    badges_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.class is not NULL
group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
limit 41;
select  
  count(*), 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
group by postlinks_1.postid
limit 34;
select  
  posthistory_1.postid, 
  posthistory_1.userid, 
  posthistory_1.postid, 
  posthistory_1.revisionguid, 
  posthistory_1.posthistorytypeid, 
  max(
    posthistory_1.creationdate), 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.id is not NULL
group by posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.userid
limit 29;
select  
  badges_2.date, 
  badges_1.userid, 
  users_1.accountid, 
  badges_2.date, 
  votes_1.id, 
  votes_1.id, 
  votes_1.userid, 
  badges_2.userid, 
  users_1.aboutme
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join users as users_1
        inner join badges as badges_2
        on (users_1.id = badges_2.id )
      inner join votes as votes_1
      on (users_1.id = votes_1.id )
    on (badges_1.id = votes_1.id )
where badges_1.date < votes_1.creationdate
limit 37;
select  
  comments_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.id is not NULL
limit 17;
select  
  posthistory_1.userid, 
  posthistory_1.userid, 
  posthistory_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.userdisplayname > posthistory_1.revisionguid
limit 25;
select  
  comments_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.creationdate >= comments_1.creationdate
limit 28;
select  
  posts_1.ownerdisplayname, 
  posts_1.parentid, 
  posts_1.posttypeid, 
  posts_1.acceptedanswerid, 
  posts_1.title, 
  posts_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.creationdate is not NULL
limit 32;
select  
  postlinks_1.id, 
  count(
    postlinks_1.relatedpostid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.postid <= postlinks_1.linktypeid
group by postlinks_1.id
limit 8;
select  
  posthistory_1.revisionguid, 
  posthistory_1.text, 
  posthistory_1.userid, 
  min(
    posthistory_1.creationdate), 
  posthistory_1.comment, 
  votes_1.votetypeid, 
  votes_1.postid, 
  votes_1.userid, 
  posthistory_1.text, 
  posthistory_1.comment, 
  avg(
    posthistory_1.userid), 
  count(
    posthistory_1.userid), 
  posthistory_1.posthistorytypeid, 
  posthistory_1.text, 
  posthistory_1.userdisplayname, 
  posthistory_1.userdisplayname, 
  min(
    posthistory_1.creationdate), 
  posthistory_1.revisionguid, 
  min(
    posthistory_1.posthistorytypeid), 
  posthistory_1.comment, 
  votes_1.creationdate, 
  votes_1.id, 
  votes_1.creationdate, 
  posthistory_1.revisionguid, 
  votes_1.postid, 
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join votes as votes_1
    on (posthistory_1.id = votes_1.id )
where posthistory_1.comment is not NULL
group by posthistory_1.comment, posthistory_1.posthistorytypeid, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userdisplayname, posthistory_1.userid, votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 9;
select  
  posts_1.tags, 
  posts_1.parentid, 
  sum(
    posts_1.owneruserid), 
  posts_1.acceptedanswerid, 
  posts_1.title, 
  posts_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.body is not NULL
group by posts_1.acceptedanswerid, posts_1.creationdate, posts_1.parentid, posts_1.tags, posts_1.title
limit 32;
select  
  users_1.aboutme, 
  users_1.location, 
  users_1.accountid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.accountid <= users_1.profileimageurl
limit 8;
select  
  posthistory_1.comment, 
  max(
    posts_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join comments as comments_1
      inner join postlinks as postlinks_1
            inner join posts as posts_1
            on (postlinks_1.id = posts_1.id )
          inner join comments as comments_2
          on (posts_1.id = comments_2.id )
        inner join posthistory as posthistory_1
          inner join comments as comments_3
          on (posthistory_1.id = comments_3.id )
        on (comments_2.id = posthistory_1.id )
      on (comments_1.id = comments_3.id )
    on (badges_1.id = comments_1.id )
where comments_1.contentlicense is not NULL
group by posthistory_1.comment
limit 12;
select  
  count(*), 
  postlinks_1.postid, 
  postlinks_1.postid, 
  postlinks_1.postid, 
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  count(
    postlinks_1.postid), 
  postlinks_1.linktypeid, 
  postlinks_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.id is not NULL
group by postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid
limit 23;
select  
  users_1.displayname, 
  max(
    users_1.creationdate), 
  max(
    users_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join users as users_1
    on (badges_1.id = users_1.id )
where users_1.accountid is not NULL
group by users_1.displayname
limit 6;
select  
  posthistory_1.postid, 
  posthistory_1.id, 
  posthistory_1.id, 
  max(
    posthistory_1.creationdate), 
  posthistory_1.text, 
  min(
    posthistory_1.creationdate), 
  posthistory_1.posthistorytypeid, 
  max(
    posthistory_1.id), 
  min(
    posthistory_1.posthistorytypeid), 
  posthistory_1.comment
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.comment is not NULL
group by posthistory_1.comment, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.text
limit 26;
select  
  badges_1.class, 
  badges_1.date, 
  badges_1.name, 
  badges_1.name, 
  badges_1.id, 
  badges_1.tagbased, 
  min(
    badges_1.date), 
  badges_1.class, 
  badges_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.name >= badges_1.name
group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased
limit 35;
select  
  votes_1.postid, 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.userid is not NULL
limit 28;
select  
  posthistory_1.text, 
  posthistory_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.comment is not NULL
limit 28;
select  
  users_1.profileimageurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
      inner join users as users_1
        inner join comments as comments_2
        on (users_1.id = comments_2.id )
      on (comments_1.id = users_1.id )
    inner join comments as comments_3
      inner join posts as posts_1
      on (comments_3.id = posts_1.id )
    on (users_1.id = posts_1.id )
where posts_1.parentid is not NULL
limit 18;
select  
  badges_1.userid, 
  badges_1.date, 
  badges_1.name, 
  comments_1.postid, 
  min(
    comments_1.id), 
  count(*), 
  comments_1.userid, 
  comments_1.text, 
  comments_1.creationdate, 
  comments_1.contentlicense, 
  comments_1.id, 
  badges_1.name, 
  badges_1.name, 
  badges_1.userid, 
  badges_1.id, 
  comments_1.userdisplayname, 
  comments_1.userdisplayname, 
  max(
    badges_1.id)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join comments as comments_1
    on (badges_1.id = comments_1.id )
where comments_1.text is not NULL
group by badges_1.date, badges_1.id, badges_1.name, badges_1.userid, comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.text, comments_1.userdisplayname, comments_1.userid
limit 37;
select  
  posthistory_2.comment, 
  posthistory_2.contentlicense, 
  min(
    posthistory_1.userid), 
  max(
    comments_2.creationdate), 
  posthistory_1.comment
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
          inner join users as users_1
          on (comments_1.id = users_1.id )
        inner join posthistory as posthistory_1
        on (users_1.id = posthistory_1.id )
      inner join comments as comments_2
      on (posthistory_1.id = comments_2.id )
    inner join posthistory as posthistory_2
    on (posthistory_1.id = posthistory_2.id )
where posthistory_1.userdisplayname is not NULL
group by posthistory_1.comment, posthistory_2.comment, posthistory_2.contentlicense
limit 41;
select  
  votes_1.userid, 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate is not NULL
limit 42;
select  
  users_1.profileimageurl, 
  users_1.creationdate, 
  users_1.creationdate, 
  users_1.creationdate, 
  avg(
    users_1.accountid), 
  sum(
    users_1.profileimageurl), 
  users_1.creationdate, 
  users_1.websiteurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.location is not NULL
group by users_1.creationdate, users_1.profileimageurl, users_1.websiteurl
limit 33;
select  
  min(
    votes_1.creationdate), 
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.postid is not NULL
group by votes_1.userid
limit 5;
select  
  postlinks_1.id, 
  min(
    postlinks_1.postid), 
  postlinks_1.relatedpostid, 
  postlinks_1.linktypeid, 
  postlinks_1.id, 
  postlinks_1.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
group by postlinks_1.id, postlinks_1.linktypeid, postlinks_1.relatedpostid
limit 16;
select  
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
limit 9;
select  
  posts_1.parentid, 
  posts_1.title, 
  posts_1.posttypeid, 
  posts_1.contentlicense, 
  min(
    posts_1.creationdate), 
  max(
    posts_1.creationdate), 
  posts_1.posttypeid, 
  posts_1.contentlicense, 
  posts_1.body, 
  min(
    posts_1.creationdate), 
  min(
    posts_1.creationdate), 
  max(
    posts_1.creationdate), 
  sum(
    posts_1.posttypeid), 
  posts_1.body, 
  posts_1.posttypeid, 
  posts_1.id, 
  posts_1.owneruserid, 
  posts_1.acceptedanswerid, 
  posts_1.acceptedanswerid, 
  posts_1.posttypeid, 
  posts_1.acceptedanswerid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.body < posts_1.tags
group by posts_1.acceptedanswerid, posts_1.body, posts_1.contentlicense, posts_1.id, posts_1.owneruserid, posts_1.parentid, posts_1.posttypeid, posts_1.title
limit 39;
select  
  votes_1.userid, 
  votes_1.creationdate, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.postid is not NULL
limit 3;
select  
  users_1.aboutme, 
  users_1.aboutme, 
  users_1.id, 
  users_1.creationdate, 
  min(
    users_1.creationdate), 
  users_1.aboutme, 
  max(
    users_1.creationdate), 
  users_1.accountid, 
  count(*), 
  users_1.aboutme, 
  users_1.location, 
  users_1.profileimageurl, 
  users_1.displayname, 
  min(
    users_1.accountid), 
  users_1.location, 
  users_1.location, 
  users_1.displayname, 
  users_1.creationdate, 
  users_1.websiteurl, 
  users_1.websiteurl, 
  users_1.websiteurl, 
  users_1.accountid, 
  users_1.id, 
  users_1.displayname, 
  users_1.aboutme, 
  users_1.creationdate, 
  users_1.websiteurl, 
  users_1.websiteurl, 
  users_1.aboutme, 
  users_1.location, 
  max(
    users_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.location is not NULL
group by users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.displayname, users_1.id, users_1.location, users_1.profileimageurl, users_1.websiteurl
limit 13;
select  
  users_1.displayname, 
  users_1.websiteurl, 
  users_1.id, 
  users_1.creationdate, 
  users_1.websiteurl, 
  users_1.displayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.location is not NULL
limit 2;
select  
  posts_1.ownerdisplayname, 
  min(
    posts_1.creationdate), 
  posts_1.posttypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.tags >= posts_1.contentlicense
group by posts_1.ownerdisplayname, posts_1.posttypeid
limit 19;
select  
  votes_1.id, 
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate is not NULL
limit 27;
select  
  max(
    posthistory_1.postid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.id > posthistory_1.postid
limit 5;
select  
  max(
    votes_1.id), 
  votes_1.postid, 
  votes_1.userid, 
  votes_1.votetypeid, 
  votes_1.userid, 
  votes_1.postid, 
  votes_1.id, 
  votes_1.userid, 
  count(
    votes_1.id), 
  sum(
    votes_1.id), 
  votes_1.userid, 
  votes_1.id, 
  votes_1.id, 
  votes_1.postid, 
  votes_1.userid, 
  votes_1.votetypeid, 
  votes_1.id, 
  votes_1.creationdate, 
  votes_1.userid, 
  votes_1.id, 
  votes_1.postid, 
  max(
    votes_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.postid is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 33;
select  
  postlinks_2.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join postlinks as postlinks_2
    on (postlinks_1.id = postlinks_2.id )
where postlinks_1.creationdate >= postlinks_2.creationdate
limit 31;
select  
  max(
    posts_1.creationdate), 
  posthistory_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join posts as posts_1
    on (posthistory_1.id = posts_1.id )
where posts_1.ownerdisplayname is not NULL
group by posthistory_1.creationdate
limit 3;
select  
  postlinks_1.relatedpostid, 
  avg(
    postlinks_1.linktypeid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
      inner join postlinks as postlinks_1
      on (posthistory_1.id = postlinks_1.id )
    inner join postlinks as postlinks_2
    on (posthistory_1.id = postlinks_2.id )
where posthistory_1.contentlicense is not NULL
group by postlinks_1.relatedpostid
limit 4;
select  
  votes_1.votetypeid, 
  posts_1.title, 
  votes_1.userid, 
  posts_1.owneruserid, 
  votes_1.creationdate, 
  votes_1.id, 
  min(
    posts_1.acceptedanswerid), 
  votes_1.postid, 
  votes_1.postid, 
  votes_1.id, 
  min(
    votes_1.id), 
  posts_1.acceptedanswerid, 
  votes_1.userid, 
  votes_1.votetypeid, 
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join posts as posts_1
    on (votes_1.id = posts_1.id )
where votes_1.id is not NULL
group by posts_1.acceptedanswerid, posts_1.owneruserid, posts_1.title, votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 24;
select  
  votes_1.userid, 
  votes_1.votetypeid, 
  votes_1.id, 
  votes_1.id, 
  votes_1.votetypeid, 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.postid is not NULL
limit 21;
select  
  posts_1.id, 
  posts_1.posttypeid, 
  posts_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.id is not NULL
limit 2;
select  
  min(
    posthistory_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
      inner join posthistory as posthistory_2
      on (posthistory_1.id = posthistory_2.id )
    inner join postlinks as postlinks_1
      inner join posthistory as posthistory_3
      on (postlinks_1.id = posthistory_3.id )
    on (posthistory_1.id = postlinks_1.id )
where posthistory_1.text is not NULL
limit 40;
select  
  badges_1.id, 
  badges_1.date, 
  badges_1.name, 
  badges_1.userid, 
  badges_1.id, 
  badges_1.class, 
  badges_1.id, 
  badges_1.date, 
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.userid is not NULL
limit 12;
select  
  posthistory_1.contentlicense, 
  posthistory_1.userid, 
  posthistory_1.comment, 
  posthistory_1.revisionguid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.id is not NULL
limit 25;
select  
  count(
    postlinks_1.linktypeid), 
  postlinks_1.id, 
  comments_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join postlinks as postlinks_1
    on (comments_1.id = postlinks_1.id )
where comments_1.postid >= comments_1.userid
group by comments_1.text, postlinks_1.id
limit 10;
select  
  avg(
    votes_1.id)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join votes as votes_1
    on (users_1.id = votes_1.id )
where votes_1.postid is not NULL
limit 41;
select  
  min(
    badges_2.date), 
  users_1.accountid, 
  users_1.creationdate, 
  posts_1.parentid, 
  posts_1.body, 
  badges_2.date, 
  posts_1.body, 
  badges_2.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join users as users_2
          inner join posts as posts_1
            inner join votes as votes_1
            on (posts_1.id = votes_1.id )
          on (users_2.id = votes_1.id )
        inner join badges as badges_1
        on (votes_1.id = badges_1.id )
      inner join badges as badges_2
      on (votes_1.id = badges_2.id )
    on (users_1.id = users_2.id )
where users_2.displayname is not NULL
group by badges_2.date, badges_2.id, posts_1.body, posts_1.parentid, users_1.accountid, users_1.creationdate
limit 27;
select  
  avg(
    posthistory_1.posthistorytypeid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.contentlicense is not NULL
limit 21;
select  
  posts_1.owneruserid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.contentlicense is not NULL
limit 3;
select  
  badges_1.class, 
  badges_1.name, 
  badges_1.date, 
  badges_1.userid, 
  max(
    badges_1.userid), 
  badges_1.class, 
  badges_1.class, 
  badges_1.date, 
  badges_1.id, 
  badges_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased < badges_1.tagbased
group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.userid
limit 8;
select  
  posthistory_1.userdisplayname, 
  posthistory_1.revisionguid, 
  posthistory_1.revisionguid, 
  posthistory_1.postid, 
  posthistory_1.userid, 
  posthistory_1.id, 
  posthistory_1.postid, 
  posthistory_1.revisionguid, 
  posthistory_1.posthistorytypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.userdisplayname is not NULL
limit 31;
select  
  posthistory_1.comment, 
  posthistory_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.text is not NULL
limit 11;
select  
  comments_1.postid, 
  max(
    votes_1.creationdate), 
  comments_1.userdisplayname, 
  comments_1.userid, 
  count(
    comments_1.contentlicense), 
  votes_1.userid, 
  avg(
    votes_1.userid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join votes as votes_1
    on (comments_1.id = votes_1.id )
where votes_1.userid is not NULL
group by comments_1.postid, comments_1.userdisplayname, comments_1.userid, votes_1.userid
limit 6;
select  
  votes_1.postid, 
  min(
    votes_1.id), 
  votes_1.creationdate, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.postid >= votes_1.votetypeid
group by votes_1.creationdate, votes_1.postid
limit 2;
select  
  count(
    postlinks_1.relatedpostid), 
  postlinks_1.relatedpostid, 
  postlinks_1.relatedpostid, 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
group by postlinks_1.postid, postlinks_1.relatedpostid
limit 31;
select  
  comments_1.text, 
  comments_2.text, 
  comments_2.creationdate, 
  comments_1.userid, 
  comments_2.contentlicense, 
  comments_2.contentlicense, 
  count(
    comments_1.userdisplayname), 
  comments_1.creationdate, 
  comments_1.id, 
  comments_2.contentlicense, 
  comments_2.creationdate, 
  comments_1.userid, 
  comments_1.userid, 
  max(
    comments_2.userid), 
  comments_2.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join comments as comments_2
    on (comments_1.id = comments_2.id )
where comments_1.id is not NULL
group by comments_1.creationdate, comments_1.id, comments_1.text, comments_1.userid, comments_2.contentlicense, comments_2.creationdate, comments_2.id, comments_2.text
limit 29;
select  
  postlinks_1.linktypeid, 
  postlinks_1.postid, 
  postlinks_1.relatedpostid, 
  min(
    postlinks_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
group by postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 40;
select  
  posts_1.parentid, 
  max(
    posts_1.creationdate), 
  posts_1.tags
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.posttypeid is not NULL
group by posts_1.parentid, posts_1.tags
limit 21;
select  
  comments_1.postid, 
  comments_1.postid, 
  badges_1.userid, 
  users_1.aboutme, 
  avg(
    comments_1.userid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
      inner join posts as posts_1
      on (users_1.id = posts_1.id )
    inner join comments as comments_1
      inner join badges as badges_1
      on (comments_1.id = badges_1.id )
    on (users_1.id = badges_1.id )
where badges_1.date <= users_1.creationdate
group by badges_1.userid, comments_1.postid, users_1.aboutme
limit 30;
select  
  postlinks_1.postid, 
  postlinks_1.linktypeid, 
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid, 
  postlinks_1.creationdate, 
  sum(
    postlinks_1.relatedpostid), 
  postlinks_1.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate > postlinks_1.creationdate
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 3;
select  
  posthistory_1.contentlicense, 
  count(
    users_1.displayname), 
  users_1.profileimageurl, 
  posts_1.title, 
  postlinks_1.postid, 
  posts_1.posttypeid, 
  posthistory_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
        inner join users as users_1
        on (postlinks_1.id = users_1.id )
      inner join posts as posts_1
      on (postlinks_1.id = posts_1.id )
    inner join badges as badges_1
      inner join posthistory as posthistory_1
      on (badges_1.id = posthistory_1.id )
    on (users_1.id = badges_1.id )
where users_1.displayname <= posts_1.contentlicense
group by posthistory_1.contentlicense, postlinks_1.postid, posts_1.posttypeid, posts_1.title, users_1.profileimageurl
limit 36;
select  
  postlinks_1.relatedpostid, 
  badges_1.tagbased, 
  posts_1.title, 
  posts_1.tags
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
      inner join badges as badges_1
      on (posts_1.id = badges_1.id )
    inner join votes as votes_1
      inner join postlinks as postlinks_1
      on (votes_1.id = postlinks_1.id )
    on (badges_1.id = postlinks_1.id )
where badges_1.tagbased <= badges_1.tagbased
limit 26;
select  
  comments_1.text, 
  comments_1.id, 
  comments_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join badges as badges_1
      inner join comments as comments_1
      on (badges_1.id = comments_1.id )
    on (users_1.id = badges_1.id )
where users_1.aboutme is not NULL
limit 23;
select  
  votes_1.userid, 
  votes_1.userid, 
  votes_1.creationdate, 
  posthistory_1.userdisplayname, 
  votes_1.userid, 
  posthistory_1.userid, 
  max(
    posthistory_1.creationdate), 
  posthistory_1.contentlicense, 
  votes_1.postid, 
  posthistory_1.contentlicense, 
  posthistory_1.posthistorytypeid, 
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join votes as votes_1
    on (posthistory_1.id = votes_1.id )
where posthistory_1.creationdate is not NULL
group by posthistory_1.contentlicense, posthistory_1.posthistorytypeid, posthistory_1.userdisplayname, posthistory_1.userid, votes_1.creationdate, votes_1.postid, votes_1.userid
limit 27;
select  
  badges_1.id, 
  badges_1.name, 
  badges_1.name, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.date is not NULL
group by badges_1.id, badges_1.name
limit 27;
select  
  users_1.location, 
  users_1.id, 
  users_1.accountid, 
  count(*), 
  max(
    posts_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join posts as posts_1
    on (users_1.id = posts_1.id )
where users_1.profileimageurl is not NULL
group by users_1.accountid, users_1.id, users_1.location
limit 12;
select  
  badges_1.name, 
  badges_1.name, 
  badges_1.tagbased, 
  badges_1.name, 
  badges_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased <= badges_1.tagbased
limit 9;
select  
  comments_1.postid, 
  votes_1.creationdate, 
  votes_1.postid, 
  votes_1.creationdate, 
  votes_1.creationdate, 
  votes_1.userid, 
  comments_1.userdisplayname, 
  votes_1.postid, 
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join votes as votes_1
    on (comments_1.id = votes_1.id )
where votes_1.postid is not NULL
limit 37;
select  
  badges_1.class, 
  badges_1.date, 
  badges_1.userid, 
  badges_1.name, 
  count(*), 
  badges_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.date is not NULL
group by badges_1.class, badges_1.date, badges_1.name, badges_1.userid
limit 18;
select  
  posts_1.posttypeid, 
  votes_1.postid, 
  votes_1.userid, 
  votes_1.creationdate, 
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
      inner join posts as posts_1
      on (votes_1.id = posts_1.id )
    inner join badges as badges_1
    on (votes_1.id = badges_1.id )
where posts_1.id is not NULL
limit 21;
select  
  users_2.location, 
  votes_1.postid, 
  users_2.location
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
      inner join votes as votes_1
      on (users_1.id = votes_1.id )
    inner join users as users_2
    on (users_1.id = users_2.id )
where users_1.creationdate is not NULL
limit 2;
select  
  posthistory_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.userid > posthistory_1.postid
limit 26;
select  
  postlinks_1.id, 
  postlinks_1.relatedpostid, 
  postlinks_1.creationdate, 
  postlinks_1.creationdate, 
  postlinks_1.id, 
  count(*), 
  postlinks_1.creationdate, 
  postlinks_1.postid, 
  postlinks_1.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.postid, postlinks_1.relatedpostid
limit 10;
select  
  comments_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join comments as comments_1
    on (users_1.id = comments_1.id )
where comments_1.creationdate is not NULL
limit 41;
select  
  posts_1.parentid, 
  posts_1.title, 
  posts_1.tags, 
  posts_1.title, 
  posts_1.title, 
  posts_1.id, 
  posts_1.id, 
  posts_1.creationdate, 
  posts_1.id, 
  posts_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.creationdate is not NULL
limit 8;
select  
  users_1.displayname, 
  users_1.profileimageurl, 
  users_1.creationdate, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.aboutme >= users_1.location
group by users_1.creationdate, users_1.displayname, users_1.profileimageurl
limit 12;
select  
  badges_1.date, 
  badges_1.tagbased, 
  badges_1.id, 
  badges_1.tagbased, 
  badges_1.date, 
  badges_1.userid, 
  badges_1.id, 
  badges_1.class, 
  sum(
    badges_1.id)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.userid is not NULL
group by badges_1.class, badges_1.date, badges_1.id, badges_1.tagbased, badges_1.userid
limit 33;
select  
  votes_1.id, 
  votes_1.userid, 
  votes_1.creationdate, 
  votes_1.postid, 
  votes_1.creationdate, 
  votes_1.votetypeid, 
  votes_1.id, 
  votes_1.id, 
  avg(
    votes_1.userid), 
  votes_1.userid, 
  max(
    votes_1.creationdate), 
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.userid is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 13;
select  
  posts_1.tags, 
  posts_1.tags, 
  posts_1.contentlicense, 
  posts_1.body, 
  posts_1.posttypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.tags is not NULL
limit 16;
select  
  votes_1.postid, 
  badges_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join badges as badges_1
      inner join users as users_1
      on (badges_1.id = users_1.id )
    on (votes_1.id = users_1.id )
where users_1.displayname is not NULL
limit 20;
select  
  posts_1.title, 
  posts_1.body, 
  posts_1.parentid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.parentid is not NULL
limit 7;
select  
  posts_1.posttypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.ownerdisplayname >= posts_1.contentlicense
limit 29;
select  
  max(
    postlinks_1.creationdate), 
  postlinks_1.creationdate, 
  sum(
    postlinks_1.linktypeid), 
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid, 
  postlinks_1.creationdate, 
  count(
    postlinks_1.id), 
  postlinks_1.postid, 
  postlinks_1.linktypeid, 
  postlinks_1.creationdate, 
  postlinks_1.postid, 
  postlinks_1.id, 
  postlinks_1.postid, 
  postlinks_1.id, 
  postlinks_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate = postlinks_1.creationdate
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 5;
select  
  posts_1.creationdate, 
  min(
    posts_1.creationdate), 
  posts_1.id, 
  min(
    posts_1.creationdate), 
  posts_1.body, 
  max(
    posts_1.creationdate), 
  max(
    posts_1.owneruserid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.parentid is not NULL
group by posts_1.body, posts_1.creationdate, posts_1.id
limit 9;
select  
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.id > votes_1.votetypeid
limit 42;
select  
  posthistory_1.id, 
  posthistory_1.postid, 
  min(
    posthistory_1.postid), 
  posthistory_1.userdisplayname, 
  posthistory_1.contentlicense, 
  posthistory_1.userdisplayname, 
  posthistory_1.revisionguid, 
  posthistory_1.contentlicense, 
  max(
    posthistory_1.creationdate), 
  posthistory_1.posthistorytypeid, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.revisionguid, 
  posthistory_1.creationdate, 
  posthistory_1.text, 
  posthistory_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.creationdate < posthistory_1.creationdate
group by posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userdisplayname
limit 3;
select  
  posts_1.ownerdisplayname, 
  postlinks_1.postid, 
  postlinks_1.linktypeid, 
  postlinks_1.creationdate, 
  count(*), 
  postlinks_1.relatedpostid, 
  postlinks_1.linktypeid, 
  posts_1.acceptedanswerid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join posts as posts_1
    on (postlinks_1.id = posts_1.id )
where postlinks_1.creationdate is not NULL
group by postlinks_1.creationdate, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid, posts_1.acceptedanswerid, posts_1.ownerdisplayname
limit 25;
select  
  min(
    votes_1.votetypeid), 
  votes_1.userid, 
  votes_1.id, 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.postid is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.userid
limit 19;
select  
  posthistory_1.id, 
  posthistory_1.postid, 
  posthistory_1.revisionguid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.comment < posthistory_1.revisionguid
limit 32;
select  
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join badges as badges_1
    on (users_1.id = badges_1.id )
where badges_1.date is not NULL
limit 32;
select  
  badges_1.tagbased, 
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.id is not NULL
limit 36;
select  
  max(
    posthistory_1.creationdate), 
  avg(
    posthistory_1.posthistorytypeid), 
  posthistory_1.text, 
  posthistory_1.posthistorytypeid, 
  max(
    posthistory_1.creationdate), 
  posthistory_1.text, 
  posthistory_1.userdisplayname, 
  posthistory_1.revisionguid, 
  posthistory_1.contentlicense, 
  posthistory_1.contentlicense, 
  posthistory_1.userid, 
  posthistory_1.revisionguid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.id is not NULL
group by posthistory_1.contentlicense, posthistory_1.posthistorytypeid, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userdisplayname, posthistory_1.userid
limit 32;
select  
  max(
    votes_1.creationdate), 
  votes_1.userid, 
  votes_1.userid, 
  votes_1.postid, 
  votes_1.userid, 
  min(
    votes_1.creationdate), 
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate is not NULL
group by votes_1.postid, votes_1.userid
limit 11;
select  
  users_1.accountid, 
  min(
    users_1.creationdate), 
  users_1.displayname, 
  users_1.aboutme, 
  users_1.accountid, 
  users_1.profileimageurl, 
  users_1.location, 
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.profileimageurl is not NULL
group by users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.displayname, users_1.location, users_1.profileimageurl
limit 26;
select  
  votes_1.votetypeid, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate > votes_1.creationdate
limit 31;
select  
  posts_1.posttypeid, 
  posts_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join posts as posts_1
    on (badges_1.id = posts_1.id )
where badges_1.tagbased is not NULL
limit 5;
select
  users_1.displayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.websiteurl is not NULL
limit 23;
select  
  badges_1.date, 
  badges_1.userid, 
  badges_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.id is not NULL
limit 4;
select  
  users_1.location, 
  count(*), 
  min(
    users_1.creationdate), 
  users_1.websiteurl, 
  users_1.id, 
  users_1.websiteurl, 
  users_1.websiteurl, 
  users_1.accountid, 
  users_1.websiteurl, 
  max(
    users_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.accountid is not NULL
group by users_1.accountid, users_1.id, users_1.location, users_1.websiteurl
limit 32;
select  
  users_1.displayname, 
  users_1.aboutme
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.profileimageurl is not NULL
limit 35;
select  
  comments_1.id, 
  comments_1.text, 
  comments_1.text, 
  avg(
    comments_1.id)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.text is not NULL
group by comments_1.id, comments_1.text
limit 11;
select  
  min(
    comments_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join comments as comments_1
      inner join votes as votes_1
      on (comments_1.id = votes_1.id )
    on (posts_1.id = votes_1.id )
where posts_1.acceptedanswerid > comments_1.id
limit 19;
select  
  comments_1.userid, 
  min(
    comments_1.creationdate), 
  comments_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.contentlicense is not NULL
group by comments_1.text, comments_1.userid
limit 19;
select  
  posts_1.creationdate, 
  postlinks_1.postid, 
  posts_1.parentid, 
  postlinks_1.id, 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join postlinks as postlinks_1
    on (posts_1.id = postlinks_1.id )
where posts_1.posttypeid is not NULL
limit 31;
select  
  sum(
    postlinks_1.id), 
  postlinks_1.id, 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
group by postlinks_1.id, postlinks_1.linktypeid
limit 4;
select  
  users_1.location, 
  users_1.id, 
  users_1.aboutme, 
  users_1.websiteurl, 
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.displayname is not NULL
limit 23;
select  
  postlinks_1.relatedpostid, 
  postlinks_1.postid, 
  postlinks_1.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
limit 32;
select  
  votes_1.creationdate, 
  votes_1.creationdate, 
  postlinks_1.creationdate, 
  votes_2.votetypeid, 
  votes_1.votetypeid, 
  postlinks_1.creationdate, 
  posthistory_1.id, 
  votes_2.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
      inner join posthistory as posthistory_1
      on (postlinks_1.id = posthistory_1.id )
    inner join votes as votes_1
      inner join votes as votes_2
      on (votes_1.id = votes_2.id )
    on (postlinks_1.id = votes_1.id )
where postlinks_1.relatedpostid <= votes_2.userid
limit 20;
select  
  min(
    badges_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.name > badges_1.name
limit 41;
select  
  posts_1.id, 
  posts_1.acceptedanswerid, 
  posts_1.ownerdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.parentid > posts_1.owneruserid
limit 25;
select  
  posthistory_1.posthistorytypeid, 
  posthistory_1.posthistorytypeid, 
  postlinks_1.relatedpostid, 
  posthistory_1.contentlicense, 
  max(
    posts_1.creationdate), 
  posthistory_1.posthistorytypeid, 
  postlinks_1.id, 
  postlinks_1.postid, 
  max(
    posthistory_1.postid), 
  posts_1.parentid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
      inner join posts as posts_1
      on (posthistory_1.id = posts_1.id )
    inner join postlinks as postlinks_1
    on (posts_1.id = postlinks_1.id )
where posts_1.body is not NULL
group by posthistory_1.contentlicense, posthistory_1.posthistorytypeid, postlinks_1.id, postlinks_1.postid, postlinks_1.relatedpostid, posts_1.parentid
limit 21;
select  
  badges_1.userid, 
  badges_1.userid, 
  badges_1.id, 
  badges_1.userid, 
  badges_1.class, 
  badges_1.id, 
  max(
    badges_1.date), 
  max(
    badges_1.date), 
  badges_1.name, 
  badges_1.name, 
  badges_1.userid, 
  badges_1.tagbased
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased is not NULL
group by badges_1.class, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
limit 21;
select  
  badges_1.class, 
  min(
    badges_1.id)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.class is not NULL
group by badges_1.class
limit 40;
select  
  posthistory_1.userdisplayname, 
  posthistory_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
      inner join posthistory as posthistory_1
      on (comments_1.id = posthistory_1.id )
    inner join posts as posts_1
    on (posthistory_1.id = posts_1.id )
where comments_1.id is not NULL
limit 25;
select  
  posthistory_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.contentlicense is not NULL
limit 2;
select  
  badges_1.id, 
  badges_1.name, 
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased > badges_1.tagbased
limit 1;
select  
  votes_1.creationdate, 
  users_1.accountid, 
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join users as users_1
    on (votes_1.id = users_1.id )
where users_1.accountid <= votes_1.id
limit 3;
select  
  min(
    posthistory_1.userid), 
  posthistory_1.postid, 
  posthistory_1.postid, 
  postlinks_2.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join postlinks as postlinks_2
      inner join posthistory as posthistory_1
      on (postlinks_2.id = posthistory_1.id )
    on (postlinks_1.id = posthistory_1.id )
where postlinks_2.relatedpostid is not NULL
group by posthistory_1.postid, postlinks_2.relatedpostid
limit 14;
select  
  users_1.id, 
  users_1.websiteurl, 
  users_1.id, 
  users_1.displayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.websiteurl is not NULL
limit 12;
select  
  postlinks_1.creationdate, 
  postlinks_1.id, 
  postlinks_1.creationdate, 
  posthistory_1.contentlicense, 
  min(
    posthistory_1.userid), 
  min(
    posthistory_1.id), 
  min(
    posthistory_1.creationdate), 
  posthistory_1.userdisplayname, 
  posthistory_1.userid, 
  posthistory_1.revisionguid, 
  postlinks_1.linktypeid, 
  posthistory_1.id, 
  min(
    posthistory_1.creationdate), 
  posthistory_1.comment, 
  posthistory_1.contentlicense, 
  postlinks_1.id, 
  postlinks_1.relatedpostid, 
  posthistory_1.contentlicense, 
  postlinks_1.creationdate, 
  postlinks_1.linktypeid, 
  posthistory_1.id, 
  postlinks_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join postlinks as postlinks_1
    on (posthistory_1.id = postlinks_1.id )
where posthistory_1.postid is not NULL
group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.id, posthistory_1.revisionguid, posthistory_1.userdisplayname, posthistory_1.userid, postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.relatedpostid
limit 30;
select  
  max(
    posts_1.owneruserid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
      inner join badges as badges_1
      on (postlinks_1.id = badges_1.id )
    inner join users as users_1
          inner join comments as comments_1
          on (users_1.id = comments_1.id )
        inner join postlinks as postlinks_2
        on (users_1.id = postlinks_2.id )
      inner join posts as posts_1
      on (postlinks_2.id = posts_1.id )
    on (badges_1.id = postlinks_2.id )
where comments_1.contentlicense is not NULL
limit 20;
select  
  badges_1.date, 
  sum(
    badges_1.class)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.name >= badges_1.name
group by badges_1.date
limit 26;
select  
  posts_1.parentid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join posts as posts_2
    on (posts_1.id = posts_2.id )
where posts_2.creationdate is not NULL
limit 19;
select  
  posts_1.body, 
  users_1.displayname, 
  max(
    votes_1.postid), 
  count(
    posts_1.tags), 
  users_1.websiteurl, 
  votes_1.postid, 
  comments_1.postid, 
  users_1.location, 
  posts_1.tags, 
  users_1.websiteurl, 
  votes_1.postid, 
  votes_1.creationdate, 
  users_1.accountid, 
  votes_1.creationdate, 
  posts_1.ownerdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
        inner join votes as votes_1
        on (posts_1.id = votes_1.id )
      inner join users as users_1
      on (posts_1.id = users_1.id )
    inner join comments as comments_1
    on (votes_1.id = comments_1.id )
where votes_1.votetypeid is not NULL
group by comments_1.postid, posts_1.body, posts_1.ownerdisplayname, posts_1.tags, users_1.accountid, users_1.displayname, users_1.location, users_1.websiteurl, votes_1.creationdate, votes_1.postid
limit 13;
select  
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
limit 11;
select  
  posts_1.posttypeid, 
  posts_1.acceptedanswerid, 
  posts_1.posttypeid, 
  posts_1.owneruserid, 
  posts_1.creationdate, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.posttypeid is not NULL
group by posts_1.acceptedanswerid, posts_1.creationdate, posts_1.owneruserid, posts_1.posttypeid
limit 42;
select  
  postlinks_2.relatedpostid, 
  postlinks_1.relatedpostid, 
  max(
    postlinks_1.postid), 
  postlinks_1.linktypeid, 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join postlinks as postlinks_2
    on (postlinks_1.id = postlinks_2.id )
where postlinks_1.relatedpostid is not NULL
group by postlinks_1.linktypeid, postlinks_1.relatedpostid, postlinks_2.relatedpostid
limit 4;
select  
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
      inner join comments as comments_1
      on (posthistory_1.id = comments_1.id )
    inner join votes as votes_1
      inner join posthistory as posthistory_2
        inner join posts as posts_1
        on (posthistory_2.id = posts_1.id )
      on (votes_1.id = posts_1.id )
    on (comments_1.id = posts_1.id )
where posthistory_1.creationdate > comments_1.creationdate
limit 16;
select  
  posthistory_1.comment
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
      inner join posts as posts_1
      on (posthistory_1.id = posts_1.id )
    inner join posts as posts_2
    on (posthistory_1.id = posts_2.id )
where posthistory_1.creationdate > posts_1.creationdate
limit 16;
select  
  posts_1.acceptedanswerid, 
  posts_1.owneruserid, 
  posts_1.body, 
  posts_1.tags, 
  posts_1.posttypeid, 
  min(
    posts_1.parentid), 
  posts_1.parentid, 
  sum(
    posts_1.posttypeid), 
  posts_1.acceptedanswerid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.contentlicense is not NULL
group by posts_1.acceptedanswerid, posts_1.body, posts_1.owneruserid, posts_1.parentid, posts_1.posttypeid, posts_1.tags
limit 37;
select  
  comments_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
        inner join badges as badges_1
        on (postlinks_1.id = badges_1.id )
      inner join postlinks as postlinks_2
      on (badges_1.id = postlinks_2.id )
    inner join postlinks as postlinks_3
        inner join badges as badges_2
        on (postlinks_3.id = badges_2.id )
      inner join badges as badges_3
          inner join postlinks as postlinks_4
          on (badges_3.id = postlinks_4.id )
        inner join comments as comments_1
        on (badges_3.id = comments_1.id )
      on (postlinks_3.id = postlinks_4.id )
    on (postlinks_2.id = badges_2.id )
where badges_3.tagbased <= badges_1.tagbased
limit 28;
select  
  postlinks_1.relatedpostid, 
  postlinks_1.creationdate, 
  postlinks_1.creationdate, 
  count(
    postlinks_1.id)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
group by postlinks_1.creationdate, postlinks_1.relatedpostid
limit 16;
select  
  posthistory_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.postid is not NULL
limit 24;
select  
  votes_1.creationdate, 
  votes_1.userid, 
  votes_1.postid, 
  votes_1.creationdate, 
  votes_1.id, 
  votes_1.userid, 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.userid is not NULL
limit 16;
select  
  posts_1.contentlicense, 
  posts_1.creationdate, 
  posts_1.posttypeid, 
  min(
    posts_1.creationdate), 
  posts_1.parentid, 
  posts_1.parentid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.ownerdisplayname is not NULL
group by posts_1.contentlicense, posts_1.creationdate, posts_1.parentid, posts_1.posttypeid
limit 22;
select  
  posts_1.body, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join votes as votes_2
      inner join posts as posts_1
      on (votes_2.id = posts_1.id )
    on (votes_1.id = posts_1.id )
where votes_2.id < votes_1.postid
limit 3;
select  
  posthistory_1.userdisplayname, 
  posthistory_1.userid, 
  max(
    badges_1.date), 
  badges_1.date, 
  posthistory_1.creationdate, 
  badges_1.userid, 
  posthistory_1.userid, 
  posthistory_1.comment
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join posthistory as posthistory_1
        inner join votes as votes_1
        on (posthistory_1.id = votes_1.id )
      inner join badges as badges_1
      on (votes_1.id = badges_1.id )
    on (posts_1.id = posthistory_1.id )
where badges_1.tagbased >= badges_1.tagbased
group by badges_1.date, badges_1.userid, posthistory_1.comment, posthistory_1.creationdate, posthistory_1.userdisplayname, posthistory_1.userid
limit 40;
select  
  comments_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
      inner join badges as badges_1
      on (votes_1.id = badges_1.id )
    inner join comments as comments_1
    on (votes_1.id = comments_1.id )
where badges_1.id is not NULL
limit 4;
select  
  posthistory_1.userdisplayname, 
  posthistory_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.creationdate = posthistory_1.creationdate
limit 26;
select  
  badges_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join postlinks as postlinks_1
      inner join comments as comments_1
        inner join postlinks as postlinks_2
        on (comments_1.id = postlinks_2.id )
      on (postlinks_1.id = postlinks_2.id )
    on (badges_1.id = postlinks_2.id )
where postlinks_2.creationdate > badges_1.date
limit 33;
select  
  postlinks_1.id, 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
limit 20;
select  
  min(
    users_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.profileimageurl is not NULL
limit 1;
select  
  votes_1.creationdate, 
  votes_1.id, 
  min(
    votes_1.creationdate), 
  votes_1.votetypeid, 
  votes_1.creationdate, 
  votes_1.creationdate, 
  votes_1.creationdate, 
  votes_1.userid, 
  max(
    votes_1.creationdate), 
  votes_1.votetypeid, 
  votes_1.id, 
  votes_1.votetypeid, 
  votes_1.creationdate, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate < votes_1.creationdate
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 7;
select  
  badges_1.id, 
  posthistory_1.revisionguid, 
  posthistory_1.userdisplayname, 
  posthistory_1.id, 
  badges_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join badges as badges_1
    on (posthistory_1.id = badges_1.id )
where posthistory_1.posthistorytypeid >= posthistory_1.userid
limit 24;
select  
  posthistory_1.contentlicense, 
  posthistory_1.comment, 
  posthistory_1.comment
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.userid > posthistory_1.postid
limit 26;
select  
  votes_1.creationdate, 
  votes_1.postid, 
  votes_1.votetypeid, 
  votes_1.votetypeid, 
  avg(
    votes_1.userid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.votetypeid is not NULL
group by votes_1.creationdate, votes_1.postid, votes_1.votetypeid
limit 31;
select  
  postlinks_1.postid, 
  postlinks_2.postid, 
  sum(
    postlinks_2.linktypeid), 
  postlinks_1.id, 
  postlinks_2.creationdate, 
  postlinks_1.id, 
  postlinks_1.relatedpostid, 
  max(
    postlinks_2.creationdate), 
  postlinks_2.postid, 
  postlinks_1.linktypeid, 
  postlinks_1.postid, 
  postlinks_2.linktypeid, 
  postlinks_2.relatedpostid, 
  postlinks_2.creationdate, 
  postlinks_2.linktypeid, 
  postlinks_1.linktypeid, 
  postlinks_2.postid, 
  postlinks_2.postid, 
  postlinks_2.id, 
  postlinks_1.relatedpostid, 
  postlinks_1.id, 
  postlinks_1.relatedpostid, 
  postlinks_2.creationdate, 
  postlinks_2.id, 
  count(
    postlinks_2.linktypeid), 
  sum(
    postlinks_1.postid), 
  count(*), 
  postlinks_2.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join postlinks as postlinks_2
    on (postlinks_1.id = postlinks_2.id )
where postlinks_1.linktypeid is not NULL
group by postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid, postlinks_2.creationdate, postlinks_2.id, postlinks_2.linktypeid, postlinks_2.postid, postlinks_2.relatedpostid
limit 12;
select  
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
limit 25;
select  
  users_1.id, 
  users_1.websiteurl, 
  posts_1.parentid, 
  users_1.accountid, 
  comments_1.postid, 
  posts_1.posttypeid, 
  comments_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
      inner join posts as posts_1
      on (comments_1.id = posts_1.id )
    inner join users as users_1
    on (comments_1.id = users_1.id )
where comments_1.userdisplayname = posts_1.contentlicense
limit 21;
select  
  posthistory_1.posthistorytypeid, 
  badges_2.name, 
  badges_2.tagbased, 
  users_1.displayname, 
  posthistory_1.id, 
  users_1.accountid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
      inner join posts as posts_1
        inner join badges as badges_2
          inner join posthistory as posthistory_1
          on (badges_2.id = posthistory_1.id )
        on (posts_1.id = badges_2.id )
      on (badges_1.id = posthistory_1.id )
    inner join users as users_1
    on (badges_1.id = users_1.id )
where badges_2.id is not NULL
limit 26;
select  
  comments_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join comments as comments_1
      inner join posts as posts_1
      on (comments_1.id = posts_1.id )
    on (posthistory_1.id = comments_1.id )
where posthistory_1.posthistorytypeid is not NULL
limit 23;
select  
  postlinks_1.relatedpostid, 
  postlinks_1.linktypeid, 
  min(
    postlinks_1.creationdate), 
  postlinks_1.id, 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
group by postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 11;
select  
  max(
    postlinks_1.creationdate), 
  postlinks_1.linktypeid, 
  postlinks_1.creationdate, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  postlinks_1.id, 
  postlinks_1.relatedpostid, 
  postlinks_1.id, 
  postlinks_1.relatedpostid, 
  postlinks_1.relatedpostid, 
  postlinks_1.linktypeid, 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 40;
select  
  comments_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
      inner join postlinks as postlinks_2
        inner join posts as posts_1
          inner join posts as posts_2
            inner join badges as badges_1
            on (posts_2.id = badges_1.id )
          on (posts_1.id = badges_1.id )
        on (postlinks_2.id = posts_2.id )
      on (postlinks_1.id = posts_1.id )
    inner join comments as comments_1
    on (posts_1.id = comments_1.id )
where postlinks_1.relatedpostid is not NULL
limit 31;
select  
  comments_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userid is not NULL
limit 26;
select  
  posts_1.contentlicense, 
  posts_1.posttypeid, 
  posts_1.owneruserid, 
  posts_1.id, 
  count(
    posts_1.creationdate), 
  posts_1.id, 
  posts_1.ownerdisplayname, 
  posts_1.posttypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.owneruserid is not NULL
group by posts_1.contentlicense, posts_1.id, posts_1.ownerdisplayname, posts_1.owneruserid, posts_1.posttypeid
limit 8;
select  
  postlinks_1.creationdate, 
  postlinks_2.relatedpostid, 
  postlinks_1.id, 
  votes_1.id, 
  postlinks_1.postid, 
  postlinks_2.postid, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
      inner join postlinks as postlinks_1
      on (votes_1.id = postlinks_1.id )
    inner join postlinks as postlinks_2
    on (votes_1.id = postlinks_2.id )
where postlinks_1.postid <= postlinks_2.linktypeid
limit 39;
select  
  postlinks_1.creationdate, 
  postlinks_1.creationdate, 
  postlinks_1.creationdate, 
  postlinks_1.id, 
  postlinks_1.creationdate, 
  postlinks_1.linktypeid, 
  postlinks_1.creationdate, 
  postlinks_1.linktypeid, 
  postlinks_1.linktypeid, 
  postlinks_1.id, 
  postlinks_1.id, 
  postlinks_1.id, 
  postlinks_1.postid, 
  sum(
    postlinks_1.id), 
  min(
    postlinks_1.creationdate), 
  postlinks_1.id, 
  postlinks_1.postid, 
  postlinks_1.postid, 
  postlinks_1.linktypeid, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.postid, 
  avg(
    postlinks_1.id), 
  count(
    postlinks_1.relatedpostid), 
  postlinks_1.postid, 
  postlinks_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid
limit 41;
select  
  badges_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join badges as badges_1
    on (votes_1.id = badges_1.id )
where badges_1.date is not NULL
limit 41;
select  
  posts_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.ownerdisplayname < posts_1.contentlicense
limit 7;
select  
  users_1.id, 
  users_1.profileimageurl, 
  users_1.websiteurl, 
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.id is not NULL
limit 24;
select  
  votes_1.userid, 
  max(
    posts_2.creationdate), 
  posts_2.body, 
  comments_1.contentlicense, 
  posts_2.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
        inner join posts as posts_2
        on (posts_1.id = posts_2.id )
      inner join posthistory as posthistory_1
        inner join posts as posts_3
        on (posthistory_1.id = posts_3.id )
      on (posts_2.id = posthistory_1.id )
    inner join votes as votes_1
      inner join comments as comments_1
      on (votes_1.id = comments_1.id )
    on (posthistory_1.id = comments_1.id )
where comments_1.userid is not NULL
group by comments_1.contentlicense, posts_2.body, posts_2.creationdate, votes_1.userid
limit 9;
select  
  votes_1.postid, 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join posts as posts_1
    on (votes_1.id = posts_1.id )
where posts_1.posttypeid is not NULL
limit 42;
select  
  users_1.id, 
  posts_1.owneruserid, 
  postlinks_1.creationdate, 
  postlinks_1.postid, 
  posts_2.id, 
  users_1.profileimageurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
        inner join postlinks as postlinks_1
          inner join comments as comments_1
          on (postlinks_1.id = comments_1.id )
        on (posts_1.id = comments_1.id )
      inner join posts as posts_2
      on (posts_1.id = posts_2.id )
    inner join users as users_1
    on (postlinks_1.id = users_1.id )
where posts_2.owneruserid <= postlinks_1.relatedpostid
limit 25;
select  
  badges_1.class, 
  badges_1.id, 
  postlinks_1.linktypeid, 
  min(
    badges_1.date), 
  badges_1.class, 
  badges_1.tagbased, 
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join postlinks as postlinks_1
    on (badges_1.id = postlinks_1.id )
where badges_1.tagbased = badges_1.tagbased
group by badges_1.class, badges_1.id, badges_1.tagbased, postlinks_1.linktypeid
limit 41;
select  
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join postlinks as postlinks_1
      inner join votes as votes_1
      on (postlinks_1.id = votes_1.id )
    on (badges_1.id = votes_1.id )
where badges_1.name = badges_1.name
limit 7;
select  
  max(
    users_1.profileimageurl), 
  users_1.aboutme, 
  users_1.id, 
  users_1.displayname, 
  users_1.displayname, 
  users_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.profileimageurl is not NULL
group by users_1.aboutme, users_1.displayname, users_1.id
limit 17;
select  
  posts_1.ownerdisplayname, 
  postlinks_1.id, 
  posts_1.creationdate, 
  posts_1.parentid, 
  postlinks_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
      inner join posts as posts_1
      on (postlinks_1.id = posts_1.id )
    inner join comments as comments_1
    on (postlinks_1.id = comments_1.id )
where posts_1.title is not NULL
limit 3;
select  
  posts_2.id, 
  posts_1.acceptedanswerid, 
  votes_1.postid, 
  posts_1.creationdate, 
  posts_2.acceptedanswerid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join posts as posts_1
      inner join posts as posts_2
      on (posts_1.id = posts_2.id )
    on (votes_1.id = posts_2.id )
where posts_1.ownerdisplayname is not NULL
limit 30;
select  
  postlinks_1.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
limit 5;
select  
  min(
    posthistory_1.userid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join badges as badges_1
    on (posthistory_1.id = badges_1.id )
where posthistory_1.userdisplayname is not NULL
limit 7;
select  
  votes_1.creationdate, 
  votes_1.id, 
  votes_1.userid, 
  max(
    votes_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.votetypeid is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.userid
limit 27;
select  
  postlinks_1.linktypeid, 
  postlinks_1.creationdate, 
  min(
    postlinks_1.creationdate), 
  postlinks_1.relatedpostid, 
  postlinks_1.creationdate, 
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  postlinks_1.id, 
  postlinks_1.creationdate, 
  postlinks_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.postid < postlinks_1.relatedpostid
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.relatedpostid
limit 15;
select  
  posts_1.acceptedanswerid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.parentid is not NULL
limit 13;
select  
  posthistory_1.text, 
  posthistory_1.id, 
  max(
    posthistory_1.id), 
  posthistory_1.revisionguid, 
  posthistory_1.postid, 
  posthistory_1.comment, 
  posthistory_1.revisionguid, 
  posthistory_1.postid, 
  posthistory_1.comment
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.userdisplayname is not NULL
group by posthistory_1.comment, posthistory_1.id, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.text
limit 32;
select  
  users_1.location, 
  users_1.profileimageurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.location is not NULL
limit 32;
select  
  posthistory_1.comment, 
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join users as users_1
    on (posthistory_1.id = users_1.id )
where posthistory_1.id is not NULL
limit 28;
select  
  count(*), 
  votes_2.creationdate, 
  comments_1.id, 
  comments_1.id, 
  min(
    votes_1.creationdate), 
  users_1.aboutme, 
  count(
    users_1.aboutme), 
  min(
    users_1.creationdate), 
  votes_1.votetypeid, 
  votes_1.creationdate, 
  votes_1.creationdate, 
  users_1.aboutme, 
  users_1.websiteurl, 
  avg(
    votes_2.postid), 
  avg(
    votes_1.userid), 
  votes_1.creationdate, 
  comments_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join users as users_1
      inner join votes as votes_1
        inner join votes as votes_2
        on (votes_1.id = votes_2.id )
      on (users_1.id = votes_2.id )
    on (comments_1.id = votes_2.id )
where users_1.websiteurl is not NULL
group by comments_1.id, comments_1.userid, users_1.aboutme, users_1.websiteurl, votes_1.creationdate, votes_1.votetypeid, votes_2.creationdate
limit 12;
select  
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.userid is not NULL
limit 8;
select  
  posthistory_1.userdisplayname, 
  min(
    posthistory_1.creationdate), 
  posthistory_1.creationdate, 
  posthistory_1.revisionguid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.userid is not NULL
group by posthistory_1.creationdate, posthistory_1.revisionguid, posthistory_1.userdisplayname
limit 30;
select  
  votes_1.userid, 
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.userid is not NULL
limit 34;
select  
  posthistory_1.postid, 
  posthistory_1.text, 
  posthistory_1.postid, 
  posthistory_1.userid, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.revisionguid, 
  posthistory_1.userdisplayname, 
  posthistory_1.revisionguid, 
  count(*), 
  posthistory_1.text, 
  posthistory_1.id, 
  max(
    posthistory_1.creationdate), 
  posthistory_1.userdisplayname, 
  posthistory_1.contentlicense, 
  posthistory_1.id, 
  posthistory_1.userdisplayname, 
  posthistory_1.revisionguid, 
  posthistory_1.comment, 
  posthistory_1.postid, 
  posthistory_1.contentlicense, 
  posthistory_1.id, 
  posthistory_1.revisionguid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.comment is not NULL
group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userdisplayname, posthistory_1.userid
limit 40;
select  
  posts_1.id, 
  posts_1.parentid, 
  posts_1.acceptedanswerid, 
  min(
    posts_1.acceptedanswerid), 
  max(
    posts_1.creationdate), 
  max(
    posts_1.parentid), 
  posts_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.parentid is not NULL
group by posts_1.acceptedanswerid, posts_1.creationdate, posts_1.id, posts_1.parentid
limit 12;
select  
  max(
    posts_1.acceptedanswerid), 
  posts_2.body, 
  badges_1.name, 
  posts_2.contentlicense, 
  postlinks_1.id, 
  posts_2.body, 
  badges_1.date, 
  posts_2.title, 
  posts_1.ownerdisplayname, 
  postlinks_1.relatedpostid, 
  badges_1.class, 
  posts_1.tags, 
  badges_1.id, 
  posts_2.body, 
  posts_1.parentid, 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
      inner join posts as posts_1
      on (postlinks_1.id = posts_1.id )
    inner join badges as badges_1
      inner join posts as posts_2
      on (badges_1.id = posts_2.id )
    on (posts_1.id = badges_1.id )
where posts_2.contentlicense is not NULL
group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, postlinks_1.id, postlinks_1.postid, postlinks_1.relatedpostid, posts_1.ownerdisplayname, posts_1.parentid, posts_1.tags, posts_2.body, posts_2.contentlicense, posts_2.title
limit 5;
select  
  max(
    postlinks_1.creationdate), 
  postlinks_1.linktypeid, 
  users_1.aboutme, 
  max(
    users_1.creationdate), 
  min(
    postlinks_1.postid), 
  users_1.location, 
  postlinks_1.id, 
  min(
    users_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join users as users_1
    on (postlinks_1.id = users_1.id )
where users_1.accountid is not NULL
group by postlinks_1.id, postlinks_1.linktypeid, users_1.aboutme, users_1.location
limit 36;
select  
  posts_1.owneruserid, 
  posts_1.owneruserid, 
  posts_1.title, 
  posts_1.title, 
  posts_1.acceptedanswerid, 
  posts_1.contentlicense, 
  posts_1.tags, 
  posts_1.acceptedanswerid, 
  posts_1.ownerdisplayname, 
  posts_1.id, 
  min(
    posts_1.creationdate), 
  posts_1.title, 
  min(
    posts_1.creationdate), 
  posts_1.posttypeid, 
  posts_1.tags, 
  posts_1.posttypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.acceptedanswerid is not NULL
group by posts_1.acceptedanswerid, posts_1.contentlicense, posts_1.id, posts_1.ownerdisplayname, posts_1.owneruserid, posts_1.posttypeid, posts_1.tags, posts_1.title
limit 3;
select  
  posthistory_1.posthistorytypeid, 
  max(
    posthistory_1.posthistorytypeid), 
  posthistory_1.creationdate, 
  posthistory_1.postid, 
  posthistory_1.userid, 
  posthistory_1.userid, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.creationdate, 
  posthistory_1.id, 
  posthistory_1.revisionguid, 
  posthistory_1.postid, 
  posthistory_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.posthistorytypeid is not NULL
group by posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.userid
limit 13;
select  
  postlinks_1.postid, 
  posts_1.contentlicense, 
  min(
    postlinks_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
        inner join posts as posts_1
        on (postlinks_1.id = posts_1.id )
      inner join badges as badges_1
      on (postlinks_1.id = badges_1.id )
    inner join posthistory as posthistory_1
    on (posts_1.id = posthistory_1.id )
where posthistory_1.text < posthistory_1.comment
group by postlinks_1.postid, posts_1.contentlicense
limit 16;
select  
  posthistory_1.text, 
  posthistory_1.creationdate, 
  posthistory_1.userdisplayname, 
  posthistory_1.userid, 
  posthistory_1.text, 
  max(
    posthistory_1.id), 
  posthistory_1.id, 
  posthistory_1.postid, 
  posthistory_1.creationdate, 
  posthistory_1.postid, 
  posthistory_1.postid, 
  posthistory_1.contentlicense, 
  posthistory_1.comment, 
  sum(
    posthistory_1.id), 
  posthistory_1.userdisplayname, 
  posthistory_1.contentlicense, 
  posthistory_1.revisionguid, 
  posthistory_1.revisionguid, 
  posthistory_1.userid, 
  posthistory_1.comment, 
  min(
    posthistory_1.creationdate), 
  posthistory_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.comment is not NULL
group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.id, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userdisplayname, posthistory_1.userid
limit 8;
select  
  comments_1.userid, 
  comments_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join comments as comments_1
    on (posts_1.id = comments_1.id )
where posts_1.acceptedanswerid >= comments_1.postid
limit 24;
select  
  comments_1.postid, 
  comments_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.id is not NULL
limit 19;
select  
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
          inner join postlinks as postlinks_1
          on (votes_1.id = postlinks_1.id )
        inner join votes as votes_2
        on (postlinks_1.id = votes_2.id )
      inner join users as users_1
      on (postlinks_1.id = users_1.id )
    inner join postlinks as postlinks_2
          inner join users as users_2
          on (postlinks_2.id = users_2.id )
        inner join postlinks as postlinks_3
        on (users_2.id = postlinks_3.id )
      inner join badges as badges_1
      on (postlinks_2.id = badges_1.id )
    on (votes_2.id = postlinks_3.id )
where badges_1.class is not NULL
limit 22;
select  
  votes_1.creationdate, 
  posts_1.body, 
  posts_1.posttypeid, 
  users_1.id, 
  users_1.creationdate, 
  min(
    posts_1.creationdate), 
  posts_1.contentlicense, 
  users_1.id, 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join votes as votes_1
      inner join posts as posts_1
      on (votes_1.id = posts_1.id )
    on (users_1.id = votes_1.id )
where votes_1.postid is not NULL
group by posts_1.body, posts_1.contentlicense, posts_1.posttypeid, users_1.creationdate, users_1.id, votes_1.creationdate, votes_1.id
limit 33;
select  
  comments_1.id, 
  comments_1.creationdate, 
  comments_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.contentlicense is not NULL
limit 24;
select  
  badges_1.id, 
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.date is not NULL
limit 23;
select  
  postlinks_1.relatedpostid, 
  postlinks_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
      inner join postlinks as postlinks_1
      on (posts_1.id = postlinks_1.id )
    inner join users as users_1
    on (postlinks_1.id = users_1.id )
where users_1.creationdate = postlinks_1.creationdate
limit 16;
select  
  min(
    posthistory_1.id), 
  min(
    posthistory_1.creationdate), 
  posthistory_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.id is not NULL
group by posthistory_1.userid
limit 26;
select  
  min(
    votes_1.votetypeid), 
  votes_1.postid, 
  votes_1.postid, 
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate <= votes_1.creationdate
group by votes_1.postid, votes_1.userid
limit 36;
select  
  postlinks_1.relatedpostid, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.creationdate, 
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.relatedpostid, 
  postlinks_1.creationdate, 
  postlinks_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.relatedpostid
limit 12;
select  
  votes_1.id, 
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.votetypeid is not NULL
limit 6;
select  
  badges_1.id, 
  badges_1.id, 
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.date is not NULL
limit 7;
select  
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join posts as posts_1
      inner join users as users_1
      on (posts_1.id = users_1.id )
    on (postlinks_1.id = users_1.id )
where postlinks_1.relatedpostid is not NULL
limit 23;
select  
  posts_1.body
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join votes as votes_1
    on (posts_1.id = votes_1.id )
where posts_1.parentid is not NULL
limit 21;
select  
  posts_1.body, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join postlinks as postlinks_1
      inner join badges as badges_1
      on (postlinks_1.id = badges_1.id )
    on (posts_1.id = badges_1.id )
where posts_1.id is not NULL
group by posts_1.body
limit 36;
select  
  posthistory_1.comment, 
  posthistory_1.userdisplayname, 
  posthistory_1.creationdate, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.contentlicense, 
  posthistory_1.userdisplayname, 
  posthistory_1.userid, 
  avg(
    posthistory_1.posthistorytypeid), 
  posthistory_1.contentlicense, 
  posthistory_1.revisionguid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.posthistorytypeid <= posthistory_1.userid
group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.posthistorytypeid, posthistory_1.revisionguid, posthistory_1.userdisplayname, posthistory_1.userid
limit 35;
select  
  badges_1.userid, 
  badges_1.name, 
  badges_1.tagbased, 
  avg(
    badges_1.class)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.userid is not NULL
group by badges_1.name, badges_1.tagbased, badges_1.userid
limit 20;
select  
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join postlinks as postlinks_1
    on (posthistory_1.id = postlinks_1.id )
where posthistory_1.postid is not NULL
limit 10;
select  
  comments_1.text, 
  comments_1.contentlicense, 
  comments_1.contentlicense, 
  comments_1.contentlicense, 
  comments_1.creationdate, 
  comments_1.userdisplayname, 
  comments_1.postid, 
  comments_1.contentlicense, 
  comments_1.creationdate, 
  comments_1.creationdate, 
  comments_1.userid, 
  max(
    comments_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userdisplayname is not NULL
group by comments_1.contentlicense, comments_1.creationdate, comments_1.postid, comments_1.text, comments_1.userdisplayname, comments_1.userid
limit 24;
select  
  users_1.creationdate, 
  min(
    users_1.id), 
  users_1.displayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.accountid > users_1.id
group by users_1.creationdate, users_1.displayname
limit 9;
select  
  users_1.creationdate, 
  users_1.accountid, 
  votes_1.id, 
  users_1.aboutme, 
  users_1.location, 
  min(
    votes_1.creationdate), 
  votes_1.creationdate, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join users as users_1
    on (votes_1.id = users_1.id )
where users_1.websiteurl is not NULL
group by users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.location, votes_1.creationdate, votes_1.id, votes_1.postid
limit 15;
select  
  votes_1.creationdate, 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate is not NULL
limit 37;
select  
  posts_1.body, 
  comments_1.contentlicense, 
  posts_1.acceptedanswerid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join comments as comments_1
    on (posts_1.id = comments_1.id )
where comments_1.contentlicense is not NULL
limit 23;
select  
  posthistory_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join votes as votes_1
    on (posthistory_1.id = votes_1.id )
where votes_1.id is not NULL
limit 38;
select  
  badges_1.class, 
  badges_1.id, 
  badges_1.name, 
  badges_1.class, 
  badges_1.userid, 
  badges_1.tagbased
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.name is not NULL
limit 35;
select  
  posts_1.contentlicense, 
  posts_1.title, 
  posts_1.ownerdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.ownerdisplayname > posts_1.body
limit 39;
select  
  comments_1.userid, 
  users_1.profileimageurl, 
  count(
    comments_1.contentlicense), 
  users_1.id, 
  comments_1.userdisplayname, 
  comments_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join comments as comments_1
    on (users_1.id = comments_1.id )
where comments_1.id is not NULL
group by comments_1.creationdate, comments_1.userdisplayname, comments_1.userid, users_1.id, users_1.profileimageurl
limit 27;
select  
  postlinks_1.linktypeid, 
  postlinks_1.postid, 
  postlinks_1.id, 
  postlinks_1.postid, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.linktypeid, 
  postlinks_1.postid, 
  postlinks_1.relatedpostid, 
  postlinks_1.creationdate, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.postid, 
  postlinks_1.relatedpostid, 
  postlinks_1.creationdate, 
  postlinks_1.creationdate, 
  postlinks_1.id, 
  postlinks_1.relatedpostid, 
  sum(
    postlinks_1.linktypeid), 
  postlinks_1.relatedpostid, 
  postlinks_1.linktypeid, 
  postlinks_1.creationdate, 
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid, 
  min(
    postlinks_1.relatedpostid), 
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid, 
  postlinks_1.id, 
  postlinks_1.relatedpostid, 
  postlinks_1.linktypeid, 
  postlinks_1.postid, 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 31;
select  
  posthistory_1.userid, 
  posthistory_1.revisionguid, 
  posthistory_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.revisionguid = posthistory_1.userdisplayname
limit 2;
select  
  comments_1.postid, 
  posts_1.id, 
  votes_1.id, 
  min(
    posts_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
      inner join comments as comments_1
      on (posts_1.id = comments_1.id )
    inner join votes as votes_1
    on (comments_1.id = votes_1.id )
where votes_1.userid is not NULL
group by comments_1.postid, posts_1.id, votes_1.id
limit 25;
select  
  avg(
    posts_2.owneruserid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
      inner join users as users_1
      on (posts_1.id = users_1.id )
    inner join posts as posts_2
    on (users_1.id = posts_2.id )
where users_1.creationdate is not NULL
limit 35;
select  
  postlinks_1.relatedpostid, 
  postlinks_1.linktypeid, 
  postlinks_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.id is not NULL
limit 19;
select  
  postlinks_1.relatedpostid, 
  postlinks_1.postid, 
  posts_1.tags, 
  postlinks_1.id, 
  min(
    users_1.creationdate), 
  comments_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join users as users_1
        inner join posts as posts_1
        on (users_1.id = posts_1.id )
      inner join comments as comments_1
      on (users_1.id = comments_1.id )
    on (postlinks_1.id = comments_1.id )
where comments_1.userid is not NULL
group by comments_1.id, postlinks_1.id, postlinks_1.postid, postlinks_1.relatedpostid, posts_1.tags
limit 7;
select  
  posthistory_1.postid, 
  posthistory_1.text, 
  posthistory_1.id, 
  posthistory_1.id, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.postid, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.creationdate, 
  posthistory_1.contentlicense, 
  posthistory_1.postid, 
  posthistory_1.id, 
  posthistory_1.creationdate, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.postid > posthistory_1.id
limit 29;
select  
  avg(
    votes_1.votetypeid), 
  votes_1.postid, 
  votes_1.votetypeid, 
  votes_1.id, 
  votes_1.postid, 
  votes_1.creationdate, 
  count(
    votes_1.id)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.votetypeid is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.votetypeid
limit 21;
select  
  postlinks_1.relatedpostid, 
  postlinks_1.linktypeid, 
  users_1.id, 
  postlinks_1.id, 
  users_1.location, 
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join postlinks as postlinks_1
      inner join badges as badges_1
      on (postlinks_1.id = badges_1.id )
    on (users_1.id = postlinks_1.id )
where badges_1.date >= postlinks_1.creationdate
limit 8;
select  
  posts_1.creationdate, 
  posts_1.parentid, 
  posts_1.posttypeid, 
  posts_1.tags, 
  posts_1.contentlicense, 
  posts_1.contentlicense, 
  posts_1.title, 
  posts_1.parentid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.body < posts_1.contentlicense
limit 30;
select  
  posts_1.body
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.title is not NULL
limit 14;
select  
  comments_1.postid, 
  comments_1.id, 
  comments_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.creationdate > comments_1.creationdate
limit 7;
select  
  comments_1.creationdate, 
  count(*), 
  comments_1.contentlicense, 
  comments_1.contentlicense, 
  comments_1.userdisplayname, 
  comments_1.contentlicense, 
  comments_1.userdisplayname, 
  avg(
    comments_1.id), 
  comments_1.text, 
  comments_1.userdisplayname, 
  comments_1.userid, 
  comments_1.id, 
  comments_1.creationdate, 
  avg(
    comments_1.postid), 
  comments_1.contentlicense, 
  comments_1.id, 
  comments_1.contentlicense, 
  comments_1.creationdate, 
  comments_1.creationdate, 
  comments_1.userdisplayname, 
  comments_1.userid, 
  comments_1.creationdate, 
  comments_1.contentlicense, 
  comments_1.userid, 
  comments_1.id, 
  comments_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.contentlicense is not NULL
group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.text, comments_1.userdisplayname, comments_1.userid
limit 11;
select  
  votes_1.userid, 
  votes_1.id, 
  max(
    votes_1.creationdate), 
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.id is not NULL
group by votes_1.id, votes_1.userid, votes_1.votetypeid
limit 25;
select  
  posthistory_1.revisionguid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.userid is not NULL
limit 1;
select  
  posts_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join posts as posts_2
    on (posts_1.id = posts_2.id )
where posts_1.owneruserid is not NULL
limit 25;
select  
  posthistory_1.posthistorytypeid, 
  count(
    badges_1.userid), 
  posthistory_1.userdisplayname, 
  posthistory_2.userid, 
  posthistory_1.text, 
  posthistory_2.userid, 
  posthistory_1.id, 
  posthistory_2.posthistorytypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
      inner join posthistory as posthistory_1
      on (badges_1.id = posthistory_1.id )
    inner join comments as comments_1
      inner join posthistory as posthistory_2
      on (comments_1.id = posthistory_2.id )
    on (badges_1.id = comments_1.id )
where comments_1.userid is not NULL
group by posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.text, posthistory_1.userdisplayname, posthistory_2.posthistorytypeid, posthistory_2.userid
limit 1;
select  
  votes_1.id, 
  votes_1.creationdate, 
  votes_1.creationdate, 
  votes_1.id, 
  votes_1.votetypeid, 
  votes_1.userid, 
  votes_1.userid, 
  votes_1.id, 
  count(*), 
  votes_1.votetypeid, 
  avg(
    votes_1.postid), 
  votes_1.votetypeid, 
  votes_1.userid, 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.id is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.userid, votes_1.votetypeid
limit 41;
select  
  posthistory_1.revisionguid, 
  posts_1.tags
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join posts as posts_1
    on (posthistory_1.id = posts_1.id )
where posts_1.id is not NULL
limit 6;
select  
  badges_2.id, 
  badges_2.name, 
  badges_1.date, 
  badges_1.userid, 
  badges_2.date, 
  badges_2.date, 
  votes_1.votetypeid, 
  badges_1.name, 
  min(
    votes_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join badges as badges_2
      inner join votes as votes_1
      on (badges_2.id = votes_1.id )
    on (badges_1.id = votes_1.id )
where votes_1.votetypeid is not NULL
group by badges_1.date, badges_1.name, badges_1.userid, badges_2.date, badges_2.id, badges_2.name, votes_1.votetypeid
limit 42;
select  
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.userid is not NULL
limit 26;
select  
  users_1.profileimageurl, 
  users_1.displayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.creationdate is not NULL
limit 12;
select  
  postlinks_1.id, 
  postlinks_1.relatedpostid, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.creationdate, 
  postlinks_1.linktypeid, 
  postlinks_1.linktypeid, 
  postlinks_1.id, 
  postlinks_1.creationdate, 
  postlinks_1.postid, 
  postlinks_1.linktypeid, 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate >= postlinks_1.creationdate
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 28;
select  
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.name > badges_1.name
limit 9;
select  
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  postlinks_1.linktypeid, 
  users_1.websiteurl, 
  postlinks_1.id, 
  users_1.accountid, 
  postlinks_1.linktypeid, 
  users_1.id, 
  postlinks_1.relatedpostid, 
  postlinks_1.id, 
  users_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join users as users_1
    on (postlinks_1.id = users_1.id )
where users_1.creationdate > postlinks_1.creationdate
limit 10;
select  
  users_1.accountid, 
  users_1.creationdate, 
  users_1.profileimageurl, 
  users_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join users as users_2
    on (users_1.id = users_2.id )
where users_2.creationdate is not NULL
limit 38;
select  
  votes_1.id, 
  votes_2.creationdate, 
  max(
    users_1.profileimageurl), 
  votes_2.postid, 
  count(
    votes_1.id), 
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join users as users_1
      inner join votes as votes_2
      on (users_1.id = votes_2.id )
    on (votes_1.id = votes_2.id )
where votes_1.id is not NULL
group by votes_1.id, votes_1.userid, votes_2.creationdate, votes_2.postid
limit 9;
select  
  postlinks_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
limit 18;
select  
  votes_1.postid, 
  max(
    comments_1.creationdate), 
  votes_1.userid, 
  votes_1.votetypeid, 
  votes_1.postid, 
  comments_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join votes as votes_1
    on (comments_1.id = votes_1.id )
where votes_1.creationdate <= comments_1.creationdate
group by comments_1.creationdate, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 6;
select  
  badges_1.name, 
  badges_1.date, 
  avg(
    badges_1.userid), 
  badges_1.id, 
  badges_1.tagbased, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.date <= badges_1.date
group by badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased
limit 10;
select  
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.postid is not NULL
limit 23;
select  
  max(
    posts_1.creationdate), 
  max(
    posts_1.creationdate), 
  posts_1.acceptedanswerid, 
  posts_1.tags, 
  posts_1.creationdate, 
  posts_1.id, 
  posts_1.body, 
  posts_1.tags
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.title is not NULL
group by posts_1.acceptedanswerid, posts_1.body, posts_1.creationdate, posts_1.id, posts_1.tags
limit 8;
select  
  posts_1.tags
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.contentlicense > posts_1.body
limit 7;
select  
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join votes as votes_1
    on (users_1.id = votes_1.id )
where users_1.creationdate is not NULL
limit 13;
select  
  postlinks_1.linktypeid, 
  postlinks_1.linktypeid, 
  postlinks_1.linktypeid, 
  postlinks_1.linktypeid, 
  posthistory_1.posthistorytypeid, 
  postlinks_1.linktypeid, 
  postlinks_1.id, 
  max(
    postlinks_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join posthistory as posthistory_1
    on (postlinks_1.id = posthistory_1.id )
where postlinks_1.relatedpostid is not NULL
group by posthistory_1.posthistorytypeid, postlinks_1.id, postlinks_1.linktypeid
limit 14;
select  
  users_1.id, 
  users_1.websiteurl, 
  users_1.displayname, 
  users_1.id, 
  max(
    users_1.creationdate), 
  max(
    users_1.creationdate), 
  users_1.profileimageurl, 
  users_1.aboutme, 
  min(
    users_1.creationdate), 
  users_1.accountid, 
  users_1.creationdate, 
  min(
    users_1.creationdate), 
  users_1.displayname, 
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.creationdate is not NULL
group by users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.displayname, users_1.id, users_1.profileimageurl, users_1.websiteurl
limit 2;
select  
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.class is not NULL
limit 16;
select  
  posthistory_1.contentlicense, 
  posts_1.title, 
  posts_1.id, 
  posts_1.acceptedanswerid, 
  posthistory_1.comment, 
  posts_1.posttypeid, 
  posthistory_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join posts as posts_1
    on (posthistory_1.id = posts_1.id )
where posthistory_1.postid is not NULL
limit 30;
select  
  postlinks_1.relatedpostid, 
  count(*), 
  postlinks_1.creationdate, 
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid, 
  postlinks_1.id, 
  postlinks_1.postid, 
  postlinks_1.id, 
  postlinks_1.postid, 
  postlinks_1.relatedpostid, 
  postlinks_1.relatedpostid, 
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  postlinks_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 8;
select  
  comments_1.userdisplayname, 
  postlinks_1.relatedpostid, 
  postlinks_1.relatedpostid, 
  users_1.aboutme
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
      inner join posts as posts_2
          inner join comments as comments_1
          on (posts_2.id = comments_1.id )
        inner join postlinks as postlinks_1
        on (posts_2.id = postlinks_1.id )
      on (posts_1.id = posts_2.id )
    inner join users as users_1
    on (posts_2.id = users_1.id )
where users_1.id is not NULL
limit 9;
select  
  votes_2.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
      inner join badges as badges_1
        inner join votes as votes_2
        on (badges_1.id = votes_2.id )
      on (votes_1.id = votes_2.id )
    inner join posthistory as posthistory_1
    on (badges_1.id = posthistory_1.id )
where badges_1.tagbased < badges_1.tagbased
limit 1;
select  
  comments_1.id, 
  comments_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userid is not NULL
limit 14;
select  
  posthistory_1.userid, 
  posthistory_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.userid is not NULL
limit 14;
select  
  postlinks_1.linktypeid, 
  badges_1.tagbased, 
  posthistory_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
      inner join badges as badges_1
      on (posthistory_1.id = badges_1.id )
    inner join posthistory as posthistory_2
      inner join postlinks as postlinks_1
      on (posthistory_2.id = postlinks_1.id )
    on (badges_1.id = postlinks_1.id )
where badges_1.class < postlinks_1.postid
limit 11;
select  
  comments_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join comments as comments_2
    on (comments_1.id = comments_2.id )
where comments_2.text is not NULL
limit 15;
select  
  posthistory_2.userid, 
  posthistory_1.userdisplayname, 
  posthistory_2.posthistorytypeid, 
  posthistory_1.contentlicense, 
  posthistory_2.revisionguid, 
  min(
    posthistory_1.creationdate), 
  posthistory_1.revisionguid, 
  posthistory_1.text, 
  posthistory_1.posthistorytypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join posthistory as posthistory_2
      inner join badges as badges_1
      on (posthistory_2.id = badges_1.id )
    on (posthistory_1.id = posthistory_2.id )
where badges_1.id is not NULL
group by posthistory_1.contentlicense, posthistory_1.posthistorytypeid, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userdisplayname, posthistory_2.posthistorytypeid, posthistory_2.revisionguid, posthistory_2.userid
limit 39;
select  
  min(
    postlinks_1.creationdate), 
  postlinks_1.postid, 
  sum(
    postlinks_1.postid), 
  postlinks_1.linktypeid, 
  postlinks_1.id, 
  count(*), 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
group by postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid
limit 5;
select  
  badges_4.userid, 
  badges_3.date, 
  count(*), 
  posts_1.body, 
  posts_1.id, 
  badges_3.id, 
  badges_2.class, 
  badges_2.class, 
  count(
    badges_3.tagbased), 
  badges_3.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
        inner join badges as badges_2
        on (badges_1.id = badges_2.id )
      inner join badges as badges_3
        inner join posts as posts_1
        on (badges_3.id = posts_1.id )
      on (badges_1.id = posts_1.id )
    inner join badges as badges_4
      inner join postlinks as postlinks_1
        inner join votes as votes_1
        on (postlinks_1.id = votes_1.id )
      on (badges_4.id = postlinks_1.id )
    on (badges_2.id = votes_1.id )
where badges_3.class is not NULL
group by badges_2.class, badges_3.date, badges_3.id, badges_4.userid, posts_1.body, posts_1.id
limit 17;
select  
  votes_1.postid, 
  votes_1.creationdate, 
  votes_1.creationdate, 
  votes_1.votetypeid, 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate is not NULL
limit 31;
select  
  comments_1.id, 
  comments_1.creationdate, 
  comments_1.userdisplayname, 
  comments_1.text, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.creationdate < comments_1.creationdate
group by comments_1.creationdate, comments_1.id, comments_1.text, comments_1.userdisplayname
limit 10;
select  
  users_1.aboutme, 
  users_1.creationdate, 
  min(
    users_1.profileimageurl)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.websiteurl is not NULL
group by users_1.aboutme, users_1.creationdate
limit 2;
select  
  posthistory_1.posthistorytypeid, 
  posthistory_1.id, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.contentlicense is not NULL
limit 27;
select  
  badges_1.tagbased, 
  comments_1.id, 
  badges_2.date, 
  badges_2.class, 
  badges_2.tagbased, 
  badges_1.userid, 
  comments_1.text, 
  badges_1.date, 
  badges_1.date, 
  comments_1.id, 
  comments_1.userdisplayname, 
  badges_2.name, 
  max(
    badges_2.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join badges as badges_2
      inner join comments as comments_1
      on (badges_2.id = comments_1.id )
    on (badges_1.id = comments_1.id )
where badges_2.class is not NULL
group by badges_1.date, badges_1.tagbased, badges_1.userid, badges_2.class, badges_2.date, badges_2.name, badges_2.tagbased, comments_1.id, comments_1.text, comments_1.userdisplayname
limit 32;
select  
  max(
    users_1.creationdate), 
  users_1.id, 
  min(
    users_1.accountid), 
  users_1.accountid, 
  min(
    users_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.profileimageurl is not NULL
group by users_1.accountid, users_1.id
limit 13;
select  
  posthistory_1.creationdate, 
  min(
    badges_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join posthistory as posthistory_1
    on (badges_1.id = posthistory_1.id )
where posthistory_1.id is not NULL
group by posthistory_1.creationdate
limit 33;
select  
  min(
    postlinks_1.creationdate), 
  max(
    postlinks_1.creationdate), 
  postlinks_1.creationdate, 
  postlinks_1.id, 
  postlinks_1.relatedpostid, 
  count(*), 
  postlinks_1.creationdate, 
  max(
    postlinks_1.postid), 
  postlinks_1.id, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.relatedpostid, 
  postlinks_1.postid, 
  postlinks_1.relatedpostid, 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.id is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.postid, postlinks_1.relatedpostid
limit 29;
select  
  posthistory_1.userdisplayname, 
  posthistory_1.comment, 
  count(*), 
  posthistory_2.contentlicense, 
  max(
    posthistory_1.creationdate), 
  avg(
    posthistory_2.userid), 
  posthistory_2.userid, 
  posthistory_2.comment, 
  min(
    posthistory_2.creationdate), 
  count(
    posthistory_2.id), 
  posthistory_1.postid, 
  posthistory_1.revisionguid, 
  posthistory_1.posthistorytypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join posthistory as posthistory_2
    on (posthistory_1.id = posthistory_2.id )
where posthistory_2.creationdate is not NULL
group by posthistory_1.comment, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.userdisplayname, posthistory_2.comment, posthistory_2.contentlicense, posthistory_2.userid
limit 17;
select  
  votes_1.votetypeid, 
  votes_1.userid, 
  postlinks_2.creationdate, 
  postlinks_1.postid, 
  max(
    postlinks_1.relatedpostid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
      inner join votes as votes_1
      on (postlinks_1.id = votes_1.id )
    inner join postlinks as postlinks_2
      inner join badges as badges_1
      on (postlinks_2.id = badges_1.id )
    on (votes_1.id = badges_1.id )
where postlinks_2.creationdate is not NULL
group by postlinks_1.postid, postlinks_2.creationdate, votes_1.userid, votes_1.votetypeid
limit 42;
select  
  postlinks_1.id, 
  min(
    postlinks_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.id <= postlinks_1.postid
group by postlinks_1.id
limit 6;
select  
  votes_1.postid, 
  votes_1.creationdate, 
  votes_1.votetypeid, 
  votes_1.creationdate, 
  max(
    votes_1.creationdate), 
  max(
    votes_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.votetypeid is not NULL
group by votes_1.creationdate, votes_1.postid, votes_1.votetypeid
limit 41;
select  
  posts_1.contentlicense, 
  posts_1.ownerdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.owneruserid > posts_1.acceptedanswerid
limit 15;
select  
  posthistory_1.userdisplayname, 
  posthistory_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.posthistorytypeid is not NULL
limit 38;
select  
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.votetypeid is not NULL
limit 40;
select  
  users_1.aboutme, 
  users_1.accountid, 
  min(
    users_1.id), 
  min(
    users_1.creationdate), 
  users_1.location, 
  users_1.displayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.id = users_1.profileimageurl
group by users_1.aboutme, users_1.accountid, users_1.displayname, users_1.location
limit 5;
select  
  votes_1.userid, 
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate is not NULL
limit 22;
select  
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join postlinks as postlinks_1
    on (badges_1.id = postlinks_1.id )
where badges_1.id is not NULL
limit 36;
select  
  votes_1.postid, 
  max(
    comments_1.creationdate), 
  comments_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join comments as comments_1
    on (votes_1.id = comments_1.id )
where votes_1.postid < votes_1.id
group by comments_1.userid, votes_1.postid
limit 21;
select  
  votes_1.postid, 
  comments_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join comments as comments_1
    on (votes_1.id = comments_1.id )
where votes_1.id is not NULL
limit 21;
select  
  posts_1.ownerdisplayname, 
  posts_1.acceptedanswerid, 
  max(
    posts_1.creationdate), 
  posts_1.acceptedanswerid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.ownerdisplayname is not NULL
group by posts_1.acceptedanswerid, posts_1.ownerdisplayname
limit 29;
select  
  votes_1.postid, 
  votes_1.creationdate, 
  votes_1.id, 
  votes_1.userid, 
  votes_1.userid, 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.id is not NULL
limit 40;
select  
  users_1.creationdate, 
  users_2.location, 
  comments_1.postid, 
  comments_1.userdisplayname, 
  comments_1.text, 
  postlinks_1.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join postlinks as postlinks_1
        inner join comments as comments_1
        on (postlinks_1.id = comments_1.id )
      inner join users as users_2
      on (comments_1.id = users_2.id )
    on (users_1.id = comments_1.id )
where postlinks_1.linktypeid < postlinks_1.id
limit 14;
select  
  posts_1.acceptedanswerid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.parentid > posts_1.owneruserid
limit 24;
select  
  postlinks_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join comments as comments_1
    on (postlinks_1.id = comments_1.id )
where comments_1.userdisplayname is not NULL
limit 16;
select  
  max(
    votes_1.creationdate), 
  votes_1.userid, 
  votes_2.userid, 
  votes_2.creationdate, 
  votes_2.votetypeid, 
  votes_3.id, 
  comments_1.creationdate, 
  votes_3.votetypeid, 
  votes_3.postid, 
  avg(
    votes_3.votetypeid), 
  badges_1.class, 
  count(
    comments_1.contentlicense), 
  votes_2.creationdate, 
  min(
    votes_3.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join votes as votes_1
        inner join votes as votes_2
          inner join votes as votes_3
          on (votes_2.id = votes_3.id )
        on (votes_1.id = votes_2.id )
      inner join badges as badges_1
      on (votes_3.id = badges_1.id )
    on (comments_1.id = votes_1.id )
where badges_1.tagbased < badges_1.tagbased
group by badges_1.class, comments_1.creationdate, votes_1.userid, votes_2.creationdate, votes_2.userid, votes_2.votetypeid, votes_3.id, votes_3.postid, votes_3.votetypeid
limit 41;
select  
  users_1.profileimageurl, 
  users_1.accountid, 
  users_1.location, 
  users_1.creationdate, 
  users_1.accountid, 
  users_1.location, 
  users_1.aboutme, 
  users_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.profileimageurl is not NULL
limit 34;
select  
  posts_1.tags
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.tags is not NULL
limit 1;
select  
  posthistory_1.userdisplayname, 
  posthistory_1.revisionguid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join badges as badges_1
    on (posthistory_1.id = badges_1.id )
where badges_1.tagbased is not NULL
limit 16;
select  
  comments_1.id, 
  max(
    comments_1.creationdate), 
  comments_1.postid, 
  comments_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.creationdate <= comments_1.creationdate
group by comments_1.id, comments_1.postid
limit 3;
select  
  votes_1.id, 
  votes_1.postid, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.userid is not NULL
limit 10;
select  
  posthistory_1.comment, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.id, 
  posthistory_1.contentlicense, 
  avg(
    posthistory_1.postid), 
  posthistory_1.revisionguid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.userdisplayname is not NULL
group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.revisionguid
limit 33;
select  
  users_1.id, 
  postlinks_1.postid, 
  postlinks_1.linktypeid, 
  count(
    users_1.aboutme), 
  min(
    users_2.creationdate), 
  users_1.profileimageurl, 
  users_1.displayname, 
  users_2.aboutme
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join postlinks as postlinks_1
      inner join users as users_2
      on (postlinks_1.id = users_2.id )
    on (users_1.id = users_2.id )
where users_1.displayname is not NULL
group by postlinks_1.linktypeid, postlinks_1.postid, users_1.displayname, users_1.id, users_1.profileimageurl, users_2.aboutme
limit 4;
select  
  min(
    votes_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate >= votes_1.creationdate
limit 20;
select  
  comments_2.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
      inner join comments as comments_2
      on (comments_1.id = comments_2.id )
    inner join postlinks as postlinks_1
    on (comments_2.id = postlinks_1.id )
where comments_2.creationdate > postlinks_1.creationdate
limit 1;
select  
  posts_1.title, 
  posts_1.tags
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.parentid is not NULL
limit 14;
select  
  comments_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.creationdate < comments_1.creationdate
limit 38;
select  
  users_1.creationdate, 
  users_1.displayname, 
  users_1.profileimageurl, 
  users_1.location, 
  users_1.accountid, 
  users_1.websiteurl, 
  users_1.aboutme, 
  min(
    users_1.profileimageurl)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.websiteurl is not NULL
group by users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.displayname, users_1.location, users_1.profileimageurl, users_1.websiteurl
limit 14;
select  
  badges_1.class, 
  badges_1.date, 
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join posthistory as posthistory_1
    on (badges_1.id = posthistory_1.id )
where posthistory_1.postid = badges_1.userid
limit 28;
select  
  posthistory_2.id, 
  posthistory_1.text, 
  posthistory_1.posthistorytypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join posthistory as posthistory_2
    on (posthistory_1.id = posthistory_2.id )
where posthistory_1.userdisplayname is not NULL
limit 34;
select  
  comments_1.id, 
  comments_1.userid, 
  comments_1.text, 
  comments_1.userid, 
  comments_1.text, 
  comments_1.creationdate, 
  comments_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.creationdate is not NULL
limit 14;
select  
  comments_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
      inner join badges as badges_1
      on (comments_1.id = badges_1.id )
    inner join votes as votes_1
    on (badges_1.id = votes_1.id )
where votes_1.userid is not NULL
limit 10;
select  
  badges_1.date, 
  users_1.profileimageurl, 
  badges_1.name, 
  count(*), 
  badges_1.name, 
  badges_1.tagbased, 
  sum(
    badges_1.class), 
  users_1.creationdate, 
  postlinks_1.id, 
  badges_1.name, 
  postlinks_1.relatedpostid, 
  badges_1.name, 
  users_1.id, 
  users_1.accountid, 
  badges_1.tagbased, 
  users_1.creationdate, 
  postlinks_1.creationdate, 
  postlinks_1.postid, 
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
      inner join users as users_1
      on (badges_1.id = users_1.id )
    inner join postlinks as postlinks_1
    on (users_1.id = postlinks_1.id )
where users_1.creationdate <= postlinks_1.creationdate
group by badges_1.date, badges_1.name, badges_1.tagbased, postlinks_1.creationdate, postlinks_1.id, postlinks_1.postid, postlinks_1.relatedpostid, users_1.accountid, users_1.creationdate, users_1.id, users_1.profileimageurl
limit 33;
select  
  min(
    badges_1.date), 
  badges_1.date, 
  max(
    badges_1.id), 
  badges_1.class, 
  badges_1.id, 
  badges_1.tagbased, 
  badges_1.userid, 
  badges_1.date, 
  badges_1.class, 
  badges_1.name, 
  badges_1.date, 
  badges_1.userid, 
  badges_1.date, 
  max(
    badges_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased = badges_1.tagbased
group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
limit 32;
select  
  posthistory_1.comment, 
  posthistory_1.id, 
  users_1.accountid, 
  users_1.creationdate, 
  users_1.accountid, 
  posthistory_1.posthistorytypeid, 
  users_2.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join users as users_2
      inner join posthistory as posthistory_1
      on (users_2.id = posthistory_1.id )
    on (users_1.id = users_2.id )
where users_2.accountid is not NULL
limit 9;
select  
  posthistory_1.postid, 
  posthistory_1.contentlicense, 
  comments_1.contentlicense, 
  comments_1.userdisplayname, 
  posthistory_1.text, 
  avg(
    comments_1.id), 
  max(
    posthistory_1.creationdate), 
  comments_1.postid, 
  max(
    users_1.creationdate), 
  users_1.aboutme
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
      inner join users as users_1
      on (comments_1.id = users_1.id )
    inner join posthistory as posthistory_1
    on (users_1.id = posthistory_1.id )
where users_1.displayname is not NULL
group by comments_1.contentlicense, comments_1.postid, comments_1.userdisplayname, posthistory_1.contentlicense, posthistory_1.postid, posthistory_1.text, users_1.aboutme
limit 16;
select  
  votes_1.id, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.postid is not NULL
limit 8;
select  
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased is not NULL
limit 15;
select  
  count(*), 
  postlinks_1.linktypeid, 
  postlinks_1.creationdate, 
  min(
    postlinks_1.creationdate), 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join postlinks as postlinks_1
    on (badges_1.id = postlinks_1.id )
where postlinks_1.id is not NULL
group by postlinks_1.creationdate, postlinks_1.linktypeid
limit 13;
select  
  min(
    posthistory_1.creationdate), 
  posthistory_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.userdisplayname is not NULL
group by posthistory_1.creationdate
limit 26;
select  
  min(
    votes_1.creationdate), 
  badges_1.name, 
  posts_1.parentid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join posts as posts_1
      inner join badges as badges_1
      on (posts_1.id = badges_1.id )
    on (votes_1.id = posts_1.id )
where badges_1.tagbased < badges_1.tagbased
group by badges_1.name, posts_1.parentid
limit 6;
select  
  votes_1.votetypeid, 
  postlinks_1.linktypeid, 
  count(*), 
  postlinks_1.linktypeid, 
  count(
    postlinks_1.postid), 
  postlinks_1.id, 
  postlinks_1.relatedpostid, 
  postlinks_1.postid, 
  postlinks_1.postid, 
  postlinks_1.id, 
  votes_1.creationdate, 
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid, 
  max(
    postlinks_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join postlinks as postlinks_1
    on (votes_1.id = postlinks_1.id )
where votes_1.postid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid, votes_1.creationdate, votes_1.votetypeid
limit 14;
select  
  users_1.displayname, 
  users_1.accountid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join users as users_1
      inner join posthistory as posthistory_1
      on (users_1.id = posthistory_1.id )
    on (postlinks_1.id = posthistory_1.id )
where posthistory_1.id is not NULL
limit 18;
select  
  max(
    votes_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join votes as votes_2
    on (votes_1.id = votes_2.id )
where votes_1.creationdate is not NULL
limit 23;
select  
  votes_1.id, 
  votes_1.votetypeid, 
  votes_1.userid, 
  votes_1.creationdate, 
  votes_1.id, 
  max(
    votes_1.creationdate), 
  max(
    votes_1.creationdate), 
  votes_1.userid, 
  votes_1.id, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.postid is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 41;
select  
  badges_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased >= badges_1.tagbased
limit 34;
select  
  posts_1.title, 
  badges_1.id, 
  comments_1.creationdate, 
  max(
    posts_2.owneruserid), 
  posts_1.id, 
  count(
    posts_2.parentid), 
  posts_1.parentid, 
  badges_1.userid, 
  posts_2.contentlicense, 
  badges_1.date, 
  posts_1.acceptedanswerid, 
  posts_2.posttypeid, 
  comments_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
      inner join comments as comments_1
        inner join posts as posts_2
        on (comments_1.id = posts_2.id )
      on (posts_1.id = posts_2.id )
    inner join badges as badges_1
    on (comments_1.id = badges_1.id )
where comments_1.creationdate is not NULL
group by badges_1.date, badges_1.id, badges_1.userid, comments_1.creationdate, comments_1.userdisplayname, posts_1.acceptedanswerid, posts_1.id, posts_1.parentid, posts_1.title, posts_2.contentlicense, posts_2.posttypeid
limit 11;
select  
  posthistory_1.userid, 
  posthistory_1.postid, 
  posthistory_1.userid, 
  posthistory_1.userid, 
  posthistory_1.userid, 
  posthistory_1.text, 
  sum(
    posthistory_1.posthistorytypeid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.userdisplayname is not NULL
group by posthistory_1.postid, posthistory_1.text, posthistory_1.userid
limit 9;
select  
  posthistory_1.revisionguid, 
  posthistory_1.postid, 
  votes_2.votetypeid, 
  badges_1.tagbased, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
      inner join votes as votes_1
      on (posthistory_1.id = votes_1.id )
    inner join badges as badges_1
      inner join votes as votes_2
      on (badges_1.id = votes_2.id )
    on (votes_1.id = votes_2.id )
where badges_1.id is not NULL
limit 30;
select  
  votes_1.postid, 
  count(*), 
  votes_1.votetypeid, 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.postid is not NULL
group by votes_1.id, votes_1.postid, votes_1.votetypeid
limit 22;
select  
  badges_1.id, 
  badges_1.date, 
  badges_1.date, 
  badges_1.id, 
  badges_1.class, 
  badges_1.class, 
  badges_1.name, 
  badges_1.name, 
  badges_1.userid, 
  badges_1.name, 
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.class is not NULL
limit 17;
select  
  posts_1.ownerdisplayname, 
  posts_1.owneruserid, 
  posts_1.posttypeid, 
  posts_1.creationdate, 
  posts_1.creationdate, 
  posts_1.ownerdisplayname, 
  posts_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.owneruserid < posts_1.id
limit 6;
select  
  min(
    posthistory_1.creationdate), 
  posthistory_1.creationdate, 
  max(
    posthistory_1.id), 
  posthistory_1.creationdate, 
  posthistory_1.contentlicense, 
  posthistory_1.contentlicense, 
  posthistory_1.text, 
  posthistory_1.userid, 
  posthistory_1.postid, 
  posthistory_1.userdisplayname, 
  posthistory_1.userdisplayname, 
  posthistory_1.id, 
  posthistory_1.id, 
  posthistory_1.userdisplayname, 
  posthistory_1.comment, 
  max(
    posthistory_1.creationdate), 
  posthistory_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.userdisplayname is not NULL
group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.id, posthistory_1.postid, posthistory_1.text, posthistory_1.userdisplayname, posthistory_1.userid
limit 9;
select  
  posthistory_1.text, 
  posthistory_1.id, 
  max(
    badges_1.userid), 
  posthistory_1.contentlicense, 
  posthistory_2.contentlicense, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
      inner join badges as badges_1
      on (posthistory_1.id = badges_1.id )
    inner join posthistory as posthistory_2
    on (posthistory_1.id = posthistory_2.id )
where posthistory_2.posthistorytypeid is not NULL
group by posthistory_1.contentlicense, posthistory_1.id, posthistory_1.text, posthistory_2.contentlicense
limit 8;
select  
  votes_2.userid, 
  votes_2.userid, 
  max(
    votes_1.id), 
  votes_2.id, 
  votes_2.id, 
  votes_2.postid, 
  votes_2.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join votes as votes_2
    on (votes_1.id = votes_2.id )
where votes_1.postid is not NULL
group by votes_2.id, votes_2.postid, votes_2.userid
limit 8;
select  
  posthistory_1.userdisplayname, 
  badges_1.date, 
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
      inner join posthistory as posthistory_1
        inner join badges as badges_2
        on (posthistory_1.id = badges_2.id )
      on (badges_1.id = badges_2.id )
    inner join badges as badges_3
    on (badges_2.id = badges_3.id )
where posthistory_1.creationdate >= badges_1.date
limit 38;
select  
  votes_1.votetypeid, 
  postlinks_1.postid, 
  max(
    posts_1.creationdate), 
  max(
    votes_2.creationdate), 
  posts_1.creationdate, 
  posts_2.creationdate, 
  votes_2.postid, 
  posts_2.title, 
  users_1.aboutme, 
  posts_2.tags
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
      inner join posts as posts_1
        inner join votes as votes_1
        on (posts_1.id = votes_1.id )
      on (posthistory_1.id = posts_1.id )
    inner join posts as posts_2
          inner join votes as votes_2
          on (posts_2.id = votes_2.id )
        inner join postlinks as postlinks_1
        on (posts_2.id = postlinks_1.id )
      inner join users as users_1
      on (votes_2.id = users_1.id )
    on (posthistory_1.id = postlinks_1.id )
where posthistory_1.userid is not NULL
group by postlinks_1.postid, posts_1.creationdate, posts_2.creationdate, posts_2.tags, posts_2.title, users_1.aboutme, votes_1.votetypeid, votes_2.postid
limit 21;
select  
  max(
    badges_1.date), 
  badges_1.id, 
  badges_1.userid, 
  badges_1.userid, 
  min(
    badges_1.date), 
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.class = badges_1.userid
group by badges_1.id, badges_1.userid
limit 41;
select  
  badges_1.id, 
  badges_1.tagbased, 
  badges_1.tagbased, 
  badges_1.date, 
  badges_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.date is not NULL
limit 23;
select  
  users_1.accountid, 
  users_2.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join users as users_2
    on (users_1.id = users_2.id )
where users_2.id is not NULL
limit 20;
select  
  badges_1.date, 
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.id is not NULL
limit 13;
select  
  posthistory_1.id, 
  min(
    posthistory_1.creationdate), 
  max(
    posthistory_1.userid), 
  posthistory_1.userid, 
  posthistory_1.revisionguid, 
  posthistory_1.contentlicense, 
  posthistory_1.text, 
  min(
    posthistory_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.revisionguid is not NULL
group by posthistory_1.contentlicense, posthistory_1.id, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userid
limit 30;
select  
  comments_2.id, 
  comments_1.userdisplayname, 
  min(
    comments_1.id), 
  comments_1.contentlicense, 
  comments_2.userdisplayname, 
  max(
    comments_2.creationdate), 
  comments_2.contentlicense, 
  comments_2.contentlicense, 
  comments_1.id, 
  comments_1.userid, 
  comments_1.userid, 
  comments_2.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join comments as comments_2
    on (comments_1.id = comments_2.id )
where comments_1.id is not NULL
group by comments_1.contentlicense, comments_1.id, comments_1.userdisplayname, comments_1.userid, comments_2.contentlicense, comments_2.id, comments_2.text, comments_2.userdisplayname
limit 14;
select  
  max(
    badges_1.date), 
  postlinks_1.linktypeid, 
  badges_1.userid, 
  max(
    badges_1.date), 
  badges_1.tagbased, 
  badges_1.date, 
  count(
    badges_1.tagbased)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join badges as badges_1
    on (postlinks_1.id = badges_1.id )
where postlinks_1.postid is not NULL
group by badges_1.date, badges_1.tagbased, badges_1.userid, postlinks_1.linktypeid
limit 42;
select  
  comments_1.id, 
  comments_1.text, 
  max(
    comments_1.creationdate), 
  comments_1.contentlicense, 
  comments_1.id, 
  comments_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.creationdate >= comments_1.creationdate
group by comments_1.contentlicense, comments_1.id, comments_1.text
limit 27;
select  
  postlinks_1.linktypeid, 
  max(
    postlinks_1.relatedpostid), 
  postlinks_1.id, 
  postlinks_1.relatedpostid, 
  count(
    postlinks_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
group by postlinks_1.id, postlinks_1.linktypeid, postlinks_1.relatedpostid
limit 28;
select  
  posts_1.owneruserid, 
  posts_1.acceptedanswerid, 
  min(
    posts_1.parentid), 
  posts_1.acceptedanswerid, 
  posts_1.creationdate, 
  min(
    posts_1.creationdate), 
  posts_1.tags
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.parentid > posts_1.owneruserid
group by posts_1.acceptedanswerid, posts_1.creationdate, posts_1.owneruserid, posts_1.tags
limit 18;
select  
  postlinks_1.relatedpostid, 
  posts_1.id, 
  posts_1.title, 
  posts_1.parentid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join postlinks as postlinks_1
    on (posts_1.id = postlinks_1.id )
where posts_1.body < posts_1.tags
limit 35;
select  
  max(
    users_1.creationdate), 
  count(
    votes_2.votetypeid), 
  votes_1.creationdate, 
  max(
    votes_2.creationdate), 
  votes_1.userid, 
  votes_2.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join votes as votes_1
      inner join votes as votes_2
      on (votes_1.id = votes_2.id )
    on (users_1.id = votes_2.id )
where users_1.creationdate is not NULL
group by votes_1.creationdate, votes_1.userid, votes_2.creationdate
limit 16;
select  
  comments_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userdisplayname is not NULL
limit 5;
select  
  postlinks_1.relatedpostid, 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
limit 15;
select  
  sum(
    comments_1.postid), 
  posthistory_1.id, 
  max(
    posthistory_1.postid), 
  comments_1.text, 
  comments_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join comments as comments_1
    on (posthistory_1.id = comments_1.id )
where posthistory_1.creationdate <= comments_1.creationdate
group by comments_1.creationdate, comments_1.text, posthistory_1.id
limit 33;
select  
  posts_1.owneruserid, 
  posts_2.posttypeid, 
  posts_2.creationdate, 
  posts_2.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join postlinks as postlinks_1
      inner join posts as posts_2
      on (postlinks_1.id = posts_2.id )
    on (posts_1.id = postlinks_1.id )
where posts_1.creationdate > postlinks_1.creationdate
limit 5;
select  
  max(
    postlinks_1.id), 
  postlinks_1.linktypeid, 
  postlinks_1.id, 
  postlinks_1.id, 
  postlinks_1.postid, 
  postlinks_1.creationdate, 
  postlinks_1.creationdate, 
  postlinks_1.postid, 
  postlinks_1.id, 
  postlinks_1.creationdate, 
  postlinks_1.creationdate, 
  avg(
    postlinks_1.postid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid
limit 38;
select  
  min(
    postlinks_2.creationdate), 
  postlinks_2.creationdate, 
  count(
    postlinks_2.creationdate), 
  postlinks_2.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join postlinks as postlinks_2
    on (postlinks_1.id = postlinks_2.id )
where postlinks_2.linktypeid is not NULL
group by postlinks_2.creationdate, postlinks_2.id
limit 23;
select  
  users_1.location, 
  badges_1.name, 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
      inner join posthistory as posthistory_1
        inner join badges as badges_1
        on (posthistory_1.id = badges_1.id )
      on (users_1.id = posthistory_1.id )
    inner join comments as comments_1
      inner join votes as votes_1
        inner join posthistory as posthistory_2
        on (votes_1.id = posthistory_2.id )
      on (comments_1.id = posthistory_2.id )
    on (posthistory_1.id = posthistory_2.id )
where posthistory_1.creationdate <= badges_1.date
limit 30;
select  
  postlinks_1.linktypeid, 
  postlinks_1.id, 
  postlinks_1.creationdate, 
  postlinks_1.id, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.relatedpostid, 
  sum(
    postlinks_1.postid), 
  postlinks_1.creationdate, 
  postlinks_1.id, 
  postlinks_1.id, 
  postlinks_1.id, 
  postlinks_1.id, 
  max(
    postlinks_1.postid), 
  postlinks_1.linktypeid, 
  postlinks_1.id, 
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid, 
  max(
    postlinks_1.linktypeid), 
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  postlinks_1.linktypeid, 
  postlinks_1.postid, 
  postlinks_1.postid, 
  postlinks_1.creationdate, 
  postlinks_1.id, 
  postlinks_1.postid, 
  postlinks_1.id, 
  postlinks_1.id, 
  postlinks_1.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 29;
select  
  max(
    badges_1.date), 
  badges_1.tagbased, 
  badges_1.userid, 
  badges_1.class, 
  min(
    badges_1.date), 
  max(
    badges_1.date), 
  badges_1.tagbased, 
  badges_1.name, 
  min(
    badges_1.id), 
  badges_1.tagbased, 
  badges_1.id, 
  sum(
    badges_1.id)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.name = badges_1.name
group by badges_1.class, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
limit 16;
select  
  posts_1.posttypeid, 
  postlinks_1.relatedpostid, 
  users_1.websiteurl, 
  max(
    users_1.creationdate), 
  comments_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
      inner join votes as votes_1
        inner join badges as badges_1
        on (votes_1.id = badges_1.id )
      on (posts_1.id = badges_1.id )
    inner join users as users_1
        inner join postlinks as postlinks_1
        on (users_1.id = postlinks_1.id )
      inner join comments as comments_1
        inner join badges as badges_2
        on (comments_1.id = badges_2.id )
      on (postlinks_1.id = comments_1.id )
    on (votes_1.id = comments_1.id )
where votes_1.userid is not NULL
group by comments_1.userdisplayname, postlinks_1.relatedpostid, posts_1.posttypeid, users_1.websiteurl
limit 22;
select  
  comments_1.creationdate, 
  comments_1.text, 
  comments_1.userdisplayname, 
  comments_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userid is not NULL
limit 29;
select  
  posthistory_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join posthistory as posthistory_1
      inner join badges as badges_1
      on (posthistory_1.id = badges_1.id )
    on (users_1.id = posthistory_1.id )
where badges_1.id is not NULL
limit 5;
select  
  users_1.accountid, 
  users_1.creationdate, 
  users_1.location, 
  users_1.accountid, 
  users_1.accountid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.creationdate is not NULL
limit 34;
select  
  users_1.displayname, 
  users_1.websiteurl, 
  users_2.accountid, 
  users_2.aboutme
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join users as users_2
    on (users_1.id = users_2.id )
where users_2.profileimageurl is not NULL
limit 32;
select  
  votes_2.creationdate, 
  badges_1.tagbased, 
  max(
    votes_1.creationdate), 
  min(
    votes_2.creationdate), 
  votes_1.creationdate, 
  votes_1.creationdate, 
  votes_1.postid, 
  badges_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
      inner join badges as badges_1
      on (votes_1.id = badges_1.id )
    inner join votes as votes_2
    on (badges_1.id = votes_2.id )
where votes_1.postid is not NULL
group by badges_1.name, badges_1.tagbased, votes_1.creationdate, votes_1.postid, votes_2.creationdate
limit 6;
select  
  badges_1.name, 
  users_2.id, 
  posts_1.posttypeid, 
  posts_1.contentlicense, 
  posts_1.ownerdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join users as users_2
        inner join users as users_3
          inner join posts as posts_1
          on (users_3.id = posts_1.id )
        on (users_2.id = users_3.id )
      inner join badges as badges_1
      on (users_2.id = badges_1.id )
    on (users_1.id = posts_1.id )
where posts_1.creationdate is not NULL
limit 30;
select  
  posthistory_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.posthistorytypeid < posthistory_1.id
limit 7;
select  
  users_1.id, 
  users_1.creationdate, 
  users_1.creationdate, 
  users_1.displayname, 
  users_1.creationdate, 
  users_1.profileimageurl, 
  max(
    users_1.creationdate), 
  users_1.displayname, 
  min(
    users_1.id), 
  min(
    users_1.id), 
  users_1.displayname, 
  users_1.id, 
  users_1.aboutme, 
  users_1.profileimageurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.profileimageurl is not NULL
group by users_1.aboutme, users_1.creationdate, users_1.displayname, users_1.id, users_1.profileimageurl
limit 41;
select  
  comments_1.contentlicense, 
  comments_1.id, 
  comments_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userid is not NULL
limit 23;
select  
  badges_1.class, 
  badges_1.name, 
  badges_1.class, 
  max(
    badges_1.date), 
  badges_1.tagbased, 
  max(
    badges_1.date), 
  badges_1.id, 
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.id is not NULL
group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased
limit 30;
select  
  postlinks_1.postid, 
  postlinks_1.linktypeid, 
  postlinks_1.id, 
  postlinks_1.creationdate, 
  postlinks_1.postid, 
  postlinks_1.creationdate, 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
limit 25;
select  
  posthistory_1.text, 
  posthistory_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.id is not NULL
limit 15;
select  
  votes_1.creationdate, 
  comments_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join votes as votes_1
    on (comments_1.id = votes_1.id )
where votes_1.id is not NULL
limit 19;
select  
  posts_1.contentlicense, 
  posts_1.id, 
  badges_1.userid, 
  votes_1.id, 
  votes_2.id, 
  posts_1.parentid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join votes as votes_1
        inner join badges as badges_1
        on (votes_1.id = badges_1.id )
      inner join votes as votes_2
      on (badges_1.id = votes_2.id )
    on (posts_1.id = badges_1.id )
where badges_1.tagbased is not NULL
limit 14;
select  
  postlinks_1.postid, 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
limit 26;
select  
  postlinks_2.linktypeid, 
  postlinks_2.creationdate, 
  postlinks_1.creationdate, 
  posts_1.owneruserid, 
  max(
    postlinks_2.creationdate), 
  max(
    postlinks_2.creationdate), 
  max(
    postlinks_2.creationdate), 
  postlinks_2.postid, 
  postlinks_1.id, 
  postlinks_2.relatedpostid, 
  postlinks_1.creationdate, 
  postlinks_1.postid, 
  posts_1.acceptedanswerid, 
  postlinks_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join posts as posts_1
      inner join postlinks as postlinks_2
      on (posts_1.id = postlinks_2.id )
    on (postlinks_1.id = postlinks_2.id )
where postlinks_2.relatedpostid > posts_1.id
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.postid, postlinks_2.creationdate, postlinks_2.linktypeid, postlinks_2.postid, postlinks_2.relatedpostid, posts_1.acceptedanswerid, posts_1.owneruserid
limit 9;
select  
  min(
    badges_1.date), 
  posthistory_1.text, 
  users_1.profileimageurl, 
  badges_1.id, 
  posts_1.creationdate, 
  users_1.accountid, 
  users_1.id, 
  badges_1.tagbased, 
  badges_1.date, 
  posts_1.title, 
  posts_1.id, 
  users_1.accountid, 
  users_1.profileimageurl, 
  posthistory_1.id, 
  count(
    users_1.creationdate), 
  posthistory_1.comment, 
  count(*), 
  badges_1.date, 
  min(
    users_1.creationdate), 
  users_1.profileimageurl, 
  posts_1.title, 
  posts_1.ownerdisplayname, 
  min(
    badges_1.userid), 
  posts_1.ownerdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join posts as posts_1
        inner join posthistory as posthistory_1
        on (posts_1.id = posthistory_1.id )
      inner join users as users_1
      on (posts_1.id = users_1.id )
    on (badges_1.id = users_1.id )
where posts_1.title is not NULL
group by badges_1.date, badges_1.id, badges_1.tagbased, posthistory_1.comment, posthistory_1.id, posthistory_1.text, posts_1.creationdate, posts_1.id, posts_1.ownerdisplayname, posts_1.title, users_1.accountid, users_1.id, users_1.profileimageurl
limit 38;
select  
  users_1.websiteurl, 
  avg(
    users_1.profileimageurl)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.displayname is not NULL
group by users_1.websiteurl
limit 33;
select  
  votes_1.postid, 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join badges as badges_1
      inner join posthistory as posthistory_1
      on (badges_1.id = posthistory_1.id )
    on (votes_1.id = badges_1.id )
where posthistory_1.id is not NULL
limit 4;
select  
  posts_1.body, 
  posts_1.creationdate, 
  posts_1.owneruserid, 
  posts_1.owneruserid, 
  posts_1.creationdate, 
  posts_1.contentlicense, 
  posts_1.contentlicense, 
  posts_1.title, 
  posts_1.posttypeid, 
  posts_1.posttypeid, 
  posts_1.tags, 
  posts_1.parentid, 
  posts_1.tags
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.tags is not NULL
limit 28;
select  
  count(
    posts_1.contentlicense), 
  min(
    posts_1.creationdate), 
  posts_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.creationdate is not NULL
group by posts_1.id
limit 32;
select  
  badges_1.tagbased, 
  badges_1.class, 
  posts_1.ownerdisplayname, 
  votes_1.creationdate, 
  badges_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
      inner join badges as badges_1
        inner join votes as votes_2
        on (badges_1.id = votes_2.id )
      on (votes_1.id = badges_1.id )
    inner join posts as posts_1
    on (badges_1.id = posts_1.id )
where posts_1.title is not NULL
limit 42;
select  
  postlinks_1.postid, 
  postlinks_1.relatedpostid, 
  postlinks_1.relatedpostid, 
  postlinks_1.postid, 
  postlinks_1.id, 
  postlinks_1.creationdate, 
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate = postlinks_1.creationdate
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 11;
select  
  users_1.websiteurl, 
  users_1.displayname, 
  users_1.location, 
  max(
    users_1.profileimageurl)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.displayname is not NULL
group by users_1.displayname, users_1.location, users_1.websiteurl
limit 2;
select  
  badges_1.userid, 
  badges_1.tagbased, 
  badges_1.date, 
  badges_1.class, 
  count(
    badges_1.class)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.id = badges_1.userid
group by badges_1.class, badges_1.date, badges_1.tagbased, badges_1.userid
limit 4;
select  
  badges_1.tagbased, 
  badges_1.name, 
  badges_1.userid, 
  badges_1.name, 
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.date is not NULL
limit 38;
select  
  min(
    postlinks_1.creationdate), 
  postlinks_1.creationdate, 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
group by postlinks_1.creationdate, postlinks_1.linktypeid
limit 8;
select  
  postlinks_1.linktypeid, 
  postlinks_1.id, 
  postlinks_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
limit 42;
select  
  users_1.profileimageurl, 
  users_1.accountid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.websiteurl is not NULL
limit 7;
select  
  postlinks_1.creationdate, 
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid, 
  min(
    postlinks_1.creationdate), 
  postlinks_1.postid, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.linktypeid is not NULL
group by postlinks_1.creationdate, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 10;
select  
  badges_1.name, 
  posts_1.creationdate, 
  posts_2.tags
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join badges as badges_1
      inner join badges as badges_2
        inner join posts as posts_2
        on (badges_2.id = posts_2.id )
      on (badges_1.id = posts_2.id )
    on (posts_1.id = badges_1.id )
where posts_1.posttypeid is not NULL
limit 4;
select  
  votes_1.postid, 
  posthistory_1.text, 
  votes_1.userid, 
  votes_1.userid, 
  posthistory_1.userdisplayname, 
  posts_1.posttypeid, 
  votes_1.creationdate, 
  posts_1.creationdate, 
  sum(
    votes_1.userid), 
  posts_1.body, 
  votes_1.votetypeid, 
  posthistory_1.contentlicense, 
  posthistory_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
      inner join posts as posts_1
      on (posthistory_1.id = posts_1.id )
    inner join votes as votes_1
    on (posthistory_1.id = votes_1.id )
where posthistory_1.revisionguid is not NULL
group by posthistory_1.contentlicense, posthistory_1.text, posthistory_1.userdisplayname, posts_1.body, posts_1.creationdate, posts_1.posttypeid, votes_1.creationdate, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 4;
select  
  posthistory_1.revisionguid, 
  min(
    postlinks_1.creationdate), 
  postlinks_1.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join posthistory as posthistory_1
    on (postlinks_1.id = posthistory_1.id )
where postlinks_1.id is not NULL
group by posthistory_1.revisionguid, postlinks_1.relatedpostid
limit 33;
select  
  posts_1.tags, 
  posts_1.creationdate, 
  posts_1.acceptedanswerid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.tags > posts_1.contentlicense
limit 7;
select  
  count(*), 
  posts_1.tags, 
  users_1.creationdate, 
  users_1.creationdate, 
  users_1.accountid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join posts as posts_1
    on (users_1.id = posts_1.id )
where users_1.profileimageurl is not NULL
group by posts_1.tags, users_1.accountid, users_1.creationdate
limit 5;
select  
  badges_1.id, 
  badges_1.date, 
  badges_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.class is not NULL
limit 12;
select  
  max(
    users_1.creationdate), 
  users_1.profileimageurl, 
  votes_1.userid, 
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join votes as votes_1
    on (users_1.id = votes_1.id )
where users_1.creationdate is not NULL
group by users_1.profileimageurl, votes_1.userid, votes_1.votetypeid
limit 32;
select  
  comments_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userdisplayname is not NULL
limit 41;
select  
  min(
    users_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
      inner join users as users_1
      on (comments_1.id = users_1.id )
    inner join posthistory as posthistory_1
      inner join posthistory as posthistory_2
      on (posthistory_1.id = posthistory_2.id )
    on (users_1.id = posthistory_1.id )
where users_1.id is not NULL
limit 23;
select  
  badges_1.tagbased, 
  badges_1.name, 
  badges_1.name, 
  max(
    badges_1.date), 
  badges_1.userid, 
  avg(
    badges_1.id), 
  badges_1.userid, 
  badges_1.name, 
  count(
    badges_1.id), 
  badges_1.name, 
  badges_1.tagbased, 
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.name > badges_1.name
group by badges_1.date, badges_1.name, badges_1.tagbased, badges_1.userid
limit 11;
select  
  min(
    posts_1.acceptedanswerid), 
  users_1.aboutme, 
  users_1.websiteurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join users as users_1
      inner join posts as posts_1
      on (users_1.id = posts_1.id )
    on (posthistory_1.id = users_1.id )
where posts_1.acceptedanswerid is not NULL
group by users_1.aboutme, users_1.websiteurl
limit 21;
select  
  votes_1.id, 
  min(
    badges_1.date), 
  comments_3.userdisplayname, 
  comments_1.postid, 
  badges_1.tagbased, 
  badges_1.name, 
  comments_3.id, 
  min(
    comments_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
        inner join comments as comments_2
        on (comments_1.id = comments_2.id )
      inner join badges as badges_1
      on (comments_1.id = badges_1.id )
    inner join comments as comments_3
      inner join votes as votes_1
      on (comments_3.id = votes_1.id )
    on (comments_2.id = votes_1.id )
where comments_3.creationdate is not NULL
group by badges_1.name, badges_1.tagbased, comments_1.postid, comments_3.id, comments_3.userdisplayname, votes_1.id
limit 9;
select  
  posts_1.acceptedanswerid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
      inner join posts as posts_1
      on (posthistory_1.id = posts_1.id )
    inner join users as users_1
    on (posts_1.id = users_1.id )
where posthistory_1.contentlicense is not NULL
limit 22;
select  
  posthistory_1.text, 
  posts_1.body, 
  posthistory_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join posthistory as posthistory_1
      inner join posts as posts_2
        inner join posts as posts_3
        on (posts_2.id = posts_3.id )
      on (posthistory_1.id = posts_3.id )
    on (posts_1.id = posts_2.id )
where posthistory_1.posthistorytypeid is not NULL
limit 19;
select  
  min(
    users_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.aboutme is not NULL
limit 22;
select  
  badges_1.date, 
  badges_2.name, 
  sum(
    badges_2.id)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
      inner join badges as badges_2
      on (badges_1.id = badges_2.id )
    inner join posthistory as posthistory_1
    on (badges_2.id = posthistory_1.id )
where badges_2.date is not NULL
group by badges_1.date, badges_2.name
limit 7;
select  
  posthistory_1.postid, 
  postlinks_1.relatedpostid, 
  votes_1.creationdate, 
  votes_1.votetypeid, 
  posthistory_1.userdisplayname, 
  postlinks_1.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
      inner join votes as votes_1
      on (postlinks_1.id = votes_1.id )
    inner join postlinks as postlinks_2
      inner join users as users_1
          inner join postlinks as postlinks_3
          on (users_1.id = postlinks_3.id )
        inner join posthistory as posthistory_1
        on (users_1.id = posthistory_1.id )
      on (postlinks_2.id = users_1.id )
    on (votes_1.id = users_1.id )
where postlinks_2.creationdate >= postlinks_3.creationdate
limit 35;
select  
  users_1.websiteurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.creationdate is not NULL
limit 10;
select  
  posthistory_1.id, 
  min(
    badges_1.date), 
  posthistory_1.text, 
  votes_1.id, 
  count(
    posts_2.contentlicense), 
  posthistory_1.text, 
  posts_2.body, 
  badges_1.date, 
  badges_1.tagbased, 
  posts_1.body, 
  posts_1.parentid, 
  comments_1.userid, 
  posts_2.owneruserid, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join posts as posts_1
        inner join votes as votes_1
        on (posts_1.id = votes_1.id )
      inner join posthistory as posthistory_1
          inner join badges as badges_1
          on (posthistory_1.id = badges_1.id )
        inner join posts as posts_2
        on (posthistory_1.id = posts_2.id )
      on (votes_1.id = badges_1.id )
    on (comments_1.id = posts_2.id )
where posts_2.id is not NULL
group by badges_1.date, badges_1.tagbased, comments_1.userid, posthistory_1.id, posthistory_1.text, posts_1.body, posts_1.parentid, posts_2.body, posts_2.owneruserid, votes_1.id
limit 39;
select  
  comments_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userdisplayname is not NULL
limit 41;
select  
  votes_1.id, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate is not NULL
group by votes_1.id
limit 27;
select  
  sum(
    badges_1.class), 
  badges_1.tagbased
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.id is not NULL
group by badges_1.tagbased
limit 7;
select  
  users_1.websiteurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join badges as badges_1
      inner join badges as badges_2
      on (badges_1.id = badges_2.id )
    on (users_1.id = badges_2.id )
where badges_1.userid is not NULL
limit 8;
select  
  sum(
    posts_1.id), 
  posts_1.acceptedanswerid, 
  posts_1.creationdate, 
  posts_1.tags
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.parentid is not NULL
group by posts_1.acceptedanswerid, posts_1.creationdate, posts_1.tags
limit 25;
select  
  comments_1.postid, 
  posts_1.owneruserid, 
  votes_1.postid, 
  posts_1.id, 
  comments_1.contentlicense, 
  users_1.displayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join votes as votes_2
            inner join comments as comments_1
            on (votes_2.id = comments_1.id )
          inner join users as users_1
          on (comments_1.id = users_1.id )
        inner join postlinks as postlinks_1
        on (votes_2.id = postlinks_1.id )
      inner join posts as posts_1
      on (postlinks_1.id = posts_1.id )
    on (votes_1.id = votes_2.id )
where votes_2.userid is not NULL
limit 18;
select  
  votes_1.creationdate, 
  votes_1.creationdate, 
  min(
    votes_1.id), 
  votes_1.userid, 
  votes_1.id, 
  votes_1.postid, 
  min(
    votes_1.creationdate), 
  votes_1.postid, 
  votes_1.creationdate, 
  min(
    votes_1.creationdate), 
  votes_1.creationdate, 
  count(
    votes_1.id), 
  votes_1.userid, 
  count(*), 
  votes_1.votetypeid, 
  votes_1.creationdate, 
  votes_1.votetypeid, 
  votes_1.id, 
  count(
    votes_1.creationdate), 
  votes_1.votetypeid, 
  votes_1.userid, 
  votes_1.id, 
  votes_1.postid, 
  votes_1.postid, 
  votes_1.id, 
  votes_1.postid, 
  votes_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate >= votes_1.creationdate
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 39;
select  
  comments_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.creationdate > comments_1.creationdate
limit 17;
select  
  sum(
    postlinks_1.linktypeid), 
  postlinks_1.creationdate, 
  postlinks_1.linktypeid, 
  postlinks_1.creationdate, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.relatedpostid, 
  postlinks_1.postid, 
  postlinks_1.linktypeid, 
  postlinks_1.id, 
  postlinks_1.relatedpostid, 
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid, 
  postlinks_1.id, 
  min(
    postlinks_1.creationdate), 
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid, 
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid, 
  postlinks_1.linktypeid, 
  min(
    postlinks_1.creationdate), 
  count(*), 
  postlinks_1.creationdate, 
  postlinks_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid < postlinks_1.linktypeid
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 41;
select  
  posts_1.acceptedanswerid, 
  posts_1.posttypeid, 
  posts_1.posttypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.tags is not NULL
limit 33;
select  
  min(
    votes_1.id), 
  votes_1.votetypeid, 
  votes_1.creationdate, 
  max(
    votes_1.creationdate), 
  votes_1.id, 
  min(
    votes_1.id), 
  votes_1.votetypeid, 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.votetypeid is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.votetypeid
limit 12;
select  
  postlinks_1.creationdate, 
  postlinks_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
limit 41;
select  
  badges_1.date, 
  min(
    posts_1.creationdate), 
  badges_1.tagbased, 
  posts_1.ownerdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join posts as posts_1
    on (badges_1.id = posts_1.id )
where posts_1.contentlicense is not NULL
group by badges_1.date, badges_1.tagbased, posts_1.ownerdisplayname
limit 39;
select  
  votes_1.votetypeid, 
  votes_1.userid, 
  votes_1.creationdate, 
  votes_1.votetypeid, 
  votes_1.userid, 
  votes_1.id, 
  votes_1.votetypeid, 
  votes_1.userid, 
  votes_1.votetypeid, 
  max(
    votes_1.id), 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.id is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 7;
select  
  comments_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
      inner join comments as comments_1
      on (votes_1.id = comments_1.id )
    inner join votes as votes_2
    on (votes_1.id = votes_2.id )
where votes_1.userid is not NULL
limit 33;
select  
  users_1.websiteurl, 
  users_1.profileimageurl, 
  posts_1.posttypeid, 
  users_1.websiteurl, 
  posts_1.id, 
  posts_1.acceptedanswerid, 
  max(
    posts_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join users as users_1
    on (posts_1.id = users_1.id )
where users_1.displayname is not NULL
group by posts_1.acceptedanswerid, posts_1.id, posts_1.posttypeid, users_1.profileimageurl, users_1.websiteurl
limit 36;
select  
  posthistory_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.contentlicense is not NULL
limit 17;
select  
  count(
    votes_1.votetypeid), 
  votes_1.creationdate, 
  votes_1.id, 
  votes_1.id, 
  votes_1.postid, 
  votes_1.id, 
  max(
    votes_1.id), 
  votes_1.id, 
  votes_1.id, 
  votes_1.creationdate, 
  votes_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.postid is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid
limit 13;
select  
  posthistory_1.userid, 
  posthistory_1.contentlicense, 
  postlinks_1.relatedpostid, 
  posthistory_1.contentlicense, 
  min(
    posthistory_1.creationdate), 
  postlinks_1.relatedpostid, 
  postlinks_1.id, 
  avg(
    postlinks_1.relatedpostid), 
  avg(
    postlinks_1.postid), 
  postlinks_1.relatedpostid, 
  posthistory_1.text, 
  posthistory_1.creationdate, 
  postlinks_1.linktypeid, 
  postlinks_1.creationdate, 
  max(
    posthistory_1.creationdate), 
  sum(
    postlinks_1.id)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join postlinks as postlinks_1
    on (posthistory_1.id = postlinks_1.id )
where posthistory_1.comment > posthistory_1.revisionguid
group by posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.text, posthistory_1.userid, postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.relatedpostid
limit 18;
select  
  badges_1.id, 
  users_1.profileimageurl, 
  users_1.aboutme, 
  users_1.location, 
  users_1.aboutme, 
  max(
    badges_1.date), 
  users_1.websiteurl, 
  users_1.creationdate, 
  users_1.location
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join badges as badges_1
    on (users_1.id = badges_1.id )
where badges_1.userid <= users_1.profileimageurl
group by badges_1.id, users_1.aboutme, users_1.creationdate, users_1.location, users_1.profileimageurl, users_1.websiteurl
limit 8;
select  
  comments_1.id, 
  comments_1.contentlicense, 
  max(
    comments_1.creationdate), 
  max(
    comments_1.creationdate), 
  comments_1.postid, 
  comments_1.id, 
  comments_1.userid, 
  comments_1.userid, 
  comments_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userid is not NULL
group by comments_1.contentlicense, comments_1.id, comments_1.postid, comments_1.userid
limit 35;
select  
  max(
    posthistory_1.creationdate), 
  sum(
    posthistory_1.postid), 
  posthistory_1.posthistorytypeid, 
  posthistory_1.id, 
  posthistory_1.contentlicense, 
  posthistory_1.text, 
  posthistory_1.creationdate, 
  min(
    posthistory_1.creationdate), 
  min(
    posthistory_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.userdisplayname is not NULL
group by posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.text
limit 40;
select  
  votes_1.userid, 
  votes_1.postid, 
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.postid is not NULL
limit 11;
select  
  comments_1.id, 
  comments_1.userid, 
  comments_1.creationdate, 
  sum(
    comments_1.id), 
  postlinks_1.creationdate, 
  min(
    postlinks_1.creationdate), 
  comments_1.id, 
  comments_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join comments as comments_1
    on (postlinks_1.id = comments_1.id )
where comments_1.id is not NULL
group by comments_1.creationdate, comments_1.id, comments_1.userid, postlinks_1.creationdate
limit 38;
select  
  postlinks_1.postid, 
  posthistory_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
      inner join posthistory as posthistory_1
      on (postlinks_1.id = posthistory_1.id )
    inner join postlinks as postlinks_2
    on (postlinks_1.id = postlinks_2.id )
where posthistory_1.comment is not NULL
limit 11;
select  
  posthistory_1.posthistorytypeid, 
  min(
    posthistory_1.userid), 
  badges_1.date, 
  posthistory_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join posthistory as posthistory_1
    on (badges_1.id = posthistory_1.id )
where posthistory_1.userid is not NULL
group by badges_1.date, posthistory_1.id, posthistory_1.posthistorytypeid
limit 5;
select  
  comments_1.contentlicense, 
  posthistory_1.userdisplayname, 
  count(
    posthistory_1.revisionguid), 
  posthistory_1.comment, 
  comments_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join comments as comments_1
    on (posthistory_1.id = comments_1.id )
where posthistory_1.revisionguid is not NULL
group by comments_1.contentlicense, comments_1.postid, posthistory_1.comment, posthistory_1.userdisplayname
limit 33;
select  
  min(
    posthistory_2.postid), 
  posthistory_2.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join posthistory as posthistory_1
      inner join posthistory as posthistory_2
      on (posthistory_1.id = posthistory_2.id )
    on (posts_1.id = posthistory_2.id )
where posthistory_1.creationdate < posthistory_2.creationdate
group by posthistory_2.userid
limit 22;
select  
  badges_1.userid, 
  min(
    badges_1.date), 
  badges_1.id, 
  badges_1.date, 
  badges_1.date, 
  badges_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.name is not NULL
group by badges_1.date, badges_1.id, badges_1.userid
limit 4;
select  
  posts_1.contentlicense, 
  max(
    posts_1.creationdate), 
  posts_1.title, 
  posts_1.tags
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.ownerdisplayname = posts_1.tags
group by posts_1.contentlicense, posts_1.tags, posts_1.title
limit 38;
select  
  users_1.displayname, 
  min(
    users_1.creationdate), 
  users_1.location, 
  min(
    users_1.creationdate), 
  users_1.id, 
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.creationdate < users_1.creationdate
group by users_1.creationdate, users_1.displayname, users_1.id, users_1.location
limit 7;
select  
  badges_1.userid, 
  min(
    posthistory_1.creationdate), 
  avg(
    postlinks_1.linktypeid), 
  badges_2.name, 
  votes_1.id, 
  postlinks_1.relatedpostid, 
  postlinks_1.postid, 
  badges_1.userid, 
  min(
    badges_2.id), 
  votes_1.creationdate, 
  count(
    votes_1.id), 
  posthistory_1.posthistorytypeid, 
  postlinks_1.creationdate, 
  badges_2.class, 
  badges_2.id, 
  badges_1.name, 
  votes_1.postid, 
  comments_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
    inner join postlinks as postlinks_1
          inner join comments as comments_1
            inner join votes as votes_1
            on (comments_1.id = votes_1.id )
          on (postlinks_1.id = votes_1.id )
        inner join badges as badges_1
        on (postlinks_1.id = badges_1.id )
      inner join badges as badges_2
      on (postlinks_1.id = badges_2.id )
    on (posthistory_1.id = badges_2.id )
where badges_2.userid is not NULL
group by badges_1.name, badges_1.userid, badges_2.class, badges_2.id, badges_2.name, comments_1.userdisplayname, posthistory_1.posthistorytypeid, postlinks_1.creationdate, postlinks_1.postid, postlinks_1.relatedpostid, votes_1.creationdate, votes_1.id, votes_1.postid
limit 35;
select  
  comments_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.id >= comments_1.userid
limit 41;
select  
  posthistory_1.userdisplayname, 
  posthistory_1.comment
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.postid = posthistory_1.posthistorytypeid
limit 11;
select  
  badges_1.date, 
  max(
    badges_1.date), 
  badges_1.tagbased, 
  badges_1.id, 
  badges_1.id, 
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.userid < badges_1.class
group by badges_1.date, badges_1.id, badges_1.tagbased, badges_1.userid
limit 24;
select  
  badges_1.tagbased, 
  badges_1.tagbased, 
  badges_1.class, 
  badges_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased >= badges_1.tagbased
limit 29;
select  
  badges_1.date, 
  badges_1.date, 
  badges_1.name, 
  count(*), 
  max(
    badges_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.userid is not NULL
group by badges_1.date, badges_1.name
limit 24;
select  
  comments_1.userdisplayname, 
  votes_1.votetypeid, 
  votes_1.userid, 
  comments_2.creationdate, 
  comments_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join posts as posts_1
        inner join comments as comments_2
        on (posts_1.id = comments_2.id )
      inner join votes as votes_1
        inner join badges as badges_1
        on (votes_1.id = badges_1.id )
      on (comments_2.id = badges_1.id )
    on (comments_1.id = badges_1.id )
where comments_1.contentlicense is not NULL
limit 19;
select  
  comments_2.id, 
  postlinks_1.id, 
  min(
    comments_2.creationdate), 
  comments_1.userid, 
  votes_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join posthistory as posthistory_1
      inner join comments as comments_2
          inner join votes as votes_1
          on (comments_2.id = votes_1.id )
        inner join postlinks as postlinks_1
        on (comments_2.id = postlinks_1.id )
      on (posthistory_1.id = comments_2.id )
    on (comments_1.id = votes_1.id )
where comments_1.creationdate = votes_1.creationdate
group by comments_1.userid, comments_2.id, postlinks_1.id, votes_1.userid
limit 2;
select  
  postlinks_1.relatedpostid, 
  min(
    postlinks_1.creationdate), 
  avg(
    posts_1.id), 
  postlinks_2.creationdate, 
  postlinks_2.linktypeid, 
  postlinks_1.linktypeid, 
  postlinks_2.relatedpostid, 
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid, 
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  posts_1.owneruserid, 
  postlinks_1.relatedpostid, 
  postlinks_2.relatedpostid, 
  postlinks_1.creationdate, 
  postlinks_1.id, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join postlinks as postlinks_2
      inner join posts as posts_1
      on (postlinks_2.id = posts_1.id )
    on (postlinks_1.id = postlinks_2.id )
where postlinks_1.postid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.relatedpostid, postlinks_2.creationdate, postlinks_2.linktypeid, postlinks_2.relatedpostid, posts_1.owneruserid
limit 12;
select  
  votes_1.creationdate, 
  votes_1.votetypeid, 
  max(
    badges_1.date), 
  min(
    badges_1.date), 
  badges_1.name, 
  votes_1.creationdate, 
  votes_1.votetypeid, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join badges as badges_1
    on (votes_1.id = badges_1.id )
where badges_1.date is not NULL
group by badges_1.name, votes_1.creationdate, votes_1.postid, votes_1.votetypeid
limit 31;
select  
  posthistory_1.contentlicense, 
  posthistory_1.userdisplayname, 
  posthistory_1.text, 
  posthistory_1.comment, 
  posts_1.parentid, 
  posthistory_1.postid, 
  posts_1.id, 
  min(
    posthistory_1.creationdate), 
  posts_1.contentlicense, 
  posts_1.creationdate, 
  posts_1.creationdate, 
  posthistory_1.contentlicense, 
  posthistory_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join posthistory as posthistory_1
    on (posts_1.id = posthistory_1.id )
where posts_1.owneruserid is not NULL
group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.postid, posthistory_1.text, posthistory_1.userdisplayname, posts_1.contentlicense, posts_1.creationdate, posts_1.id, posts_1.parentid
limit 19;
select  
  max(
    posts_1.acceptedanswerid), 
  posts_1.title
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.title is not NULL
group by posts_1.title
limit 17;
select  
  users_1.displayname, 
  max(
    users_1.creationdate), 
  min(
    users_1.accountid), 
  users_1.aboutme, 
  users_1.creationdate, 
  users_1.profileimageurl, 
  users_1.location, 
  users_1.websiteurl, 
  users_1.location, 
  users_1.displayname, 
  users_1.accountid, 
  users_1.accountid, 
  sum(
    users_1.profileimageurl), 
  users_1.displayname, 
  users_1.accountid, 
  users_1.accountid, 
  users_1.id, 
  users_1.accountid, 
  users_1.profileimageurl, 
  users_1.aboutme
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.profileimageurl is not NULL
group by users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.displayname, users_1.id, users_1.location, users_1.profileimageurl, users_1.websiteurl
limit 11;
select  
  comments_1.id, 
  comments_1.contentlicense, 
  comments_1.userid, 
  comments_1.userdisplayname, 
  comments_1.creationdate, 
  min(
    comments_1.creationdate), 
  max(
    comments_1.postid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userid is not NULL
group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.userdisplayname, comments_1.userid
limit 20;
select  
  comments_1.id, 
  comments_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.text is not NULL
limit 9;
select  
  posts_1.parentid, 
  users_2.aboutme, 
  users_2.profileimageurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join users as users_1
        inner join posts as posts_2
        on (users_1.id = posts_2.id )
      inner join users as users_2
      on (users_1.id = users_2.id )
    on (posts_1.id = users_2.id )
where users_1.accountid = users_2.accountid
limit 36;
select  
  votes_1.votetypeid, 
  max(
    votes_1.creationdate), 
  votes_1.creationdate, 
  votes_1.creationdate, 
  votes_1.creationdate, 
  votes_1.userid, 
  votes_1.postid, 
  votes_1.userid, 
  votes_1.id, 
  votes_1.creationdate, 
  votes_1.userid, 
  min(
    votes_1.postid), 
  votes_1.id, 
  votes_1.userid, 
  votes_1.votetypeid, 
  votes_1.votetypeid, 
  votes_1.votetypeid, 
  count(*), 
  votes_1.creationdate, 
  votes_1.votetypeid, 
  votes_1.id, 
  votes_1.userid, 
  votes_1.creationdate, 
  votes_1.userid, 
  votes_1.id, 
  votes_1.postid, 
  votes_1.votetypeid, 
  votes_1.userid, 
  votes_1.creationdate, 
  votes_1.userid, 
  votes_1.userid, 
  votes_1.id, 
  max(
    votes_1.userid), 
  min(
    votes_1.id), 
  votes_1.postid, 
  votes_1.creationdate, 
  votes_1.votetypeid, 
  votes_1.userid, 
  votes_1.postid, 
  votes_1.id, 
  votes_1.userid, 
  max(
    votes_1.creationdate), 
  votes_1.votetypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.creationdate is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 1;
select  
  posts_1.creationdate, 
  postlinks_1.linktypeid, 
  posts_1.title, 
  postlinks_1.postid, 
  postlinks_1.relatedpostid, 
  count(*), 
  posts_1.posttypeid, 
  posts_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
    inner join posts as posts_1
    on (postlinks_1.id = posts_1.id )
where postlinks_1.relatedpostid is not NULL
group by postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid, posts_1.creationdate, posts_1.posttypeid, posts_1.title
limit 34;
select  
  comments_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
        inner join comments as comments_1
            inner join users as users_1
            on (comments_1.id = users_1.id )
          inner join postlinks as postlinks_1
          on (users_1.id = postlinks_1.id )
        on (badges_1.id = postlinks_1.id )
      inner join posts as posts_1
        inner join badges as badges_2
        on (posts_1.id = badges_2.id )
      on (badges_1.id = badges_2.id )
    inner join badges as badges_3
    on (users_1.id = badges_3.id )
where users_1.websiteurl is not NULL
limit 31;
select  
  postlinks_1.id, 
  sum(
    postlinks_1.linktypeid), 
  postlinks_1.relatedpostid, 
  postlinks_1.postid, 
  postlinks_1.relatedpostid, 
  postlinks_1.postid, 
  postlinks_1.id, 
  postlinks_1.id, 
  postlinks_1.creationdate, 
  postlinks_1.creationdate, 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 2;
select  
  posthistory_1.contentlicense, 
  posthistory_1.userdisplayname, 
  posthistory_1.creationdate, 
  posthistory_1.creationdate, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.comment, 
  posthistory_1.text, 
  posthistory_1.userid, 
  posthistory_1.id, 
  posthistory_1.creationdate, 
  posthistory_1.contentlicense, 
  posthistory_1.comment, 
  posthistory_1.creationdate, 
  posthistory_1.revisionguid, 
  posthistory_1.postid, 
  posthistory_1.userdisplayname, 
  posthistory_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.comment <= posthistory_1.userdisplayname
limit 7;
select  
  comments_1.userdisplayname, 
  posts_2.parentid, 
  min(
    posthistory_1.creationdate), 
  posts_1.ownerdisplayname, 
  comments_1.contentlicense, 
  posts_1.id, 
  posts_2.ownerdisplayname, 
  posthistory_1.contentlicense, 
  posts_1.title
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
      inner join badges as badges_1
      on (posts_1.id = badges_1.id )
    inner join posts as posts_2
      inner join votes as votes_1
          inner join posthistory as posthistory_1
          on (votes_1.id = posthistory_1.id )
        inner join comments as comments_1
          inner join comments as comments_2
          on (comments_1.id = comments_2.id )
        on (posthistory_1.id = comments_2.id )
      on (posts_2.id = posthistory_1.id )
    on (badges_1.id = posts_2.id )
where posts_2.posttypeid is not NULL
group by comments_1.contentlicense, comments_1.userdisplayname, posthistory_1.contentlicense, posts_1.id, posts_1.ownerdisplayname, posts_1.title, posts_2.ownerdisplayname, posts_2.parentid
limit 42;
select  
  users_1.websiteurl, 
  users_1.displayname, 
  users_1.creationdate, 
  users_1.aboutme, 
  users_1.location
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.websiteurl is not NULL
limit 32;
select  
  posthistory_1.creationdate, 
  posthistory_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.id < posthistory_1.postid
limit 14;
select  
  postlinks_1.postid, 
  postlinks_1.postid, 
  postlinks_1.id, 
  postlinks_1.relatedpostid, 
  postlinks_1.id, 
  postlinks_1.relatedpostid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.id is not NULL
limit 3;
select  
  votes_1.postid, 
  comments_1.contentlicense, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
      inner join votes as votes_1
      on (comments_1.id = votes_1.id )
    inner join badges as badges_1
    on (comments_1.id = badges_1.id )
where badges_1.tagbased < badges_1.tagbased
group by comments_1.contentlicense, votes_1.postid
limit 25;
select  
  posthistory_1.contentlicense, 
  posthistory_1.text, 
  min(
    posthistory_1.creationdate), 
  posthistory_1.userid, 
  posthistory_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.userid is not NULL
group by posthistory_1.contentlicense, posthistory_1.text, posthistory_1.userdisplayname, posthistory_1.userid
limit 6;
select  
  postlinks_2.relatedpostid, 
  max(
    comments_1.creationdate), 
  postlinks_1.linktypeid, 
  posthistory_1.text, 
  count(*), 
  posthistory_2.creationdate, 
  postlinks_1.linktypeid, 
  postlinks_2.relatedpostid, 
  posthistory_2.contentlicense, 
  posthistory_1.contentlicense, 
  postlinks_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
      inner join comments as comments_1
        inner join postlinks as postlinks_2
          inner join posthistory as posthistory_1
          on (postlinks_2.id = posthistory_1.id )
        on (comments_1.id = posthistory_1.id )
      on (postlinks_1.id = posthistory_1.id )
    inner join postlinks as postlinks_3
      inner join posthistory as posthistory_2
      on (postlinks_3.id = posthistory_2.id )
    on (postlinks_2.id = posthistory_2.id )
where comments_1.creationdate is not NULL
group by posthistory_1.contentlicense, posthistory_1.text, posthistory_2.contentlicense, posthistory_2.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_2.relatedpostid
limit 16;
select  
  posts_2.parentid, 
  posts_2.body, 
  posts_2.acceptedanswerid, 
  posts_2.id, 
  max(
    posts_1.parentid), 
  posts_1.tags
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
    inner join posts as posts_2
    on (posts_1.id = posts_2.id )
where posts_1.parentid is not NULL
group by posts_1.tags, posts_2.acceptedanswerid, posts_2.body, posts_2.id, posts_2.parentid
limit 42;
select  
  comments_1.contentlicense, 
  comments_1.userid, 
  comments_1.creationdate, 
  comments_1.contentlicense, 
  comments_1.userid, 
  comments_1.text, 
  comments_1.userdisplayname, 
  comments_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.userid is not NULL
limit 22;
select  
  postlinks_2.creationdate, 
  postlinks_2.linktypeid, 
  min(
    votes_1.creationdate), 
  badges_1.id, 
  votes_1.creationdate, 
  postlinks_2.creationdate, 
  badges_1.name, 
  comments_1.postid, 
  posthistory_1.comment, 
  votes_1.userid, 
  badges_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join votes as votes_1
        inner join postlinks as postlinks_1
          inner join postlinks as postlinks_2
            inner join posthistory as posthistory_1
            on (postlinks_2.id = posthistory_1.id )
          on (postlinks_1.id = postlinks_2.id )
        on (votes_1.id = postlinks_2.id )
      inner join comments as comments_1
      on (votes_1.id = comments_1.id )
    on (badges_1.id = postlinks_2.id )
where badges_1.tagbased is not NULL
group by badges_1.id, badges_1.name, comments_1.postid, posthistory_1.comment, postlinks_2.creationdate, postlinks_2.linktypeid, votes_1.creationdate, votes_1.userid
limit 31;
select  
  badges_1.date, 
  badges_1.tagbased
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.userid is not NULL
limit 29;
select  
  users_1.websiteurl, 
  users_1.location, 
  votes_1.creationdate, 
  users_1.id, 
  max(
    postlinks_1.id), 
  votes_1.userid, 
  postlinks_1.relatedpostid, 
  min(
    votes_1.creationdate), 
  users_1.creationdate, 
  min(
    votes_1.creationdate), 
  min(
    users_1.creationdate), 
  postlinks_1.relatedpostid, 
  votes_1.votetypeid, 
  votes_1.userid, 
  votes_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join users as users_1
      inner join postlinks as postlinks_1
      on (users_1.id = postlinks_1.id )
    on (votes_1.id = postlinks_1.id )
where postlinks_1.postid is not NULL
group by postlinks_1.relatedpostid, users_1.creationdate, users_1.id, users_1.location, users_1.websiteurl, votes_1.creationdate, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 41;
select  
  badges_1.class
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.userid is not NULL
limit 25;
select  
  posts_1.contentlicense, 
  posts_1.owneruserid, 
  posts_1.acceptedanswerid, 
  count(
    posts_1.creationdate), 
  posts_1.contentlicense, 
  max(
    posts_1.creationdate), 
  posts_1.contentlicense, 
  posts_1.creationdate, 
  posts_1.contentlicense, 
  posts_1.tags, 
  posts_1.acceptedanswerid, 
  posts_1.id, 
  posts_1.id, 
  min(
    posts_1.id), 
  posts_1.posttypeid, 
  count(*), 
  posts_1.id, 
  posts_1.parentid, 
  posts_1.tags, 
  min(
    posts_1.creationdate), 
  posts_1.acceptedanswerid, 
  posts_1.title, 
  posts_1.ownerdisplayname, 
  posts_1.body, 
  posts_1.id, 
  posts_1.acceptedanswerid, 
  posts_1.body, 
  posts_1.creationdate, 
  posts_1.title, 
  max(
    posts_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.title is not NULL
group by posts_1.acceptedanswerid, posts_1.body, posts_1.contentlicense, posts_1.creationdate, posts_1.id, posts_1.ownerdisplayname, posts_1.owneruserid, posts_1.parentid, posts_1.posttypeid, posts_1.tags, posts_1.title
limit 22;
select  
  posthistory_1.posthistorytypeid, 
  posthistory_1.revisionguid, 
  posthistory_1.comment, 
  min(
    posthistory_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.contentlicense is not NULL
group by posthistory_1.comment, posthistory_1.posthistorytypeid, posthistory_1.revisionguid
limit 29;
select  
  posthistory_1.posthistorytypeid, 
  posthistory_1.id, 
  postlinks_1.relatedpostid, 
  posthistory_1.id, 
  votes_1.votetypeid, 
  posts_1.posttypeid, 
  posthistory_1.contentlicense, 
  max(
    postlinks_1.creationdate), 
  posthistory_1.revisionguid, 
  votes_1.postid, 
  postlinks_1.linktypeid, 
  posts_1.acceptedanswerid, 
  votes_1.userid, 
  max(
    votes_1.postid), 
  postlinks_1.relatedpostid, 
  postlinks_1.relatedpostid, 
  posts_1.acceptedanswerid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
        inner join votes as votes_1
        on (postlinks_1.id = votes_1.id )
      inner join posthistory as posthistory_1
      on (postlinks_1.id = posthistory_1.id )
    inner join posts as posts_1
    on (votes_1.id = posts_1.id )
where postlinks_1.relatedpostid >= posthistory_1.posthistorytypeid
group by posthistory_1.contentlicense, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.revisionguid, postlinks_1.linktypeid, postlinks_1.relatedpostid, posts_1.acceptedanswerid, posts_1.posttypeid, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 28;
select  
  posts_1.contentlicense, 
  min(
    posts_1.creationdate), 
  posts_1.body, 
  users_1.id, 
  users_1.websiteurl, 
  users_1.accountid, 
  posts_1.tags, 
  users_1.displayname, 
  posts_1.title, 
  count(
    comments_1.text)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
    inner join users as users_1
      inner join posts as posts_1
      on (users_1.id = posts_1.id )
    on (comments_1.id = users_1.id )
where users_1.displayname is not NULL
group by posts_1.body, posts_1.contentlicense, posts_1.tags, posts_1.title, users_1.accountid, users_1.displayname, users_1.id, users_1.websiteurl
limit 4;
select  
  posts_1.acceptedanswerid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
      inner join comments as comments_1
      on (posts_1.id = comments_1.id )
    inner join votes as votes_1
    on (comments_1.id = votes_1.id )
where comments_1.contentlicense is not NULL
limit 3;
select  
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.aboutme is not NULL
limit 2;
select  
  posts_1.contentlicense, 
  postlinks_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join posts as posts_1
      inner join postlinks as postlinks_1
      on (posts_1.id = postlinks_1.id )
    on (votes_1.id = postlinks_1.id )
where posts_1.creationdate is not NULL
limit 21;
select  
  users_1.aboutme
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join postlinks as postlinks_1
    on (users_1.id = postlinks_1.id )
where users_1.websiteurl < users_1.aboutme
limit 26;
select  
  postlinks_1.id, 
  badges_1.userid, 
  postlinks_1.relatedpostid, 
  badges_1.date, 
  postlinks_1.linktypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
    inner join postlinks as postlinks_1
    on (badges_1.id = postlinks_1.id )
where postlinks_1.id is not NULL
limit 22;
select  
  votes_1.id, 
  sum(
    votes_1.postid), 
  avg(
    votes_1.votetypeid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
where votes_1.postid is not NULL
group by votes_1.id
limit 34;
select  
  votes_1.votetypeid, 
  users_1.websiteurl, 
  users_1.aboutme, 
  min(
    users_1.accountid), 
  users_1.id, 
  postlinks_1.postid, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join postlinks as postlinks_1
      inner join users as users_1
      on (postlinks_1.id = users_1.id )
    on (votes_1.id = users_1.id )
where users_1.aboutme is not NULL
group by postlinks_1.postid, users_1.aboutme, users_1.id, users_1.websiteurl, votes_1.votetypeid
limit 12;
select  
  posthistory_1.posthistorytypeid, 
  comments_1.id, 
  comments_1.postid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
      inner join users as users_1
        inner join posthistory as posthistory_2
        on (users_1.id = posthistory_2.id )
      on (posthistory_1.id = posthistory_2.id )
    inner join comments as comments_1
    on (posthistory_1.id = comments_1.id )
where users_1.profileimageurl is not NULL
limit 16;
select  
  posthistory_1.posthistorytypeid, 
  posthistory_1.revisionguid, 
  posthistory_1.id, 
  users_1.profileimageurl, 
  posthistory_1.posthistorytypeid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join posthistory as posthistory_1
    on (users_1.id = posthistory_1.id )
where posthistory_1.userdisplayname is not NULL
limit 21;
select  
  badges_1.class, 
  badges_1.id, 
  badges_1.name, 
  badges_1.id, 
  min(
    badges_1.date), 
  min(
    badges_1.userid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.id is not NULL
group by badges_1.class, badges_1.id, badges_1.name
limit 34;
select  
  badges_1.name, 
  avg(
    badges_1.class), 
  badges_1.id, 
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join badges as badges_1
    on (users_1.id = badges_1.id )
where badges_1.date is not NULL
group by badges_1.id, badges_1.name, users_1.creationdate
limit 35;
select  
  comments_1.id, 
  comments_1.userdisplayname, 
  comments_1.userdisplayname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.postid < comments_1.userid
limit 14;
select  
  posts_1.owneruserid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
      inner join posthistory as posthistory_1
        inner join users as users_1
        on (posthistory_1.id = users_1.id )
      on (posts_1.id = users_1.id )
    inner join comments as comments_1
    on (posthistory_1.id = comments_1.id )
where comments_1.creationdate > posthistory_1.creationdate
limit 31;
select  
  postlinks_1.postid, 
  comments_1.userid, 
  postlinks_1.id, 
  count(*), 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
    inner join posts as posts_1
        inner join comments as comments_1
        on (posts_1.id = comments_1.id )
      inner join postlinks as postlinks_1
      on (comments_1.id = postlinks_1.id )
    on (users_1.id = comments_1.id )
where comments_1.text is not NULL
group by comments_1.userid, postlinks_1.id, postlinks_1.postid
limit 37;
select  
  postlinks_1.linktypeid, 
  postlinks_1.id, 
  postlinks_1.creationdate, 
  postlinks_1.postid, 
  avg(
    postlinks_1.postid), 
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid, 
  postlinks_1.postid, 
  count(
    postlinks_1.id)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 35;
select  
  users_1.id, 
  votes_1.votetypeid, 
  users_1.websiteurl, 
  votes_1.postid, 
  users_1.displayname, 
  users_1.creationdate
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  votes as votes_1
    inner join users as users_1
    on (votes_1.id = users_1.id )
where users_1.creationdate is not NULL
limit 41;
select  
  comments_1.userdisplayname, 
  comments_1.contentlicense, 
  comments_1.userid, 
  min(
    comments_1.creationdate), 
  comments_1.userid, 
  comments_1.userdisplayname, 
  comments_1.userid, 
  comments_1.userid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.creationdate is not NULL
group by comments_1.contentlicense, comments_1.userdisplayname, comments_1.userid
limit 6;
select  
  comments_1.text, 
  comments_1.contentlicense, 
  comments_1.userid, 
  max(
    comments_1.postid), 
  comments_1.contentlicense, 
  max(
    comments_1.id), 
  count(
    comments_1.contentlicense), 
  comments_1.id, 
  max(
    comments_1.creationdate), 
  comments_1.userdisplayname, 
  comments_1.text
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.text is not NULL
group by comments_1.contentlicense, comments_1.id, comments_1.text, comments_1.userdisplayname, comments_1.userid
limit 4;
select  
  min(
    posts_1.owneruserid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.creationdate > posts_1.creationdate
limit 15;
select  
  posts_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.creationdate >= posts_1.creationdate
limit 35;
select  
  comments_1.creationdate, 
  comments_1.contentlicense, 
  comments_1.userdisplayname, 
  comments_1.id, 
  comments_1.contentlicense, 
  count(*), 
  comments_1.contentlicense, 
  comments_1.creationdate, 
  comments_1.userid, 
  comments_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  comments as comments_1
where comments_1.text is not NULL
group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.userdisplayname, comments_1.userid
limit 16;
select  
  posts_1.contentlicense, 
  posts_1.tags, 
  posts_1.parentid, 
  posts_1.parentid, 
  posts_1.parentid, 
  posts_1.ownerdisplayname, 
  min(
    posts_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.acceptedanswerid is not NULL
group by posts_1.contentlicense, posts_1.ownerdisplayname, posts_1.parentid, posts_1.tags
limit 5;
select  
  posthistory_1.creationdate, 
  posthistory_1.contentlicense, 
  posthistory_1.text, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.userdisplayname, 
  posthistory_1.contentlicense, 
  posthistory_1.userdisplayname, 
  max(
    posthistory_1.creationdate)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.revisionguid is not NULL
group by posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.posthistorytypeid, posthistory_1.text, posthistory_1.userdisplayname
limit 23;
select  
  avg(
    users_1.id), 
  users_1.websiteurl, 
  users_1.websiteurl
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  users as users_1
where users_1.location is not NULL
group by users_1.websiteurl
limit 23;
select  
  posthistory_1.id, 
  posthistory_1.creationdate, 
  posthistory_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posthistory as posthistory_1
where posthistory_1.userid <= posthistory_1.id
limit 25;
select  
  badges_1.name, 
  badges_1.class, 
  badges_1.date, 
  badges_1.userid, 
  badges_1.tagbased, 
  badges_1.name, 
  badges_1.date, 
  min(
    badges_1.date), 
  badges_1.tagbased, 
  badges_1.tagbased, 
  badges_1.tagbased, 
  badges_1.class, 
  badges_1.userid, 
  badges_1.id
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  badges as badges_1
where badges_1.tagbased is not NULL
group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
limit 5;
select  
  posts_1.body, 
  posts_1.contentlicense, 
  posts_1.posttypeid, 
  count(*), 
  count(
    posts_1.id), 
  posts_1.contentlicense, 
  posts_1.contentlicense
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  posts as posts_1
where posts_1.ownerdisplayname is not NULL
group by posts_1.body, posts_1.contentlicense, posts_1.posttypeid
limit 19;
