-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.resultid
from 
  circuits as circuits_1
    inner join constructors as constructors_1
      inner join constructors as constructors_2
        inner join results as results_1
        on (constructors_2.constructorid = results_1.resultid )
      on (constructors_1.constructorid = results_1.resultid )
    on (circuits_1.circuitid = constructors_2.constructorid )
where constructors_1.constructorid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    standings_1.position, 
    standings_1.wins
  from 
    standings as standings_1
  where standings_1.points is not NULL
  limit 1)
EXCEPT
(select  
    races_1.round, 
    races_1.round
  from 
    races as races_1
  where races_1.round >= races_1.raceid
  limit 25);
-- meta {"num_joins":3,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    circuits_1.lat, 
    races_1.round, 
    circuits_1.lng, 
    drivers_1.nationality, 
    races_1.year
  from 
    drivers as drivers_1
      inner join races as races_1
        inner join circuits as circuits_1
        on (races_1.raceid = circuits_1.circuitid )
      on (drivers_1.driverid = circuits_1.circuitid )
  where drivers_1.nationality is not NULL
  limit 42)
UNION
(select  
    constructor_results_1.points, 
    constructor_results_1.constructorid, 
    min(
      constructor_results_1.date), 
    drivers_2.forename, 
    constructor_results_1.constructorresultsid
  from 
    drivers as drivers_2
      inner join constructor_results as constructor_results_1
      on (drivers_2.driverid = constructor_results_1.constructorresultsid )
  where constructor_results_1.date is not NULL
  group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.raceid, drivers_2.driverid, drivers_2.forename
  limit 23);
-- meta {"num_joins":2,"num_aggregates":10,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    standings_1.position, 
    max(
      drivers_1.dob), 
    results_1.fastestlap, 
    drivers_1.driverid, 
    results_1.resultid, 
    max(
      standings_1.points), 
    min(
      standings_1.date), 
    standings_1.driverid, 
    count(*), 
    drivers_1.dob, 
    max(
      standings_1.date), 
    min(
      results_1.milliseconds), 
    drivers_1.driverref, 
    results_1.constructorid
  from 
    results as results_1
      inner join drivers as drivers_1
        inner join standings as standings_1
        on (drivers_1.driverid = standings_1.driverstandingsid )
      on (results_1.resultid = standings_1.driverstandingsid )
  where drivers_1.surname is not NULL
  group by drivers_1.dob, drivers_1.driverid, drivers_1.driverref, results_1.constructorid, results_1.fastestlap, results_1.resultid, standings_1.driverid, standings_1.position
  limit 35)
EXCEPT
(select  
    results_2.resultid, 
    min(
      results_2.date), 
    max(
      results_2.rank), 
    results_2.grid, 
    results_2.driverid, 
    avg(
      results_2.points), 
    max(
      results_2.date), 
    results_2.raceid, 
    count(*), 
    results_2.date, 
    min(
      results_2.date), 
    avg(
      results_2.rank), 
    min(
      results_2.date), 
    results_2.constructorid
  from 
    results as results_2
  where results_2.rank = results_2.milliseconds
  group by results_2.constructorid, results_2.date, results_2.driverid, results_2.grid, results_2.position, results_2.rank, results_2.statusid
  limit 13);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  count(*), 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date < constructor_standings_1.date
group by constructor_standings_1.constructorid, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 7;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    drivers_1.driverref, 
    drivers_1.dob
  from 
    drivers as drivers_1
  where drivers_1.surname is not NULL
  limit 19)
INTERSECT
(select  
    sum(
      constructor_standings_1.wins), 
    max(
      constructor_results_1.date)
  from 
    constructor_standings as constructor_standings_1
      inner join constructor_results as constructor_results_1
      on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
  where constructor_results_1.date is not NULL
  group by constructor_results_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.position, constructor_standings_1.raceid
  limit 28);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.raceid, 
  constructor_standings_2.wins, 
  constructor_standings_1.wins, 
  constructor_standings_2.constructorstandingsid, 
  constructor_standings_2.date, 
  min(
    constructor_standings_2.date)
from 
  constructor_standings as constructor_standings_1
    inner join constructor_standings as constructor_standings_2
    on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
where constructor_standings_1.position is not NULL
group by constructor_standings_1.raceid, constructor_standings_1.wins, constructor_standings_2.constructorstandingsid, constructor_standings_2.date, constructor_standings_2.wins
limit 40;
-- meta {"num_joins":5,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    results_1.date, 
    standings_1.date
  from 
    circuits as circuits_1
          inner join results as results_1
          on (circuits_1.circuitid = results_1.resultid )
        inner join standings as standings_1
        on (circuits_1.circuitid = standings_1.driverstandingsid )
      inner join constructors as constructors_1
      on (circuits_1.circuitid = constructors_1.constructorid )
  where constructors_1.constructorid is not NULL
  limit 28)
INTERSECT
(select  
    results_3.date, 
    results_2.date
  from 
    constructors as constructors_2
        inner join results as results_2
        on (constructors_2.constructorid = results_2.resultid )
      inner join results as results_3
      on (results_2.resultid = results_3.resultid )
  where results_3.milliseconds is not NULL
  group by constructors_2.constructorref, constructors_2.name, results_2.fastestlap, results_2.grid, results_2.raceid, results_3.constructorid, results_3.driverid, results_3.laps, results_3.rank
  limit 20);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    races_1.round, 
    races_1.circuitid, 
    races_1.raceid
  from 
    races as races_1
  where races_1.time is not NULL
  limit 42)
INTERSECT
(select  
    circuits_1.circuitid, 
    circuits_1.circuitid, 
    circuits_1.circuitid
  from 
    circuits as circuits_1
  where circuits_1.circuitref is not NULL
  limit 28);
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructors_1.constructorref
  from 
    constructor_results as constructor_results_1
        inner join drivers as drivers_1
          inner join races as races_1
          on (drivers_1.driverid = races_1.raceid )
        on (constructor_results_1.constructorresultsid = races_1.raceid )
      inner join constructors as constructors_1
        inner join constructors as constructors_2
        on (constructors_1.constructorid = constructors_2.constructorid )
      on (drivers_1.driverid = constructors_1.constructorid )
  where constructors_1.constructorref is not NULL
  limit 9)
EXCEPT
(select  
    constructors_3.name
  from 
    constructors as constructors_3
  where constructors_3.name is not NULL
  group by constructors_3.constructorid, constructors_3.constructorref, constructors_3.nationality
  limit 1);
-- meta {"num_joins":3,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructors_1.nationality, 
    constructors_1.constructorid, 
    constructor_results_1.constructorid, 
    max(
      constructor_results_1.points), 
    max(
      constructor_results_1.date), 
    constructors_1.constructorref, 
    constructor_results_1.points, 
    constructors_1.name, 
    constructor_results_1.date, 
    constructor_results_1.raceid, 
    constructor_results_1.constructorresultsid
  from 
    constructor_results as constructor_results_1
      inner join constructors as constructors_1
      on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
  where constructor_results_1.points is not NULL
  group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid, constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
  limit 2)
UNION
(select  
    count(*), 
    constructor_results_2.constructorid, 
    constructor_results_2.constructorid, 
    max(
      constructor_results_2.points), 
    max(
      standings_1.date), 
    max(
      qualifying_1.raceid), 
    standings_1.points, 
    max(
      qualifying_1.date), 
    constructor_results_2.date, 
    constructor_results_2.constructorid, 
    min(
      standings_1.date)
  from 
    qualifying as qualifying_1
        inner join constructor_results as constructor_results_2
        on (qualifying_1.qualifyid = constructor_results_2.constructorresultsid )
      inner join standings as standings_1
      on (constructor_results_2.constructorresultsid = standings_1.driverstandingsid )
  where standings_1.raceid is not NULL
  group by constructor_results_2.constructorid, qualifying_1.constructorid, standings_1.position
  limit 40);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    standings_1.wins, 
    standings_2.position, 
    max(
      standings_2.date), 
    standings_2.raceid
  from 
    standings as standings_1
      inner join standings as standings_2
      on (standings_1.driverstandingsid = standings_2.driverstandingsid )
  where standings_2.points is not NULL
  group by standings_1.wins, standings_2.position, standings_2.raceid
  limit 3)
UNION
(select  
    constructor_standings_1.constructorid, 
    constructor_standings_1.position, 
    max(
      constructor_standings_1.date), 
    constructor_standings_1.wins
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.raceid is not NULL
  limit 37);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    results_1.points, 
    results_1.statusid, 
    results_1.position, 
    results_1.fastestlap, 
    results_1.positionorder
  from 
    results as results_1
  where results_1.resultid is not NULL
  limit 23)
INTERSECT
(select  
    min(
      constructor_results_1.constructorresultsid), 
    constructor_results_1.constructorresultsid, 
    constructor_results_1.points, 
    count(*), 
    constructor_results_1.constructorid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorid is not NULL
  group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
  limit 7);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.date, 
  races_1.raceid, 
  results_1.grid, 
  races_1.year, 
  races_1.round
from 
  standings as standings_1
      inner join races as races_1
      on (standings_1.driverstandingsid = races_1.raceid )
    inner join results as results_1
    on (standings_1.driverstandingsid = results_1.resultid )
where results_1.constructorid is not NULL
limit 41;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructors_1.constructorref, 
    constructors_1.name, 
    constructors_1.constructorid
  from 
    constructors as constructors_1
  where constructors_1.constructorid is not NULL
  limit 3)
INTERSECT
(select  
    avg(
      constructor_standings_1.wins), 
    min(
      constructor_standings_1.constructorstandingsid), 
    constructor_standings_1.position
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.constructorstandingsid is not NULL
  group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.position
  limit 41);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    qualifying_1.date
  from 
    qualifying as qualifying_1
  where qualifying_1.driverid is not NULL
  limit 36)
EXCEPT
(select  
    avg(
      circuits_1.lat)
  from 
    circuits as circuits_1
  where circuits_1.lat is not NULL
  group by circuits_1.alt
  limit 22);
-- meta {"num_joins":1,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.raceid, 
  results_1.number, 
  constructor_standings_1.points, 
  count(*), 
  constructor_standings_1.date, 
  results_1.grid, 
  constructor_standings_1.wins, 
  sum(
    results_1.position), 
  constructor_standings_1.constructorid, 
  results_1.driverid, 
  results_1.laps, 
  results_1.resultid, 
  min(
    results_1.fastestlap), 
  count(
    constructor_standings_1.constructorid), 
  results_1.date, 
  results_1.position, 
  max(
    results_1.raceid), 
  constructor_standings_1.position, 
  results_1.positionorder, 
  results_1.milliseconds, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
    inner join results as results_1
    on (constructor_standings_1.constructorstandingsid = results_1.resultid )
where constructor_standings_1.points = results_1.rank
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins, results_1.date, results_1.driverid, results_1.grid, results_1.laps, results_1.milliseconds, results_1.number, results_1.position, results_1.positionorder, results_1.resultid
limit 24;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    drivers_1.dob), 
  min(
    drivers_1.dob), 
  constructor_standings_1.points, 
  drivers_1.nationality, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
    inner join drivers as drivers_1
    on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
where drivers_1.nationality is not NULL
group by constructor_standings_1.points, constructor_standings_1.position, drivers_1.nationality
limit 33;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_results_1.date, 
    constructor_results_1.points, 
    constructor_results_1.raceid, 
    constructor_results_1.constructorid, 
    constructor_results_1.constructorresultsid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorresultsid is not NULL
  limit 26)
EXCEPT
(select  
    constructor_standings_1.date, 
    constructor_standings_1.points, 
    qualifying_2.qualifyid, 
    races_1.year, 
    races_1.raceid
  from 
    constructor_standings as constructor_standings_1
        inner join races as races_1
          inner join qualifying as qualifying_1
          on (races_1.raceid = qualifying_1.qualifyid )
        on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
      inner join qualifying as qualifying_2
      on (constructor_standings_1.constructorstandingsid = qualifying_2.qualifyid )
  where qualifying_1.position is not NULL
  limit 6);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date, 
  min(
    constructor_standings_1.date), 
  constructors_1.constructorid
from 
  qualifying as qualifying_1
      inner join constructor_standings as constructor_standings_1
      on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
    inner join constructors as constructors_1
    on (qualifying_1.qualifyid = constructors_1.constructorid )
where constructor_standings_1.points > constructor_standings_1.points
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructors_1.constructorid, qualifying_1.number
limit 5;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    max(
      results_1.date), 
    results_1.position
  from 
    results as results_1
  where results_1.constructorid is not NULL
  group by results_1.position
  limit 35)
EXCEPT
(select  
    max(
      results_2.date), 
    results_2.rank
  from 
    results as results_2
  where results_2.driverid >= results_2.positionorder
  limit 34);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.name, 
  max(
    constructors_1.constructorid), 
  sum(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 23;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_results_1.constructorid, 
    max(
      constructor_results_1.constructorresultsid), 
    constructor_results_1.date
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.raceid is not NULL
  group by constructor_results_1.constructorid, constructor_results_1.date
  limit 6)
EXCEPT
(select  
    constructor_standings_1.wins, 
    count(
      constructor_standings_1.position), 
    constructor_standings_1.date
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.wins is not NULL
  limit 10);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    avg(
      circuits_1.lng), 
    circuits_1.lng, 
    circuits_1.circuitid
  from 
    circuits as circuits_1
  where circuits_1.circuitid is not NULL
  group by circuits_1.circuitid, circuits_1.lng
  limit 10)
INTERSECT
(select  
    max(
      circuits_2.alt), 
    constructor_results_1.points, 
    constructor_results_1.raceid
  from 
    circuits as circuits_2
      inner join constructor_results as constructor_results_1
      on (circuits_2.circuitid = constructor_results_1.constructorresultsid )
  where constructor_results_1.raceid is not NULL
  limit 33);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    qualifying_1.constructorid, 
    qualifying_1.position, 
    qualifying_1.driverid
  from 
    qualifying as qualifying_1
  where qualifying_1.date = qualifying_1.date
  limit 17)
EXCEPT
(select  
    max(
      drivers_1.driverid), 
    max(
      drivers_1.dob), 
    drivers_1.driverid
  from 
    drivers as drivers_1
  where drivers_1.surname is not NULL
  group by drivers_1.dob, drivers_1.forename, drivers_1.nationality, drivers_1.surname
  limit 21);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name, 
  avg(
    circuits_1.lng), 
  count(*)
from 
  circuits as circuits_1
where circuits_1.country is not NULL
group by circuits_1.name
limit 36;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    results_1.fastestlap, 
    results_1.statusid, 
    results_1.milliseconds, 
    max(
      results_1.laps), 
    results_1.date, 
    results_1.rank, 
    results_1.positionorder
  from 
    results as results_1
  where results_1.date is not NULL
  group by results_1.date, results_1.fastestlap, results_1.milliseconds, results_1.positionorder, results_1.rank, results_1.statusid
  limit 16)
EXCEPT
(select  
    standings_1.points, 
    standings_1.wins, 
    standings_1.points, 
    count(*), 
    standings_1.date, 
    standings_1.points, 
    standings_1.position
  from 
    standings as standings_1
  where standings_1.points is not NULL
  group by standings_1.driverstandingsid
  limit 4);
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    results_1.driverid, 
    constructors_1.name, 
    max(
      results_1.date)
  from 
    results as results_1
      inner join constructors as constructors_1
      on (results_1.resultid = constructors_1.constructorid )
  where constructors_1.name is not NULL
  group by constructors_1.name, results_1.driverid
  limit 38)
EXCEPT
(select  
    qualifying_1.constructorid, 
    drivers_1.driverref, 
    max(
      drivers_1.dob)
  from 
    drivers as drivers_1
      inner join qualifying as qualifying_1
        inner join drivers as drivers_2
        on (qualifying_1.qualifyid = drivers_2.driverid )
      on (drivers_1.driverid = qualifying_1.qualifyid )
  where qualifying_1.date is not NULL
  limit 12);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    standings_2.driverid, 
    standings_1.driverid
  from 
    standings as standings_1
      inner join standings as standings_2
      on (standings_1.driverstandingsid = standings_2.driverstandingsid )
  where standings_2.date <= standings_1.date
  limit 7)
UNION
(select  
    min(
      results_1.date), 
    results_1.grid
  from 
    results as results_1
  where results_1.driverid >= results_1.constructorid
  limit 5);
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid
from 
  circuits as circuits_1
    inner join drivers as drivers_1
        inner join standings as standings_1
          inner join results as results_1
          on (standings_1.driverstandingsid = results_1.resultid )
        on (drivers_1.driverid = results_1.resultid )
      inner join results as results_2
      on (drivers_1.driverid = results_2.resultid )
    on (circuits_1.circuitid = results_2.resultid )
where results_2.points >= circuits_1.lat
limit 3;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    qualifying_1.date
  from 
    qualifying as qualifying_1
  where qualifying_1.raceid = qualifying_1.driverid
  limit 18)
EXCEPT
(select  
    races_1.date
  from 
    qualifying as qualifying_2
      inner join races as races_1
      on (qualifying_2.qualifyid = races_1.raceid )
  where qualifying_2.raceid is not NULL
  group by qualifying_2.number, qualifying_2.raceid, races_1.name, races_1.raceid
  limit 26);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    races_1.time, 
    max(
      races_1.date)
  from 
    races as races_1
      inner join constructors as constructors_1
      on (races_1.raceid = constructors_1.constructorid )
  where races_1.date > races_1.date
  group by races_1.time
  limit 7)
INTERSECT
(select  
    count(*), 
    max(
      qualifying_1.date)
  from 
    qualifying as qualifying_1
  where qualifying_1.date is not NULL
  limit 34);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    standings_1.points, 
    standings_1.date
  from 
    standings as standings_1
  where standings_1.points is not NULL
  limit 32)
UNION
(select  
    max(
      races_1.raceid), 
    races_1.date
  from 
    races as races_1
  where races_1.round is not NULL
  group by races_1.name
  limit 21);
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    standings_1.points, 
    qualifying_1.raceid, 
    qualifying_1.qualifyid, 
    max(
      qualifying_1.raceid), 
    standings_1.wins, 
    qualifying_1.number, 
    qualifying_1.constructorid
  from 
    standings as standings_1
      inner join qualifying as qualifying_1
      on (standings_1.driverstandingsid = qualifying_1.qualifyid )
  where qualifying_1.driverid is not NULL
  group by qualifying_1.constructorid, qualifying_1.number, qualifying_1.qualifyid, qualifying_1.raceid, standings_1.points, standings_1.wins
  limit 38)
INTERSECT
(select  
    standings_2.points, 
    max(
      standings_2.position), 
    standings_2.position, 
    min(
      standings_2.driverstandingsid), 
    standings_2.wins, 
    standings_2.wins, 
    standings_2.position
  from 
    standings as standings_2
  where standings_2.points <= standings_2.points
  group by standings_2.points, standings_2.position, standings_2.raceid, standings_2.wins
  limit 4);
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    min(
      drivers_1.dob), 
    constructors_1.name, 
    drivers_1.surname, 
    drivers_1.forename, 
    min(
      drivers_1.dob), 
    constructors_1.nationality
  from 
    constructors as constructors_1
      inner join drivers as drivers_1
      on (constructors_1.constructorid = drivers_1.driverid )
  where constructors_1.constructorid is not NULL
  group by constructors_1.name, constructors_1.nationality, drivers_1.forename, drivers_1.surname
  limit 39)
EXCEPT
(select  
    max(
      drivers_2.dob), 
    drivers_2.forename, 
    drivers_2.forename, 
    drivers_2.nationality, 
    min(
      drivers_2.dob), 
    drivers_2.nationality
  from 
    drivers as drivers_2
  where drivers_2.driverref is not NULL
  group by drivers_2.driverref, drivers_2.forename, drivers_2.surname
  limit 21);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    standings_1.date
  from 
    standings as standings_1
      inner join constructor_standings as constructor_standings_1
      on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
  where constructor_standings_1.points = standings_1.points
  limit 23)
INTERSECT
(select  
    drivers_1.dob
  from 
    drivers as drivers_1
  where drivers_1.driverid is not NULL
  limit 17);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_results_1.constructorresultsid, 
    constructor_results_1.raceid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.points is not NULL
  limit 32)
EXCEPT
(select  
    avg(
      constructor_standings_1.position), 
    constructor_standings_1.constructorid
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.points > constructor_standings_1.points
  limit 27);
-- meta {"num_joins":4,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    drivers_1.dob, 
    drivers_1.nationality
  from 
    results as results_1
      inner join drivers as drivers_1
      on (results_1.resultid = drivers_1.driverid )
  where drivers_1.nationality is not NULL
  limit 39)
UNION
(select  
    constructor_standings_2.date, 
    count(
      results_2.milliseconds)
  from 
    results as results_2
        inner join constructor_results as constructor_results_1
        on (results_2.resultid = constructor_results_1.constructorresultsid )
      inner join constructor_standings as constructor_standings_1
        inner join constructor_standings as constructor_standings_2
        on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
      on (results_2.resultid = constructor_standings_1.constructorstandingsid )
  where constructor_standings_2.constructorid is not NULL
  limit 7);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    qualifying_1.number, 
    qualifying_1.constructorid
  from 
    qualifying as qualifying_1
  where qualifying_1.date is not NULL
  limit 16)
INTERSECT
(select  
    min(
      constructor_results_1.date), 
    constructor_results_1.constructorresultsid
  from 
    constructor_results as constructor_results_1
      inner join constructor_standings as constructor_standings_1
      on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
  where constructor_standings_1.constructorstandingsid is not NULL
  limit 9);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    max(
      qualifying_1.raceid)
  from 
    qualifying as qualifying_1
  where qualifying_1.driverid > qualifying_1.qualifyid
  limit 37)
INTERSECT
(select  
    max(
      qualifying_2.number)
  from 
    circuits as circuits_1
      inner join qualifying as qualifying_2
      on (circuits_1.circuitid = qualifying_2.qualifyid )
  where qualifying_2.number is not NULL
  group by circuits_1.location
  limit 10);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_results_1.raceid, 
    constructor_results_1.points, 
    constructor_results_1.constructorresultsid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorid is not NULL
  limit 20)
UNION
(select  
    drivers_1.driverid, 
    max(
      drivers_1.dob), 
    drivers_1.driverid
  from 
    drivers as drivers_1
  where drivers_1.nationality is not NULL
  limit 36);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  min(
    constructor_standings_1.raceid), 
  max(
    constructor_standings_1.raceid), 
  constructor_standings_1.points, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position < constructor_standings_1.wins
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 27;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    results_1.resultid, 
    results_1.number, 
    results_1.milliseconds, 
    results_1.raceid, 
    min(
      results_1.date), 
    sum(
      results_1.driverid), 
    results_1.statusid, 
    results_1.points
  from 
    results as results_1
  where results_1.number <= results_1.points
  group by results_1.milliseconds, results_1.number, results_1.points, results_1.raceid, results_1.resultid, results_1.statusid
  limit 16)
INTERSECT
(select  
    constructor_results_1.raceid, 
    count(
      constructor_results_1.raceid), 
    sum(
      constructor_results_1.points), 
    count(*), 
    max(
      constructor_results_1.date), 
    avg(
      constructor_results_1.constructorresultsid), 
    constructor_results_1.constructorresultsid, 
    constructor_results_1.points
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.date is not NULL
  limit 15);
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    qualifying_2.raceid, 
    max(
      qualifying_1.date), 
    qualifying_1.number, 
    qualifying_1.driverid, 
    qualifying_2.number, 
    qualifying_2.position
  from 
    qualifying as qualifying_1
        inner join circuits as circuits_1
        on (qualifying_1.qualifyid = circuits_1.circuitid )
      inner join qualifying as qualifying_2
      on (circuits_1.circuitid = qualifying_2.qualifyid )
  where circuits_1.circuitid is not NULL
  group by qualifying_1.driverid, qualifying_1.number, qualifying_2.number, qualifying_2.position, qualifying_2.raceid
  limit 13)
INTERSECT
(select  
    standings_1.raceid, 
    max(
      standings_1.date), 
    max(
      standings_1.position), 
    standings_1.driverid, 
    standings_1.driverid, 
    standings_1.driverid
  from 
    standings as standings_1
  where standings_1.driverid is not NULL
  group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
  limit 38);
-- meta {"num_joins":4,"num_aggregates":6,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructors_1.constructorid, 
    constructors_1.nationality, 
    max(
      constructors_1.constructorid), 
    constructors_1.name, 
    sum(
      constructors_1.constructorid), 
    constructors_1.constructorref, 
    min(
      constructors_1.constructorid)
  from 
    constructors as constructors_1
  where constructors_1.name <= constructors_1.nationality
  group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
  limit 39)
UNION
(select  
    results_1.grid, 
    count(
      results_2.constructorid), 
    max(
      qualifying_1.qualifyid), 
    max(
      qualifying_2.driverid), 
    avg(
      results_2.resultid), 
    max(
      qualifying_1.position), 
    count(*)
  from 
    constructor_standings as constructor_standings_1
        inner join results as results_1
          inner join qualifying as qualifying_1
            inner join results as results_2
            on (qualifying_1.qualifyid = results_2.resultid )
          on (results_1.resultid = qualifying_1.qualifyid )
        on (constructor_standings_1.constructorstandingsid = results_2.resultid )
      inner join qualifying as qualifying_2
      on (constructor_standings_1.constructorstandingsid = qualifying_2.qualifyid )
  where results_2.constructorid is not NULL
  limit 14);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructors_1.constructorid, 
    max(
      constructors_1.constructorid), 
    constructors_1.name, 
    avg(
      constructors_1.constructorid)
  from 
    constructors as constructors_1
  where constructors_1.constructorid >= constructors_1.constructorid
  group by constructors_1.constructorid, constructors_1.name
  limit 38)
UNION
(select  
    constructor_standings_1.constructorstandingsid, 
    min(
      constructor_standings_1.constructorid), 
    max(
      constructor_standings_1.date), 
    avg(
      constructor_standings_1.position)
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.constructorid is not NULL
  limit 10);
-- meta {"num_joins":2,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    results_1.laps, 
    results_1.points, 
    max(
      results_1.statusid)
  from 
    results as results_1
  where results_1.points <= results_1.number
  group by results_1.laps, results_1.points
  limit 31)
UNION
(select  
    results_2.statusid, 
    results_2.number, 
    count(*)
  from 
    results as results_2
        inner join circuits as circuits_1
        on (results_2.resultid = circuits_1.circuitid )
      inner join drivers as drivers_1
      on (results_2.resultid = drivers_1.driverid )
  where circuits_1.country is not NULL
  group by results_2.date, results_2.positionorder
  limit 13);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    drivers_1.nationality, 
    drivers_1.driverref, 
    drivers_2.nationality, 
    drivers_2.driverref
  from 
    drivers as drivers_1
      inner join drivers as drivers_2
      on (drivers_1.driverid = drivers_2.driverid )
  where drivers_2.driverid is not NULL
  limit 17)
EXCEPT
(select  
    max(
      constructor_standings_1.date), 
    sum(
      constructor_standings_1.points), 
    avg(
      constructor_standings_1.points), 
    max(
      constructor_standings_1.date)
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.points < constructor_standings_1.points
  limit 11);
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_standings_1.date, 
    constructor_standings_1.raceid, 
    min(
      constructor_standings_1.points), 
    constructor_standings_1.points, 
    constructor_standings_1.wins, 
    constructor_standings_1.constructorid, 
    max(
      constructor_standings_1.constructorstandingsid)
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.position is not NULL
  group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.wins
  limit 24)
EXCEPT
(select  
    standings_1.date, 
    count(
      constructor_standings_2.wins), 
    min(
      standings_1.points), 
    min(
      standings_1.points), 
    standings_1.driverid, 
    constructor_standings_2.wins, 
    min(
      standings_1.driverstandingsid)
  from 
    constructor_standings as constructor_standings_2
        inner join constructor_results as constructor_results_1
        on (constructor_standings_2.constructorstandingsid = constructor_results_1.constructorresultsid )
      inner join standings as standings_1
      on (constructor_standings_2.constructorstandingsid = standings_1.driverstandingsid )
  where standings_1.wins is not NULL
  group by constructor_standings_2.points, constructor_standings_2.position, standings_1.wins
  limit 37);
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_standings_1.wins
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.constructorstandingsid is not NULL
  limit 24)
INTERSECT
(select  
    min(
      constructor_standings_2.points)
  from 
    results as results_1
          inner join constructor_standings as constructor_standings_2
          on (results_1.resultid = constructor_standings_2.constructorstandingsid )
        inner join constructor_results as constructor_results_1
        on (results_1.resultid = constructor_results_1.constructorresultsid )
      inner join constructor_standings as constructor_standings_3
      on (constructor_results_1.constructorresultsid = constructor_standings_3.constructorstandingsid )
  where constructor_standings_3.wins is not NULL
  group by constructor_standings_2.raceid
  limit 10);
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    results_1.date), 
  results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  min(
    results_1.milliseconds)
from 
  constructor_results as constructor_results_1
      inner join races as races_1
      on (constructor_results_1.constructorresultsid = races_1.raceid )
    inner join results as results_1
    on (races_1.raceid = results_1.resultid )
where races_1.name <= races_1.time
group by constructor_results_1.constructorresultsid, constructor_results_1.date, results_1.date
limit 21;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructors_1.constructorref, 
    constructors_1.name, 
    constructors_1.nationality
  from 
    constructors as constructors_1
  where constructors_1.constructorid is not NULL
  limit 32)
INTERSECT
(select  
    constructors_2.nationality, 
    constructors_2.constructorref, 
    constructors_2.constructorref
  from 
    constructors as constructors_2
  where constructors_2.constructorref is not NULL
  group by constructors_2.name, constructors_2.nationality
  limit 27);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_standings_1.position
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.constructorstandingsid is not NULL
  limit 39)
INTERSECT
(select  
    circuits_1.circuitid
  from 
    circuits as circuits_1
  where circuits_1.alt is not NULL
  limit 18);
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    max(
      results_1.position), 
    count(
      results_1.driverid)
  from 
    results as results_1
  where results_1.driverid is not NULL
  limit 33)
INTERSECT
(select  
    avg(
      circuits_1.lat), 
    count(*)
  from 
    circuits as circuits_1
      inner join qualifying as qualifying_1
        inner join constructor_results as constructor_results_1
        on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
      on (circuits_1.circuitid = qualifying_1.qualifyid )
  where constructor_results_1.constructorid is not NULL
  limit 5);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.nationality, 
  races_1.name, 
  drivers_1.code, 
  drivers_1.driverid, 
  races_1.circuitid
from 
  races as races_1
    inner join drivers as drivers_1
    on (races_1.raceid = drivers_1.driverid )
where races_1.year is not NULL
limit 13;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    results_1.points
  from 
    results as results_1
  where results_1.milliseconds is not NULL
  limit 16)
INTERSECT
(select  
    min(
      races_1.date)
  from 
    races as races_1
      inner join drivers as drivers_1
      on (races_1.raceid = drivers_1.driverid )
  where drivers_1.dob is not NULL
  limit 19);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    results_1.raceid
  from 
    results as results_1
  where results_1.positionorder > results_1.driverid
  limit 21)
INTERSECT
(select  
    drivers_1.driverid
  from 
    drivers as drivers_1
  where drivers_1.forename is not NULL
  group by drivers_1.dob, drivers_1.driverid, drivers_1.forename, drivers_1.nationality
  limit 5);
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructors_1.constructorref
  from 
    constructors as constructors_1
      inner join standings as standings_1
        inner join circuits as circuits_1
        on (standings_1.driverstandingsid = circuits_1.circuitid )
      on (constructors_1.constructorid = standings_1.driverstandingsid )
  where constructors_1.nationality is not NULL
  limit 6)
INTERSECT
(select  
    min(
      qualifying_1.qualifyid)
  from 
    qualifying as qualifying_1
  where qualifying_1.qualifyid is not NULL
  group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.raceid
  limit 38);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    avg(
      constructors_1.constructorid), 
    constructors_1.name, 
    sum(
      constructors_1.constructorid), 
    constructors_1.nationality
  from 
    constructors as constructors_1
  where constructors_1.name is not NULL
  group by constructors_1.name, constructors_1.nationality
  limit 27)
INTERSECT
(select  
    avg(
      drivers_1.driverid), 
    drivers_1.forename, 
    avg(
      drivers_1.driverid), 
    drivers_1.code
  from 
    drivers as drivers_1
  where drivers_1.driverid > drivers_1.driverid
  limit 18);
-- meta {"num_joins":0,"num_aggregates":6,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    drivers_1.forename, 
    drivers_1.driverid, 
    drivers_1.code, 
    min(
      drivers_1.dob), 
    avg(
      drivers_1.driverid), 
    count(
      drivers_1.nationality), 
    drivers_1.driverref, 
    drivers_1.surname, 
    drivers_1.nationality, 
    max(
      drivers_1.driverid), 
    min(
      drivers_1.dob)
  from 
    drivers as drivers_1
  where drivers_1.forename is not NULL
  group by drivers_1.code, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
  limit 18)
UNION
(select  
    count(
      standings_1.date), 
    standings_1.raceid, 
    max(
      standings_1.points), 
    max(
      standings_1.date), 
    sum(
      standings_1.raceid), 
    min(
      standings_1.wins), 
    max(
      standings_1.date), 
    avg(
      standings_1.raceid), 
    max(
      standings_1.points), 
    min(
      standings_1.raceid), 
    max(
      standings_1.date)
  from 
    standings as standings_1
  where standings_1.driverstandingsid > standings_1.wins
  limit 21);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructors_1.constructorref, 
    constructor_results_1.constructorresultsid
  from 
    results as results_1
        inner join constructors as constructors_1
        on (results_1.resultid = constructors_1.constructorid )
      inner join constructor_results as constructor_results_1
      on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
  where results_1.fastestlap >= constructor_results_1.points
  limit 13)
UNION
(select  
    min(
      results_2.date), 
    results_2.statusid
  from 
    results as results_2
  where results_2.rank >= results_2.number
  limit 2);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    circuits_1.name, 
    circuits_1.country
  from 
    circuits as circuits_1
  where circuits_1.circuitid = circuits_1.circuitid
  limit 5)
UNION
(select  
    races_1.time, 
    races_1.time
  from 
    races as races_1
  where races_1.time is not NULL
  limit 26);
-- meta {"num_joins":5,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    max(
      qualifying_1.date), 
    constructor_standings_1.wins
  from 
    circuits as circuits_1
        inner join qualifying as qualifying_1
        on (circuits_1.circuitid = qualifying_1.qualifyid )
      inner join constructor_standings as constructor_standings_1
      on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
  where constructor_standings_1.wins is not NULL
  group by constructor_standings_1.wins
  limit 4)
INTERSECT
(select  
    max(
      constructor_results_2.date), 
    races_1.raceid
  from 
    races as races_1
          inner join constructor_results as constructor_results_1
          on (races_1.raceid = constructor_results_1.constructorresultsid )
        inner join constructor_results as constructor_results_2
        on (races_1.raceid = constructor_results_2.constructorresultsid )
      inner join drivers as drivers_1
      on (constructor_results_1.constructorresultsid = drivers_1.driverid )
  where drivers_1.nationality is not NULL
  limit 26);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    max(
      constructor_results_1.date)
  from 
    constructor_results as constructor_results_1
      inner join standings as standings_1
      on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
  where constructor_results_1.constructorresultsid is not NULL
  limit 11)
UNION
(select  
    max(
      constructor_results_2.date)
  from 
    constructor_results as constructor_results_2
  where constructor_results_2.date is not NULL
  group by constructor_results_2.constructorid, constructor_results_2.constructorresultsid, constructor_results_2.points, constructor_results_2.raceid
  limit 5);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins, 
  avg(
    constructor_standings_1.points), 
  min(
    standings_1.points), 
  standings_1.raceid
from 
  standings as standings_1
    inner join constructor_standings as constructor_standings_1
    on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.wins, standings_1.raceid
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    drivers_1.driverid
  from 
    drivers as drivers_1
  where drivers_1.forename < drivers_1.nationality
  limit 20)
INTERSECT
(select  
    avg(
      standings_1.points)
  from 
    standings as standings_1
  where standings_1.points is not NULL
  limit 16);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_standings_1.points
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.raceid is not NULL
  limit 18)
INTERSECT
(select  
    min(
      constructor_results_1.date)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.points is not NULL
  limit 11);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    qualifying_1.position
  from 
    qualifying as qualifying_1
  where qualifying_1.date is not NULL
  limit 15)
UNION
(select  
    drivers_1.driverid
  from 
    drivers as drivers_1
  where drivers_1.forename is not NULL
  limit 5);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    circuits_1.country, 
    max(
      circuits_1.lng), 
    circuits_1.name, 
    circuits_1.lat, 
    circuits_1.lng, 
    circuits_1.circuitid, 
    circuits_1.alt, 
    sum(
      circuits_1.circuitid), 
    min(
      circuits_1.circuitid), 
    count(*), 
    circuits_1.location, 
    circuits_1.circuitref
  from 
    circuits as circuits_1
  where circuits_1.alt is not NULL
  group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.location, circuits_1.name
  limit 39)
EXCEPT
(select  
    min(
      constructor_results_1.date), 
    avg(
      constructor_results_1.points), 
    max(
      constructor_results_1.raceid), 
    constructor_results_1.points, 
    count(
      constructor_results_1.points), 
    constructor_results_1.constructorid, 
    max(
      constructor_results_1.date), 
    avg(
      constructor_results_1.raceid), 
    max(
      constructor_results_1.constructorresultsid), 
    count(
      constructor_results_1.constructorid), 
    avg(
      constructor_results_1.points), 
    min(
      constructor_results_1.date)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.raceid is not NULL
  limit 6);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    qualifying_1.number, 
    qualifying_1.raceid, 
    qualifying_1.position
  from 
    qualifying as qualifying_1
  where qualifying_1.driverid is not NULL
  limit 16)
INTERSECT
(select  
    races_1.year, 
    races_1.circuitid, 
    races_1.year
  from 
    races as races_1
  where races_1.year is not NULL
  limit 40);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    qualifying_1.raceid)
from 
  qualifying as qualifying_1
where qualifying_1.date < qualifying_1.date
limit 3;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_results_2.raceid, 
    constructor_standings_1.points, 
    constructor_standings_1.constructorid, 
    constructor_results_2.constructorid, 
    constructor_results_1.raceid, 
    constructor_standings_1.date, 
    constructor_standings_1.wins, 
    constructor_results_2.constructorresultsid, 
    constructor_results_1.constructorresultsid, 
    constructor_results_2.points, 
    constructor_results_1.constructorid, 
    count(*)
  from 
    constructor_results as constructor_results_1
        inner join constructor_results as constructor_results_2
        on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
      inner join constructor_standings as constructor_standings_1
      on (constructor_results_2.constructorresultsid = constructor_standings_1.constructorstandingsid )
  where constructor_standings_1.points is not NULL
  group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_results_2.constructorid, constructor_results_2.constructorresultsid, constructor_results_2.points, constructor_results_2.raceid, constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.wins
  limit 19)
UNION
(select  
    constructor_results_3.raceid, 
    constructor_results_3.points, 
    constructor_results_3.constructorid, 
    constructor_results_3.raceid, 
    constructor_results_3.constructorresultsid, 
    constructor_results_3.date, 
    constructor_results_3.constructorresultsid, 
    avg(
      constructor_results_3.raceid), 
    constructor_results_3.constructorid, 
    constructor_results_3.points, 
    constructor_results_3.raceid, 
    max(
      constructor_results_3.constructorid)
  from 
    constructor_results as constructor_results_3
  where constructor_results_3.constructorid is not NULL
  group by constructor_results_3.constructorresultsid
  limit 20);
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructors_1.constructorid, 
    constructor_standings_1.raceid, 
    constructor_standings_1.constructorid, 
    constructors_1.name, 
    min(
      constructor_standings_1.date), 
    constructors_1.nationality
  from 
    constructors as constructors_1
      inner join constructor_standings as constructor_standings_1
      on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
  where constructors_1.nationality is not NULL
  group by constructor_standings_1.constructorid, constructor_standings_1.raceid, constructors_1.constructorid, constructors_1.name, constructors_1.nationality
  limit 17)
INTERSECT
(select  
    max(
      constructor_results_1.date), 
    constructor_results_1.constructorresultsid, 
    constructor_results_1.constructorid, 
    min(
      constructor_results_1.date), 
    min(
      constructor_results_1.date), 
    max(
      constructor_results_1.points)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.raceid is not NULL
  group by constructor_results_1.constructorid, constructor_results_1.points
  limit 8);
-- meta {"num_joins":3,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    qualifying_1.qualifyid, 
    qualifying_1.raceid
  from 
    constructor_standings as constructor_standings_1
      inner join qualifying as qualifying_1
      on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
  where qualifying_1.position is not NULL
  limit 9)
INTERSECT
(select  
    standings_1.driverstandingsid, 
    results_2.driverid
  from 
    standings as standings_1
      inner join results as results_1
        inner join results as results_2
        on (results_1.resultid = results_2.resultid )
      on (standings_1.driverstandingsid = results_1.resultid )
  where standings_1.date < results_1.date
  group by results_1.date, results_1.fastestlap, results_1.laps, results_1.statusid, results_2.constructorid, results_2.date, results_2.grid, results_2.positionorder, standings_1.date, standings_1.driverstandingsid, standings_1.points, standings_1.raceid
  limit 26);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_standings_1.wins
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.constructorstandingsid is not NULL
  limit 33)
INTERSECT
(select  
    standings_1.raceid
  from 
    standings as standings_1
  where standings_1.driverid is not NULL
  group by standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.raceid, standings_1.wins
  limit 18);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    circuits_1.lng
  from 
    circuits as circuits_1
      inner join constructors as constructors_1
      on (circuits_1.circuitid = constructors_1.constructorid )
  where circuits_1.country is not NULL
  limit 24)
EXCEPT
(select  
    constructor_standings_2.points
  from 
    constructor_standings as constructor_standings_1
      inner join constructor_standings as constructor_standings_2
      on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
  where constructor_standings_2.position is not NULL
  limit 18);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    circuits_1.circuitid, 
    races_1.time, 
    count(*), 
    circuits_1.circuitref, 
    races_1.raceid, 
    races_1.date
  from 
    races as races_1
      inner join circuits as circuits_1
      on (races_1.raceid = circuits_1.circuitid )
  where races_1.round is not NULL
  group by circuits_1.circuitid, circuits_1.circuitref, races_1.date, races_1.raceid, races_1.time
  limit 39)
INTERSECT
(select  
    circuits_2.circuitid, 
    min(
      circuits_2.circuitid), 
    count(
      circuits_2.location), 
    circuits_2.circuitref, 
    circuits_2.circuitid, 
    avg(
      circuits_2.alt)
  from 
    circuits as circuits_2
  where circuits_2.name is not NULL
  group by circuits_2.circuitref, circuits_2.lng
  limit 1);
-- meta {"num_joins":2,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_standings_1.position
  from 
    constructor_standings as constructor_standings_1
        inner join races as races_1
        on (constructor_standings_1.constructorstandingsid = races_1.raceid )
      inner join results as results_1
      on (constructor_standings_1.constructorstandingsid = results_1.resultid )
  where constructor_standings_1.wins is not NULL
  limit 18)
INTERSECT
(select  
    constructors_1.constructorid
  from 
    constructors as constructors_1
  where constructors_1.constructorid is not NULL
  group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
  limit 6);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    min(
      drivers_1.driverid), 
    drivers_1.driverid, 
    drivers_1.driverref, 
    drivers_1.dob, 
    drivers_1.surname, 
    min(
      drivers_1.dob)
  from 
    drivers as drivers_1
  where drivers_1.code is not NULL
  group by drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.surname
  limit 5)
EXCEPT
(select  
    max(
      results_1.driverid), 
    results_1.laps, 
    max(
      results_1.raceid), 
    results_1.date, 
    count(*), 
    min(
      results_1.date)
  from 
    results as results_1
  where results_1.points is not NULL
  limit 39);
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    results_1.fastestlap
  from 
    results as results_1
      inner join constructor_results as constructor_results_1
      on (results_1.resultid = constructor_results_1.constructorresultsid )
  where results_1.grid is not NULL
  limit 33)
EXCEPT
(select  
    max(
      races_1.date)
  from 
    races as races_1
  where races_1.year is not NULL
  group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year
  limit 11);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    count(
      drivers_1.driverref), 
    drivers_1.code, 
    drivers_1.driverref, 
    drivers_1.dob, 
    drivers_1.nationality, 
    drivers_1.forename
  from 
    drivers as drivers_1
  where drivers_1.surname is not NULL
  group by drivers_1.code, drivers_1.dob, drivers_1.driverref, drivers_1.forename, drivers_1.nationality
  limit 33)
EXCEPT
(select  
    count(*), 
    drivers_2.nationality, 
    count(*), 
    drivers_2.dob, 
    drivers_2.driverref, 
    drivers_2.nationality
  from 
    standings as standings_1
      inner join drivers as drivers_2
      on (standings_1.driverstandingsid = drivers_2.driverid )
  where standings_1.points is not NULL
  group by drivers_2.code, drivers_2.driverref, standings_1.raceid
  limit 31);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    qualifying_1.date, 
    qualifying_1.driverid, 
    qualifying_1.constructorid, 
    qualifying_1.position, 
    qualifying_1.number
  from 
    qualifying as qualifying_1
  where qualifying_1.raceid is not NULL
  limit 24)
INTERSECT
(select  
    drivers_1.dob, 
    min(
      drivers_1.driverid), 
    drivers_1.driverid, 
    drivers_1.driverid, 
    count(*)
  from 
    drivers as drivers_1
  where drivers_1.surname = drivers_1.forename
  limit 21);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructors_1.name, 
    constructors_1.nationality, 
    constructors_1.constructorref, 
    constructors_1.constructorid
  from 
    constructors as constructors_1
  where constructors_1.name is not NULL
  limit 8)
EXCEPT
(select  
    circuits_1.name, 
    circuits_1.circuitref, 
    circuits_1.country, 
    circuits_1.circuitid
  from 
    circuits as circuits_1
  where circuits_1.circuitref is not NULL
  limit 4);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    circuits_1.country, 
    circuits_1.lng
  from 
    circuits as circuits_1
  where circuits_1.lng is not NULL
  limit 3)
EXCEPT
(select  
    sum(
      constructor_results_1.points), 
    constructor_results_1.points
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorid is not NULL
  group by constructor_results_1.constructorid
  limit 38);
-- meta {"num_joins":5,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    max(
      standings_1.position), 
    qualifying_1.number, 
    circuits_1.circuitref, 
    circuits_1.country, 
    max(
      standings_1.position), 
    constructor_standings_1.wins, 
    standings_1.wins, 
    max(
      constructor_standings_1.date)
  from 
    circuits as circuits_1
      inner join standings as standings_1
          inner join constructor_standings as constructor_standings_1
          on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
        inner join qualifying as qualifying_1
        on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
      on (circuits_1.circuitid = qualifying_1.qualifyid )
  where constructor_standings_1.points = circuits_1.alt
  group by circuits_1.circuitref, circuits_1.country, constructor_standings_1.wins, qualifying_1.number, standings_1.wins
  limit 23)
EXCEPT
(select  
    count(
      results_1.position), 
    results_1.constructorid, 
    circuits_2.name, 
    circuits_2.circuitref, 
    max(
      constructor_standings_2.raceid), 
    constructor_standings_2.position, 
    results_1.constructorid, 
    min(
      results_1.date)
  from 
    constructor_standings as constructor_standings_2
      inner join results as results_1
        inner join circuits as circuits_2
        on (results_1.resultid = circuits_2.circuitid )
      on (constructor_standings_2.constructorstandingsid = circuits_2.circuitid )
  where circuits_2.name is not NULL
  limit 35);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins, 
  standings_1.date, 
  standings_1.points, 
  sum(
    standings_1.driverstandingsid), 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.raceid > standings_1.position
group by standings_1.date, standings_1.points, standings_1.raceid, standings_1.wins
limit 12;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_standings_1.constructorid, 
    max(
      constructor_standings_1.points), 
    constructor_standings_1.points, 
    count(*), 
    constructor_standings_1.position
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.wins is not NULL
  group by constructor_standings_1.constructorid, constructor_standings_1.points, constructor_standings_1.position
  limit 24)
UNION
(select  
    constructor_standings_2.position, 
    max(
      constructor_standings_2.points), 
    min(
      constructor_standings_2.constructorstandingsid), 
    count(*), 
    count(*)
  from 
    constructor_standings as constructor_standings_2
  where constructor_standings_2.date = constructor_standings_2.date
  limit 19);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  races_1.name, 
  constructor_results_1.date, 
  races_1.circuitid, 
  races_1.round
from 
  constructor_results as constructor_results_1
    inner join races as races_1
    on (constructor_results_1.constructorresultsid = races_1.raceid )
where constructor_results_1.date > races_1.date
limit 19;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    standings_1.date, 
    standings_1.wins, 
    standings_1.driverstandingsid, 
    standings_1.raceid, 
    standings_1.position, 
    avg(
      standings_1.points), 
    standings_1.driverid, 
    avg(
      standings_1.points), 
    standings_1.points
  from 
    standings as standings_1
  where standings_1.wins is not NULL
  group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
  limit 6)
INTERSECT
(select  
    qualifying_1.date, 
    qualifying_1.position, 
    qualifying_1.number, 
    circuits_1.circuitid, 
    qualifying_1.position, 
    min(
      circuits_1.lng), 
    min(
      qualifying_1.raceid), 
    avg(
      circuits_1.lat), 
    circuits_1.lat
  from 
    circuits as circuits_1
      inner join qualifying as qualifying_1
      on (circuits_1.circuitid = qualifying_1.qualifyid )
  where circuits_1.circuitid is not NULL
  limit 29);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_standings_1.date, 
    constructor_standings_1.raceid
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.constructorstandingsid is not NULL
  limit 21)
EXCEPT
(select  
    standings_1.date, 
    max(
      drivers_1.dob)
  from 
    drivers as drivers_1
      inner join standings as standings_1
      on (drivers_1.driverid = standings_1.driverstandingsid )
  where standings_1.date < drivers_1.dob
  limit 8);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructor_results_1.raceid, 
  count(*)
from 
  constructor_results as constructor_results_1
      inner join circuits as circuits_1
      on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
    inner join constructors as constructors_1
    on (circuits_1.circuitid = constructors_1.constructorid )
where circuits_1.circuitid is not NULL
group by constructor_results_1.raceid, constructors_1.constructorid, constructors_1.constructorref
limit 1;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lng, 
  max(
    circuits_1.alt), 
  drivers_1.nationality
from 
  drivers as drivers_1
      inner join circuits as circuits_1
      on (drivers_1.driverid = circuits_1.circuitid )
    inner join drivers as drivers_2
    on (drivers_1.driverid = drivers_2.driverid )
where circuits_1.circuitref < drivers_2.nationality
group by circuits_1.lng, drivers_1.nationality
limit 32;
-- meta {"num_joins":4,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.time, 
  constructor_standings_2.constructorstandingsid, 
  min(
    races_2.circuitid), 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  constructor_standings_2.date, 
  max(
    constructor_standings_2.points), 
  sum(
    constructor_standings_2.points)
from 
  constructor_standings as constructor_standings_1
        inner join races as races_1
        on (constructor_standings_1.constructorstandingsid = races_1.raceid )
      inner join constructor_standings as constructor_standings_2
      on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
    inner join races as races_2
      inner join constructors as constructors_1
      on (races_2.raceid = constructors_1.constructorid )
    on (constructor_standings_2.constructorstandingsid = races_2.raceid )
where constructor_standings_2.constructorstandingsid <= constructor_standings_1.constructorid
group by constructor_standings_1.constructorid, constructor_standings_1.raceid, constructor_standings_2.constructorstandingsid, constructor_standings_2.date, races_1.time
limit 25;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_results_1.constructorresultsid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.date is not NULL
  limit 1)
INTERSECT
(select  
    standings_1.raceid
  from 
    standings as standings_1
  where standings_1.points is not NULL
  limit 26);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    circuits_1.lat
  from 
    circuits as circuits_1
  where circuits_1.location is not NULL
  limit 30)
EXCEPT
(select  
    avg(
      constructor_results_1.points)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.raceid is not NULL
  limit 38);
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    results_1.grid, 
    results_1.position, 
    qualifying_2.position
  from 
    results as results_1
      inner join qualifying as qualifying_1
        inner join qualifying as qualifying_2
        on (qualifying_1.qualifyid = qualifying_2.qualifyid )
      on (results_1.resultid = qualifying_1.qualifyid )
  where results_1.fastestlap >= results_1.milliseconds
  limit 41)
EXCEPT
(select  
    circuits_1.circuitid, 
    circuits_1.lat, 
    circuits_1.circuitid
  from 
    circuits as circuits_1
  where circuits_1.name is not NULL
  group by circuits_1.circuitref, circuits_1.name
  limit 20);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    min(
      constructor_results_1.date), 
    constructor_results_1.date
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.raceid is not NULL
  group by constructor_results_1.date
  limit 16)
INTERSECT
(select  
    max(
      drivers_1.dob), 
    constructor_results_2.date
  from 
    constructor_results as constructor_results_2
      inner join drivers as drivers_1
      on (constructor_results_2.constructorresultsid = drivers_1.driverid )
  where constructor_results_2.date <= drivers_1.dob
  group by constructor_results_2.date, drivers_1.code
  limit 11);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    circuits_1.country
  from 
    qualifying as qualifying_1
      inner join circuits as circuits_1
      on (qualifying_1.qualifyid = circuits_1.circuitid )
  where circuits_1.alt is not NULL
  limit 19)
INTERSECT
(select  
    races_1.time
  from 
    races as races_1
  where races_1.circuitid is not NULL
  limit 4);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_standings_1.points, 
    constructor_standings_1.date, 
    constructor_standings_1.constructorid, 
    constructor_standings_1.wins, 
    constructor_standings_1.raceid
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.points is not NULL
  limit 2)
INTERSECT
(select  
    min(
      drivers_2.dob), 
    drivers_1.dob, 
    drivers_2.driverid, 
    drivers_1.driverid, 
    drivers_1.driverid
  from 
    drivers as drivers_1
      inner join drivers as drivers_2
      on (drivers_1.driverid = drivers_2.driverid )
  where drivers_1.dob is not NULL
  limit 26);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    standings_1.raceid, 
    standings_1.driverid, 
    standings_1.driverstandingsid, 
    min(
      standings_1.points)
  from 
    standings as standings_1
  where standings_1.position is not NULL
  group by standings_1.driverid, standings_1.driverstandingsid, standings_1.raceid
  limit 27)
UNION
(select  
    circuits_1.circuitid, 
    circuits_1.circuitid, 
    circuits_1.circuitid, 
    avg(
      circuits_1.lng)
  from 
    circuits as circuits_1
  where circuits_1.circuitid < circuits_1.circuitid
  limit 29);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    max(
      standings_1.date), 
    standings_1.date, 
    standings_1.points, 
    standings_1.driverid, 
    standings_1.raceid
  from 
    standings as standings_1
  where standings_1.position >= standings_1.raceid
  group by standings_1.date, standings_1.driverid, standings_1.points, standings_1.raceid
  limit 40)
EXCEPT
(select  
    max(
      standings_2.date), 
    standings_2.date, 
    sum(
      standings_2.points), 
    standings_2.position, 
    max(
      standings_2.driverid)
  from 
    standings as standings_2
  where standings_2.raceid is not NULL
  limit 21);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.alt = circuits_1.lat
limit 30;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    min(
      qualifying_1.date)
  from 
    constructor_standings as constructor_standings_1
      inner join qualifying as qualifying_1
      on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
  where constructor_standings_1.constructorstandingsid is not NULL
  limit 5)
UNION
(select  
    min(
      constructor_standings_2.date)
  from 
    constructor_standings as constructor_standings_2
  where constructor_standings_2.date is not NULL
  limit 2);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    qualifying_1.raceid, 
    qualifying_1.constructorid, 
    qualifying_1.qualifyid, 
    qualifying_1.number, 
    min(
      qualifying_1.driverid)
  from 
    qualifying as qualifying_1
  where qualifying_1.raceid is not NULL
  group by qualifying_1.constructorid, qualifying_1.number, qualifying_1.qualifyid, qualifying_1.raceid
  limit 41)
EXCEPT
(select  
    results_1.raceid, 
    results_1.laps, 
    results_1.driverid, 
    results_1.resultid, 
    count(
      results_1.points)
  from 
    results as results_1
  where results_1.fastestlap is not NULL
  group by results_1.driverid, results_1.fastestlap, results_1.laps
  limit 27);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.date, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  min(
    results_1.resultid)
from 
  results as results_1
    inner join constructor_standings as constructor_standings_1
    on (results_1.resultid = constructor_standings_1.constructorstandingsid )
where results_1.driverid > constructor_standings_1.position
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.date, results_1.date
limit 34;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_standings_1.points, 
    constructor_standings_1.constructorstandingsid, 
    count(
      constructor_standings_1.position)
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.constructorstandingsid is not NULL
  group by constructor_standings_1.constructorstandingsid, constructor_standings_1.points
  limit 15)
EXCEPT
(select  
    circuits_1.lng, 
    circuits_1.circuitid, 
    max(
      qualifying_1.constructorid)
  from 
    circuits as circuits_1
      inner join qualifying as qualifying_1
      on (circuits_1.circuitid = qualifying_1.qualifyid )
  where circuits_1.lng is not NULL
  group by circuits_1.country, circuits_1.name, qualifying_1.date, qualifying_1.number
  limit 7);
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    qualifying_1.position, 
    avg(
      qualifying_1.position), 
    sum(
      qualifying_1.driverid), 
    qualifying_1.raceid, 
    qualifying_1.qualifyid, 
    qualifying_1.number
  from 
    qualifying as qualifying_1
  where qualifying_1.qualifyid is not NULL
  group by qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
  limit 34)
EXCEPT
(select  
    constructor_results_1.constructorid, 
    sum(
      results_1.raceid), 
    sum(
      results_1.laps), 
    constructors_1.constructorid, 
    min(
      results_1.number), 
    results_1.constructorid
  from 
    constructor_results as constructor_results_1
        inner join results as results_1
        on (constructor_results_1.constructorresultsid = results_1.resultid )
      inner join constructors as constructors_1
      on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
  where constructors_1.constructorid is not NULL
  group by constructor_results_1.date, constructor_results_1.raceid, constructors_1.constructorid, constructors_1.name, constructors_1.nationality, results_1.driverid, results_1.points
  limit 34);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    standings_1.driverid, 
    max(
      standings_1.raceid), 
    standings_1.wins
  from 
    standings as standings_1
  where standings_1.driverstandingsid is not NULL
  group by standings_1.driverid, standings_1.wins
  limit 36)
UNION
(select  
    circuits_1.circuitid, 
    max(
      circuits_1.circuitid), 
    circuits_1.circuitid
  from 
    circuits as circuits_1
  where circuits_1.name is not NULL
  group by circuits_1.alt, circuits_1.circuitref, circuits_1.country
  limit 29);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    drivers_1.code, 
    drivers_1.driverid
  from 
    drivers as drivers_1
  where drivers_1.driverref is not NULL
  limit 40)
INTERSECT
(select  
    min(
      standings_1.points), 
    constructor_results_1.constructorresultsid
  from 
    constructor_results as constructor_results_1
      inner join standings as standings_1
      on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
  where constructor_results_1.date is not NULL
  limit 30);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    drivers_1.driverref, 
    max(
      standings_1.wins), 
    min(
      standings_1.date), 
    standings_1.driverid, 
    standings_1.driverstandingsid, 
    standings_1.points, 
    drivers_1.driverid
  from 
    drivers as drivers_1
      inner join standings as standings_1
      on (drivers_1.driverid = standings_1.driverstandingsid )
  where standings_1.driverstandingsid is not NULL
  group by drivers_1.driverid, drivers_1.driverref, standings_1.driverid, standings_1.driverstandingsid, standings_1.points
  limit 11)
UNION
(select  
    min(
      constructor_standings_1.points), 
    max(
      constructor_standings_1.constructorid), 
    max(
      constructor_standings_1.date), 
    constructor_standings_1.wins, 
    constructor_standings_1.constructorid, 
    constructor_standings_1.points, 
    constructor_standings_1.constructorstandingsid
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.raceid is not NULL
  limit 36);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    qualifying_1.number
  from 
    qualifying as qualifying_1
  where qualifying_1.constructorid is not NULL
  limit 13)
EXCEPT
(select  
    races_1.year
  from 
    qualifying as qualifying_2
      inner join races as races_1
      on (qualifying_2.qualifyid = races_1.raceid )
  where qualifying_2.date is not NULL
  limit 5);
-- meta {"num_joins":4,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position, 
  max(
    constructor_results_1.points), 
  standings_1.driverid, 
  constructor_standings_1.constructorid, 
  results_1.milliseconds, 
  results_1.grid, 
  results_1.constructorid, 
  min(
    standings_2.date), 
  results_1.number
from 
  standings as standings_1
      inner join constructor_results as constructor_results_1
          inner join results as results_1
          on (constructor_results_1.constructorresultsid = results_1.resultid )
        inner join standings as standings_2
        on (results_1.resultid = standings_2.driverstandingsid )
      on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
    inner join constructor_standings as constructor_standings_1
    on (results_1.resultid = constructor_standings_1.constructorstandingsid )
where standings_2.points is not NULL
group by constructor_standings_1.constructorid, results_1.constructorid, results_1.grid, results_1.milliseconds, results_1.number, standings_1.driverid, standings_1.position
limit 11;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverid, 
  results_1.resultid, 
  results_1.fastestlap
from 
  results as results_1
    inner join drivers as drivers_1
    on (results_1.resultid = drivers_1.driverid )
where results_1.laps = results_1.positionorder
limit 19;
-- meta {"num_joins":1,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    min(
      results_1.date), 
    results_1.number, 
    results_1.laps, 
    avg(
      results_1.raceid), 
    sum(
      results_1.driverid), 
    results_1.grid, 
    results_1.date, 
    results_1.rank, 
    results_1.driverid, 
    results_1.fastestlap, 
    max(
      results_1.date), 
    results_1.positionorder
  from 
    results as results_1
  where results_1.positionorder is not NULL
  group by results_1.date, results_1.driverid, results_1.fastestlap, results_1.grid, results_1.laps, results_1.number, results_1.positionorder, results_1.rank
  limit 38)
UNION
(select  
    max(
      constructor_standings_1.date), 
    max(
      constructor_standings_1.position), 
    constructor_standings_1.raceid, 
    avg(
      qualifying_1.position), 
    sum(
      constructor_standings_1.wins), 
    constructor_standings_1.constructorid, 
    constructor_standings_1.date, 
    min(
      constructor_standings_1.constructorstandingsid), 
    qualifying_1.driverid, 
    constructor_standings_1.points, 
    min(
      qualifying_1.date), 
    constructor_standings_1.constructorstandingsid
  from 
    constructor_standings as constructor_standings_1
      inner join qualifying as qualifying_1
      on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
  where constructor_standings_1.points > constructor_standings_1.points
  limit 33);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    drivers_1.forename
  from 
    drivers as drivers_1
  where drivers_1.code is not NULL
  limit 4)
UNION
(select  
    min(
      qualifying_1.date)
  from 
    qualifying as qualifying_1
  where qualifying_1.position = qualifying_1.number
  group by qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.raceid
  limit 34);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    count(
      results_1.number), 
    results_1.driverid, 
    results_1.number
  from 
    results as results_1
  where results_1.grid is not NULL
  group by results_1.driverid, results_1.number
  limit 27)
INTERSECT
(select  
    count(
      drivers_1.code), 
    min(
      drivers_1.driverid), 
    max(
      drivers_1.driverid)
  from 
    drivers as drivers_1
  where drivers_1.driverid >= drivers_1.driverid
  limit 35);
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    circuits_1.lat, 
    count(*), 
    avg(
      circuits_1.lng), 
    max(
      circuits_1.circuitid), 
    circuits_1.lng, 
    circuits_1.alt
  from 
    circuits as circuits_1
  where circuits_1.location < circuits_1.country
  group by circuits_1.alt, circuits_1.lat, circuits_1.lng
  limit 26)
EXCEPT
(select  
    results_1.fastestlap, 
    max(
      qualifying_1.position), 
    avg(
      results_1.milliseconds), 
    min(
      qualifying_1.number), 
    results_1.fastestlap, 
    results_1.points
  from 
    results as results_1
      inner join qualifying as qualifying_1
      on (results_1.resultid = qualifying_1.qualifyid )
  where qualifying_1.raceid is not NULL
  limit 14);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  races_1.year, 
  constructor_results_1.date, 
  races_1.time, 
  races_1.raceid, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
    inner join races as races_1
    on (constructor_results_1.constructorresultsid = races_1.raceid )
where races_1.time = races_1.name
limit 16;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructors_1.constructorref, 
    drivers_1.driverref, 
    drivers_1.nationality, 
    count(*), 
    constructors_1.name, 
    qualifying_1.date, 
    max(
      qualifying_1.constructorid)
  from 
    qualifying as qualifying_1
      inner join drivers as drivers_1
        inner join constructors as constructors_1
        on (drivers_1.driverid = constructors_1.constructorid )
      on (qualifying_1.qualifyid = drivers_1.driverid )
  where drivers_1.dob <= qualifying_1.date
  group by constructors_1.constructorref, constructors_1.name, drivers_1.driverref, drivers_1.nationality, qualifying_1.date
  limit 39)
EXCEPT
(select  
    max(
      qualifying_2.qualifyid), 
    max(
      qualifying_2.date), 
    max(
      qualifying_2.date), 
    min(
      qualifying_2.constructorid), 
    max(
      qualifying_2.date), 
    qualifying_2.date, 
    min(
      qualifying_2.constructorid)
  from 
    qualifying as qualifying_2
  where qualifying_2.driverid > qualifying_2.number
  limit 41);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.name
from 
  races as races_1
where races_1.round is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date = constructor_standings_1.date
limit 14;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    min(
      races_1.round), 
    races_1.round, 
    races_1.time, 
    races_1.raceid
  from 
    races as races_1
  where races_1.date <= races_1.date
  group by races_1.raceid, races_1.round, races_1.time
  limit 14)
EXCEPT
(select  
    count(
      results_1.driverid), 
    results_1.positionorder, 
    avg(
      results_1.number), 
    results_1.laps
  from 
    results as results_1
  where results_1.resultid > results_1.grid
  group by results_1.laps, results_1.rank
  limit 37);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    circuits_1.alt, 
    circuits_1.location, 
    circuits_1.lat, 
    constructor_standings_1.date, 
    constructor_standings_1.wins
  from 
    circuits as circuits_1
      inner join constructor_standings as constructor_standings_1
      on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
  where constructor_standings_1.date = constructor_standings_1.date
  limit 30)
EXCEPT
(select  
    max(
      races_1.date), 
    races_1.name, 
    count(
      races_1.raceid), 
    races_1.date, 
    races_1.raceid
  from 
    races as races_1
  where races_1.year is not NULL
  limit 14);
-- meta {"num_joins":0,"num_aggregates":6,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    drivers_1.forename, 
    drivers_1.code, 
    avg(
      drivers_1.driverid), 
    drivers_1.dob, 
    drivers_1.nationality, 
    max(
      drivers_1.dob), 
    drivers_1.surname, 
    drivers_1.driverref, 
    drivers_1.driverid, 
    count(
      drivers_1.forename)
  from 
    drivers as drivers_1
  where drivers_1.driverid > drivers_1.driverid
  group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
  limit 29)
INTERSECT
(select  
    max(
      constructor_standings_1.date), 
    max(
      constructor_standings_1.date), 
    avg(
      constructor_standings_1.position), 
    constructor_standings_1.date, 
    max(
      constructor_standings_1.date), 
    min(
      constructor_standings_1.date), 
    avg(
      constructor_standings_1.points), 
    min(
      constructor_standings_1.date), 
    constructor_standings_1.raceid, 
    count(*)
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.constructorstandingsid is not NULL
  group by constructor_standings_1.constructorid, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.wins
  limit 13);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_standings_1.date, 
    constructor_standings_1.position, 
    sum(
      constructor_standings_1.constructorid)
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.date > constructor_standings_1.date
  group by constructor_standings_1.date, constructor_standings_1.position
  limit 15)
EXCEPT
(select  
    sum(
      circuits_1.lng), 
    circuits_1.circuitid, 
    avg(
      circuits_1.circuitid)
  from 
    circuits as circuits_1
  where circuits_1.country is not NULL
  limit 23);
-- meta {"num_joins":3,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    max(
      standings_1.date), 
    max(
      standings_1.date), 
    standings_1.raceid
  from 
    standings as standings_1
  where standings_1.date is not NULL
  group by standings_1.raceid
  limit 42)
UNION
(select  
    min(
      constructor_standings_1.date), 
    min(
      results_1.date), 
    results_1.positionorder
  from 
    results as results_1
        inner join constructor_standings as constructor_standings_1
          inner join circuits as circuits_1
          on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
        on (results_1.resultid = constructor_standings_1.constructorstandingsid )
      inner join circuits as circuits_2
      on (circuits_1.circuitid = circuits_2.circuitid )
  where circuits_2.location is not NULL
  limit 31);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_2.nationality, 
  drivers_1.driverid, 
  max(
    drivers_1.dob), 
  drivers_1.surname, 
  max(
    drivers_2.driverid), 
  drivers_1.driverref, 
  drivers_1.code
from 
  drivers as drivers_1
    inner join drivers as drivers_2
    on (drivers_1.driverid = drivers_2.driverid )
where drivers_2.forename is not NULL
group by drivers_1.code, drivers_1.driverid, drivers_1.driverref, drivers_1.surname, drivers_2.nationality
limit 29;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.name, 
  count(
    constructors_1.constructorref), 
  sum(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 38;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  count(*), 
  constructors_1.constructorref, 
  avg(
    constructors_1.constructorid), 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name
limit 35;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    drivers_1.driverref, 
    drivers_1.dob, 
    drivers_1.forename, 
    drivers_1.nationality
  from 
    drivers as drivers_1
  where drivers_1.driverref < drivers_1.code
  limit 15)
UNION
(select distinct 
    races_1.name, 
    races_1.date, 
    circuits_1.location, 
    races_1.time
  from 
    races as races_1
      inner join circuits as circuits_1
        inner join races as races_2
        on (circuits_1.circuitid = races_2.raceid )
      on (races_1.raceid = races_2.raceid )
  where circuits_1.lng > circuits_1.alt
  limit 12);
-- meta {"num_joins":4,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    races_1.raceid, 
    races_1.round, 
    qualifying_1.constructorid, 
    qualifying_1.date, 
    circuits_1.circuitref, 
    races_1.circuitid, 
    races_1.name
  from 
    circuits as circuits_1
      inner join qualifying as qualifying_1
        inner join races as races_1
        on (qualifying_1.qualifyid = races_1.raceid )
      on (circuits_1.circuitid = races_1.raceid )
  where qualifying_1.date > races_1.date
  limit 9)
UNION
(select  
    min(
      standings_1.points), 
    constructor_standings_1.constructorstandingsid, 
    standings_1.raceid, 
    standings_1.date, 
    constructors_1.constructorref, 
    constructor_standings_1.position, 
    constructors_1.name
  from 
    constructors as constructors_1
      inner join standings as standings_1
        inner join constructor_standings as constructor_standings_1
        on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
      on (constructors_1.constructorid = standings_1.driverstandingsid )
  where constructors_1.name is not NULL
  limit 2);
-- meta {"num_joins":4,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    circuits_1.country
  from 
    constructor_standings as constructor_standings_1
      inner join circuits as circuits_1
          inner join standings as standings_1
            inner join drivers as drivers_1
            on (standings_1.driverstandingsid = drivers_1.driverid )
          on (circuits_1.circuitid = standings_1.driverstandingsid )
        inner join standings as standings_2
        on (drivers_1.driverid = standings_2.driverstandingsid )
      on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
  where constructor_standings_1.date is not NULL
  limit 12)
UNION
(select  
    races_1.name
  from 
    races as races_1
  where races_1.raceid is not NULL
  group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time
  limit 12);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    circuits_1.lat, 
    circuits_1.alt, 
    qualifying_1.constructorid, 
    qualifying_1.raceid, 
    qualifying_1.driverid
  from 
    qualifying as qualifying_1
      inner join circuits as circuits_1
      on (qualifying_1.qualifyid = circuits_1.circuitid )
  where circuits_1.location is not NULL
  limit 14)
EXCEPT
(select  
    min(
      races_1.date), 
    min(
      races_1.date), 
    max(
      races_1.raceid), 
    races_1.year, 
    races_1.round
  from 
    races as races_1
  where races_1.name is not NULL
  group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round
  limit 9);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref, 
  drivers_1.nationality, 
  drivers_1.forename, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
limit 17;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  races_1.date, 
  avg(
    races_1.year), 
  races_1.time, 
  races_1.round, 
  races_1.name, 
  races_1.year, 
  count(*)
from 
  races as races_1
where races_1.circuitid is not NULL
group by races_1.date, races_1.name, races_1.round, races_1.time, races_1.year
limit 17;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    drivers_1.dob, 
    drivers_1.forename, 
    drivers_1.driverref, 
    drivers_1.driverid, 
    max(
      qualifying_1.date)
  from 
    drivers as drivers_1
      inner join qualifying as qualifying_1
      on (drivers_1.driverid = qualifying_1.qualifyid )
  where qualifying_1.raceid is not NULL
  group by drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename
  limit 5)
EXCEPT
(select  
    drivers_2.dob, 
    drivers_2.forename, 
    drivers_2.code, 
    max(
      drivers_2.dob), 
    max(
      drivers_2.dob)
  from 
    drivers as drivers_2
  where drivers_2.nationality is not NULL
  limit 14);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins, 
  standings_1.position, 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.driverid is not NULL
limit 10;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_results_1.constructorid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.points = constructor_results_1.points
  limit 11)
INTERSECT
(select  
    races_1.round
  from 
    races as races_1
  where races_1.year is not NULL
  limit 34);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    races_1.year, 
    races_1.time, 
    constructor_standings_1.position, 
    races_1.date, 
    results_1.statusid, 
    races_1.name
  from 
    constructor_standings as constructor_standings_1
        inner join races as races_1
        on (constructor_standings_1.constructorstandingsid = races_1.raceid )
      inner join results as results_1
      on (constructor_standings_1.constructorstandingsid = results_1.resultid )
  where races_1.circuitid is not NULL
  limit 17)
UNION
(select  
    standings_2.wins, 
    count(*), 
    standings_2.position, 
    standings_2.date, 
    avg(
      standings_1.raceid), 
    sum(
      standings_1.raceid)
  from 
    standings as standings_1
      inner join standings as standings_2
      on (standings_1.driverstandingsid = standings_2.driverstandingsid )
  where standings_2.wins is not NULL
  limit 7);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    sum(
      circuits_1.circuitid)
  from 
    circuits as circuits_1
  where circuits_1.country is not NULL
  limit 8)
UNION
(select  
    avg(
      qualifying_1.raceid)
  from 
    qualifying as qualifying_1
  where qualifying_1.constructorid is not NULL
  group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.raceid
  limit 1);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    races_1.date, 
    races_1.year, 
    races_1.raceid, 
    races_1.name, 
    max(
      races_1.circuitid)
  from 
    races as races_1
  where races_1.round is not NULL
  group by races_1.date, races_1.name, races_1.raceid, races_1.year
  limit 7)
UNION
(select distinct 
    constructor_results_1.date, 
    constructor_results_1.raceid, 
    constructor_results_1.constructorresultsid, 
    max(
      constructor_results_1.points), 
    count(*)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.raceid is not NULL
  limit 16);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    drivers_1.code, 
    drivers_1.dob, 
    drivers_1.nationality, 
    drivers_1.driverid, 
    min(
      drivers_1.driverid), 
    min(
      drivers_1.driverid), 
    drivers_1.forename, 
    max(
      drivers_1.driverid)
  from 
    drivers as drivers_1
  where drivers_1.dob is not NULL
  group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.forename, drivers_1.nationality
  limit 10)
UNION
(select  
    min(
      constructor_results_1.points), 
    constructor_results_1.date, 
    avg(
      constructor_results_1.constructorresultsid), 
    constructor_results_1.raceid, 
    min(
      constructor_results_1.raceid), 
    min(
      constructor_results_1.constructorid), 
    max(
      constructor_results_1.date), 
    count(
      constructor_results_1.date)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.date is not NULL
  limit 26);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    drivers_1.forename
  from 
    drivers as drivers_1
  where drivers_1.nationality is not NULL
  limit 26)
UNION
(select  
    constructors_1.name
  from 
    constructors as constructors_1
          inner join constructor_results as constructor_results_1
          on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
        inner join constructor_standings as constructor_standings_1
        on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
      inner join drivers as drivers_2
      on (constructor_results_1.constructorresultsid = drivers_2.driverid )
  where constructors_1.nationality is not NULL
  limit 11);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    results_1.points, 
    results_1.statusid, 
    results_1.resultid, 
    results_1.positionorder, 
    results_1.grid, 
    results_1.raceid, 
    results_1.date, 
    results_1.driverid, 
    results_1.position, 
    results_1.laps, 
    results_1.number, 
    results_1.constructorid
  from 
    results as results_1
  where results_1.laps < results_1.driverid
  limit 39)
EXCEPT
(select  
    results_2.milliseconds, 
    results_2.resultid, 
    avg(
      results_2.position), 
    results_2.constructorid, 
    results_2.driverid, 
    results_2.resultid, 
    results_2.date, 
    results_2.constructorid, 
    results_2.points, 
    results_2.driverid, 
    results_2.milliseconds, 
    count(
      results_2.raceid)
  from 
    results as results_2
  where results_2.resultid is not NULL
  limit 24);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    circuits_1.alt, 
    circuits_1.circuitid, 
    min(
      circuits_1.lng), 
    circuits_1.circuitref
  from 
    circuits as circuits_1
  where circuits_1.circuitid < circuits_1.circuitid
  group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref
  limit 24)
EXCEPT
(select  
    standings_1.points, 
    standings_1.raceid, 
    min(
      standings_1.points), 
    min(
      qualifying_1.date)
  from 
    qualifying as qualifying_1
      inner join standings as standings_1
      on (qualifying_1.qualifyid = standings_1.driverstandingsid )
  where standings_1.points > standings_1.points
  group by standings_1.driverstandingsid
  limit 29);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    min(
      races_1.date), 
    races_1.circuitid, 
    races_1.year, 
    races_1.name, 
    races_1.raceid
  from 
    races as races_1
  where races_1.time > races_1.name
  group by races_1.circuitid, races_1.name, races_1.raceid, races_1.year
  limit 28)
UNION
(select  
    min(
      constructor_results_1.date), 
    constructor_results_1.raceid, 
    constructor_results_1.constructorresultsid, 
    min(
      constructor_results_1.date), 
    max(
      constructor_results_1.date)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.raceid is not NULL
  group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date
  limit 28);
-- meta {"num_joins":1,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    avg(
      constructors_1.constructorid), 
    constructors_1.constructorref, 
    max(
      constructors_1.constructorid), 
    constructors_1.nationality, 
    count(
      constructors_1.constructorid), 
    min(
      constructors_1.constructorid), 
    constructors_1.name, 
    count(
      constructors_1.name)
  from 
    constructors as constructors_1
  where constructors_1.nationality is not NULL
  group by constructors_1.constructorref, constructors_1.name, constructors_1.nationality
  limit 14)
EXCEPT
(select  
    sum(
      constructor_standings_1.wins), 
    max(
      constructor_standings_1.date), 
    count(*), 
    max(
      results_1.date), 
    min(
      results_1.raceid), 
    count(
      constructor_standings_1.constructorstandingsid), 
    sum(
      results_1.points), 
    max(
      results_1.statusid)
  from 
    results as results_1
      inner join constructor_standings as constructor_standings_1
      on (results_1.resultid = constructor_standings_1.constructorstandingsid )
  where constructor_standings_1.position is not NULL
  limit 1);
-- meta {"num_joins":4,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_standings_1.date
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.constructorid is not NULL
  limit 27)
INTERSECT
(select  
    results_1.date
  from 
    drivers as drivers_1
        inner join results as results_1
          inner join races as races_1
          on (results_1.resultid = races_1.raceid )
        on (drivers_1.driverid = races_1.raceid )
      inner join constructors as constructors_1
        inner join circuits as circuits_1
        on (constructors_1.constructorid = circuits_1.circuitid )
      on (drivers_1.driverid = constructors_1.constructorid )
  where results_1.rank > circuits_1.lat
  group by circuits_1.alt, circuits_1.name, constructors_1.constructorid, constructors_1.nationality, races_1.raceid, results_1.driverid
  limit 3);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    races_1.raceid, 
    races_1.name
  from 
    races as races_1
  where races_1.round is not NULL
  limit 27)
EXCEPT
(select  
    min(
      constructor_standings_1.date), 
    constructors_2.nationality
  from 
    constructor_standings as constructor_standings_1
        inner join constructors as constructors_1
        on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
      inner join constructors as constructors_2
      on (constructor_standings_1.constructorstandingsid = constructors_2.constructorid )
  where constructor_standings_1.wins >= constructor_standings_1.position
  group by constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.position, constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_2.constructorid, constructors_2.nationality
  limit 12);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    standings_1.raceid, 
    standings_1.points, 
    standings_1.driverid, 
    standings_1.wins, 
    avg(
      standings_1.wins)
  from 
    standings as standings_1
  where standings_1.points >= standings_1.points
  group by standings_1.driverid, standings_1.points, standings_1.raceid, standings_1.wins
  limit 29)
INTERSECT
(select  
    constructors_1.constructorid, 
    count(*), 
    constructors_1.constructorid, 
    constructors_1.constructorid, 
    avg(
      constructors_1.constructorid)
  from 
    constructors as constructors_1
  where constructors_1.constructorid is not NULL
  limit 1);
-- meta {"num_joins":2,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructor_standings_1.raceid, 
  max(
    constructor_standings_1.date), 
  qualifying_1.raceid, 
  max(
    qualifying_1.date), 
  constructor_standings_1.date, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  sum(
    constructor_standings_1.raceid), 
  qualifying_1.qualifyid, 
  qualifying_1.number, 
  constructor_standings_1.constructorid, 
  qualifying_1.date, 
  constructors_1.nationality, 
  constructor_standings_1.wins, 
  sum(
    constructor_standings_1.points)
from 
  constructor_standings as constructor_standings_1
    inner join qualifying as qualifying_1
      inner join constructors as constructors_1
      on (qualifying_1.qualifyid = constructors_1.constructorid )
    on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
where constructors_1.constructorref <= constructors_1.nationality
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins, constructors_1.constructorid, constructors_1.nationality, qualifying_1.date, qualifying_1.number, qualifying_1.qualifyid, qualifying_1.raceid
limit 37;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    races_1.name, 
    races_1.circuitid, 
    races_1.round, 
    races_1.time, 
    count(
      races_1.round), 
    races_1.year, 
    races_1.date, 
    races_1.raceid, 
    max(
      races_1.date)
  from 
    races as races_1
  where races_1.time is not NULL
  group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year
  limit 11)
UNION
(select  
    min(
      constructor_standings_1.date), 
    constructor_standings_1.wins, 
    constructor_standings_1.raceid, 
    min(
      constructor_standings_1.date), 
    max(
      constructor_standings_1.raceid), 
    sum(
      constructor_standings_1.constructorstandingsid), 
    sum(
      constructor_standings_1.constructorstandingsid), 
    constructor_standings_1.wins, 
    min(
      constructor_standings_1.date)
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.date > constructor_standings_1.date
  group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.wins
  limit 10);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date > constructor_results_1.date
limit 9;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    results_1.date), 
  results_1.resultid, 
  results_1.milliseconds, 
  results_1.laps, 
  races_1.time
from 
  races as races_1
    inner join results as results_1
    on (races_1.raceid = results_1.resultid )
where races_1.raceid is not NULL
group by races_1.time, results_1.laps, results_1.milliseconds, results_1.resultid
limit 33;
-- meta {"num_joins":4,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    circuits_1.lng, 
    max(
      standings_1.points), 
    count(*), 
    races_1.year
  from 
    races as races_1
      inner join standings as standings_1
        inner join circuits as circuits_1
        on (standings_1.driverstandingsid = circuits_1.circuitid )
      on (races_1.raceid = circuits_1.circuitid )
  where circuits_1.country is not NULL
  group by circuits_1.lng, races_1.year
  limit 11)
INTERSECT
(select  
    results_1.rank, 
    sum(
      results_1.points), 
    count(*), 
    sum(
      results_1.points)
  from 
    standings as standings_2
      inner join races as races_2
        inner join results as results_1
        on (races_2.raceid = results_1.resultid )
      on (standings_2.driverstandingsid = races_2.raceid )
  where standings_2.date is not NULL
  limit 1);
-- meta {"num_joins":4,"num_aggregates":5,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    min(
      circuits_1.lng), 
    constructor_results_1.constructorid, 
    min(
      constructor_standings_1.date), 
    avg(
      standings_1.position), 
    constructor_results_1.points, 
    standings_1.wins, 
    constructor_standings_1.constructorid, 
    constructor_results_1.constructorresultsid, 
    min(
      constructor_standings_1.date), 
    constructor_results_1.raceid, 
    circuits_1.name
  from 
    constructor_results as constructor_results_1
        inner join circuits as circuits_1
        on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
      inner join standings as standings_1
        inner join constructor_standings as constructor_standings_1
          inner join standings as standings_2
          on (constructor_standings_1.constructorstandingsid = standings_2.driverstandingsid )
        on (standings_1.driverstandingsid = standings_2.driverstandingsid )
      on (circuits_1.circuitid = standings_1.driverstandingsid )
  where circuits_1.location is not NULL
  group by circuits_1.name, constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.raceid, constructor_standings_1.constructorid, standings_1.wins
  limit 4)
UNION
(select  
    min(
      constructor_results_2.points), 
    constructor_results_2.constructorresultsid, 
    max(
      constructor_results_2.date), 
    sum(
      constructor_results_2.constructorid), 
    constructor_results_2.points, 
    constructor_results_2.constructorresultsid, 
    constructor_results_2.constructorresultsid, 
    constructor_results_2.raceid, 
    max(
      constructor_results_2.date), 
    min(
      constructor_results_2.date), 
    count(
      constructor_results_2.constructorid)
  from 
    constructor_results as constructor_results_2
  where constructor_results_2.raceid is not NULL
  group by constructor_results_2.constructorid, constructor_results_2.constructorresultsid, constructor_results_2.date, constructor_results_2.points
  limit 19);
-- meta {"num_joins":3,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    qualifying_1.qualifyid, 
    min(
      qualifying_1.date)
  from 
    qualifying as qualifying_1
  where qualifying_1.qualifyid is not NULL
  group by qualifying_1.qualifyid
  limit 39)
UNION
(select  
    drivers_1.driverid, 
    max(
      drivers_2.dob)
  from 
    drivers as drivers_1
        inner join drivers as drivers_2
          inner join circuits as circuits_1
          on (drivers_2.driverid = circuits_1.circuitid )
        on (drivers_1.driverid = drivers_2.driverid )
      inner join standings as standings_1
      on (drivers_1.driverid = standings_1.driverstandingsid )
  where circuits_1.alt < standings_1.points
  group by circuits_1.alt
  limit 10);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    qualifying_1.constructorid, 
    qualifying_1.position, 
    qualifying_1.number, 
    qualifying_1.qualifyid, 
    count(*)
  from 
    qualifying as qualifying_1
  where qualifying_1.date is not NULL
  group by qualifying_1.constructorid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid
  limit 31)
EXCEPT
(select  
    constructors_1.constructorid, 
    constructors_1.constructorid, 
    constructors_1.constructorid, 
    constructors_1.constructorid, 
    count(*)
  from 
    constructors as constructors_1
  where constructors_1.name is not NULL
  limit 26);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    qualifying_1.number, 
    qualifying_1.date
  from 
    qualifying as qualifying_1
  where qualifying_1.raceid is not NULL
  limit 25)
EXCEPT
(select  
    qualifying_2.number, 
    qualifying_2.date
  from 
    qualifying as qualifying_2
  where qualifying_2.position is not NULL
  group by qualifying_2.constructorid, qualifying_2.date, qualifying_2.position, qualifying_2.raceid
  limit 6);
-- meta {"num_joins":2,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    drivers_1.forename, 
    constructor_standings_1.points
  from 
    drivers as drivers_1
      inner join constructor_standings as constructor_standings_1
      on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
  where constructor_standings_1.constructorstandingsid > constructor_standings_1.position
  limit 37)
UNION
(select  
    max(
      constructor_results_1.constructorid), 
    min(
      constructor_standings_2.date)
  from 
    constructor_standings as constructor_standings_2
      inner join constructor_results as constructor_results_1
      on (constructor_standings_2.constructorstandingsid = constructor_results_1.constructorresultsid )
  where constructor_results_1.constructorresultsid is not NULL
  group by constructor_results_1.date, constructor_standings_2.position
  limit 24);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    sum(
      standings_2.position), 
    standings_2.driverstandingsid, 
    standings_1.driverid, 
    standings_1.date, 
    min(
      standings_1.date), 
    standings_2.points, 
    standings_2.raceid
  from 
    standings as standings_1
      inner join standings as standings_2
      on (standings_1.driverstandingsid = standings_2.driverstandingsid )
  where standings_2.wins > standings_2.position
  group by standings_1.date, standings_1.driverid, standings_2.driverstandingsid, standings_2.points, standings_2.raceid
  limit 17)
INTERSECT
(select  
    sum(
      standings_3.wins), 
    standings_3.raceid, 
    max(
      standings_3.wins), 
    standings_3.date, 
    max(
      standings_3.date), 
    standings_3.points, 
    standings_3.position
  from 
    standings as standings_3
  where standings_3.points > standings_3.points
  limit 30);
-- meta {"num_joins":5,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_standings_1.wins, 
    constructor_standings_1.constructorstandingsid, 
    max(
      constructor_results_1.date)
  from 
    constructor_standings as constructor_standings_1
      inner join constructor_results as constructor_results_1
        inner join races as races_1
        on (constructor_results_1.constructorresultsid = races_1.raceid )
      on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
  where constructor_results_1.constructorresultsid is not NULL
  group by constructor_standings_1.constructorstandingsid, constructor_standings_1.wins
  limit 16)
UNION
(select  
    qualifying_1.driverid, 
    constructor_standings_2.constructorid, 
    min(
      races_2.date)
  from 
    constructor_standings as constructor_standings_2
      inner join qualifying as qualifying_1
        inner join races as races_2
          inner join drivers as drivers_1
          on (races_2.raceid = drivers_1.driverid )
        on (qualifying_1.qualifyid = drivers_1.driverid )
      on (constructor_standings_2.constructorstandingsid = races_2.raceid )
  where constructor_standings_2.raceid <= qualifying_1.raceid
  limit 40);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.points, 
  results_1.grid, 
  results_1.fastestlap, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
      inner join results as results_1
      on (constructor_results_1.constructorresultsid = results_1.resultid )
    inner join qualifying as qualifying_1
    on (results_1.resultid = qualifying_1.qualifyid )
where constructor_results_1.constructorresultsid is not NULL
limit 19;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    standings_1.driverid, 
    standings_1.points, 
    standings_1.raceid, 
    standings_1.position, 
    standings_1.wins, 
    standings_1.date, 
    max(
      standings_1.points), 
    count(*)
  from 
    standings as standings_1
  where standings_1.date is not NULL
  group by standings_1.date, standings_1.driverid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
  limit 33)
UNION
(select  
    circuits_1.circuitid, 
    sum(
      circuits_1.circuitid), 
    circuits_1.circuitid, 
    circuits_1.circuitid, 
    circuits_1.circuitid, 
    count(
      circuits_1.location), 
    max(
      circuits_1.lat), 
    count(*)
  from 
    circuits as circuits_1
  where circuits_1.lng = circuits_1.alt
  group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lat
  limit 23);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    drivers_1.code
  from 
    drivers as drivers_1
      inner join constructor_standings as constructor_standings_1
      on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
  where drivers_1.dob < constructor_standings_1.date
  limit 14)
UNION
(select  
    circuits_1.location
  from 
    circuits as circuits_1
  where circuits_1.circuitref <= circuits_1.name
  group by circuits_1.alt, circuits_1.circuitid, circuits_1.lng
  limit 29);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  standings_1.wins
from 
  standings as standings_1
where standings_1.date is not NULL
limit 5;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    results_1.constructorid, 
    results_1.laps, 
    results_1.position, 
    max(
      results_1.raceid)
  from 
    results as results_1
  where results_1.laps is not NULL
  group by results_1.constructorid, results_1.laps, results_1.position
  limit 3)
INTERSECT
(select  
    constructor_results_1.raceid, 
    avg(
      constructor_results_1.points), 
    constructor_results_1.points, 
    max(
      constructor_results_1.constructorid)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.raceid is not NULL
  limit 17);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructors_1.constructorid, 
    constructors_1.nationality, 
    constructors_1.constructorref
  from 
    constructors as constructors_1
  where constructors_1.constructorid is not NULL
  limit 39)
INTERSECT
(select  
    avg(
      results_1.statusid), 
    min(
      results_1.date), 
    min(
      results_1.date)
  from 
    results as results_1
  where results_1.number is not NULL
  limit 36);
-- meta {"num_joins":2,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    circuits_1.name, 
    drivers_1.driverref, 
    min(
      circuits_1.circuitid), 
    constructors_1.name, 
    drivers_1.dob
  from 
    constructors as constructors_1
      inner join drivers as drivers_1
        inner join circuits as circuits_1
        on (drivers_1.driverid = circuits_1.circuitid )
      on (constructors_1.constructorid = circuits_1.circuitid )
  where constructors_1.constructorref is not NULL
  group by circuits_1.name, constructors_1.name, drivers_1.dob, drivers_1.driverref
  limit 25)
UNION
(select  
    drivers_2.forename, 
    drivers_2.code, 
    count(
      drivers_2.surname), 
    drivers_2.driverref, 
    drivers_2.dob
  from 
    drivers as drivers_2
  where drivers_2.dob is not NULL
  group by drivers_2.code, drivers_2.dob, drivers_2.driverid, drivers_2.driverref, drivers_2.forename
  limit 4);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
limit 22;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    races_1.date, 
    races_1.round
  from 
    races as races_1
  where races_1.year is not NULL
  limit 17)
INTERSECT
(select  
    constructor_results_1.date, 
    drivers_1.driverid
  from 
    drivers as drivers_1
      inner join constructor_results as constructor_results_1
      on (drivers_1.driverid = constructor_results_1.constructorresultsid )
  where constructor_results_1.points is not NULL
  limit 13);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    count(
      standings_1.wins), 
    standings_1.points
  from 
    standings as standings_1
  where standings_1.date is not NULL
  group by standings_1.points
  limit 33)
UNION
(select  
    max(
      results_1.constructorid), 
    avg(
      results_1.points)
  from 
    results as results_1
  where results_1.number <= results_1.position
  limit 24);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.points, 
  standings_1.date, 
  standings_1.driverid, 
  standings_1.position, 
  min(
    standings_1.points), 
  standings_1.raceid, 
  min(
    standings_1.date), 
  standings_1.wins, 
  standings_1.driverstandingsid, 
  min(
    standings_1.points)
from 
  standings as standings_1
where standings_1.date <= standings_1.date
group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
limit 36;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.positionorder, 
  results_1.milliseconds, 
  results_1.rank, 
  results_1.grid, 
  results_1.fastestlap, 
  sum(
    results_1.raceid), 
  results_1.position, 
  results_1.points, 
  min(
    results_1.rank), 
  avg(
    results_1.positionorder)
from 
  results as results_1
where results_1.raceid is not NULL
group by results_1.fastestlap, results_1.grid, results_1.milliseconds, results_1.points, results_1.position, results_1.positionorder, results_1.rank
limit 37;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_results_1.points, 
    constructor_results_1.raceid, 
    constructor_results_1.date
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.raceid is not NULL
  limit 38)
EXCEPT
(select  
    results_1.points, 
    min(
      results_1.points), 
    min(
      results_1.date)
  from 
    results as results_1
  where results_1.constructorid > results_1.driverid
  group by results_1.grid
  limit 23);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    races_1.raceid, 
    count(
      races_1.round)
  from 
    races as races_1
  where races_1.time is not NULL
  group by races_1.raceid
  limit 24)
INTERSECT
(select  
    avg(
      standings_1.raceid), 
    max(
      standings_1.raceid)
  from 
    standings as standings_1
  where standings_1.position is not NULL
  group by standings_1.driverstandingsid
  limit 22);
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    circuits_1.country, 
    constructors_1.constructorid, 
    circuits_1.circuitid, 
    sum(
      circuits_1.circuitid), 
    circuits_1.lng
  from 
    constructors as constructors_1
      inner join circuits as circuits_1
      on (constructors_1.constructorid = circuits_1.circuitid )
  where constructors_1.name is not NULL
  group by circuits_1.circuitid, circuits_1.country, circuits_1.lng, constructors_1.constructorid
  limit 41)
INTERSECT
(select  
    circuits_2.name, 
    avg(
      circuits_2.circuitid), 
    count(
      circuits_2.lng), 
    sum(
      circuits_2.circuitid), 
    min(
      circuits_2.lat)
  from 
    circuits as circuits_2
  where circuits_2.lng < circuits_2.alt
  group by circuits_2.alt, circuits_2.circuitid, circuits_2.circuitref, circuits_2.country, circuits_2.lat, circuits_2.lng, circuits_2.location, circuits_2.name
  limit 28);
-- meta {"num_joins":1,"num_aggregates":6,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    races_1.year, 
    min(
      races_1.date), 
    races_1.round, 
    races_1.name, 
    races_1.circuitid, 
    max(
      races_1.date), 
    races_1.raceid, 
    races_1.time, 
    min(
      races_1.date), 
    max(
      races_1.date)
  from 
    races as races_1
  where races_1.name is not NULL
  group by races_1.circuitid, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year
  limit 5)
EXCEPT
(select  
    races_2.year, 
    max(
      races_2.date), 
    races_2.round, 
    avg(
      constructor_results_1.points), 
    constructor_results_1.constructorid, 
    min(
      constructor_results_1.date), 
    races_2.round, 
    races_2.name, 
    max(
      races_2.date), 
    min(
      constructor_results_1.date)
  from 
    constructor_results as constructor_results_1
      inner join races as races_2
      on (constructor_results_1.constructorresultsid = races_2.raceid )
  where constructor_results_1.points > constructor_results_1.points
  group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid, races_2.circuitid, races_2.date, races_2.time, races_2.year
  limit 8);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    races_1.year, 
    races_1.circuitid, 
    min(
      races_1.date), 
    races_1.time
  from 
    races as races_1
  where races_1.time is not NULL
  group by races_1.circuitid, races_1.time, races_1.year
  limit 33)
INTERSECT
(select  
    min(
      constructor_standings_1.date), 
    constructor_standings_1.wins, 
    min(
      constructor_standings_1.date), 
    min(
      constructor_results_1.constructorresultsid)
  from 
    constructor_results as constructor_results_1
      inner join constructor_standings as constructor_standings_1
      on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
  where constructor_results_1.points is not NULL
  limit 21);
-- meta {"num_joins":1,"num_aggregates":6,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    max(
      drivers_1.dob), 
    drivers_1.nationality
  from 
    drivers as drivers_1
  where drivers_1.driverid is not NULL
  group by drivers_1.nationality
  limit 21)
UNION
(select  
    max(
      standings_1.date), 
    circuits_1.circuitref
  from 
    circuits as circuits_1
      inner join standings as standings_1
      on (circuits_1.circuitid = standings_1.driverstandingsid )
  where standings_1.position is not NULL
  group by circuits_1.alt, circuits_1.lng, circuits_1.location, circuits_1.name, standings_1.driverid, standings_1.driverstandingsid, standings_1.raceid
  limit 27);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    count(*)
  from 
    constructor_results as constructor_results_1
      inner join constructors as constructors_1
      on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
  where constructors_1.nationality is not NULL
  limit 33)
UNION
(select  
    min(
      constructor_results_2.constructorid)
  from 
    constructor_results as constructor_results_2
  where constructor_results_2.constructorresultsid is not NULL
  group by constructor_results_2.constructorid, constructor_results_2.constructorresultsid, constructor_results_2.points, constructor_results_2.raceid
  limit 26);
-- meta {"num_joins":5,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    drivers_1.code, 
    races_1.year, 
    circuits_1.circuitref, 
    constructor_standings_1.constructorid, 
    drivers_1.driverid
  from 
    circuits as circuits_1
        inner join drivers as drivers_1
        on (circuits_1.circuitid = drivers_1.driverid )
      inner join races as races_1
        inner join qualifying as qualifying_1
            inner join drivers as drivers_2
            on (qualifying_1.qualifyid = drivers_2.driverid )
          inner join constructor_standings as constructor_standings_1
          on (drivers_2.driverid = constructor_standings_1.constructorstandingsid )
        on (races_1.raceid = drivers_2.driverid )
      on (circuits_1.circuitid = races_1.raceid )
  where circuits_1.alt <= circuits_1.lng
  limit 12)
INTERSECT
(select  
    max(
      constructor_results_1.constructorid), 
    constructor_results_1.constructorresultsid, 
    sum(
      constructor_results_1.points), 
    constructor_results_1.constructorresultsid, 
    constructor_results_1.constructorid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.date is not NULL
  group by constructor_results_1.constructorresultsid, constructor_results_1.date
  limit 19);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    sum(
      circuits_1.alt)
  from 
    circuits as circuits_1
  where circuits_1.lat is not NULL
  limit 17)
INTERSECT
(select  
    avg(
      constructor_standings_1.points)
  from 
    standings as standings_1
      inner join constructor_standings as constructor_standings_1
      on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
  where constructor_standings_1.points >= standings_1.points
  limit 8);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_standings_1.wins, 
    constructor_standings_1.points, 
    constructor_standings_1.raceid, 
    constructor_standings_1.date, 
    min(
      constructor_standings_1.points), 
    constructor_standings_1.constructorid
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.wins is not NULL
  group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.wins
  limit 16)
UNION
(select  
    constructor_results_1.constructorresultsid, 
    constructor_results_1.points, 
    constructor_results_1.constructorresultsid, 
    constructor_results_1.date, 
    min(
      constructor_results_1.points), 
    constructor_results_1.constructorid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorresultsid > constructor_results_1.constructorid
  limit 9);
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*)
from 
  results as results_1
    inner join races as races_1
      inner join circuits as circuits_1
        inner join results as results_2
        on (circuits_1.circuitid = results_2.resultid )
      on (races_1.raceid = results_2.resultid )
    on (results_1.resultid = races_1.raceid )
where circuits_1.lng is not NULL
limit 2;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructors_1.constructorref, 
    constructors_1.name, 
    constructors_1.nationality, 
    qualifying_1.constructorid, 
    constructors_1.constructorid
  from 
    constructors as constructors_1
      inner join qualifying as qualifying_1
      on (constructors_1.constructorid = qualifying_1.qualifyid )
  where qualifying_1.position is not NULL
  limit 38)
EXCEPT
(select  
    races_1.time, 
    constructors_2.constructorref, 
    circuits_1.circuitref, 
    constructors_2.constructorid, 
    races_1.raceid
  from 
    constructors as constructors_2
      inner join circuits as circuits_1
        inner join races as races_1
        on (circuits_1.circuitid = races_1.raceid )
      on (constructors_2.constructorid = races_1.raceid )
  where races_1.date >= races_1.date
  limit 5);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    standings_1.points, 
    standings_1.driverstandingsid
  from 
    standings as standings_1
      inner join constructor_results as constructor_results_1
          inner join circuits as circuits_1
          on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
        inner join constructor_results as constructor_results_2
        on (circuits_1.circuitid = constructor_results_2.constructorresultsid )
      on (standings_1.driverstandingsid = circuits_1.circuitid )
  where constructor_results_1.points is not NULL
  limit 24)
UNION
(select  
    min(
      races_1.date), 
    races_1.round
  from 
    races as races_1
  where races_1.year is not NULL
  limit 15);
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    qualifying_1.constructorid, 
    sum(
      results_1.resultid), 
    max(
      results_1.fastestlap)
  from 
    results as results_1
      inner join qualifying as qualifying_1
      on (results_1.resultid = qualifying_1.qualifyid )
  where results_1.resultid is not NULL
  group by qualifying_1.constructorid
  limit 33)
EXCEPT
(select  
    results_2.statusid, 
    avg(
      qualifying_2.qualifyid), 
    avg(
      circuits_1.alt)
  from 
    qualifying as qualifying_2
        inner join circuits as circuits_1
        on (qualifying_2.qualifyid = circuits_1.circuitid )
      inner join results as results_2
      on (qualifying_2.qualifyid = results_2.resultid )
  where qualifying_2.number = results_2.positionorder
  limit 19);
-- meta {"num_joins":1,"num_aggregates":6,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_results_1.constructorid, 
    constructor_results_1.date, 
    avg(
      constructor_results_1.points), 
    constructor_results_1.raceid, 
    min(
      constructor_results_1.date), 
    avg(
      constructor_results_1.points)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.date > constructor_results_1.date
  group by constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.raceid
  limit 12)
EXCEPT
(select  
    max(
      constructor_standings_1.position), 
    constructor_standings_1.date, 
    min(
      constructor_standings_1.points), 
    constructor_standings_1.position, 
    max(
      constructor_standings_1.date), 
    avg(
      constructor_standings_1.points)
  from 
    constructor_standings as constructor_standings_1
      inner join constructors as constructors_1
      on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
  where constructor_standings_1.points > constructor_standings_1.points
  group by constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.wins, constructors_1.constructorid, constructors_1.nationality
  limit 33);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.name, 
  races_1.time, 
  races_1.date, 
  results_1.driverid, 
  races_1.raceid, 
  results_1.raceid, 
  results_1.resultid, 
  races_1.round, 
  results_1.laps, 
  races_1.year, 
  races_1.circuitid, 
  results_1.date, 
  results_1.number, 
  min(
    races_1.year), 
  max(
    results_1.date), 
  results_1.fastestlap, 
  results_1.rank
from 
  results as results_1
    inner join races as races_1
    on (results_1.resultid = races_1.raceid )
where races_1.date > results_1.date
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year, results_1.date, results_1.driverid, results_1.fastestlap, results_1.laps, results_1.number, results_1.raceid, results_1.rank, results_1.resultid
limit 34;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    circuits_1.country, 
    circuits_1.name, 
    circuits_1.lng, 
    qualifying_1.driverid, 
    circuits_1.location, 
    qualifying_1.date, 
    circuits_1.circuitref, 
    qualifying_1.qualifyid
  from 
    circuits as circuits_1
      inner join qualifying as qualifying_1
      on (circuits_1.circuitid = qualifying_1.qualifyid )
  where qualifying_1.constructorid is not NULL
  limit 21)
INTERSECT
(select  
    count(
      standings_1.driverid), 
    sum(
      standings_1.driverid), 
    standings_1.points, 
    avg(
      standings_1.points), 
    max(
      standings_1.date), 
    standings_1.date, 
    max(
      standings_1.date), 
    standings_1.driverstandingsid
  from 
    standings as standings_1
  where standings_1.points is not NULL
  limit 12);
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_standings_1.constructorid
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.date is not NULL
  limit 26)
EXCEPT
(select  
    qualifying_2.constructorid
  from 
    qualifying as qualifying_1
        inner join drivers as drivers_1
          inner join constructor_standings as constructor_standings_2
          on (drivers_1.driverid = constructor_standings_2.constructorstandingsid )
        on (qualifying_1.qualifyid = constructor_standings_2.constructorstandingsid )
      inner join qualifying as qualifying_2
      on (qualifying_1.qualifyid = qualifying_2.qualifyid )
  where qualifying_2.number is not NULL
  group by constructor_standings_2.raceid, constructor_standings_2.wins, drivers_1.code, drivers_1.driverref, qualifying_1.raceid, qualifying_2.driverid
  limit 27);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    qualifying_1.qualifyid, 
    max(
      qualifying_1.number), 
    qualifying_1.date, 
    qualifying_1.number, 
    qualifying_1.position
  from 
    qualifying as qualifying_1
  where qualifying_1.number is not NULL
  group by qualifying_1.date, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid
  limit 6)
UNION
(select  
    min(
      constructors_1.constructorid), 
    max(
      constructors_1.constructorid), 
    avg(
      constructors_1.constructorid), 
    constructors_1.constructorid, 
    constructors_1.constructorid
  from 
    constructors as constructors_1
  where constructors_1.constructorid is not NULL
  group by constructors_1.constructorref, constructors_1.name, constructors_1.nationality
  limit 6);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_standings_1.raceid
  from 
    constructor_standings as constructor_standings_1
      inner join constructor_results as constructor_results_1
      on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
  where constructor_standings_1.wins is not NULL
  limit 6)
UNION
(select  
    circuits_1.circuitid
  from 
    circuits as circuits_1
  where circuits_1.circuitref is not NULL
  limit 29);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    races_1.name, 
    races_1.circuitid, 
    races_1.round
  from 
    races as races_1
  where races_1.year is not NULL
  limit 9)
EXCEPT
(select  
    races_2.name, 
    max(
      races_2.date), 
    races_2.circuitid
  from 
    races as races_2
  where races_2.time is not NULL
  group by races_2.circuitid, races_2.date, races_2.name, races_2.raceid
  limit 7);
-- meta {"num_joins":5,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    circuits_1.country
  from 
    circuits as circuits_1
      inner join results as results_1
      on (circuits_1.circuitid = results_1.resultid )
  where results_1.rank is not NULL
  limit 8)
EXCEPT
(select  
    constructors_1.name
  from 
    constructors as constructors_1
        inner join circuits as circuits_2
        on (constructors_1.constructorid = circuits_2.circuitid )
      inner join qualifying as qualifying_1
          inner join results as results_2
          on (qualifying_1.qualifyid = results_2.resultid )
        inner join results as results_3
        on (qualifying_1.qualifyid = results_3.resultid )
      on (circuits_2.circuitid = results_2.resultid )
  where results_3.constructorid is not NULL
  group by circuits_2.name, results_2.milliseconds
  limit 16);
-- meta {"num_joins":3,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    min(
      qualifying_1.constructorid), 
    qualifying_1.raceid, 
    qualifying_1.constructorid, 
    qualifying_1.qualifyid, 
    qualifying_1.position
  from 
    qualifying as qualifying_1
  where qualifying_1.number is not NULL
  group by qualifying_1.constructorid, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
  limit 12)
UNION
(select  
    count(
      results_1.milliseconds), 
    results_1.statusid, 
    results_1.grid, 
    results_1.raceid, 
    min(
      drivers_1.dob)
  from 
    drivers as drivers_1
      inner join standings as standings_1
          inner join constructors as constructors_1
          on (standings_1.driverstandingsid = constructors_1.constructorid )
        inner join results as results_1
        on (standings_1.driverstandingsid = results_1.resultid )
      on (drivers_1.driverid = results_1.resultid )
  where results_1.resultid > results_1.driverid
  limit 29);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    circuits_1.circuitref, 
    circuits_1.circuitid
  from 
    circuits as circuits_1
      inner join circuits as circuits_2
      on (circuits_1.circuitid = circuits_2.circuitid )
  where circuits_1.circuitid <= circuits_2.circuitid
  limit 19)
INTERSECT
(select  
    min(
      qualifying_1.raceid), 
    qualifying_1.position
  from 
    qualifying as qualifying_1
  where qualifying_1.qualifyid is not NULL
  group by qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.number, qualifying_1.qualifyid
  limit 38);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    races_1.round, 
    avg(
      races_1.round), 
    races_1.name, 
    races_1.raceid
  from 
    races as races_1
  where races_1.round is not NULL
  group by races_1.name, races_1.raceid, races_1.round
  limit 21)
EXCEPT
(select  
    results_1.raceid, 
    avg(
      results_1.grid), 
    circuits_1.location, 
    results_1.resultid
  from 
    results as results_1
      inner join circuits as circuits_1
      on (results_1.resultid = circuits_1.circuitid )
  where circuits_1.circuitref is not NULL
  limit 30);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    drivers_1.driverid, 
    drivers_1.surname, 
    drivers_1.driverref, 
    drivers_1.dob, 
    drivers_1.code, 
    drivers_1.nationality, 
    drivers_1.forename, 
    min(
      drivers_1.driverid)
  from 
    drivers as drivers_1
  where drivers_1.driverref is not NULL
  group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
  limit 17)
UNION
(select  
    constructor_standings_1.constructorstandingsid, 
    min(
      constructor_standings_1.constructorid), 
    max(
      constructor_standings_1.date), 
    max(
      constructor_standings_1.points), 
    max(
      constructor_standings_1.date), 
    max(
      constructor_standings_1.date), 
    max(
      constructor_standings_1.points), 
    max(
      constructor_standings_1.position)
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.wins is not NULL
  group by constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.wins
  limit 34);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    count(*), 
    constructor_results_1.points
  from 
    constructor_results as constructor_results_1
      inner join drivers as drivers_1
      on (constructor_results_1.constructorresultsid = drivers_1.driverid )
  where constructor_results_1.date is not NULL
  group by constructor_results_1.points
  limit 21)
UNION
(select  
    count(*), 
    sum(
      races_1.raceid)
  from 
    races as races_1
  where races_1.circuitid >= races_1.round
  limit 1);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    qualifying_1.driverid
  from 
    qualifying as qualifying_1
  where qualifying_1.date is not NULL
  limit 23)
INTERSECT
(select  
    races_1.round
  from 
    races as races_1
  where races_1.round is not NULL
  limit 40);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_standings_1.wins, 
    constructor_standings_1.points, 
    constructor_standings_1.constructorstandingsid, 
    constructor_standings_1.raceid, 
    constructor_standings_1.date, 
    min(
      constructor_standings_1.date)
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.position is not NULL
  group by constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.wins
  limit 31)
INTERSECT
(select  
    drivers_1.driverid, 
    min(
      drivers_1.dob), 
    drivers_1.driverid, 
    drivers_1.driverid, 
    drivers_1.dob, 
    min(
      drivers_1.dob)
  from 
    drivers as drivers_1
  where drivers_1.forename is not NULL
  limit 41);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    races_1.circuitid, 
    races_1.time
  from 
    races as races_1
  where races_1.raceid is not NULL
  limit 3)
EXCEPT
(select  
    constructor_standings_1.raceid, 
    count(
      constructor_standings_1.constructorid)
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.points is not NULL
  group by constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.wins
  limit 41);
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    standings_1.driverstandingsid, 
    constructor_results_1.points, 
    standings_1.driverid, 
    constructor_results_1.date, 
    circuits_1.lng, 
    circuits_1.alt, 
    standings_1.wins, 
    max(
      standings_1.driverid), 
    standings_1.position, 
    circuits_1.circuitref, 
    min(
      circuits_1.alt)
  from 
    constructor_results as constructor_results_1
        inner join circuits as circuits_1
        on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
      inner join standings as standings_1
      on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
  where constructor_results_1.date is not NULL
  group by circuits_1.alt, circuits_1.circuitref, circuits_1.lng, constructor_results_1.date, constructor_results_1.points, standings_1.driverid, standings_1.driverstandingsid, standings_1.position, standings_1.wins
  limit 28)
INTERSECT
(select  
    min(
      circuits_2.alt), 
    circuits_2.alt, 
    circuits_2.circuitid, 
    min(
      circuits_2.circuitid), 
    circuits_2.lng, 
    circuits_2.lng, 
    circuits_2.circuitid, 
    min(
      circuits_2.circuitid), 
    circuits_2.circuitid, 
    circuits_2.circuitref, 
    min(
      circuits_2.alt)
  from 
    circuits as circuits_2
  where circuits_2.name is not NULL
  limit 16);
-- meta {"num_joins":3,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_standings_2.constructorstandingsid, 
    constructor_standings_2.position, 
    drivers_1.driverid, 
    races_1.circuitid
  from 
    constructor_standings as constructor_standings_1
      inner join constructor_standings as constructor_standings_2
        inner join races as races_1
          inner join drivers as drivers_1
          on (races_1.raceid = drivers_1.driverid )
        on (constructor_standings_2.constructorstandingsid = drivers_1.driverid )
      on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
  where constructor_standings_2.wins is not NULL
  limit 7)
UNION
(select  
    max(
      results_1.date), 
    results_1.raceid, 
    min(
      results_1.points), 
    results_1.grid
  from 
    results as results_1
  where results_1.milliseconds > results_1.points
  group by results_1.date, results_1.grid, results_1.laps, results_1.rank
  limit 16);
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    standings_1.driverid, 
    standings_1.date, 
    standings_2.position, 
    standings_3.points, 
    standings_1.points, 
    standings_1.position
  from 
    standings as standings_1
        inner join standings as standings_2
          inner join constructor_standings as constructor_standings_1
          on (standings_2.driverstandingsid = constructor_standings_1.constructorstandingsid )
        on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
      inner join standings as standings_3
      on (constructor_standings_1.constructorstandingsid = standings_3.driverstandingsid )
  where standings_1.date <= standings_2.date
  limit 1)
EXCEPT
(select  
    circuits_1.circuitid, 
    sum(
      circuits_1.lat), 
    count(
      circuits_1.name), 
    circuits_1.alt, 
    circuits_1.lng, 
    circuits_1.circuitid
  from 
    circuits as circuits_1
  where circuits_1.circuitref is not NULL
  group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.name
  limit 1);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    races_1.circuitid
  from 
    races as races_1
  where races_1.time > races_1.name
  limit 18)
EXCEPT
(select  
    min(
      races_2.date)
  from 
    races as races_2
  where races_2.circuitid is not NULL
  group by races_2.date, races_2.name, races_2.round, races_2.time, races_2.year
  limit 16);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    drivers_1.nationality, 
    drivers_1.driverid, 
    drivers_1.forename, 
    drivers_1.dob
  from 
    drivers as drivers_1
  where drivers_1.dob is not NULL
  limit 42)
INTERSECT
(select  
    sum(
      qualifying_1.number), 
    qualifying_1.qualifyid, 
    max(
      qualifying_1.date), 
    qualifying_1.date
  from 
    qualifying as qualifying_1
  where qualifying_1.date < qualifying_1.date
  group by qualifying_1.date, qualifying_1.number
  limit 30);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
limit 27;
-- meta {"num_joins":3,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    avg(
      standings_1.raceid), 
    standings_1.raceid, 
    count(*)
  from 
    standings as standings_1
  where standings_1.raceid = standings_1.wins
  group by standings_1.raceid
  limit 40)
INTERSECT
(select  
    sum(
      races_1.year), 
    results_1.laps, 
    min(
      results_1.laps)
  from 
    races as races_1
        inner join constructor_standings as constructor_standings_1
        on (races_1.raceid = constructor_standings_1.constructorstandingsid )
      inner join results as results_1
        inner join drivers as drivers_1
        on (results_1.resultid = drivers_1.driverid )
      on (races_1.raceid = results_1.resultid )
  where results_1.date = drivers_1.dob
  limit 36);
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_results_1.constructorid, 
    circuits_1.circuitref, 
    count(
      standings_2.wins)
  from 
    constructors as constructors_1
        inner join circuits as circuits_1
        on (constructors_1.constructorid = circuits_1.circuitid )
      inner join standings as standings_1
          inner join standings as standings_2
          on (standings_1.driverstandingsid = standings_2.driverstandingsid )
        inner join constructor_results as constructor_results_1
        on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
      on (constructors_1.constructorid = standings_1.driverstandingsid )
  where constructor_results_1.constructorresultsid = standings_2.driverid
  group by circuits_1.circuitref, constructor_results_1.constructorid
  limit 26)
EXCEPT
(select  
    constructors_2.constructorid, 
    constructors_2.nationality, 
    max(
      constructors_2.constructorid)
  from 
    constructors as constructors_2
  where constructors_2.constructorref is not NULL
  limit 4);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    standings_1.driverid, 
    standings_1.position, 
    standings_1.raceid, 
    standings_1.wins
  from 
    standings as standings_1
  where standings_1.points = standings_1.points
  limit 7)
EXCEPT
(select  
    results_1.raceid, 
    results_1.constructorid, 
    results_1.driverid, 
    results_1.driverid
  from 
    results as results_1
  where results_1.date < results_1.date
  group by results_1.date, results_1.fastestlap, results_1.laps, results_1.positionorder, results_1.raceid, results_1.rank, results_1.resultid, results_1.statusid
  limit 21);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    races_1.round
  from 
    races as races_1
  where races_1.raceid is not NULL
  limit 33)
INTERSECT
(select distinct 
    min(
      constructor_results_1.raceid)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.raceid is not NULL
  limit 18);
-- meta {"num_joins":2,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    results_1.statusid, 
    results_1.driverid, 
    constructor_standings_1.date, 
    count(*), 
    results_1.raceid
  from 
    results as results_1
      inner join constructor_standings as constructor_standings_1
      on (results_1.resultid = constructor_standings_1.constructorstandingsid )
  where constructor_standings_1.constructorid is not NULL
  group by constructor_standings_1.date, results_1.driverid, results_1.raceid, results_1.statusid
  limit 25)
UNION
(select  
    standings_1.driverid, 
    qualifying_1.raceid, 
    qualifying_1.date, 
    min(
      standings_1.position), 
    standings_1.wins
  from 
    standings as standings_1
      inner join qualifying as qualifying_1
      on (standings_1.driverstandingsid = qualifying_1.qualifyid )
  where qualifying_1.driverid is not NULL
  group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.qualifyid, standings_1.position, standings_1.wins
  limit 18);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    standings_1.points, 
    standings_1.driverstandingsid, 
    standings_1.raceid
  from 
    standings as standings_1
  where standings_1.raceid is not NULL
  limit 16)
EXCEPT
(select  
    constructor_results_1.points, 
    constructor_results_1.raceid, 
    sum(
      constructor_results_1.points)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.raceid is not NULL
  group by constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.raceid
  limit 27);
-- meta {"num_joins":2,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    circuits_2.circuitref, 
    standings_1.driverstandingsid, 
    standings_1.wins, 
    circuits_1.location, 
    min(
      standings_1.date), 
    circuits_1.lng, 
    standings_1.driverid, 
    circuits_2.circuitid, 
    circuits_1.country, 
    max(
      standings_1.driverid)
  from 
    standings as standings_1
      inner join circuits as circuits_1
        inner join circuits as circuits_2
        on (circuits_1.circuitid = circuits_2.circuitid )
      on (standings_1.driverstandingsid = circuits_1.circuitid )
  where circuits_2.alt <= circuits_1.lat
  group by circuits_1.country, circuits_1.lng, circuits_1.location, circuits_2.circuitid, circuits_2.circuitref, standings_1.driverid, standings_1.driverstandingsid, standings_1.wins
  limit 27)
UNION
(select  
    max(
      constructor_results_1.points), 
    sum(
      constructor_results_1.raceid), 
    constructor_results_1.constructorid, 
    count(
      constructor_results_1.points), 
    max(
      constructor_results_1.date), 
    constructor_results_1.points, 
    constructor_results_1.constructorresultsid, 
    sum(
      constructor_results_1.points), 
    max(
      constructor_results_1.date), 
    count(
      constructor_results_1.constructorresultsid)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.points is not NULL
  group by constructor_results_1.date, constructor_results_1.raceid
  limit 36);
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    results_1.milliseconds, 
    avg(
      results_1.resultid), 
    results_1.number
  from 
    results as results_1
  where results_1.points is not NULL
  group by results_1.milliseconds, results_1.number
  limit 40)
INTERSECT
(select  
    circuits_1.alt, 
    sum(
      constructor_results_1.raceid), 
    count(*)
  from 
    circuits as circuits_1
        inner join constructors as constructors_1
        on (circuits_1.circuitid = constructors_1.constructorid )
      inner join constructor_results as constructor_results_1
          inner join constructor_results as constructor_results_2
          on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
        inner join races as races_1
        on (constructor_results_1.constructorresultsid = races_1.raceid )
      on (constructors_1.constructorid = races_1.raceid )
  where races_1.raceid is not NULL
  limit 23);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    circuits_1.location
  from 
    circuits as circuits_1
  where circuits_1.name <= circuits_1.location
  limit 16)
UNION
(select  
    count(*)
  from 
    constructor_standings as constructor_standings_1
      inner join constructor_results as constructor_results_1
      on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
  where constructor_standings_1.date is not NULL
  limit 10);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    circuits_1.location, 
    circuits_1.country, 
    circuits_1.circuitid
  from 
    circuits as circuits_1
  where circuits_1.circuitref is not NULL
  limit 1)
UNION
(select  
    circuits_2.name, 
    circuits_2.location, 
    constructor_standings_1.constructorstandingsid
  from 
    circuits as circuits_2
      inner join constructor_standings as constructor_standings_1
      on (circuits_2.circuitid = constructor_standings_1.constructorstandingsid )
  where constructor_standings_1.constructorstandingsid <= constructor_standings_1.constructorid
  group by circuits_2.circuitid, circuits_2.country, circuits_2.lat, circuits_2.lng, circuits_2.location, circuits_2.name, constructor_standings_1.date, constructor_standings_1.position
  limit 20);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    races_1.circuitid, 
    races_1.date, 
    races_1.name
  from 
    races as races_1
  where races_1.date is not NULL
  limit 20)
UNION
(select  
    results_1.laps, 
    results_1.date, 
    max(
      results_1.driverid)
  from 
    results as results_1
      inner join qualifying as qualifying_1
      on (results_1.resultid = qualifying_1.qualifyid )
  where results_1.laps is not NULL
  limit 7);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    races_1.raceid, 
    races_1.time, 
    races_1.name, 
    max(
      races_1.date), 
    min(
      races_1.round), 
    races_1.circuitid
  from 
    races as races_1
  where races_1.round is not NULL
  group by races_1.circuitid, races_1.name, races_1.raceid, races_1.time
  limit 10)
EXCEPT
(select  
    sum(
      standings_1.points), 
    avg(
      standings_1.wins), 
    sum(
      standings_1.points), 
    min(
      standings_1.date), 
    min(
      standings_1.driverstandingsid), 
    standings_1.raceid
  from 
    standings as standings_1
  where standings_1.driverid is not NULL
  group by standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid
  limit 3);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    constructor_results_1.constructorresultsid)
from 
  constructor_results as constructor_results_1
      inner join constructor_results as constructor_results_2
      on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
    inner join drivers as drivers_1
    on (constructor_results_2.constructorresultsid = drivers_1.driverid )
where drivers_1.driverid is not NULL
limit 42;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_standings_1.constructorstandingsid
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.position is not NULL
  limit 42)
UNION
(select  
    results_1.grid
  from 
    results as results_1
  where results_1.position is not NULL
  group by results_1.driverid, results_1.fastestlap, results_1.grid, results_1.milliseconds, results_1.positionorder, results_1.resultid
  limit 25);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_results_1.constructorid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorid is not NULL
  limit 41)
EXCEPT
(select  
    qualifying_1.qualifyid
  from 
    qualifying as qualifying_1
        inner join results as results_1
        on (qualifying_1.qualifyid = results_1.resultid )
      inner join constructor_results as constructor_results_2
      on (results_1.resultid = constructor_results_2.constructorresultsid )
  where results_1.rank is not NULL
  group by constructor_results_2.constructorid, constructor_results_2.points, qualifying_1.driverid, qualifying_1.qualifyid
  limit 30);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position
from 
  constructors as constructors_1
      inner join standings as standings_1
      on (constructors_1.constructorid = standings_1.driverstandingsid )
    inner join qualifying as qualifying_1
    on (standings_1.driverstandingsid = qualifying_1.qualifyid )
where standings_1.position is not NULL
limit 6;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    results_1.milliseconds, 
    results_1.driverid, 
    results_1.date, 
    results_1.position, 
    avg(
      results_1.fastestlap), 
    results_1.rank, 
    results_1.number, 
    results_1.laps
  from 
    results as results_1
  where results_1.points is not NULL
  group by results_1.date, results_1.driverid, results_1.laps, results_1.milliseconds, results_1.number, results_1.position, results_1.rank
  limit 14)
UNION
(select  
    circuits_1.lat, 
    circuits_1.circuitid, 
    avg(
      circuits_1.circuitid), 
    circuits_1.lng, 
    max(
      circuits_1.alt), 
    circuits_1.alt, 
    circuits_1.alt, 
    circuits_1.circuitid
  from 
    circuits as circuits_1
  where circuits_1.country is not NULL
  limit 42);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    results_1.date, 
    results_1.raceid, 
    constructor_results_1.date
  from 
    constructor_results as constructor_results_1
      inner join results as results_1
      on (constructor_results_1.constructorresultsid = results_1.resultid )
  where results_1.points is not NULL
  limit 40)
UNION
(select  
    drivers_1.dob, 
    drivers_1.driverid, 
    count(
      drivers_1.nationality)
  from 
    drivers as drivers_1
  where drivers_1.surname is not NULL
  limit 17);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.raceid, 
  results_1.position
from 
  results as results_1
    inner join constructor_standings as constructor_standings_1
    on (results_1.resultid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.constructorstandingsid < results_1.laps
limit 42;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 37;
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    drivers_1.nationality, 
    drivers_1.driverid, 
    constructor_standings_1.wins, 
    drivers_1.driverref, 
    constructor_results_1.constructorresultsid, 
    min(
      constructor_results_1.date)
  from 
    constructor_standings as constructor_standings_1
      inner join constructor_results as constructor_results_1
        inner join drivers as drivers_1
        on (constructor_results_1.constructorresultsid = drivers_1.driverid )
      on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
  where constructor_results_1.date >= constructor_standings_1.date
  group by constructor_results_1.constructorresultsid, constructor_standings_1.wins, drivers_1.driverid, drivers_1.driverref, drivers_1.nationality
  limit 19)
INTERSECT
(select  
    count(
      results_1.milliseconds), 
    constructors_1.constructorid, 
    results_1.resultid, 
    constructors_1.constructorref, 
    constructors_1.constructorid, 
    max(
      results_1.date)
  from 
    results as results_1
      inner join constructors as constructors_1
      on (results_1.resultid = constructors_1.constructorid )
  where constructors_1.nationality is not NULL
  group by results_1.milliseconds, results_1.statusid
  limit 26);
-- meta {"num_joins":2,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    min(
      circuits_1.lng), 
    constructors_1.constructorid
  from 
    circuits as circuits_1
      inner join constructors as constructors_1
      on (circuits_1.circuitid = constructors_1.constructorid )
  where constructors_1.constructorid <= circuits_1.circuitid
  group by constructors_1.constructorid
  limit 8)
UNION
(select  
    sum(
      standings_1.points), 
    constructor_standings_1.position
  from 
    standings as standings_1
      inner join constructor_standings as constructor_standings_1
      on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
  where standings_1.wins is not NULL
  group by standings_1.driverid
  limit 39);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 31;
-- meta {"num_joins":5,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_2.driverref, 
  qualifying_1.position, 
  sum(
    constructor_results_2.points), 
  constructor_results_2.points, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  qualifying_1.constructorid, 
  max(
    constructor_results_1.points), 
  qualifying_1.qualifyid, 
  min(
    constructor_results_2.points)
from 
  drivers as drivers_1
    inner join constructor_results as constructor_results_1
      inner join constructor_results as constructor_results_2
            inner join constructors as constructors_1
            on (constructor_results_2.constructorresultsid = constructors_1.constructorid )
          inner join qualifying as qualifying_1
          on (constructor_results_2.constructorresultsid = qualifying_1.qualifyid )
        inner join drivers as drivers_2
        on (constructor_results_2.constructorresultsid = drivers_2.driverid )
      on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
    on (drivers_1.driverid = drivers_2.driverid )
where constructor_results_1.constructorid = drivers_2.driverid
group by constructor_results_1.date, constructor_results_1.raceid, constructor_results_2.points, drivers_2.driverref, qualifying_1.constructorid, qualifying_1.position, qualifying_1.qualifyid
limit 2;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    races_1.time, 
    races_2.raceid
  from 
    races as races_1
      inner join races as races_2
      on (races_1.raceid = races_2.raceid )
  where races_2.year is not NULL
  limit 39)
EXCEPT
(select  
    races_4.time, 
    max(
      races_3.circuitid)
  from 
    constructors as constructors_1
          inner join races as races_3
          on (constructors_1.constructorid = races_3.raceid )
        inner join races as races_4
        on (races_3.raceid = races_4.raceid )
      inner join constructor_results as constructor_results_1
      on (races_4.raceid = constructor_results_1.constructorresultsid )
  where races_4.name is not NULL
  group by constructor_results_1.raceid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality, races_3.name
  limit 16);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_standings_1.wins, 
    constructor_standings_1.constructorid, 
    constructor_standings_1.position, 
    constructor_standings_1.constructorstandingsid, 
    min(
      constructor_standings_1.points)
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.date is not NULL
  group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.position, constructor_standings_1.wins
  limit 22)
INTERSECT
(select  
    constructor_standings_2.wins, 
    constructor_standings_2.constructorstandingsid, 
    constructor_standings_2.constructorid, 
    constructor_standings_2.constructorid, 
    max(
      constructor_standings_2.points)
  from 
    constructor_standings as constructor_standings_2
  where constructor_standings_2.raceid is not NULL
  group by constructor_standings_2.constructorstandingsid, constructor_standings_2.date, constructor_standings_2.points, constructor_standings_2.position, constructor_standings_2.raceid, constructor_standings_2.wins
  limit 38);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    max(
      races_1.date)
  from 
    races as races_1
  where races_1.name is not NULL
  limit 29)
INTERSECT
(select  
    min(
      results_1.date)
  from 
    results as results_1
  where results_1.position = results_1.fastestlap
  limit 29);
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    results_1.constructorid), 
  races_1.year, 
  qualifying_1.qualifyid, 
  qualifying_1.date, 
  qualifying_1.constructorid, 
  results_1.resultid, 
  max(
    qualifying_1.raceid), 
  races_1.round, 
  results_1.fastestlap
from 
  qualifying as qualifying_1
    inner join results as results_1
      inner join races as races_1
      on (results_1.resultid = races_1.raceid )
    on (qualifying_1.qualifyid = races_1.raceid )
where races_1.year is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.qualifyid, races_1.round, races_1.year, results_1.fastestlap, results_1.resultid
limit 41;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    circuits_1.country, 
    circuits_1.circuitref, 
    drivers_1.dob
  from 
    circuits as circuits_1
      inner join drivers as drivers_1
      on (circuits_1.circuitid = drivers_1.driverid )
  where circuits_1.lat >= circuits_1.alt
  limit 41)
UNION
(select  
    max(
      qualifying_1.date), 
    max(
      qualifying_1.date), 
    max(
      qualifying_1.driverid)
  from 
    qualifying as qualifying_1
  where qualifying_1.driverid = qualifying_1.qualifyid
  group by qualifying_1.number, qualifying_1.position, qualifying_1.raceid
  limit 7);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    circuits_1.lat, 
    circuits_1.lng, 
    circuits_1.circuitid, 
    circuits_1.alt, 
    sum(
      circuits_1.circuitid), 
    circuits_1.name, 
    circuits_1.location, 
    circuits_1.country
  from 
    circuits as circuits_1
  where circuits_1.location is not NULL
  group by circuits_1.alt, circuits_1.circuitid, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.location, circuits_1.name
  limit 1)
EXCEPT
(select  
    max(
      constructors_1.constructorid), 
    count(
      constructors_1.constructorid), 
    constructors_1.constructorid, 
    min(
      constructors_1.constructorid), 
    sum(
      constructors_1.constructorid), 
    constructors_1.nationality, 
    constructors_1.nationality, 
    min(
      constructors_1.constructorid)
  from 
    constructors as constructors_1
  where constructors_1.nationality is not NULL
  group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
  limit 28);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_standings_1.position, 
    sum(
      constructor_standings_1.position), 
    constructor_standings_1.raceid, 
    constructor_standings_1.wins, 
    max(
      constructor_standings_1.date), 
    sum(
      constructor_standings_1.wins)
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.raceid is not NULL
  group by constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
  limit 19)
UNION
(select  
    constructor_standings_2.constructorstandingsid, 
    sum(
      constructor_standings_2.position), 
    constructor_standings_2.constructorstandingsid, 
    constructor_standings_2.raceid, 
    max(
      constructor_standings_2.date), 
    avg(
      constructor_standings_2.wins)
  from 
    constructor_standings as constructor_standings_2
  where constructor_standings_2.raceid = constructor_standings_2.constructorstandingsid
  limit 22);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    races_1.circuitid, 
    races_1.year, 
    races_1.raceid, 
    races_1.name, 
    count(*), 
    races_1.date
  from 
    races as races_1
  where races_1.time is not NULL
  group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.year
  limit 41)
EXCEPT
(select  
    circuits_1.circuitid, 
    circuits_1.circuitid, 
    circuits_1.circuitid, 
    circuits_1.country, 
    min(
      circuits_1.circuitid), 
    sum(
      circuits_1.alt)
  from 
    circuits as circuits_1
  where circuits_1.circuitid < circuits_1.circuitid
  group by circuits_1.circuitref
  limit 32);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructors_1.constructorref, 
    min(
      circuits_1.circuitid), 
    circuits_1.lng, 
    circuits_1.location, 
    constructors_1.name, 
    constructors_1.constructorid
  from 
    constructors as constructors_1
      inner join circuits as circuits_1
      on (constructors_1.constructorid = circuits_1.circuitid )
  where constructors_1.nationality is not NULL
  group by circuits_1.lng, circuits_1.location, constructors_1.constructorid, constructors_1.constructorref, constructors_1.name
  limit 14)
EXCEPT
(select  
    count(*), 
    max(
      standings_1.driverid), 
    standings_1.points, 
    min(
      standings_1.raceid), 
    min(
      standings_1.date), 
    standings_1.raceid
  from 
    standings as standings_1
  where standings_1.date >= standings_1.date
  group by standings_1.position, standings_1.raceid
  limit 27);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    races_1.round, 
    races_1.circuitid
  from 
    races as races_1
  where races_1.date <= races_1.date
  limit 39)
UNION
(select  
    constructors_1.constructorid, 
    min(
      constructors_1.constructorid)
  from 
    constructors as constructors_1
  where constructors_1.constructorref is not NULL
  group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
  limit 22);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
limit 20;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_results_1.points, 
    constructor_results_1.constructorresultsid, 
    constructor_results_1.raceid, 
    constructor_results_1.date, 
    min(
      constructor_results_1.date)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.raceid is not NULL
  group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
  limit 33)
UNION
(select  
    count(
      qualifying_1.driverid), 
    qualifying_1.position, 
    sum(
      qualifying_1.position), 
    qualifying_1.date, 
    min(
      qualifying_1.date)
  from 
    qualifying as qualifying_1
  where qualifying_1.date <= qualifying_1.date
  limit 5);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructors_1.name, 
    min(
      constructors_1.constructorid), 
    constructors_1.constructorref
  from 
    constructors as constructors_1
  where constructors_1.constructorref is not NULL
  group by constructors_1.constructorref, constructors_1.name
  limit 36)
EXCEPT
(select  
    count(*), 
    count(*), 
    max(
      constructor_results_1.raceid)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.raceid is not NULL
  limit 15);
-- meta {"num_joins":4,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    results_2.date, 
    results_1.raceid, 
    circuits_1.circuitid, 
    races_1.year, 
    results_2.position, 
    results_2.points, 
    races_1.raceid, 
    count(*), 
    races_1.time, 
    results_1.position, 
    avg(
      results_1.driverid), 
    sum(
      results_1.points)
  from 
    races as races_1
          inner join results as results_1
          on (races_1.raceid = results_1.resultid )
        inner join results as results_2
        on (results_1.resultid = results_2.resultid )
      inner join circuits as circuits_1
      on (races_1.raceid = circuits_1.circuitid )
  where races_1.time <= circuits_1.country
  group by circuits_1.circuitid, races_1.raceid, races_1.time, races_1.year, results_1.position, results_1.raceid, results_2.date, results_2.points, results_2.position
  limit 19)
UNION
(select  
    standings_1.date, 
    max(
      constructor_standings_1.constructorid), 
    standings_1.raceid, 
    constructor_standings_1.constructorid, 
    standings_1.points, 
    standings_1.points, 
    constructor_standings_1.position, 
    max(
      standings_1.raceid), 
    sum(
      constructor_standings_1.constructorid), 
    standings_1.points, 
    sum(
      standings_1.position), 
    sum(
      constructor_standings_1.points)
  from 
    constructor_standings as constructor_standings_1
      inner join standings as standings_1
      on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
  where constructor_standings_1.constructorstandingsid is not NULL
  group by constructor_standings_1.date, standings_1.driverid, standings_1.wins
  limit 38);
-- meta {"num_joins":1,"num_aggregates":6,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    min(
      constructors_1.constructorid), 
    constructors_1.name, 
    constructors_1.nationality, 
    constructors_1.constructorref, 
    constructors_1.constructorid, 
    sum(
      constructors_1.constructorid), 
    count(
      constructors_1.nationality), 
    max(
      constructors_1.constructorid), 
    max(
      constructors_1.constructorid)
  from 
    constructors as constructors_1
  where constructors_1.nationality is not NULL
  group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
  limit 11)
INTERSECT
(select  
    count(*), 
    count(*), 
    drivers_2.nationality, 
    drivers_1.driverref, 
    drivers_2.driverid, 
    avg(
      drivers_2.driverid), 
    count(
      drivers_1.dob), 
    count(*), 
    max(
      drivers_1.driverid)
  from 
    drivers as drivers_1
      inner join drivers as drivers_2
      on (drivers_1.driverid = drivers_2.driverid )
  where drivers_1.forename is not NULL
  group by drivers_1.code, drivers_1.nationality, drivers_2.code, drivers_2.nationality
  limit 11);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_standings_1.points
  from 
    constructor_standings as constructor_standings_1
      inner join circuits as circuits_1
      on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
  where circuits_1.name is not NULL
  limit 19)
INTERSECT
(select  
    results_1.points
  from 
    races as races_1
        inner join races as races_2
        on (races_1.raceid = races_2.raceid )
      inner join results as results_1
      on (races_1.raceid = results_1.resultid )
  where races_2.name is not NULL
  limit 15);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    races_1.time
  from 
    races as races_1
  where races_1.raceid is not NULL
  limit 20)
EXCEPT
(select  
    circuits_1.country
  from 
    circuits as circuits_1
  where circuits_1.lat is not NULL
  group by circuits_1.alt, circuits_1.circuitid, circuits_1.lat
  limit 6);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_2.dob, 
  drivers_1.surname
from 
  drivers as drivers_1
    inner join drivers as drivers_2
    on (drivers_1.driverid = drivers_2.driverid )
where drivers_2.code <= drivers_2.surname
limit 4;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    circuits_1.circuitref, 
    sum(
      constructor_results_1.constructorresultsid), 
    max(
      constructor_results_1.date), 
    constructor_results_1.date, 
    circuits_1.name, 
    constructor_results_1.constructorresultsid, 
    constructor_results_1.constructorid, 
    circuits_1.location, 
    avg(
      circuits_1.lat)
  from 
    constructor_results as constructor_results_1
      inner join circuits as circuits_1
      on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
  where constructor_results_1.points is not NULL
  group by circuits_1.circuitref, circuits_1.location, circuits_1.name, constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date
  limit 35)
UNION
(select  
    count(
      standings_1.wins), 
    sum(
      standings_1.position), 
    min(
      standings_1.date), 
    standings_1.date, 
    min(
      standings_1.points), 
    standings_1.wins, 
    standings_1.wins, 
    max(
      standings_1.points), 
    sum(
      standings_1.points)
  from 
    standings as standings_1
  where standings_1.driverstandingsid > standings_1.driverid
  limit 38);
-- meta {"num_joins":1,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    max(
      qualifying_1.date), 
    constructors_1.constructorid, 
    qualifying_1.position, 
    constructors_1.name, 
    min(
      qualifying_1.date), 
    max(
      qualifying_1.date), 
    constructors_1.nationality, 
    qualifying_1.number, 
    qualifying_1.constructorid, 
    qualifying_1.driverid, 
    constructors_1.constructorref
  from 
    qualifying as qualifying_1
      inner join constructors as constructors_1
      on (qualifying_1.qualifyid = constructors_1.constructorid )
  where constructors_1.name is not NULL
  group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality, qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.number, qualifying_1.position
  limit 37)
UNION
(select  
    min(
      drivers_1.dob), 
    drivers_1.driverid, 
    drivers_1.driverid, 
    drivers_1.surname, 
    min(
      drivers_1.dob), 
    max(
      drivers_1.dob), 
    drivers_1.nationality, 
    drivers_1.driverid, 
    drivers_1.driverid, 
    drivers_1.driverid, 
    max(
      drivers_1.dob)
  from 
    drivers as drivers_1
  where drivers_1.forename is not NULL
  group by drivers_1.forename
  limit 23);
-- meta {"num_joins":3,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    max(
      drivers_1.driverid), 
    constructors_1.constructorid
  from 
    constructors as constructors_1
        inner join drivers as drivers_1
        on (constructors_1.constructorid = drivers_1.driverid )
      inner join constructors as constructors_2
      on (drivers_1.driverid = constructors_2.constructorid )
  where constructors_1.nationality >= drivers_1.driverref
  group by constructors_1.constructorid
  limit 23)
INTERSECT
(select  
    max(
      results_1.raceid), 
    results_1.grid
  from 
    results as results_1
      inner join constructors as constructors_3
      on (results_1.resultid = constructors_3.constructorid )
  where results_1.driverid is not NULL
  group by constructors_3.constructorid, constructors_3.constructorref, constructors_3.name, constructors_3.nationality, results_1.date, results_1.milliseconds, results_1.position, results_1.positionorder, results_1.raceid, results_1.resultid, results_1.statusid
  limit 25);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    races_1.time
  from 
    races as races_1
  where races_1.year is not NULL
  limit 29)
INTERSECT
(select  
    circuits_1.circuitref
  from 
    standings as standings_1
        inner join circuits as circuits_1
        on (standings_1.driverstandingsid = circuits_1.circuitid )
      inner join standings as standings_2
      on (circuits_1.circuitid = standings_2.driverstandingsid )
  where standings_1.date is not NULL
  group by circuits_1.alt, circuits_1.country, standings_1.date, standings_2.driverstandingsid, standings_2.wins
  limit 25);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    circuits_1.circuitref
  from 
    circuits as circuits_1
  where circuits_1.location is not NULL
  limit 2)
EXCEPT
(select  
    races_1.name
  from 
    races as races_1
      inner join standings as standings_1
      on (races_1.raceid = standings_1.driverstandingsid )
  where races_1.name <= races_1.time
  group by races_1.circuitid, races_1.name, races_1.raceid, races_1.time, standings_1.raceid
  limit 19);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_2.points, 
  constructor_results_1.raceid
from 
  circuits as circuits_1
      inner join constructor_results as constructor_results_1
      on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
    inner join constructor_results as constructor_results_2
    on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
where constructor_results_1.points is not NULL
limit 30;
-- meta {"num_joins":3,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    standings_1.raceid, 
    standings_1.driverid, 
    drivers_1.nationality, 
    constructor_results_1.constructorresultsid
  from 
    constructor_standings as constructor_standings_1
      inner join constructor_results as constructor_results_1
        inner join drivers as drivers_1
          inner join standings as standings_1
          on (drivers_1.driverid = standings_1.driverstandingsid )
        on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
      on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
  where standings_1.driverid is not NULL
  limit 8)
UNION
(select  
    standings_2.driverstandingsid, 
    standings_2.wins, 
    avg(
      standings_2.points), 
    standings_2.wins
  from 
    standings as standings_2
  where standings_2.driverstandingsid is not NULL
  group by standings_2.date, standings_2.driverid, standings_2.driverstandingsid, standings_2.points, standings_2.wins
  limit 37);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructors_1.constructorid, 
    constructors_1.name
  from 
    constructors as constructors_1
  where constructors_1.nationality is not NULL
  limit 1)
EXCEPT
(select  
    standings_1.position, 
    max(
      standings_1.date)
  from 
    standings as standings_1
  where standings_1.driverstandingsid is not NULL
  limit 36);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    races_1.name, 
    max(
      races_1.date)
  from 
    races as races_1
  where races_1.circuitid >= races_1.year
  group by races_1.name
  limit 8)
INTERSECT
(select  
    min(
      results_1.positionorder), 
    max(
      results_1.date)
  from 
    results as results_1
  where results_1.statusid is not NULL
  limit 34);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    results_1.number, 
    results_1.points, 
    results_1.position, 
    max(
      results_1.date), 
    results_1.statusid, 
    results_1.grid, 
    results_1.laps, 
    results_1.driverid, 
    results_1.resultid, 
    results_1.raceid, 
    results_1.date
  from 
    results as results_1
  where results_1.driverid is not NULL
  group by results_1.date, results_1.driverid, results_1.grid, results_1.laps, results_1.number, results_1.points, results_1.position, results_1.raceid, results_1.resultid, results_1.statusid
  limit 26)
INTERSECT
(select  
    min(
      races_1.date), 
    min(
      races_1.date), 
    max(
      races_1.date), 
    min(
      races_1.date), 
    races_1.circuitid, 
    max(
      races_1.date), 
    max(
      races_1.date), 
    races_1.round, 
    min(
      races_1.date), 
    races_1.round, 
    races_1.date
  from 
    races as races_1
  where races_1.raceid is not NULL
  group by races_1.name, races_1.round, races_1.time
  limit 9);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructors_1.nationality, 
    constructors_1.constructorid
  from 
    constructors as constructors_1
      inner join drivers as drivers_1
      on (constructors_1.constructorid = drivers_1.driverid )
  where constructors_1.constructorref is not NULL
  limit 5)
UNION
(select  
    drivers_2.surname, 
    constructor_standings_1.constructorstandingsid
  from 
    constructor_standings as constructor_standings_1
      inner join drivers as drivers_2
      on (constructor_standings_1.constructorstandingsid = drivers_2.driverid )
  where constructor_standings_1.date >= drivers_2.dob
  limit 16);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    count(*), 
    qualifying_1.date, 
    qualifying_1.driverid
  from 
    qualifying as qualifying_1
  where qualifying_1.number is not NULL
  group by qualifying_1.date, qualifying_1.driverid
  limit 11)
EXCEPT
(select  
    count(
      constructor_results_1.raceid), 
    constructor_results_1.date, 
    constructor_results_1.raceid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.points is not NULL
  group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
  limit 7);
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    races_1.round, 
    avg(
      circuits_1.lat)
  from 
    races as races_1
      inner join circuits as circuits_1
      on (races_1.raceid = circuits_1.circuitid )
  where circuits_1.lng is not NULL
  group by races_1.round
  limit 2)
EXCEPT
(select  
    circuits_2.circuitid, 
    avg(
      circuits_2.lng)
  from 
    circuits as circuits_2
  where circuits_2.circuitid is not NULL
  limit 18);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_results_1.raceid, 
    constructor_results_1.constructorresultsid
  from 
    constructor_results as constructor_results_1
      inner join qualifying as qualifying_1
      on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
  where qualifying_1.qualifyid is not NULL
  limit 41)
EXCEPT
(select  
    qualifying_2.qualifyid, 
    qualifying_2.position
  from 
    qualifying as qualifying_2
      inner join races as races_1
      on (qualifying_2.qualifyid = races_1.raceid )
  where races_1.time = races_1.name
  limit 30);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    drivers_1.driverref
  from 
    drivers as drivers_1
  where drivers_1.code is not NULL
  limit 12)
EXCEPT
(select  
    count(
      constructor_results_1.raceid)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.date is not NULL
  group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
  limit 38);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    results_1.milliseconds, 
    results_1.date
  from 
    results as results_1
  where results_1.driverid >= results_1.statusid
  limit 12)
EXCEPT
(select  
    count(*), 
    drivers_1.dob
  from 
    drivers as drivers_1
      inner join constructors as constructors_1
        inner join races as races_1
        on (constructors_1.constructorid = races_1.raceid )
      on (drivers_1.driverid = constructors_1.constructorid )
  where races_1.circuitid is not NULL
  group by drivers_1.dob, drivers_1.forename
  limit 5);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructors_1.name, 
    constructors_1.constructorid, 
    constructors_1.constructorref, 
    constructors_1.nationality, 
    count(
      constructors_1.constructorid), 
    avg(
      constructors_1.constructorid)
  from 
    constructors as constructors_1
  where constructors_1.constructorid is not NULL
  group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
  limit 23)
UNION
(select  
    drivers_1.code, 
    drivers_1.driverid, 
    drivers_1.nationality, 
    drivers_1.forename, 
    max(
      drivers_1.driverid), 
    sum(
      drivers_1.driverid)
  from 
    drivers as drivers_1
  where drivers_1.surname > drivers_1.nationality
  group by drivers_1.code, drivers_1.dob, drivers_1.forename, drivers_1.nationality
  limit 42);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructors_1.name, 
    constructors_1.nationality, 
    constructors_1.constructorref
  from 
    constructors as constructors_1
  where constructors_1.name is not NULL
  limit 42)
INTERSECT
(select  
    min(
      standings_1.points), 
    min(
      standings_1.date), 
    sum(
      standings_1.points)
  from 
    standings as standings_1
  where standings_1.raceid is not NULL
  group by standings_1.date, standings_1.wins
  limit 39);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    avg(
      constructors_1.constructorid), 
    constructors_1.constructorref, 
    constructors_1.name
  from 
    constructors as constructors_1
  where constructors_1.name is not NULL
  group by constructors_1.constructorref, constructors_1.name
  limit 21)
INTERSECT
(select  
    sum(
      circuits_1.circuitid), 
    circuits_1.circuitref, 
    circuits_1.circuitref
  from 
    circuits as circuits_1
  where circuits_1.circuitid is not NULL
  group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.lng, circuits_1.location
  limit 32);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins, 
  standings_1.points, 
  standings_1.date
from 
  standings as standings_1
where standings_1.raceid is not NULL
limit 41;
-- meta {"num_joins":5,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    results_1.fastestlap, 
    results_1.raceid, 
    results_1.date, 
    results_1.points
  from 
    results as results_1
  where results_1.rank is not NULL
  limit 9)
EXCEPT
(select  
    results_2.fastestlap, 
    qualifying_1.position, 
    qualifying_1.date, 
    results_2.points
  from 
    results as results_2
        inner join qualifying as qualifying_1
          inner join circuits as circuits_1
          on (qualifying_1.qualifyid = circuits_1.circuitid )
        on (results_2.resultid = qualifying_1.qualifyid )
      inner join races as races_1
          inner join constructor_standings as constructor_standings_1
          on (races_1.raceid = constructor_standings_1.constructorstandingsid )
        inner join circuits as circuits_2
        on (constructor_standings_1.constructorstandingsid = circuits_2.circuitid )
      on (circuits_1.circuitid = circuits_2.circuitid )
  where results_2.rank is not NULL
  group by circuits_1.circuitid, qualifying_1.raceid, races_1.raceid, races_1.round, races_1.time, results_2.constructorid, results_2.fastestlap
  limit 4);
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    standings_1.raceid, 
    standings_1.position, 
    standings_1.driverid, 
    qualifying_1.qualifyid, 
    standings_1.wins, 
    qualifying_1.raceid, 
    qualifying_1.driverid, 
    sum(
      standings_1.points), 
    qualifying_1.date
  from 
    standings as standings_1
      inner join qualifying as qualifying_1
      on (standings_1.driverstandingsid = qualifying_1.qualifyid )
  where standings_1.wins is not NULL
  group by qualifying_1.date, qualifying_1.driverid, qualifying_1.qualifyid, qualifying_1.raceid, standings_1.driverid, standings_1.position, standings_1.raceid, standings_1.wins
  limit 42)
INTERSECT
(select  
    constructor_standings_1.constructorid, 
    constructor_standings_1.constructorid, 
    constructor_standings_1.constructorstandingsid, 
    constructor_standings_1.position, 
    constructor_standings_1.constructorstandingsid, 
    constructor_standings_1.raceid, 
    constructor_standings_1.constructorstandingsid, 
    avg(
      constructor_standings_1.points), 
    constructor_standings_1.date
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.constructorstandingsid is not NULL
  group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid
  limit 33);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_standings_1.raceid, 
    constructor_standings_1.position, 
    constructor_standings_1.constructorstandingsid, 
    min(
      constructor_standings_1.points), 
    min(
      constructor_standings_1.constructorid), 
    constructor_standings_1.points, 
    constructor_standings_1.constructorid
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.points is not NULL
  group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid
  limit 21)
EXCEPT
(select  
    constructor_standings_2.position, 
    constructor_standings_2.position, 
    constructor_standings_2.constructorstandingsid, 
    sum(
      constructor_standings_2.points), 
    count(*), 
    constructor_standings_2.points, 
    constructor_standings_2.constructorid
  from 
    constructor_standings as constructor_standings_2
  where constructor_standings_2.constructorid >= constructor_standings_2.constructorstandingsid
  limit 8);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    results_1.statusid
  from 
    results as results_1
  where results_1.statusid > results_1.positionorder
  limit 39)
INTERSECT
(select  
    drivers_1.driverid
  from 
    drivers as drivers_1
  where drivers_1.code is not NULL
  limit 10);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
limit 31;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructors_1.nationality
  from 
    constructors as constructors_1
  where constructors_1.name is not NULL
  limit 42)
EXCEPT
(select  
    drivers_1.nationality
  from 
    drivers as drivers_1
  where drivers_1.code is not NULL
  group by drivers_1.driverid, drivers_1.forename
  limit 9);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_results_1.raceid, 
    max(
      constructor_results_1.date), 
    count(*), 
    min(
      constructor_results_1.points), 
    constructor_results_1.points, 
    constructor_results_1.constructorresultsid, 
    constructor_results_1.constructorid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.date is not NULL
  group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.raceid
  limit 8)
INTERSECT
(select  
    results_1.grid, 
    max(
      results_1.date), 
    max(
      results_1.driverid), 
    max(
      results_1.milliseconds), 
    results_1.points, 
    results_1.statusid, 
    results_1.statusid
  from 
    results as results_1
  where results_1.milliseconds is not NULL
  limit 20);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_standings_2.raceid, 
    constructors_1.constructorref, 
    constructor_standings_2.position, 
    max(
      constructor_standings_2.date)
  from 
    constructor_standings as constructor_standings_1
        inner join constructor_standings as constructor_standings_2
        on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
      inner join constructors as constructors_1
      on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
  where constructor_standings_2.date > constructor_standings_1.date
  group by constructor_standings_2.position, constructor_standings_2.raceid, constructors_1.constructorref
  limit 3)
UNION
(select  
    races_1.circuitid, 
    races_1.name, 
    races_1.raceid, 
    max(
      races_1.date)
  from 
    races as races_1
  where races_1.circuitid is not NULL
  limit 35);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_results_1.points, 
    constructor_results_1.constructorid, 
    count(
      constructor_results_1.raceid)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorid is not NULL
  group by constructor_results_1.constructorid, constructor_results_1.points
  limit 32)
UNION
(select  
    max(
      constructor_standings_1.points), 
    constructor_standings_1.constructorid, 
    count(*)
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.position is not NULL
  group by constructor_standings_1.constructorid, constructor_standings_1.wins
  limit 5);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    min(
      drivers_1.driverid), 
    drivers_1.driverref, 
    drivers_1.dob
  from 
    drivers as drivers_1
  where drivers_1.driverid is not NULL
  group by drivers_1.dob, drivers_1.driverref
  limit 12)
UNION
(select  
    min(
      circuits_1.circuitid), 
    circuits_1.circuitref, 
    count(
      circuits_1.name)
  from 
    circuits as circuits_1
  where circuits_1.circuitid < circuits_1.circuitid
  limit 40);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    races_1.date), 
  circuits_1.location
from 
  races as races_1
    inner join circuits as circuits_1
    on (races_1.raceid = circuits_1.circuitid )
where races_1.date is not NULL
group by circuits_1.location
limit 13;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    results_1.statusid, 
    constructor_results_1.date, 
    standings_1.wins, 
    results_1.rank, 
    standings_1.raceid, 
    standings_1.driverid, 
    constructor_results_1.constructorresultsid, 
    constructor_results_1.raceid, 
    results_1.laps, 
    results_1.fastestlap, 
    min(
      constructor_results_1.constructorresultsid), 
    constructor_results_1.points, 
    standings_1.points, 
    min(
      standings_1.date)
  from 
    constructor_results as constructor_results_1
        inner join standings as standings_1
        on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
      inner join results as results_1
      on (constructor_results_1.constructorresultsid = results_1.resultid )
  where standings_1.wins is not NULL
  group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid, results_1.fastestlap, results_1.laps, results_1.rank, results_1.statusid, standings_1.driverid, standings_1.points, standings_1.raceid, standings_1.wins
  limit 2)
INTERSECT
(select  
    drivers_1.driverid, 
    drivers_1.dob, 
    max(
      drivers_1.dob), 
    min(
      drivers_1.dob), 
    drivers_1.driverid, 
    drivers_1.driverid, 
    drivers_1.driverid, 
    drivers_1.driverid, 
    max(
      drivers_1.dob), 
    min(
      drivers_1.dob), 
    count(
      drivers_1.driverid), 
    sum(
      drivers_1.driverid), 
    sum(
      drivers_1.driverid), 
    min(
      drivers_1.dob)
  from 
    drivers as drivers_1
  where drivers_1.code is not NULL
  limit 4);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_results_1.points, 
    constructor_results_1.date, 
    constructor_results_1.constructorresultsid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.raceid < constructor_results_1.constructorid
  limit 34)
UNION
(select  
    avg(
      qualifying_1.qualifyid), 
    qualifying_1.date, 
    qualifying_1.position
  from 
    qualifying as qualifying_1
  where qualifying_1.number is not NULL
  group by qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
  limit 30);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_results_1.date, 
    constructor_results_1.points, 
    constructor_results_1.constructorid, 
    constructor_results_1.raceid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorresultsid is not NULL
  limit 29)
INTERSECT
(select  
    qualifying_1.date, 
    circuits_1.alt, 
    qualifying_1.position, 
    qualifying_1.position
  from 
    qualifying as qualifying_1
      inner join circuits as circuits_1
        inner join standings as standings_1
        on (circuits_1.circuitid = standings_1.driverstandingsid )
      on (qualifying_1.qualifyid = standings_1.driverstandingsid )
  where circuits_1.circuitid is not NULL
  limit 8);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    avg(
      circuits_1.circuitid), 
    circuits_1.name, 
    circuits_1.location
  from 
    circuits as circuits_1
  where circuits_1.country is not NULL
  group by circuits_1.location, circuits_1.name
  limit 16)
EXCEPT
(select  
    avg(
      results_1.laps), 
    min(
      results_1.date), 
    min(
      results_1.date)
  from 
    results as results_1
  where results_1.constructorid <= results_1.statusid
  limit 17);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    circuits_1.country, 
    circuits_1.lat, 
    circuits_1.circuitref, 
    circuits_1.alt, 
    circuits_1.name, 
    avg(
      circuits_1.alt)
  from 
    circuits as circuits_1
  where circuits_1.circuitref = circuits_1.country
  group by circuits_1.alt, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.name
  limit 34)
EXCEPT
(select  
    count(
      standings_1.raceid), 
    standings_1.points, 
    avg(
      standings_1.points), 
    standings_1.points, 
    sum(
      standings_1.points), 
    avg(
      standings_1.points)
  from 
    standings as standings_1
  where standings_1.date is not NULL
  group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
  limit 22);
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    qualifying_1.driverid, 
    qualifying_1.position, 
    qualifying_1.number, 
    max(
      qualifying_1.date), 
    qualifying_1.date, 
    qualifying_1.constructorid, 
    count(
      qualifying_1.raceid)
  from 
    qualifying as qualifying_1
  where qualifying_1.qualifyid is not NULL
  group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position
  limit 2)
EXCEPT
(select  
    avg(
      constructor_results_1.points), 
    standings_1.position, 
    min(
      standings_1.date), 
    min(
      standings_1.date), 
    drivers_1.dob, 
    constructor_results_1.raceid, 
    count(
      constructor_results_1.points)
  from 
    constructor_results as constructor_results_1
      inner join drivers as drivers_1
        inner join standings as standings_1
        on (drivers_1.driverid = standings_1.driverstandingsid )
      on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
  where constructor_results_1.constructorid = standings_1.position
  limit 1);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    races_1.raceid
  from 
    races as races_1
  where races_1.time is not NULL
  limit 38)
UNION
(select  
    races_2.round
  from 
    races as races_2
  where races_2.date < races_2.date
  limit 42);
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructors_1.constructorref, 
    avg(
      constructors_1.constructorid)
  from 
    constructors as constructors_1
  where constructors_1.nationality < constructors_1.constructorref
  group by constructors_1.constructorref
  limit 41)
INTERSECT
(select  
    races_1.time, 
    sum(
      qualifying_1.driverid)
  from 
    qualifying as qualifying_1
      inner join races as races_1
      on (qualifying_1.qualifyid = races_1.raceid )
  where qualifying_1.number is not NULL
  group by qualifying_1.constructorid, qualifying_1.driverid, races_1.date, races_1.year
  limit 12);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  count(*), 
  min(
    constructor_results_1.date), 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid
limit 3;
-- meta {"num_joins":0,"num_aggregates":7,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    drivers_1.nationality, 
    drivers_1.code, 
    max(
      drivers_1.driverid), 
    drivers_1.driverref, 
    drivers_1.forename, 
    min(
      drivers_1.dob), 
    max(
      drivers_1.dob), 
    drivers_1.driverid, 
    sum(
      drivers_1.driverid), 
    drivers_1.dob, 
    min(
      drivers_1.driverid)
  from 
    drivers as drivers_1
  where drivers_1.forename is not NULL
  group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality
  limit 28)
INTERSECT
(select  
    races_1.time, 
    races_1.name, 
    count(*), 
    races_1.time, 
    races_1.time, 
    min(
      races_1.date), 
    max(
      races_1.date), 
    races_1.year, 
    avg(
      races_1.round), 
    races_1.date, 
    max(
      races_1.round)
  from 
    races as races_1
  where races_1.raceid is not NULL
  group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.year
  limit 23);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    circuits_1.country, 
    circuits_1.circuitref, 
    circuits_1.location
  from 
    circuits as circuits_1
  where circuits_1.lng >= circuits_1.lat
  limit 23)
INTERSECT
(select  
    max(
      constructors_1.constructorid), 
    constructors_1.nationality, 
    constructors_1.nationality
  from 
    constructors as constructors_1
  where constructors_1.nationality is not NULL
  group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
  limit 16);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    min(
      constructor_standings_1.date), 
    constructor_standings_1.position, 
    constructor_standings_1.wins, 
    constructor_standings_1.points, 
    constructor_standings_1.raceid, 
    count(
      constructor_standings_1.wins), 
    constructor_standings_1.constructorstandingsid
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.constructorstandingsid is not NULL
  group by constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
  limit 7)
UNION
(select  
    max(
      drivers_1.dob), 
    drivers_1.driverid, 
    drivers_1.driverid, 
    count(*), 
    drivers_1.driverid, 
    min(
      drivers_1.driverid), 
    count(*)
  from 
    drivers as drivers_1
  where drivers_1.driverref is not NULL
  limit 7);
-- meta {"num_joins":2,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    results_1.resultid, 
    results_1.positionorder, 
    results_1.grid
  from 
    results as results_1
  where results_1.statusid is not NULL
  limit 17)
EXCEPT
(select  
    constructor_standings_1.constructorid, 
    races_1.year, 
    races_1.raceid
  from 
    circuits as circuits_1
        inner join constructor_standings as constructor_standings_1
        on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
      inner join races as races_1
      on (circuits_1.circuitid = races_1.raceid )
  where races_1.circuitid is not NULL
  group by circuits_1.location, circuits_1.name, constructor_standings_1.constructorid, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
  limit 19);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number, 
  results_1.rank
from 
  qualifying as qualifying_1
    inner join results as results_1
    on (qualifying_1.qualifyid = results_1.resultid )
where results_1.driverid is not NULL
limit 23;
-- meta {"num_joins":3,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    qualifying_1.raceid, 
    count(
      results_1.rank), 
    min(
      standings_1.date), 
    results_1.date
  from 
    standings as standings_1
      inner join results as results_1
        inner join qualifying as qualifying_1
        on (results_1.resultid = qualifying_1.qualifyid )
      on (standings_1.driverstandingsid = results_1.resultid )
  where standings_1.raceid is not NULL
  group by qualifying_1.raceid, results_1.date
  limit 37)
UNION
(select  
    count(
      constructor_results_1.raceid), 
    min(
      constructor_results_2.constructorresultsid), 
    max(
      constructor_results_1.date), 
    constructor_results_2.date
  from 
    constructor_results as constructor_results_1
      inner join constructor_results as constructor_results_2
      on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
  where constructor_results_2.raceid > constructor_results_1.raceid
  group by constructor_results_1.constructorid, constructor_results_2.date, constructor_results_2.raceid
  limit 32);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_results_1.raceid, 
    avg(
      constructor_results_1.constructorid)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorresultsid is not NULL
  group by constructor_results_1.raceid
  limit 10)
UNION
(select  
    constructor_results_2.constructorid, 
    sum(
      constructor_results_2.raceid)
  from 
    constructor_results as constructor_results_2
  where constructor_results_2.raceid is not NULL
  group by constructor_results_2.constructorresultsid
  limit 38);
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    min(
      constructor_standings_1.date), 
    constructor_standings_1.constructorid, 
    constructor_standings_1.constructorstandingsid, 
    constructor_standings_1.position, 
    constructor_standings_1.date, 
    min(
      constructor_standings_1.constructorid), 
    constructor_standings_1.raceid, 
    constructor_standings_1.points, 
    constructor_standings_1.wins, 
    avg(
      constructor_standings_1.raceid), 
    max(
      constructor_standings_1.raceid)
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.constructorstandingsid is not NULL
  group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
  limit 27)
EXCEPT
(select  
    max(
      standings_1.date), 
    standings_1.driverid, 
    standings_1.position, 
    standings_1.position, 
    standings_1.date, 
    min(
      standings_1.position), 
    min(
      standings_1.wins), 
    standings_1.points, 
    standings_1.driverid, 
    avg(
      standings_1.raceid), 
    min(
      standings_1.wins)
  from 
    standings as standings_1
  where standings_1.date is not NULL
  group by standings_1.driverid, standings_1.points, standings_1.position, standings_1.wins
  limit 15);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    races_1.name, 
    races_1.year, 
    races_1.round, 
    races_1.date
  from 
    races as races_1
  where races_1.circuitid is not NULL
  limit 34)
EXCEPT
(select  
    races_2.name, 
    races_2.raceid, 
    races_2.raceid, 
    max(
      races_2.circuitid)
  from 
    races as races_2
  where races_2.time is not NULL
  group by races_2.circuitid, races_2.name, races_2.time
  limit 15);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    qualifying_1.raceid
  from 
    qualifying as qualifying_1
  where qualifying_1.qualifyid is not NULL
  limit 27)
INTERSECT
(select  
    results_1.raceid
  from 
    results as results_1
  where results_1.constructorid is not NULL
  limit 42);
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_results_1.constructorid, 
    count(
      constructor_standings_1.constructorid)
  from 
    constructors as constructors_1
        inner join constructor_results as constructor_results_1
        on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
      inner join constructor_standings as constructor_standings_1
      on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
  where constructor_results_1.date >= constructor_standings_1.date
  group by constructor_results_1.constructorid
  limit 2)
EXCEPT
(select  
    constructor_results_2.raceid, 
    count(
      constructor_results_2.points)
  from 
    constructor_results as constructor_results_2
  where constructor_results_2.date <= constructor_results_2.date
  group by constructor_results_2.constructorresultsid, constructor_results_2.date, constructor_results_2.points, constructor_results_2.raceid
  limit 23);
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    circuits_1.alt, 
    circuits_1.country, 
    qualifying_1.raceid, 
    circuits_1.circuitid
  from 
    circuits as circuits_1
      inner join qualifying as qualifying_1
      on (circuits_1.circuitid = qualifying_1.qualifyid )
  where circuits_1.alt is not NULL
  limit 41)
EXCEPT
(select  
    constructor_results_1.points, 
    constructors_1.nationality, 
    drivers_1.driverid, 
    constructor_results_1.constructorid
  from 
    constructor_results as constructor_results_1
      inner join constructor_standings as constructor_standings_1
          inner join drivers as drivers_1
          on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
        inner join constructors as constructors_1
        on (drivers_1.driverid = constructors_1.constructorid )
      on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
  where constructor_results_1.constructorresultsid is not NULL
  limit 12);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select distinct 
  races_1.circuitid, 
  races_1.round, 
  races_1.name
from 
  races as races_1
where races_1.time is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    circuits_1.alt, 
    circuits_1.country, 
    sum(
      circuits_1.alt), 
    circuits_1.location, 
    circuits_1.lng
  from 
    circuits as circuits_1
  where circuits_1.circuitid < circuits_1.circuitid
  group by circuits_1.alt, circuits_1.country, circuits_1.lng, circuits_1.location
  limit 36)
INTERSECT
(select  
    standings_1.points, 
    avg(
      standings_1.points), 
    avg(
      standings_1.points), 
    sum(
      standings_1.points), 
    standings_1.points
  from 
    standings as standings_1
  where standings_1.driverid is not NULL
  limit 29);
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    drivers_2.surname
  from 
    drivers as drivers_1
        inner join constructor_results as constructor_results_1
          inner join drivers as drivers_2
            inner join races as races_1
            on (drivers_2.driverid = races_1.raceid )
          on (constructor_results_1.constructorresultsid = drivers_2.driverid )
        on (drivers_1.driverid = drivers_2.driverid )
      inner join races as races_2
      on (drivers_1.driverid = races_2.raceid )
  where drivers_2.dob is not NULL
  limit 42)
EXCEPT
(select  
    sum(
      results_1.constructorid)
  from 
    results as results_1
  where results_1.points is not NULL
  limit 36);
-- meta {"num_joins":2,"num_aggregates":7,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    standings_1.driverid, 
    standings_1.raceid, 
    sum(
      standings_1.points), 
    standings_1.points, 
    qualifying_1.qualifyid, 
    standings_1.date, 
    count(
      standings_1.raceid), 
    standings_1.position, 
    avg(
      standings_1.driverstandingsid), 
    min(
      standings_1.raceid), 
    min(
      standings_1.date)
  from 
    qualifying as qualifying_1
      inner join standings as standings_1
      on (qualifying_1.qualifyid = standings_1.driverstandingsid )
  where standings_1.date > qualifying_1.date
  group by qualifying_1.qualifyid, standings_1.date, standings_1.driverid, standings_1.points, standings_1.position, standings_1.raceid
  limit 32)
EXCEPT
(select  
    results_1.grid, 
    qualifying_2.qualifyid, 
    min(
      results_1.milliseconds), 
    results_1.rank, 
    results_1.constructorid, 
    qualifying_2.date, 
    count(
      results_1.date), 
    results_1.resultid, 
    avg(
      qualifying_2.constructorid), 
    max(
      results_1.grid), 
    min(
      qualifying_2.date)
  from 
    qualifying as qualifying_2
      inner join results as results_1
      on (qualifying_2.qualifyid = results_1.resultid )
  where qualifying_2.date = results_1.date
  group by qualifying_2.constructorid, qualifying_2.qualifyid, qualifying_2.raceid, results_1.date, results_1.fastestlap, results_1.milliseconds
  limit 20);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    constructors_1.constructorid), 
  constructors_1.constructorid, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.constructorid, constructors_1.name
limit 13;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.positionorder, 
  results_1.points
from 
  results as results_1
where results_1.milliseconds is not NULL
limit 17;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  sum(
    constructor_results_1.points), 
  sum(
    constructor_results_1.constructorresultsid)
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.points
limit 14;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    results_1.driverid
  from 
    results as results_1
  where results_1.positionorder is not NULL
  limit 21)
UNION
(select  
    results_2.driverid
  from 
    results as results_2
  where results_2.position is not NULL
  limit 26);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructors_1.nationality, 
    constructors_1.name, 
    constructors_1.constructorid, 
    constructors_1.constructorref, 
    count(
      constructors_1.name)
  from 
    constructors as constructors_1
  where constructors_1.constructorref is not NULL
  group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
  limit 39)
EXCEPT
(select  
    drivers_1.driverref, 
    drivers_1.surname, 
    drivers_1.driverid, 
    drivers_1.driverref, 
    count(
      drivers_1.driverref)
  from 
    drivers as drivers_1
  where drivers_1.dob is not NULL
  limit 8);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    qualifying_1.constructorid
  from 
    qualifying as qualifying_1
  where qualifying_1.constructorid is not NULL
  limit 36)
INTERSECT
(select  
    standings_1.position
  from 
    standings as standings_1
  where standings_1.wins is not NULL
  group by standings_1.date, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.wins
  limit 19);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    min(
      results_1.position), 
    results_1.laps, 
    max(
      results_1.number), 
    results_1.number, 
    results_1.position
  from 
    results as results_1
  where results_1.fastestlap is not NULL
  group by results_1.laps, results_1.number, results_1.position
  limit 28)
UNION
(select  
    sum(
      circuits_1.lat), 
    max(
      circuits_1.circuitid), 
    avg(
      circuits_1.lng), 
    circuits_1.lng, 
    circuits_1.lat
  from 
    circuits as circuits_1
  where circuits_1.lat is not NULL
  limit 37);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.positionorder, 
  results_1.laps, 
  results_1.fastestlap, 
  max(
    results_1.date)
from 
  results as results_1
where results_1.position is not NULL
group by results_1.fastestlap, results_1.laps, results_1.positionorder
limit 37;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    drivers_1.forename, 
    min(
      drivers_1.dob), 
    drivers_1.code
  from 
    drivers as drivers_1
  where drivers_1.driverid is not NULL
  group by drivers_1.code, drivers_1.forename
  limit 37)
EXCEPT
(select  
    count(
      results_1.driverid), 
    min(
      results_1.date), 
    min(
      results_1.raceid)
  from 
    results as results_1
  where results_1.raceid is not NULL
  limit 17);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    max(
      constructor_results_1.constructorid), 
    constructor_results_1.constructorresultsid, 
    min(
      constructor_results_1.points), 
    constructor_results_1.points, 
    constructor_results_1.date, 
    constructor_results_1.constructorid, 
    constructor_results_1.raceid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorid is not NULL
  group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
  limit 15)
INTERSECT
(select  
    min(
      constructor_results_2.raceid), 
    constructor_results_2.raceid, 
    avg(
      constructor_results_2.points), 
    constructor_results_2.points, 
    constructor_results_2.date, 
    constructor_results_2.constructorresultsid, 
    constructor_results_2.raceid
  from 
    constructor_results as constructor_results_2
  where constructor_results_2.constructorid is not NULL
  limit 15);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    sum(
      results_1.rank), 
    results_1.points
  from 
    results as results_1
  where results_1.constructorid is not NULL
  group by results_1.points
  limit 27)
UNION
(select  
    sum(
      standings_1.points), 
    standings_1.points
  from 
    drivers as drivers_1
      inner join standings as standings_1
      on (drivers_1.driverid = standings_1.driverstandingsid )
  where standings_1.driverstandingsid <= standings_1.raceid
  limit 17);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    drivers_1.code
  from 
    drivers as drivers_1
  where drivers_1.dob is not NULL
  limit 19)
EXCEPT
(select  
    constructors_1.nationality
  from 
    drivers as drivers_2
      inner join constructors as constructors_1
      on (drivers_2.driverid = constructors_1.constructorid )
  where drivers_2.forename is not NULL
  limit 27);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year, 
  min(
    constructor_results_1.date), 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  races_1.name, 
  races_1.date, 
  results_1.points
from 
  constructor_results as constructor_results_1
    inner join results as results_1
      inner join races as races_1
      on (results_1.resultid = races_1.raceid )
    on (constructor_results_1.constructorresultsid = races_1.raceid )
where races_1.name is not NULL
group by constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid, races_1.date, races_1.name, races_1.year, results_1.points
limit 34;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    races_1.round, 
    races_1.raceid, 
    max(
      races_1.date), 
    min(
      races_1.date), 
    races_1.circuitid, 
    races_1.year
  from 
    races as races_1
  where races_1.raceid is not NULL
  group by races_1.circuitid, races_1.raceid, races_1.round, races_1.year
  limit 20)
UNION
(select  
    constructor_standings_1.wins, 
    constructor_standings_1.position, 
    max(
      constructor_standings_1.date), 
    min(
      constructor_standings_1.date), 
    avg(
      constructor_standings_1.position), 
    constructor_standings_1.raceid
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.date is not NULL
  limit 30);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    races_1.time, 
    races_1.circuitid, 
    races_1.name, 
    avg(
      races_1.raceid)
  from 
    races as races_1
  where races_1.circuitid is not NULL
  group by races_1.circuitid, races_1.name, races_1.time
  limit 21)
EXCEPT
(select  
    sum(
      standings_1.wins), 
    standings_1.position, 
    max(
      standings_1.date), 
    sum(
      standings_1.wins)
  from 
    standings as standings_1
  where standings_1.wins is not NULL
  group by standings_1.date, standings_1.driverid
  limit 13);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverid, 
  drivers_1.dob, 
  drivers_1.driverref, 
  count(
    drivers_1.code), 
  drivers_1.code, 
  drivers_1.nationality, 
  count(
    drivers_1.dob), 
  drivers_1.surname, 
  min(
    drivers_1.driverid), 
  sum(
    drivers_1.driverid), 
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.driverref > drivers_1.surname
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 22;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    drivers_1.surname
  from 
    drivers as drivers_1
  where drivers_1.driverid <= drivers_1.driverid
  limit 28)
EXCEPT
(select  
    min(
      constructor_standings_1.points)
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.position is not NULL
  group by constructor_standings_1.raceid
  limit 29);
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    drivers_1.nationality, 
    drivers_1.driverid, 
    drivers_1.driverref, 
    min(
      drivers_1.driverid), 
    max(
      drivers_1.dob), 
    min(
      drivers_1.dob), 
    sum(
      drivers_1.driverid)
  from 
    drivers as drivers_1
  where drivers_1.forename is not NULL
  group by drivers_1.driverid, drivers_1.driverref, drivers_1.nationality
  limit 16)
EXCEPT
(select  
    min(
      drivers_2.dob), 
    drivers_2.driverid, 
    drivers_2.code, 
    count(*), 
    max(
      drivers_2.dob), 
    max(
      drivers_2.dob), 
    sum(
      drivers_2.driverid)
  from 
    drivers as drivers_2
  where drivers_2.surname is not NULL
  group by drivers_2.dob, drivers_2.forename, drivers_2.nationality, drivers_2.surname
  limit 32);
-- meta {"num_joins":2,"num_aggregates":8,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    count(
      circuits_1.country), 
    avg(
      circuits_1.circuitid), 
    min(
      circuits_1.alt), 
    circuits_1.location, 
    circuits_1.lat, 
    max(
      circuits_1.circuitid), 
    circuits_1.circuitref, 
    max(
      circuits_1.lng), 
    min(
      circuits_1.circuitid)
  from 
    circuits as circuits_1
  where circuits_1.lng is not NULL
  group by circuits_1.circuitref, circuits_1.lat, circuits_1.location
  limit 29)
UNION
(select  
    min(
      constructor_standings_1.raceid), 
    sum(
      constructor_standings_1.constructorstandingsid), 
    max(
      constructor_standings_1.points), 
    sum(
      results_1.rank), 
    results_1.milliseconds, 
    min(
      results_1.grid), 
    min(
      constructor_results_1.date), 
    max(
      results_1.rank), 
    min(
      constructor_results_1.raceid)
  from 
    results as results_1
      inner join constructor_standings as constructor_standings_1
        inner join constructor_results as constructor_results_1
        on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
      on (results_1.resultid = constructor_results_1.constructorresultsid )
  where constructor_results_1.constructorresultsid is not NULL
  group by constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_standings_1.date, constructor_standings_1.wins, results_1.laps, results_1.statusid
  limit 19);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    drivers_1.surname, 
    drivers_1.driverid, 
    drivers_1.forename, 
    drivers_1.nationality, 
    drivers_1.dob, 
    drivers_1.driverref
  from 
    drivers as drivers_1
  where drivers_1.driverid is not NULL
  limit 25)
INTERSECT
(select  
    constructors_1.nationality, 
    constructor_standings_1.wins, 
    count(
      constructor_standings_1.position), 
    constructors_1.nationality, 
    constructor_standings_1.date, 
    constructors_1.name
  from 
    constructor_standings as constructor_standings_1
      inner join constructors as constructors_1
      on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
  where constructors_1.constructorid is not NULL
  limit 24);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    qualifying_1.qualifyid, 
    qualifying_1.date, 
    count(
      qualifying_1.number)
  from 
    qualifying as qualifying_1
  where qualifying_1.qualifyid <= qualifying_1.driverid
  group by qualifying_1.date, qualifying_1.qualifyid
  limit 7)
UNION
(select  
    qualifying_2.qualifyid, 
    min(
      constructor_standings_1.points), 
    max(
      qualifying_2.number)
  from 
    qualifying as qualifying_2
      inner join constructor_standings as constructor_standings_1
      on (qualifying_2.qualifyid = constructor_standings_1.constructorstandingsid )
  where constructor_standings_1.constructorstandingsid is not NULL
  group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.wins, qualifying_2.position, qualifying_2.raceid
  limit 3);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    standings_1.raceid, 
    standings_1.driverstandingsid
  from 
    standings as standings_1
  where standings_1.driverstandingsid is not NULL
  limit 19)
EXCEPT
(select  
    drivers_1.driverid, 
    races_1.round
  from 
    standings as standings_2
        inner join races as races_1
        on (standings_2.driverstandingsid = races_1.raceid )
      inner join drivers as drivers_1
      on (races_1.raceid = drivers_1.driverid )
  where races_1.date < standings_2.date
  group by races_1.date, races_1.year, standings_2.date, standings_2.driverid, standings_2.points
  limit 24);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    qualifying_1.position
  from 
    qualifying as qualifying_1
      inner join qualifying as qualifying_2
      on (qualifying_1.qualifyid = qualifying_2.qualifyid )
  where qualifying_1.raceid is not NULL
  limit 31)
INTERSECT
(select  
    races_1.round
  from 
    races as races_1
  where races_1.date is not NULL
  limit 35);
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    drivers_1.surname, 
    drivers_1.nationality, 
    drivers_1.driverref, 
    drivers_1.forename, 
    drivers_1.dob, 
    drivers_1.code, 
    max(
      drivers_1.dob)
  from 
    drivers as drivers_1
  where drivers_1.code is not NULL
  group by drivers_1.code, drivers_1.dob, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
  limit 9)
EXCEPT
(select  
    drivers_2.code, 
    drivers_2.driverref, 
    drivers_2.driverref, 
    drivers_2.surname, 
    drivers_2.dob, 
    drivers_2.code, 
    max(
      constructor_standings_1.date)
  from 
    constructor_standings as constructor_standings_1
      inner join drivers as drivers_2
      on (constructor_standings_1.constructorstandingsid = drivers_2.driverid )
  where drivers_2.code is not NULL
  group by constructor_standings_1.position, constructor_standings_1.wins, drivers_2.code, drivers_2.driverref, drivers_2.nationality
  limit 38);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    standings_1.position
  from 
    standings as standings_1
  where standings_1.driverid > standings_1.driverstandingsid
  limit 12)
UNION
(select  
    min(
      standings_2.date)
  from 
    standings as standings_2
  where standings_2.driverid is not NULL
  group by standings_2.date, standings_2.driverid, standings_2.driverstandingsid, standings_2.points, standings_2.position, standings_2.raceid, standings_2.wins
  limit 4);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    circuits_1.circuitref, 
    standings_1.raceid, 
    circuits_1.alt, 
    circuits_1.name, 
    standings_1.position
  from 
    standings as standings_1
      inner join circuits as circuits_1
      on (standings_1.driverstandingsid = circuits_1.circuitid )
  where circuits_1.lng is not NULL
  limit 7)
INTERSECT
(select  
    avg(
      constructor_results_1.points), 
    max(
      constructor_results_1.constructorresultsid), 
    constructor_results_1.points, 
    max(
      constructor_results_1.date), 
    min(
      constructor_results_1.date)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.date is not NULL
  limit 2);
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    results_1.statusid, 
    races_1.raceid, 
    races_1.time, 
    results_1.number, 
    races_1.year, 
    results_1.date
  from 
    standings as standings_1
        inner join qualifying as qualifying_1
          inner join results as results_1
          on (qualifying_1.qualifyid = results_1.resultid )
        on (standings_1.driverstandingsid = qualifying_1.qualifyid )
      inner join races as races_1
        inner join constructor_standings as constructor_standings_1
        on (races_1.raceid = constructor_standings_1.constructorstandingsid )
      on (standings_1.driverstandingsid = races_1.raceid )
  where results_1.constructorid is not NULL
  limit 26)
EXCEPT
(select  
    standings_2.driverid, 
    max(
      standings_2.date), 
    circuits_1.circuitref, 
    circuits_1.lat, 
    circuits_1.circuitid, 
    standings_2.date
  from 
    circuits as circuits_1
      inner join standings as standings_2
      on (circuits_1.circuitid = standings_2.driverstandingsid )
  where circuits_1.circuitid is not NULL
  limit 8);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    qualifying_1.date), 
  count(*), 
  qualifying_1.driverid, 
  qualifying_1.qualifyid, 
  count(*), 
  qualifying_1.number, 
  qualifying_1.position, 
  avg(
    qualifying_1.constructorid), 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.date < qualifying_1.date
group by qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid
limit 9;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_standings_1.date, 
    constructor_standings_1.position, 
    constructor_standings_1.raceid, 
    constructor_standings_1.constructorstandingsid, 
    constructor_standings_1.wins, 
    min(
      constructor_standings_1.wins), 
    constructor_standings_1.constructorid, 
    constructor_standings_1.points
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.constructorstandingsid >= constructor_standings_1.position
  group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
  limit 2)
EXCEPT
(select  
    results_1.date, 
    results_1.resultid, 
    count(*), 
    results_1.statusid, 
    results_1.resultid, 
    count(*), 
    results_1.grid, 
    results_1.fastestlap
  from 
    results as results_1
  where results_1.statusid is not NULL
  limit 11);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.points, 
  count(
    constructor_standings_1.constructorstandingsid)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.points
limit 42;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_standings_1.date, 
    constructor_standings_1.wins, 
    constructor_standings_1.constructorid, 
    max(
      constructor_standings_1.wins)
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.wins is not NULL
  group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.wins
  limit 16)
UNION
(select  
    qualifying_1.date, 
    qualifying_1.raceid, 
    qualifying_1.qualifyid, 
    count(*)
  from 
    qualifying as qualifying_1
  where qualifying_1.driverid is not NULL
  group by qualifying_1.driverid, qualifying_1.number
  limit 11);
-- meta {"num_joins":4,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    max(
      drivers_1.dob)
  from 
    standings as standings_1
      inner join drivers as drivers_1
      on (standings_1.driverstandingsid = drivers_1.driverid )
  where drivers_1.driverid is not NULL
  limit 33)
UNION
(select  
    min(
      qualifying_1.date)
  from 
    qualifying as qualifying_1
          inner join circuits as circuits_1
          on (qualifying_1.qualifyid = circuits_1.circuitid )
        inner join results as results_1
        on (circuits_1.circuitid = results_1.resultid )
      inner join results as results_2
      on (qualifying_1.qualifyid = results_2.resultid )
  where qualifying_1.constructorid is not NULL
  group by circuits_1.circuitid, circuits_1.lat, circuits_1.name, results_1.driverid, results_1.grid, results_1.rank, results_2.date, results_2.milliseconds
  limit 2);
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    standings_1.points
  from 
    standings as standings_1
  where standings_1.driverid < standings_1.position
  limit 17)
INTERSECT
(select  
    standings_2.points
  from 
    drivers as drivers_1
      inner join standings as standings_2
        inner join constructors as constructors_1
        on (standings_2.driverstandingsid = constructors_1.constructorid )
      on (drivers_1.driverid = standings_2.driverstandingsid )
  where standings_2.points <= standings_2.points
  group by constructors_1.constructorref, constructors_1.name, constructors_1.nationality, drivers_1.driverid, drivers_1.forename, drivers_1.surname, standings_2.driverid, standings_2.points, standings_2.position, standings_2.wins
  limit 17);
-- meta {"num_joins":3,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    races_1.date, 
    count(
      races_1.year), 
    races_1.circuitid, 
    races_1.raceid, 
    races_1.time, 
    races_2.date, 
    races_1.round, 
    races_2.round
  from 
    races as races_1
      inner join races as races_2
      on (races_1.raceid = races_2.raceid )
  where races_2.date is not NULL
  group by races_1.circuitid, races_1.date, races_1.raceid, races_1.round, races_1.time, races_2.date, races_2.round
  limit 35)
UNION
(select  
    count(*), 
    count(*), 
    qualifying_1.driverid, 
    qualifying_1.position, 
    races_3.name, 
    qualifying_1.date, 
    qualifying_2.raceid, 
    races_3.year
  from 
    qualifying as qualifying_1
      inner join races as races_3
        inner join qualifying as qualifying_2
        on (races_3.raceid = qualifying_2.qualifyid )
      on (qualifying_1.qualifyid = qualifying_2.qualifyid )
  where qualifying_2.raceid is not NULL
  limit 33);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    avg(
      standings_1.points), 
    standings_1.points, 
    standings_1.raceid
  from 
    standings as standings_1
  where standings_1.driverid is not NULL
  group by standings_1.points, standings_1.raceid
  limit 32)
EXCEPT
(select  
    max(
      results_1.points), 
    circuits_1.alt, 
    count(
      results_1.resultid)
  from 
    results as results_1
        inner join results as results_2
        on (results_1.resultid = results_2.resultid )
      inner join circuits as circuits_1
      on (results_1.resultid = circuits_1.circuitid )
  where results_2.position is not NULL
  limit 39);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructors_1.constructorid), 
  max(
    constructors_1.constructorid), 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  avg(
    constructors_1.constructorid), 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 27;
-- meta {"num_joins":6,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    qualifying_1.number, 
    drivers_1.surname, 
    constructor_results_1.constructorid, 
    drivers_1.forename, 
    drivers_1.nationality, 
    constructor_results_1.date, 
    min(
      constructor_results_1.date), 
    constructor_results_1.raceid
  from 
    constructor_results as constructor_results_1
        inner join drivers as drivers_1
        on (constructor_results_1.constructorresultsid = drivers_1.driverid )
      inner join qualifying as qualifying_1
      on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
  where qualifying_1.position is not NULL
  group by constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.raceid, drivers_1.forename, drivers_1.nationality, drivers_1.surname, qualifying_1.number
  limit 22)
EXCEPT
(select  
    sum(
      standings_1.points), 
    drivers_2.nationality, 
    qualifying_2.driverid, 
    constructors_1.constructorref, 
    drivers_2.code, 
    standings_1.date, 
    min(
      qualifying_2.date), 
    qualifying_2.driverid
  from 
    qualifying as qualifying_2
      inner join drivers as drivers_2
          inner join constructors as constructors_1
            inner join standings as standings_1
            on (constructors_1.constructorid = standings_1.driverstandingsid )
          on (drivers_2.driverid = standings_1.driverstandingsid )
        inner join constructors as constructors_2
        on (standings_1.driverstandingsid = constructors_2.constructorid )
      on (qualifying_2.qualifyid = constructors_2.constructorid )
  where standings_1.driverstandingsid is not NULL
  limit 18);
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_2.driverref, 
  sum(
    constructor_results_1.raceid), 
  drivers_2.surname, 
  constructor_results_1.constructorid, 
  constructor_results_2.raceid, 
  constructor_standings_1.date
from 
  constructor_results as constructor_results_1
      inner join constructor_standings as constructor_standings_1
      on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
    inner join drivers as drivers_1
        inner join drivers as drivers_2
        on (drivers_1.driverid = drivers_2.driverid )
      inner join constructor_results as constructor_results_2
      on (drivers_1.driverid = constructor_results_2.constructorresultsid )
    on (constructor_results_1.constructorresultsid = drivers_2.driverid )
where constructor_standings_1.points = constructor_results_2.points
group by constructor_results_1.constructorid, constructor_results_2.raceid, constructor_standings_1.date, drivers_2.driverref, drivers_2.surname
limit 27;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_results_1.constructorid
  from 
    constructor_standings as constructor_standings_1
      inner join constructor_results as constructor_results_1
      on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
  where constructor_standings_1.constructorstandingsid is not NULL
  limit 25)
INTERSECT
(select  
    circuits_1.circuitid
  from 
    circuits as circuits_1
  where circuits_1.name < circuits_1.location
  limit 6);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    qualifying_1.number, 
    qualifying_1.date
  from 
    qualifying as qualifying_1
  where qualifying_1.qualifyid is not NULL
  limit 15)
EXCEPT
(select  
    constructor_results_1.constructorid, 
    constructor_results_1.date
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.date is not NULL
  group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.points
  limit 17);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    standings_1.raceid
  from 
    standings as standings_1
  where standings_1.raceid is not NULL
  limit 35)
EXCEPT
(select  
    constructor_standings_1.wins
  from 
    constructor_standings as constructor_standings_1
      inner join constructors as constructors_1
        inner join races as races_1
        on (constructors_1.constructorid = races_1.raceid )
      on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
  where constructors_1.name is not NULL
  group by constructors_1.nationality, races_1.time
  limit 1);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.raceid, 
  qualifying_1.constructorid, 
  qualifying_1.position, 
  min(
    qualifying_1.date), 
  max(
    qualifying_1.date)
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
group by qualifying_1.constructorid, qualifying_1.position, qualifying_1.raceid
limit 28;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    races_1.date, 
    races_1.name, 
    races_1.raceid, 
    races_1.circuitid, 
    races_1.round, 
    races_1.year
  from 
    races as races_1
  where races_1.name is not NULL
  limit 38)
EXCEPT
(select  
    drivers_1.dob, 
    max(
      drivers_1.dob), 
    drivers_1.driverid, 
    drivers_1.driverid, 
    drivers_1.driverid, 
    drivers_1.driverid
  from 
    drivers as drivers_1
  where drivers_1.dob is not NULL
  limit 23);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    circuits_1.name, 
    constructor_standings_1.date, 
    circuits_1.lng, 
    drivers_1.surname, 
    constructor_standings_1.points, 
    max(
      drivers_1.dob)
  from 
    circuits as circuits_1
        inner join constructor_standings as constructor_standings_1
        on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
      inner join drivers as drivers_1
      on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
  where circuits_1.country is not NULL
  group by circuits_1.lng, circuits_1.name, constructor_standings_1.date, constructor_standings_1.points, drivers_1.surname
  limit 17)
UNION
(select  
    max(
      constructor_results_1.constructorresultsid), 
    constructor_results_1.date, 
    max(
      constructor_results_1.date), 
    count(
      constructor_results_1.points), 
    constructor_results_1.points, 
    min(
      constructor_results_1.date)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorresultsid is not NULL
  limit 7);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    results_1.resultid, 
    results_1.driverid, 
    avg(
      results_1.raceid), 
    results_1.fastestlap, 
    results_1.constructorid, 
    results_1.position, 
    results_1.number
  from 
    results as results_1
  where results_1.position is not NULL
  group by results_1.constructorid, results_1.driverid, results_1.fastestlap, results_1.number, results_1.position, results_1.resultid
  limit 3)
INTERSECT
(select  
    results_2.driverid, 
    results_2.resultid, 
    avg(
      results_2.constructorid), 
    results_2.rank, 
    results_2.driverid, 
    min(
      results_2.date), 
    results_2.milliseconds
  from 
    results as results_2
  where results_2.date < results_2.date
  limit 30);
-- meta {"num_joins":3,"num_aggregates":5,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    standings_1.position, 
    constructor_standings_2.position, 
    constructor_standings_1.constructorstandingsid, 
    standings_1.driverstandingsid, 
    avg(
      standings_1.points), 
    constructor_standings_1.raceid, 
    min(
      constructor_standings_2.date), 
    sum(
      constructor_standings_1.constructorid), 
    constructor_standings_2.wins
  from 
    constructor_standings as constructor_standings_1
        inner join standings as standings_1
        on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
      inner join constructor_standings as constructor_standings_2
      on (standings_1.driverstandingsid = constructor_standings_2.constructorstandingsid )
  where constructor_standings_2.date is not NULL
  group by constructor_standings_1.constructorstandingsid, constructor_standings_1.raceid, constructor_standings_2.position, constructor_standings_2.wins, standings_1.driverstandingsid, standings_1.position
  limit 24)
INTERSECT
(select  
    standings_2.raceid, 
    standings_2.raceid, 
    avg(
      standings_2.points), 
    races_1.round, 
    sum(
      standings_2.points), 
    races_1.round, 
    min(
      races_1.date), 
    sum(
      standings_2.position), 
    standings_2.position
  from 
    standings as standings_2
      inner join races as races_1
      on (standings_2.driverstandingsid = races_1.raceid )
  where standings_2.points < standings_2.points
  group by races_1.circuitid, races_1.name, races_1.raceid, standings_2.date, standings_2.driverid, standings_2.position
  limit 31);
-- meta {"num_joins":4,"num_aggregates":7,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.surname, 
  drivers_1.nationality, 
  constructors_1.constructorid, 
  count(
    results_1.milliseconds), 
  constructor_results_1.raceid, 
  constructors_1.nationality, 
  drivers_1.code, 
  max(
    results_1.milliseconds), 
  sum(
    results_1.points), 
  constructor_results_1.constructorid, 
  races_1.raceid, 
  results_1.grid, 
  races_1.circuitid, 
  races_1.name, 
  constructor_results_1.date, 
  results_1.rank, 
  races_1.time, 
  max(
    results_1.date), 
  races_1.year, 
  drivers_1.driverref, 
  results_1.number, 
  count(*), 
  races_1.round, 
  drivers_1.forename, 
  races_1.date, 
  min(
    results_1.constructorid), 
  constructor_results_1.constructorresultsid, 
  min(
    constructors_1.constructorid)
from 
  races as races_1
    inner join constructors as constructors_1
      inner join results as results_1
          inner join drivers as drivers_1
          on (results_1.resultid = drivers_1.driverid )
        inner join constructor_results as constructor_results_1
        on (results_1.resultid = constructor_results_1.constructorresultsid )
      on (constructors_1.constructorid = results_1.resultid )
    on (races_1.raceid = constructor_results_1.constructorresultsid )
where races_1.name is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.raceid, constructors_1.constructorid, constructors_1.nationality, drivers_1.code, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname, races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year, results_1.grid, results_1.number, results_1.rank
limit 32;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    min(
      races_1.date)
  from 
    races as races_1
  where races_1.time is not NULL
  limit 9)
UNION
(select  
    min(
      results_1.date)
  from 
    results as results_1
      inner join results as results_2
      on (results_1.resultid = results_2.resultid )
  where results_2.fastestlap is not NULL
  limit 27);
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    circuits_1.location, 
    circuits_1.alt, 
    max(
      circuits_1.alt), 
    circuits_1.lat
  from 
    circuits as circuits_1
  where circuits_1.name is not NULL
  group by circuits_1.alt, circuits_1.lat, circuits_1.location
  limit 42)
INTERSECT
(select  
    avg(
      circuits_2.lat), 
    constructor_results_1.points, 
    sum(
      circuits_2.alt), 
    circuits_2.lng
  from 
    circuits as circuits_2
        inner join drivers as drivers_1
        on (circuits_2.circuitid = drivers_1.driverid )
      inner join constructor_results as constructor_results_1
        inner join qualifying as qualifying_1
        on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
      on (circuits_2.circuitid = constructor_results_1.constructorresultsid )
  where constructor_results_1.points is not NULL
  limit 26);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    standings_1.position, 
    max(
      standings_1.date)
  from 
    standings as standings_1
  where standings_1.driverid is not NULL
  group by standings_1.position
  limit 41)
UNION
(select  
    constructor_results_1.constructorresultsid, 
    max(
      constructor_results_1.date)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.points is not NULL
  group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date
  limit 39);
-- meta {"num_joins":5,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    standings_1.driverstandingsid, 
    standings_1.wins
  from 
    drivers as drivers_1
          inner join drivers as drivers_2
          on (drivers_1.driverid = drivers_2.driverid )
        inner join standings as standings_1
          inner join qualifying as qualifying_1
            inner join races as races_1
            on (qualifying_1.qualifyid = races_1.raceid )
          on (standings_1.driverstandingsid = qualifying_1.qualifyid )
        on (drivers_1.driverid = qualifying_1.qualifyid )
      inner join standings as standings_2
      on (drivers_2.driverid = standings_2.driverstandingsid )
  where standings_2.date >= standings_1.date
  limit 41)
INTERSECT
(select  
    races_2.round, 
    races_2.raceid
  from 
    races as races_2
  where races_2.date is not NULL
  group by races_2.name, races_2.raceid, races_2.time, races_2.year
  limit 5);
-- meta {"num_joins":2,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_results_1.constructorid, 
    max(
      constructor_results_1.points), 
    constructor_results_1.raceid, 
    constructor_results_1.date, 
    max(
      constructor_results_1.points), 
    avg(
      constructor_results_1.points)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorresultsid is not NULL
  group by constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.raceid
  limit 16)
UNION
(select  
    min(
      drivers_1.dob), 
    min(
      circuits_2.lat), 
    circuits_1.circuitid, 
    sum(
      circuits_2.lng), 
    min(
      circuits_1.lat), 
    min(
      circuits_1.lat)
  from 
    drivers as drivers_1
      inner join circuits as circuits_1
        inner join circuits as circuits_2
        on (circuits_1.circuitid = circuits_2.circuitid )
      on (drivers_1.driverid = circuits_2.circuitid )
  where drivers_1.nationality is not NULL
  limit 34);
-- meta {"num_joins":5,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    circuits_2.lat, 
    min(
      races_1.date), 
    circuits_2.alt
  from 
    circuits as circuits_1
      inner join circuits as circuits_2
        inner join qualifying as qualifying_1
          inner join races as races_1
          on (qualifying_1.qualifyid = races_1.raceid )
        on (circuits_2.circuitid = qualifying_1.qualifyid )
      on (circuits_1.circuitid = circuits_2.circuitid )
  where circuits_1.circuitid is not NULL
  group by circuits_2.alt, circuits_2.lat
  limit 32)
INTERSECT
(select  
    sum(
      standings_1.points), 
    max(
      standings_1.date), 
    standings_1.points
  from 
    qualifying as qualifying_2
        inner join qualifying as qualifying_3
        on (qualifying_2.qualifyid = qualifying_3.qualifyid )
      inner join standings as standings_1
      on (qualifying_2.qualifyid = standings_1.driverstandingsid )
  where standings_1.wins is not NULL
  limit 7);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    results_1.date
  from 
    results as results_1
  where results_1.driverid is not NULL
  limit 42)
UNION
(select  
    qualifying_1.date
  from 
    qualifying as qualifying_1
  where qualifying_1.raceid is not NULL
  group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
  limit 27);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_standings_1.raceid
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.position <= constructor_standings_1.constructorstandingsid
  limit 20)
INTERSECT
(select  
    results_1.resultid
  from 
    races as races_1
      inner join results as results_1
      on (races_1.raceid = results_1.resultid )
  where results_1.positionorder < results_1.statusid
  limit 41);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructors_1.name
  from 
    constructors as constructors_1
  where constructors_1.constructorid is not NULL
  limit 29)
UNION
(select  
    min(
      qualifying_1.date)
  from 
    qualifying as qualifying_1
  where qualifying_1.raceid is not NULL
  limit 19);
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    min(
      standings_1.date), 
    min(
      standings_1.date), 
    standings_1.wins, 
    standings_1.raceid, 
    standings_1.points, 
    standings_1.position, 
    standings_1.date, 
    count(*), 
    max(
      standings_1.wins), 
    min(
      standings_1.date), 
    standings_1.driverstandingsid, 
    standings_1.driverid
  from 
    standings as standings_1
  where standings_1.date is not NULL
  group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
  limit 33)
INTERSECT
(select  
    max(
      constructor_results_1.date), 
    max(
      constructor_results_1.date), 
    constructor_results_1.constructorid, 
    constructor_results_1.constructorid, 
    sum(
      constructor_results_1.points), 
    constructor_results_1.constructorid, 
    max(
      constructor_results_1.date), 
    count(
      constructor_results_1.date), 
    min(
      constructor_results_1.raceid), 
    max(
      constructor_results_1.date), 
    constructor_results_1.raceid, 
    constructor_results_1.constructorresultsid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.date is not NULL
  limit 34);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    races_1.time, 
    avg(
      races_1.circuitid), 
    races_1.circuitid
  from 
    races as races_1
  where races_1.name is not NULL
  group by races_1.circuitid, races_1.time
  limit 20)
INTERSECT
(select  
    races_2.time, 
    avg(
      races_2.year), 
    min(
      races_2.date)
  from 
    races as races_2
  where races_2.round is not NULL
  limit 17);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructor_standings_1.date), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  sum(
    constructor_standings_1.points)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.raceid, constructor_standings_1.wins
limit 5;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  constructor_standings_1.points, 
  sum(
    constructor_standings_1.raceid), 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.wins
limit 32;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    qualifying_1.constructorid), 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
group by qualifying_1.qualifyid
limit 33;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_results_1.raceid, 
    drivers_1.nationality
  from 
    results as results_1
      inner join drivers as drivers_1
        inner join constructor_results as constructor_results_1
        on (drivers_1.driverid = constructor_results_1.constructorresultsid )
      on (results_1.resultid = drivers_1.driverid )
  where results_1.driverid is not NULL
  limit 30)
UNION
(select  
    avg(
      constructor_standings_1.points), 
    min(
      constructor_standings_1.points)
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.wins is not NULL
  limit 31);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_standings_1.wins
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.raceid is not NULL
  limit 36)
EXCEPT
(select  
    standings_1.raceid
  from 
    standings as standings_1
  where standings_1.driverid is not NULL
  group by standings_1.date, standings_1.driverid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
  limit 20);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.laps, 
  results_1.fastestlap
from 
  results as results_1
    inner join qualifying as qualifying_1
    on (results_1.resultid = qualifying_1.qualifyid )
where results_1.number is not NULL
limit 35;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_results_1.date, 
    constructor_results_1.points, 
    constructor_results_1.constructorid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.points is not NULL
  limit 37)
UNION
(select  
    count(*), 
    circuits_1.alt, 
    circuits_1.circuitid
  from 
    circuits as circuits_1
  where circuits_1.alt is not NULL
  group by circuits_1.alt, circuits_1.lat, circuits_1.lng, circuits_1.location, circuits_1.name
  limit 9);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    min(
      races_1.round), 
    races_1.date, 
    count(*), 
    races_1.name, 
    races_1.raceid, 
    races_1.round, 
    max(
      races_1.date)
  from 
    races as races_1
  where races_1.circuitid is not NULL
  group by races_1.date, races_1.name, races_1.raceid, races_1.round
  limit 42)
UNION
(select  
    count(*), 
    drivers_1.dob, 
    max(
      drivers_1.driverid), 
    drivers_1.nationality, 
    drivers_1.driverid, 
    drivers_1.driverid, 
    min(
      drivers_1.dob)
  from 
    drivers as drivers_1
  where drivers_1.forename is not NULL
  limit 3);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_results_1.constructorresultsid, 
    constructor_results_1.constructorid, 
    constructor_results_1.points, 
    min(
      constructor_results_1.points), 
    constructor_results_1.raceid, 
    constructor_results_1.date
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.raceid is not NULL
  group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
  limit 4)
INTERSECT
(select  
    circuits_1.circuitid, 
    circuits_1.circuitid, 
    circuits_1.lng, 
    max(
      circuits_1.lat), 
    circuits_1.circuitid, 
    sum(
      circuits_1.alt)
  from 
    circuits as circuits_1
  where circuits_1.location <= circuits_1.name
  limit 5);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position, 
  circuits_1.country, 
  standings_1.raceid, 
  circuits_1.lng
from 
  circuits as circuits_1
    inner join standings as standings_1
    on (circuits_1.circuitid = standings_1.driverstandingsid )
where standings_1.driverid is not NULL
limit 36;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    standings_1.driverstandingsid, 
    drivers_1.nationality, 
    results_1.resultid, 
    min(
      standings_1.driverstandingsid), 
    drivers_1.code, 
    results_1.positionorder, 
    min(
      drivers_1.dob), 
    results_1.raceid
  from 
    results as results_1
        inner join drivers as drivers_1
        on (results_1.resultid = drivers_1.driverid )
      inner join standings as standings_1
      on (drivers_1.driverid = standings_1.driverstandingsid )
  where results_1.grid > standings_1.driverid
  group by drivers_1.code, drivers_1.nationality, results_1.positionorder, results_1.raceid, results_1.resultid, standings_1.driverstandingsid
  limit 27)
EXCEPT
(select  
    qualifying_1.constructorid, 
    count(
      qualifying_1.raceid), 
    qualifying_1.position, 
    max(
      qualifying_1.driverid), 
    max(
      qualifying_1.date), 
    min(
      qualifying_1.date), 
    max(
      qualifying_1.date), 
    qualifying_1.number
  from 
    qualifying as qualifying_1
  where qualifying_1.date >= qualifying_1.date
  limit 18);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lng, 
  circuits_1.alt, 
  circuits_1.country, 
  circuits_1.lat, 
  circuits_1.location, 
  min(
    circuits_1.circuitid)
from 
  circuits as circuits_1
where circuits_1.country is not NULL
group by circuits_1.alt, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.location
limit 14;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    drivers_1.forename, 
    drivers_1.nationality
  from 
    drivers as drivers_1
  where drivers_1.driverid >= drivers_1.driverid
  limit 3)
UNION
(select  
    count(
      constructor_results_1.date), 
    count(*)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.date > constructor_results_1.date
  group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
  limit 41);
-- meta {"num_joins":6,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    results_1.points, 
    min(
      standings_1.date), 
    constructor_results_1.points
  from 
    results as results_1
      inner join circuits as circuits_1
        inner join constructor_results as constructor_results_1
          inner join standings as standings_1
          on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
        on (circuits_1.circuitid = standings_1.driverstandingsid )
      on (results_1.resultid = constructor_results_1.constructorresultsid )
  where constructor_results_1.raceid is not NULL
  group by constructor_results_1.points, results_1.points
  limit 17)
UNION
(select  
    max(
      results_3.milliseconds), 
    min(
      races_1.date), 
    results_2.position
  from 
    races as races_1
        inner join constructors as constructors_1
          inner join results as results_2
          on (constructors_1.constructorid = results_2.resultid )
        on (races_1.raceid = constructors_1.constructorid )
      inner join results as results_3
      on (races_1.raceid = results_3.resultid )
  where results_2.raceid is not NULL
  group by constructors_1.nationality, results_2.fastestlap, results_3.laps
  limit 19);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    qualifying_1.number, 
    qualifying_1.constructorid
  from 
    qualifying as qualifying_1
  where qualifying_1.raceid is not NULL
  limit 11)
UNION
(select  
    circuits_1.circuitid, 
    circuits_1.circuitid
  from 
    circuits as circuits_1
  where circuits_1.circuitid is not NULL
  limit 25);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    standings_2.driverstandingsid, 
    standings_2.points
  from 
    standings as standings_1
      inner join standings as standings_2
      on (standings_1.driverstandingsid = standings_2.driverstandingsid )
  where standings_1.position is not NULL
  limit 11)
INTERSECT
(select  
    circuits_1.circuitid, 
    circuits_1.lng
  from 
    circuits as circuits_1
  where circuits_1.lat is not NULL
  group by circuits_1.alt, circuits_1.lng, circuits_1.name
  limit 21);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    count(
      circuits_1.lat), 
    circuits_1.name, 
    circuits_1.lng, 
    circuits_1.alt
  from 
    circuits as circuits_1
  where circuits_1.circuitref is not NULL
  group by circuits_1.alt, circuits_1.lng, circuits_1.name
  limit 11)
EXCEPT
(select  
    min(
      constructor_standings_1.constructorstandingsid), 
    max(
      constructor_standings_1.date), 
    constructor_standings_1.points, 
    count(
      constructor_standings_1.constructorstandingsid)
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.constructorid is not NULL
  limit 11);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    circuits_1.circuitref, 
    circuits_1.name, 
    min(
      circuits_1.circuitid), 
    circuits_1.country
  from 
    circuits as circuits_1
  where circuits_1.alt is not NULL
  group by circuits_1.circuitref, circuits_1.country, circuits_1.name
  limit 25)
INTERSECT
(select distinct 
    min(
      constructor_results_1.points), 
    sum(
      constructor_results_1.points), 
    count(*), 
    min(
      constructor_results_1.date)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.date >= constructor_results_1.date
  limit 3);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_standings_1.wins, 
    constructor_standings_1.position, 
    constructor_standings_1.constructorid, 
    constructor_standings_1.constructorstandingsid, 
    constructor_standings_1.points, 
    constructor_standings_1.date
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.points >= constructor_standings_1.points
  limit 21)
UNION
(select  
    drivers_1.driverid, 
    drivers_1.driverid, 
    drivers_1.driverid, 
    drivers_1.driverid, 
    max(
      drivers_1.driverid), 
    drivers_1.dob
  from 
    drivers as drivers_1
  where drivers_1.dob is not NULL
  group by drivers_1.forename, drivers_1.surname
  limit 1);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    standings_1.driverid, 
    standings_1.position, 
    qualifying_1.driverid, 
    qualifying_1.date, 
    standings_1.points, 
    standings_1.driverstandingsid
  from 
    qualifying as qualifying_1
      inner join standings as standings_1
      on (qualifying_1.qualifyid = standings_1.driverstandingsid )
  where qualifying_1.number > qualifying_1.constructorid
  limit 23)
UNION
(select  
    circuits_1.circuitid, 
    circuits_1.circuitid, 
    circuits_1.circuitid, 
    sum(
      circuits_1.circuitid), 
    circuits_1.alt, 
    circuits_1.circuitid
  from 
    circuits as circuits_1
  where circuits_1.circuitid is not NULL
  limit 2);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    qualifying_1.number, 
    count(
      qualifying_1.raceid), 
    qualifying_1.position, 
    max(
      qualifying_1.date), 
    max(
      qualifying_1.date), 
    qualifying_1.qualifyid
  from 
    qualifying as qualifying_1
  where qualifying_1.driverid is not NULL
  group by qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid
  limit 40)
UNION
(select  
    count(
      drivers_1.forename), 
    count(
      drivers_1.nationality), 
    drivers_1.driverid, 
    max(
      drivers_1.dob), 
    min(
      drivers_1.dob), 
    drivers_1.driverid
  from 
    drivers as drivers_1
  where drivers_1.driverid is not NULL
  limit 24);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    standings_2.driverid, 
    standings_2.driverstandingsid, 
    standings_1.position, 
    constructor_results_1.raceid, 
    standings_1.raceid
  from 
    standings as standings_1
      inner join standings as standings_2
        inner join constructor_results as constructor_results_1
        on (standings_2.driverstandingsid = constructor_results_1.constructorresultsid )
      on (standings_1.driverstandingsid = standings_2.driverstandingsid )
  where constructor_results_1.date < standings_2.date
  limit 33)
EXCEPT
(select  
    sum(
      constructor_standings_1.points), 
    constructor_standings_1.constructorid, 
    constructor_standings_1.constructorid, 
    constructor_standings_1.constructorstandingsid, 
    constructor_standings_1.constructorstandingsid
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.wins >= constructor_standings_1.position
  limit 25);
-- meta {"num_joins":4,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    results_1.position, 
    avg(
      circuits_2.lat), 
    results_1.raceid, 
    circuits_2.location, 
    circuits_3.lng, 
    results_1.driverid, 
    avg(
      results_1.number), 
    circuits_1.location, 
    circuits_2.lng, 
    results_1.constructorid, 
    circuits_2.alt, 
    circuits_1.country, 
    results_1.rank, 
    circuits_2.name, 
    results_1.points, 
    circuits_1.circuitref, 
    max(
      results_1.date)
  from 
    circuits as circuits_1
          inner join circuits as circuits_2
          on (circuits_1.circuitid = circuits_2.circuitid )
        inner join circuits as circuits_3
        on (circuits_2.circuitid = circuits_3.circuitid )
      inner join results as results_1
      on (circuits_1.circuitid = results_1.resultid )
  where results_1.statusid is not NULL
  group by circuits_1.circuitref, circuits_1.country, circuits_1.location, circuits_2.alt, circuits_2.lng, circuits_2.location, circuits_2.name, circuits_3.lng, results_1.constructorid, results_1.driverid, results_1.points, results_1.position, results_1.raceid, results_1.rank
  limit 30)
UNION
(select  
    constructor_standings_1.points, 
    sum(
      constructor_standings_1.points), 
    qualifying_1.driverid, 
    min(
      qualifying_1.qualifyid), 
    constructor_standings_1.points, 
    qualifying_1.position, 
    max(
      constructor_standings_1.points), 
    max(
      qualifying_1.date), 
    min(
      constructor_standings_1.constructorstandingsid), 
    qualifying_1.driverid, 
    sum(
      constructor_standings_1.raceid), 
    sum(
      constructor_standings_1.points), 
    min(
      qualifying_1.date), 
    min(
      constructor_standings_1.points), 
    min(
      qualifying_1.date), 
    sum(
      constructor_standings_1.position), 
    max(
      constructor_standings_1.date)
  from 
    constructor_standings as constructor_standings_1
      inner join qualifying as qualifying_1
      on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
  where qualifying_1.qualifyid is not NULL
  limit 38);
-- meta {"num_joins":4,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_standings_1.position, 
    constructor_results_1.constructorresultsid, 
    constructor_standings_1.wins, 
    constructors_2.constructorref
  from 
    constructor_results as constructor_results_1
      inner join constructors as constructors_1
        inner join constructors as constructors_2
          inner join constructor_standings as constructor_standings_1
          on (constructors_2.constructorid = constructor_standings_1.constructorstandingsid )
        on (constructors_1.constructorid = constructors_2.constructorid )
      on (constructor_results_1.constructorresultsid = constructors_2.constructorid )
  where constructors_1.name is not NULL
  limit 39)
UNION
(select  
    standings_1.driverid, 
    standings_2.driverstandingsid, 
    standings_2.raceid, 
    min(
      standings_2.date)
  from 
    standings as standings_1
      inner join standings as standings_2
      on (standings_1.driverstandingsid = standings_2.driverstandingsid )
  where standings_2.driverid is not NULL
  group by standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.raceid, standings_2.points
  limit 28);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.position
from 
  results as results_1
where results_1.rank is not NULL
limit 18;
-- meta {"num_joins":4,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    results_2.driverid, 
    results_1.laps, 
    results_2.resultid, 
    avg(
      results_2.rank), 
    results_1.points, 
    max(
      results_1.date)
  from 
    results as results_1
      inner join results as results_2
      on (results_1.resultid = results_2.resultid )
  where results_1.resultid is not NULL
  group by results_1.laps, results_1.points, results_2.driverid, results_2.resultid
  limit 13)
UNION
(select  
    max(
      races_1.raceid), 
    races_1.round, 
    races_1.year, 
    max(
      circuits_1.alt), 
    circuits_1.lng, 
    min(
      races_1.date)
  from 
    constructors as constructors_1
      inner join constructors as constructors_2
        inner join races as races_1
          inner join circuits as circuits_1
          on (races_1.raceid = circuits_1.circuitid )
        on (constructors_2.constructorid = circuits_1.circuitid )
      on (constructors_1.constructorid = constructors_2.constructorid )
  where races_1.year is not NULL
  limit 38);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    qualifying_1.raceid, 
    qualifying_1.position, 
    qualifying_1.number, 
    qualifying_1.date, 
    qualifying_1.driverid
  from 
    qualifying as qualifying_1
  where qualifying_1.date is not NULL
  limit 25)
UNION
(select  
    standings_1.driverid, 
    standings_1.wins, 
    standings_1.position, 
    min(
      standings_1.points), 
    standings_1.raceid
  from 
    standings as standings_1
  where standings_1.driverid is not NULL
  group by standings_1.driverid, standings_1.points, standings_1.raceid
  limit 39);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    standings_1.driverstandingsid, 
    standings_1.wins, 
    standings_1.driverid, 
    standings_1.date, 
    standings_1.position
  from 
    standings as standings_1
  where standings_1.date is not NULL
  limit 23)
UNION
(select  
    constructor_standings_1.constructorstandingsid, 
    min(
      constructor_standings_1.position), 
    max(
      constructor_standings_1.wins), 
    constructor_standings_1.date, 
    constructor_standings_1.constructorstandingsid
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.constructorstandingsid is not NULL
  limit 22);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  count(
    constructors_1.constructorref), 
  max(
    constructors_1.constructorid), 
  count(
    constructors_1.name), 
  constructors_1.constructorref, 
  constructors_1.name, 
  min(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 32;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    drivers_1.driverid, 
    drivers_1.forename, 
    max(
      drivers_1.driverid), 
    max(
      drivers_1.dob), 
    drivers_1.dob, 
    drivers_1.code
  from 
    drivers as drivers_1
  where drivers_1.surname is not NULL
  group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.forename
  limit 36)
UNION
(select  
    standings_1.wins, 
    drivers_2.driverref, 
    max(
      standings_1.driverstandingsid), 
    min(
      drivers_2.dob), 
    constructor_standings_1.date, 
    drivers_2.forename
  from 
    standings as standings_1
        inner join drivers as drivers_2
        on (standings_1.driverstandingsid = drivers_2.driverid )
      inner join constructor_standings as constructor_standings_1
      on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
  where drivers_2.surname is not NULL
  limit 24);
-- meta {"num_joins":3,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    results_1.raceid, 
    results_1.rank, 
    min(
      results_1.date), 
    races_1.round, 
    min(
      results_1.raceid), 
    results_1.statusid, 
    sum(
      results_1.points), 
    results_1.constructorid, 
    races_1.date, 
    results_1.laps, 
    races_1.circuitid, 
    races_1.raceid, 
    results_1.fastestlap, 
    results_1.number, 
    results_1.grid, 
    avg(
      results_1.milliseconds), 
    results_1.positionorder
  from 
    races as races_1
      inner join results as results_1
      on (races_1.raceid = results_1.resultid )
  where results_1.fastestlap > results_1.points
  group by races_1.circuitid, races_1.date, races_1.raceid, races_1.round, results_1.constructorid, results_1.fastestlap, results_1.grid, results_1.laps, results_1.number, results_1.positionorder, results_1.raceid, results_1.rank, results_1.statusid
  limit 5)
EXCEPT
(select  
    results_2.constructorid, 
    results_2.position, 
    min(
      standings_1.date), 
    results_2.laps, 
    min(
      results_2.constructorid), 
    results_2.driverid, 
    min(
      circuits_1.lat), 
    sum(
      circuits_1.lng), 
    standings_1.date, 
    min(
      results_2.date), 
    count(*), 
    standings_1.position, 
    results_2.position, 
    circuits_1.lat, 
    max(
      results_2.points), 
    min(
      circuits_1.alt), 
    results_2.resultid
  from 
    standings as standings_1
      inner join results as results_2
        inner join circuits as circuits_1
        on (results_2.resultid = circuits_1.circuitid )
      on (standings_1.driverstandingsid = results_2.resultid )
  where standings_1.position > results_2.positionorder
  limit 38);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    races_2.round
  from 
    qualifying as qualifying_1
        inner join races as races_1
        on (qualifying_1.qualifyid = races_1.raceid )
      inner join races as races_2
      on (qualifying_1.qualifyid = races_2.raceid )
  where races_1.year is not NULL
  limit 39)
UNION
(select  
    qualifying_2.constructorid
  from 
    qualifying as qualifying_2
  where qualifying_2.qualifyid is not NULL
  group by qualifying_2.constructorid, qualifying_2.number, qualifying_2.qualifyid
  limit 16);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.fastestlap, 
  results_1.positionorder
from 
  results as results_1
where results_1.grid is not NULL
limit 23;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    max(
      constructors_1.constructorid)
  from 
    constructors as constructors_1
  where constructors_1.nationality is not NULL
  limit 22)
EXCEPT
(select  
    count(*)
  from 
    constructors as constructors_2
      inner join races as races_1
        inner join races as races_2
        on (races_1.raceid = races_2.raceid )
      on (constructors_2.constructorid = races_1.raceid )
  where races_2.year is not NULL
  limit 8);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    races_1.date, 
    races_1.raceid
  from 
    races as races_1
  where races_1.date = races_1.date
  limit 40)
INTERSECT
(select  
    races_2.date, 
    results_1.resultid
  from 
    races as races_2
      inner join results as results_1
      on (races_2.raceid = results_1.resultid )
  where results_1.date is not NULL
  limit 20);
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    drivers_1.surname, 
    drivers_1.driverref, 
    count(
      drivers_1.forename)
  from 
    drivers as drivers_1
  where drivers_1.nationality is not NULL
  group by drivers_1.driverref, drivers_1.surname
  limit 31)
INTERSECT
(select  
    constructors_1.constructorref, 
    constructors_2.nationality, 
    min(
      constructor_results_1.raceid)
  from 
    constructor_results as constructor_results_1
        inner join constructors as constructors_1
        on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
      inner join standings as standings_1
          inner join constructors as constructors_2
          on (standings_1.driverstandingsid = constructors_2.constructorid )
        inner join races as races_1
        on (constructors_2.constructorid = races_1.raceid )
      on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
  where standings_1.wins <= races_1.round
  limit 22);
-- meta {"num_joins":3,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    standings_1.driverstandingsid, 
    standings_1.driverid, 
    avg(
      standings_1.driverstandingsid), 
    max(
      standings_1.points), 
    standings_1.date
  from 
    standings as standings_1
  where standings_1.wins is not NULL
  group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid
  limit 14)
UNION
(select  
    races_1.circuitid, 
    results_1.grid, 
    sum(
      constructor_results_1.constructorresultsid), 
    max(
      results_1.fastestlap), 
    results_1.date
  from 
    races as races_1
        inner join constructor_results as constructor_results_1
          inner join results as results_1
          on (constructor_results_1.constructorresultsid = results_1.resultid )
        on (races_1.raceid = results_1.resultid )
      inner join standings as standings_2
      on (results_1.resultid = standings_2.driverstandingsid )
  where races_1.raceid is not NULL
  group by constructor_results_1.date, races_1.circuitid, results_1.driverid, results_1.position, standings_2.driverstandingsid
  limit 38);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.name, 
  constructors_1.name, 
  constructors_1.nationality
from 
  constructor_results as constructor_results_1
    inner join races as races_1
        inner join circuits as circuits_1
        on (races_1.raceid = circuits_1.circuitid )
      inner join constructors as constructors_1
      on (circuits_1.circuitid = constructors_1.constructorid )
    on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
where circuits_1.location is not NULL
limit 37;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    avg(
      results_1.statusid), 
    results_2.driverid, 
    results_1.driverid, 
    results_2.statusid
  from 
    results as results_1
        inner join results as results_2
        on (results_1.resultid = results_2.resultid )
      inner join constructors as constructors_1
      on (results_2.resultid = constructors_1.constructorid )
  where results_1.statusid >= results_2.constructorid
  group by results_1.driverid, results_2.driverid, results_2.statusid
  limit 21)
UNION
(select  
    sum(
      qualifying_1.constructorid), 
    qualifying_1.constructorid, 
    qualifying_1.number, 
    qualifying_1.position
  from 
    qualifying as qualifying_1
  where qualifying_1.number > qualifying_1.constructorid
  limit 29);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    qualifying_1.position, 
    qualifying_1.driverid, 
    qualifying_1.constructorid
  from 
    qualifying as qualifying_1
  where qualifying_1.constructorid is not NULL
  limit 42)
EXCEPT
(select  
    results_1.statusid, 
    results_1.resultid, 
    constructor_standings_1.raceid
  from 
    results as results_1
      inner join constructor_standings as constructor_standings_1
      on (results_1.resultid = constructor_standings_1.constructorstandingsid )
  where results_1.milliseconds is not NULL
  limit 2);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    qualifying_1.constructorid, 
    qualifying_1.date, 
    qualifying_1.driverid, 
    qualifying_1.raceid
  from 
    qualifying as qualifying_1
  where qualifying_1.position is not NULL
  limit 19)
EXCEPT
(select  
    results_1.driverid, 
    results_1.date, 
    results_1.positionorder, 
    results_1.positionorder
  from 
    results as results_1
  where results_1.driverid is not NULL
  limit 23);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    standings_1.position, 
    standings_1.points
  from 
    standings as standings_1
  where standings_1.position is not NULL
  limit 36)
INTERSECT
(select  
    constructors_1.constructorid, 
    count(
      constructors_1.constructorref)
  from 
    constructors as constructors_1
  where constructors_1.name is not NULL
  limit 23);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    drivers_1.driverref, 
    drivers_1.forename
  from 
    drivers as drivers_1
  where drivers_1.driverref is not NULL
  limit 7)
INTERSECT
(select  
    max(
      qualifying_1.date), 
    sum(
      qualifying_1.number)
  from 
    qualifying as qualifying_1
  where qualifying_1.number is not NULL
  limit 20);
-- meta {"num_joins":1,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    standings_1.driverid, 
    max(
      standings_1.date)
  from 
    standings as standings_1
  where standings_1.points is not NULL
  group by standings_1.driverid
  limit 6)
UNION
(select  
    qualifying_1.position, 
    max(
      qualifying_1.date)
  from 
    constructor_results as constructor_results_1
      inner join qualifying as qualifying_1
      on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
  where constructor_results_1.date is not NULL
  group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.points, qualifying_1.driverid, qualifying_1.position, qualifying_1.qualifyid
  limit 3);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_2.raceid
from 
  races as races_1
      inner join races as races_2
      on (races_1.raceid = races_2.raceid )
    inner join drivers as drivers_1
    on (races_2.raceid = drivers_1.driverid )
where drivers_1.code is not NULL
limit 25;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    circuits_1.lat
  from 
    qualifying as qualifying_1
        inner join standings as standings_1
        on (qualifying_1.qualifyid = standings_1.driverstandingsid )
      inner join circuits as circuits_1
        inner join qualifying as qualifying_2
        on (circuits_1.circuitid = qualifying_2.qualifyid )
      on (standings_1.driverstandingsid = qualifying_2.qualifyid )
  where qualifying_1.date = qualifying_2.date
  limit 26)
UNION
(select  
    results_1.position
  from 
    constructor_standings as constructor_standings_1
      inner join results as results_1
      on (constructor_standings_1.constructorstandingsid = results_1.resultid )
  where results_1.rank > results_1.fastestlap
  group by constructor_standings_1.constructorid, constructor_standings_1.points, results_1.constructorid, results_1.milliseconds
  limit 9);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.position, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  count(*), 
  constructor_standings_1.points, 
  constructor_standings_1.wins, 
  avg(
    constructor_standings_1.points), 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points < constructor_standings_1.points
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 10;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    qualifying_1.date, 
    qualifying_1.number, 
    qualifying_1.qualifyid
  from 
    qualifying as qualifying_1
        inner join constructor_standings as constructor_standings_1
        on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
      inner join drivers as drivers_1
      on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
  where constructor_standings_1.points >= constructor_standings_1.points
  limit 22)
INTERSECT
(select  
    results_1.date, 
    results_1.driverid, 
    results_1.statusid
  from 
    drivers as drivers_2
      inner join results as results_1
        inner join constructors as constructors_1
        on (results_1.resultid = constructors_1.constructorid )
      on (drivers_2.driverid = constructors_1.constructorid )
  where drivers_2.surname is not NULL
  limit 14);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref, 
  circuits_1.location, 
  avg(
    circuits_1.circuitid), 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.circuitid = circuits_1.circuitid
group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.location
limit 31;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    qualifying_1.driverid
  from 
    qualifying as qualifying_1
  where qualifying_1.number is not NULL
  limit 5)
INTERSECT
(select  
    constructors_1.constructorid
  from 
    constructors as constructors_1
  where constructors_1.constructorid is not NULL
  group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
  limit 13);
-- meta {"num_joins":7,"num_aggregates":6,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    sum(
      constructor_standings_1.constructorid), 
    circuits_1.circuitref, 
    standings_1.raceid
  from 
    circuits as circuits_1
        inner join qualifying as qualifying_1
            inner join standings as standings_1
            on (qualifying_1.qualifyid = standings_1.driverstandingsid )
          inner join constructor_standings as constructor_standings_1
          on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
        on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
      inner join circuits as circuits_2
        inner join standings as standings_2
        on (circuits_2.circuitid = standings_2.driverstandingsid )
      on (constructor_standings_1.constructorstandingsid = standings_2.driverstandingsid )
  where circuits_2.location is not NULL
  group by circuits_1.circuitref, standings_1.raceid
  limit 32)
UNION
(select  
    avg(
      drivers_1.driverid), 
    circuits_3.location, 
    qualifying_2.constructorid
  from 
    drivers as drivers_1
      inner join qualifying as qualifying_2
        inner join circuits as circuits_3
        on (qualifying_2.qualifyid = circuits_3.circuitid )
      on (drivers_1.driverid = qualifying_2.qualifyid )
  where drivers_1.code > drivers_1.driverref
  group by circuits_3.circuitid, circuits_3.lng, circuits_3.name, drivers_1.code, drivers_1.dob, drivers_1.forename, drivers_1.nationality, qualifying_2.date, qualifying_2.number, qualifying_2.raceid
  limit 2);
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    results_1.statusid, 
    count(
      constructors_1.nationality)
  from 
    results as results_1
      inner join constructors as constructors_1
      on (results_1.resultid = constructors_1.constructorid )
  where constructors_1.name >= constructors_1.nationality
  group by results_1.statusid
  limit 17)
EXCEPT
(select  
    avg(
      standings_1.points), 
    max(
      standings_1.position)
  from 
    drivers as drivers_1
      inner join constructor_standings as constructor_standings_1
        inner join standings as standings_1
        on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
      on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
  where drivers_1.nationality = drivers_1.code
  group by constructor_standings_1.constructorid, constructor_standings_1.position, constructor_standings_1.wins, drivers_1.code, drivers_1.dob, drivers_1.driverid, standings_1.date, standings_1.points, standings_1.position
  limit 42);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    circuits_1.circuitref, 
    avg(
      circuits_1.alt)
  from 
    circuits as circuits_1
  where circuits_1.name is not NULL
  group by circuits_1.circuitref
  limit 34)
EXCEPT
(select  
    min(
      constructor_standings_1.date), 
    min(
      constructor_standings_1.points)
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.constructorid is not NULL
  group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.points
  limit 14);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    max(
      qualifying_1.date)
  from 
    qualifying as qualifying_1
  where qualifying_1.qualifyid is not NULL
  limit 40)
EXCEPT
(select  
    max(
      drivers_1.dob)
  from 
    drivers as drivers_1
      inner join constructor_results as constructor_results_1
      on (drivers_1.driverid = constructor_results_1.constructorresultsid )
  where constructor_results_1.constructorresultsid is not NULL
  limit 42);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructors_1.nationality, 
    constructors_1.constructorref
  from 
    constructors as constructors_1
  where constructors_1.nationality is not NULL
  limit 19)
EXCEPT
(select  
    sum(
      results_1.points), 
    avg(
      results_1.rank)
  from 
    results as results_1
  where results_1.date <= results_1.date
  limit 4);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    races_1.circuitid
  from 
    races as races_1
  where races_1.year is not NULL
  limit 4)
EXCEPT
(select  
    qualifying_1.constructorid
  from 
    qualifying as qualifying_1
  where qualifying_1.date is not NULL
  group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
  limit 10);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_standings_1.date, 
    constructor_standings_1.constructorstandingsid, 
    constructor_standings_1.constructorid, 
    sum(
      constructor_standings_1.raceid), 
    min(
      constructor_standings_1.points), 
    constructor_standings_1.position
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.constructorid is not NULL
  group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.position
  limit 12)
UNION
(select  
    sum(
      constructor_standings_2.position), 
    constructor_standings_2.constructorid, 
    constructor_standings_2.constructorid, 
    avg(
      constructor_standings_2.raceid), 
    min(
      constructor_standings_2.points), 
    constructor_standings_2.raceid
  from 
    constructor_standings as constructor_standings_2
  where constructor_standings_2.points < constructor_standings_2.points
  limit 38);
-- meta {"num_joins":2,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    races_2.time, 
    avg(
      constructor_standings_1.points), 
    avg(
      races_2.year), 
    races_2.year, 
    races_2.raceid, 
    races_1.time, 
    races_1.date, 
    races_1.round, 
    constructor_standings_1.position, 
    races_2.round, 
    races_1.year
  from 
    constructor_standings as constructor_standings_1
      inner join races as races_1
        inner join races as races_2
        on (races_1.raceid = races_2.raceid )
      on (constructor_standings_1.constructorstandingsid = races_2.raceid )
  where constructor_standings_1.constructorstandingsid is not NULL
  group by constructor_standings_1.position, races_1.date, races_1.round, races_1.time, races_1.year, races_2.raceid, races_2.round, races_2.time, races_2.year
  limit 34)
UNION
(select  
    sum(
      constructor_standings_2.points), 
    min(
      constructor_standings_2.points), 
    sum(
      constructor_standings_2.wins), 
    constructor_standings_2.raceid, 
    sum(
      constructor_standings_2.points), 
    min(
      constructor_standings_2.raceid), 
    constructor_standings_2.date, 
    constructor_standings_2.constructorid, 
    constructor_standings_2.constructorstandingsid, 
    constructor_standings_2.constructorstandingsid, 
    constructor_standings_2.constructorid
  from 
    constructor_standings as constructor_standings_2
  where constructor_standings_2.position is not NULL
  limit 20);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    qualifying_1.position
  from 
    qualifying as qualifying_1
  where qualifying_1.constructorid is not NULL
  limit 35)
UNION
(select  
    results_1.positionorder
  from 
    constructor_results as constructor_results_1
      inner join results as results_1
      on (constructor_results_1.constructorresultsid = results_1.resultid )
  where constructor_results_1.points is not NULL
  limit 41);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    races_1.date), 
  results_1.driverid, 
  races_2.round
from 
  results as results_1
      inner join races as races_1
      on (results_1.resultid = races_1.raceid )
    inner join races as races_2
    on (results_1.resultid = races_2.raceid )
where results_1.date = races_2.date
group by races_2.round, results_1.driverid
limit 36;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    standings_1.wins, 
    standings_1.driverstandingsid, 
    standings_1.driverid
  from 
    standings as standings_1
  where standings_1.driverid = standings_1.driverstandingsid
  limit 16)
UNION
(select  
    drivers_1.driverid, 
    count(
      drivers_1.driverid), 
    drivers_1.driverid
  from 
    drivers as drivers_1
  where drivers_1.surname is not NULL
  group by drivers_1.driverref, drivers_1.forename, drivers_1.nationality
  limit 40);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_results_1.raceid, 
    constructor_results_1.date
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.raceid <= constructor_results_1.constructorid
  limit 35)
UNION
(select  
    sum(
      constructor_standings_1.points), 
    constructor_standings_1.date
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.wins is not NULL
  group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.points
  limit 31);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    races_1.date, 
    races_1.name, 
    races_1.round, 
    races_1.time
  from 
    races as races_1
  where races_1.round is not NULL
  limit 11)
INTERSECT
(select  
    drivers_1.dob, 
    drivers_1.code, 
    races_2.round, 
    drivers_1.surname
  from 
    standings as standings_1
        inner join races as races_2
        on (standings_1.driverstandingsid = races_2.raceid )
      inner join drivers as drivers_1
      on (races_2.raceid = drivers_1.driverid )
  where drivers_1.code <= races_2.time
  limit 38);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_results_1.points, 
    constructor_results_1.constructorid, 
    max(
      constructor_results_1.constructorid), 
    constructor_results_1.constructorresultsid, 
    constructor_results_1.date
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorresultsid < constructor_results_1.raceid
  group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points
  limit 32)
EXCEPT
(select  
    results_1.position, 
    min(
      results_1.positionorder), 
    min(
      results_1.statusid), 
    results_1.driverid, 
    results_1.date
  from 
    results as results_1
  where results_1.date > results_1.date
  limit 38);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    count(
      standings_1.date)
  from 
    standings as standings_1
  where standings_1.raceid is not NULL
  limit 21)
INTERSECT
(select  
    count(
      constructor_results_1.points)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.points is not NULL
  group by constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
  limit 39);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_standings_1.date
  from 
    constructor_standings as constructor_standings_1
      inner join drivers as drivers_1
      on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
  where drivers_1.code is not NULL
  limit 32)
INTERSECT
(select  
    drivers_2.dob
  from 
    drivers as drivers_2
  where drivers_2.dob = drivers_2.dob
  group by drivers_2.driverref, drivers_2.forename
  limit 8);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructors_1.nationality, 
    drivers_1.forename, 
    constructors_1.constructorid, 
    drivers_1.code
  from 
    constructors as constructors_1
      inner join drivers as drivers_1
      on (constructors_1.constructorid = drivers_1.driverid )
  where constructors_1.nationality is not NULL
  limit 4)
UNION
(select  
    constructors_2.name, 
    count(
      constructors_2.name), 
    constructors_2.constructorid, 
    constructors_2.name
  from 
    constructors as constructors_2
  where constructors_2.nationality is not NULL
  group by constructors_2.constructorid, constructors_2.constructorref, constructors_2.name, constructors_2.nationality
  limit 18);
-- meta {"num_joins":1,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    standings_1.driverstandingsid, 
    max(
      standings_1.date)
  from 
    standings as standings_1
  where standings_1.date >= standings_1.date
  group by standings_1.driverstandingsid
  limit 24)
UNION
(select  
    constructor_standings_1.position, 
    max(
      constructor_standings_1.date)
  from 
    constructor_standings as constructor_standings_1
      inner join constructors as constructors_1
      on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
  where constructor_standings_1.date > constructor_standings_1.date
  group by constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
  limit 27);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    results_1.resultid, 
    standings_1.driverid, 
    standings_1.points
  from 
    results as results_1
      inner join standings as standings_1
        inner join races as races_1
        on (standings_1.driverstandingsid = races_1.raceid )
      on (results_1.resultid = races_1.raceid )
  where results_1.grid is not NULL
  limit 8)
EXCEPT
(select  
    races_2.year, 
    races_2.round, 
    standings_2.points
  from 
    races as races_2
      inner join standings as standings_2
      on (races_2.raceid = standings_2.driverstandingsid )
  where races_2.round is not NULL
  limit 12);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_standings_1.position, 
    min(
      constructor_standings_1.date)
  from 
    qualifying as qualifying_1
      inner join constructor_standings as constructor_standings_1
      on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
  where constructor_standings_1.position is not NULL
  group by constructor_standings_1.position
  limit 16)
INTERSECT
(select  
    qualifying_2.driverid, 
    max(
      qualifying_2.date)
  from 
    qualifying as qualifying_2
  where qualifying_2.driverid is not NULL
  group by qualifying_2.date, qualifying_2.driverid, qualifying_2.number, qualifying_2.position
  limit 6);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    drivers_1.driverid
  from 
    drivers as drivers_1
  where drivers_1.nationality is not NULL
  limit 19)
UNION
(select  
    races_1.circuitid
  from 
    races as races_1
  where races_1.raceid is not NULL
  group by races_1.circuitid
  limit 26);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    qualifying_1.date
  from 
    qualifying as qualifying_1
  where qualifying_1.driverid is not NULL
  limit 19)
UNION
(select  
    sum(
      constructor_results_1.raceid)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.raceid is not NULL
  limit 16);
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    qualifying_1.driverid, 
    qualifying_1.number, 
    qualifying_1.constructorid, 
    qualifying_1.position, 
    min(
      qualifying_1.position), 
    qualifying_1.qualifyid, 
    count(
      qualifying_1.driverid), 
    min(
      qualifying_1.position)
  from 
    qualifying as qualifying_1
  where qualifying_1.date >= qualifying_1.date
  group by qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid
  limit 25)
EXCEPT
(select  
    constructor_results_1.raceid, 
    min(
      constructor_standings_1.date), 
    constructor_results_1.constructorid, 
    constructor_standings_1.position, 
    count(
      constructor_standings_1.points), 
    count(*), 
    count(*), 
    max(
      constructor_standings_1.constructorid)
  from 
    constructor_results as constructor_results_1
      inner join constructor_standings as constructor_standings_1
      on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
  where constructor_standings_1.points = constructor_results_1.points
  limit 17);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    results_1.fastestlap
  from 
    races as races_1
      inner join results as results_1
      on (races_1.raceid = results_1.resultid )
  where races_1.time < races_1.name
  limit 5)
EXCEPT
(select  
    count(*)
  from 
    constructors as constructors_1
  where constructors_1.nationality is not NULL
  limit 19);
-- meta {"num_joins":6,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_standings_1.position, 
    constructor_standings_1.wins, 
    constructor_standings_1.constructorstandingsid, 
    constructor_standings_1.constructorid, 
    constructor_standings_1.raceid
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.constructorid is not NULL
  limit 20)
EXCEPT
(select  
    standings_2.driverid, 
    qualifying_1.number, 
    standings_2.wins, 
    races_1.year, 
    count(
      qualifying_1.position)
  from 
    qualifying as qualifying_1
          inner join constructors as constructors_1
          on (qualifying_1.qualifyid = constructors_1.constructorid )
        inner join races as races_1
          inner join constructor_results as constructor_results_1
          on (races_1.raceid = constructor_results_1.constructorresultsid )
        on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
      inner join standings as standings_1
        inner join standings as standings_2
          inner join constructor_standings as constructor_standings_2
          on (standings_2.driverstandingsid = constructor_standings_2.constructorstandingsid )
        on (standings_1.driverstandingsid = standings_2.driverstandingsid )
      on (constructors_1.constructorid = standings_1.driverstandingsid )
  where constructor_standings_2.raceid is not NULL
  limit 16);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position
from 
  standings as standings_1
where standings_1.raceid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.qualifyid, 
  avg(
    qualifying_1.driverid), 
  qualifying_1.constructorid, 
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
group by qualifying_1.constructorid, qualifying_1.number, qualifying_1.qualifyid
limit 32;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    races_1.name, 
    races_1.circuitid, 
    races_1.round, 
    races_1.year, 
    races_1.date
  from 
    races as races_1
  where races_1.name is not NULL
  limit 25)
EXCEPT
(select  
    constructors_1.constructorref, 
    standings_1.wins, 
    constructors_2.constructorid, 
    constructors_2.constructorid, 
    standings_1.date
  from 
    constructors as constructors_1
        inner join constructors as constructors_2
        on (constructors_1.constructorid = constructors_2.constructorid )
      inner join standings as standings_1
      on (constructors_2.constructorid = standings_1.driverstandingsid )
  where constructors_1.name is not NULL
  group by constructors_1.name, constructors_1.nationality, constructors_2.constructorid, constructors_2.constructorref, constructors_2.nationality, standings_1.position, standings_1.wins
  limit 16);
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    qualifying_1.number, 
    qualifying_1.constructorid, 
    constructors_1.name
  from 
    constructors as constructors_1
      inner join qualifying as qualifying_1
      on (constructors_1.constructorid = qualifying_1.qualifyid )
  where constructors_1.constructorref is not NULL
  limit 10)
EXCEPT
(select  
    drivers_1.driverid, 
    max(
      constructor_results_1.points), 
    drivers_1.code
  from 
    drivers as drivers_1
        inner join drivers as drivers_2
        on (drivers_1.driverid = drivers_2.driverid )
      inner join constructor_results as constructor_results_1
      on (drivers_2.driverid = constructor_results_1.constructorresultsid )
  where drivers_2.dob < constructor_results_1.date
  group by constructor_results_1.constructorid, drivers_1.driverref, drivers_1.nationality, drivers_2.surname
  limit 24);
-- meta {"num_joins":2,"num_aggregates":7,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    min(
      circuits_1.circuitid), 
    sum(
      circuits_1.lng), 
    circuits_1.lat, 
    circuits_1.circuitref, 
    circuits_1.lng, 
    circuits_1.country, 
    circuits_1.location, 
    count(
      circuits_1.alt), 
    sum(
      circuits_1.lng), 
    circuits_1.circuitid, 
    circuits_1.alt, 
    max(
      circuits_1.circuitid), 
    sum(
      circuits_1.lat), 
    max(
      circuits_1.alt)
  from 
    circuits as circuits_1
  where circuits_1.lat is not NULL
  group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.location
  limit 28)
UNION
(select  
    count(
      qualifying_1.constructorid), 
    avg(
      circuits_2.lng), 
    circuits_2.alt, 
    circuits_2.name, 
    circuits_2.alt, 
    circuits_2.location, 
    circuits_2.country, 
    max(
      qualifying_1.qualifyid), 
    min(
      circuits_2.lng), 
    qualifying_1.constructorid, 
    sum(
      circuits_2.lat), 
    min(
      qualifying_1.constructorid), 
    min(
      circuits_2.lat), 
    max(
      circuits_2.alt)
  from 
    qualifying as qualifying_1
      inner join constructor_standings as constructor_standings_1
        inner join circuits as circuits_2
        on (constructor_standings_1.constructorstandingsid = circuits_2.circuitid )
      on (qualifying_1.qualifyid = circuits_2.circuitid )
  where circuits_2.lng >= circuits_2.alt
  limit 4);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    results_1.number, 
    results_1.positionorder, 
    results_1.position
  from 
    results as results_1
  where results_1.constructorid >= results_1.resultid
  limit 28)
UNION
(select  
    standings_1.points, 
    standings_1.position, 
    standings_1.points
  from 
    standings as standings_1
  where standings_1.points is not NULL
  limit 1);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_results_1.date
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorresultsid is not NULL
  limit 27)
UNION
(select  
    constructor_standings_1.date
  from 
    circuits as circuits_1
      inner join results as results_1
        inner join constructor_results as constructor_results_2
          inner join constructor_standings as constructor_standings_1
          on (constructor_results_2.constructorresultsid = constructor_standings_1.constructorstandingsid )
        on (results_1.resultid = constructor_results_2.constructorresultsid )
      on (circuits_1.circuitid = constructor_results_2.constructorresultsid )
  where circuits_1.alt is not NULL
  limit 15);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  races_1.date
from 
  qualifying as qualifying_1
    inner join races as races_1
    on (qualifying_1.qualifyid = races_1.raceid )
where qualifying_1.qualifyid is not NULL
limit 22;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    avg(
      constructors_1.constructorid), 
    constructors_1.name
  from 
    constructors as constructors_1
  where constructors_1.name <= constructors_1.nationality
  group by constructors_1.name
  limit 38)
INTERSECT
(select  
    sum(
      drivers_1.driverid), 
    drivers_1.surname
  from 
    drivers as drivers_1
  where drivers_1.driverid is not NULL
  group by drivers_1.driverid, drivers_1.nationality
  limit 28);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select distinct 
    races_1.time, 
    results_1.positionorder
  from 
    races as races_1
      inner join results as results_1
      on (races_1.raceid = results_1.resultid )
  where races_1.time < races_1.name
  limit 39)
INTERSECT
(select  
    min(
      constructor_standings_1.date), 
    constructor_standings_1.position
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.date >= constructor_standings_1.date
  group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.points
  limit 33);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_3.driverid, 
  results_3.date
from 
  results as results_1
    inner join results as results_2
      inner join results as results_3
      on (results_2.resultid = results_3.resultid )
    on (results_1.resultid = results_2.resultid )
where results_3.position = results_1.position
limit 20;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    races_1.year, 
    races_1.date, 
    max(
      races_1.year), 
    races_1.name, 
    races_1.time, 
    races_1.raceid
  from 
    races as races_1
  where races_1.year <= races_1.circuitid
  group by races_1.date, races_1.name, races_1.raceid, races_1.time, races_1.year
  limit 14)
INTERSECT
(select  
    constructor_standings_1.position, 
    constructor_results_1.date, 
    min(
      qualifying_1.qualifyid), 
    min(
      constructor_results_1.date), 
    max(
      constructor_standings_1.date), 
    qualifying_1.position
  from 
    qualifying as qualifying_1
      inner join constructor_results as constructor_results_1
        inner join constructor_standings as constructor_standings_1
        on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
      on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
  where constructor_standings_1.constructorid is not NULL
  limit 8);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    min(
      qualifying_1.date), 
    qualifying_1.number
  from 
    qualifying as qualifying_1
  where qualifying_1.qualifyid is not NULL
  group by qualifying_1.number
  limit 39)
UNION
(select  
    max(
      constructor_results_1.date), 
    constructor_results_1.constructorresultsid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.date >= constructor_results_1.date
  group by constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
  limit 30);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select distinct 
  qualifying_1.qualifyid, 
  qualifying_1.date, 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
limit 21;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_results_1.points, 
    min(
      constructor_results_1.date)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.raceid is not NULL
  group by constructor_results_1.points
  limit 4)
INTERSECT
(select  
    min(
      circuits_1.circuitid), 
    max(
      constructor_standings_1.date)
  from 
    constructor_standings as constructor_standings_1
      inner join circuits as circuits_1
      on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
  where circuits_1.circuitref is not NULL
  limit 30);
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    qualifying_1.constructorid, 
    constructors_1.nationality, 
    qualifying_1.qualifyid, 
    constructor_results_1.raceid, 
    constructor_results_1.date
  from 
    constructors as constructors_1
        inner join qualifying as qualifying_1
        on (constructors_1.constructorid = qualifying_1.qualifyid )
      inner join standings as standings_1
        inner join constructor_results as constructor_results_1
        on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
      on (constructors_1.constructorid = standings_1.driverstandingsid )
  where constructors_1.constructorid is not NULL
  limit 18)
INTERSECT
(select  
    max(
      standings_2.date), 
    max(
      standings_2.position), 
    standings_2.driverstandingsid, 
    standings_2.wins, 
    standings_2.date
  from 
    standings as standings_2
  where standings_2.driverid is not NULL
  group by standings_2.date, standings_2.driverid, standings_2.driverstandingsid, standings_2.points, standings_2.raceid, standings_2.wins
  limit 14);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    qualifying_1.position, 
    qualifying_1.qualifyid, 
    qualifying_1.constructorid, 
    qualifying_1.driverid, 
    qualifying_1.date
  from 
    qualifying as qualifying_1
  where qualifying_1.number is not NULL
  limit 39)
EXCEPT
(select  
    qualifying_2.driverid, 
    sum(
      qualifying_2.constructorid), 
    qualifying_2.position, 
    qualifying_2.position, 
    qualifying_2.date
  from 
    qualifying as qualifying_2
  where qualifying_2.position is not NULL
  limit 19);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    drivers_1.driverref, 
    drivers_1.surname, 
    drivers_1.code, 
    drivers_1.forename, 
    drivers_1.driverid, 
    drivers_1.nationality
  from 
    drivers as drivers_1
  where drivers_1.driverid = drivers_1.driverid
  limit 6)
UNION
(select  
    races_1.name, 
    races_1.name, 
    races_1.time, 
    races_1.time, 
    races_1.raceid, 
    races_1.name
  from 
    races as races_1
  where races_1.name is not NULL
  group by races_1.circuitid, races_1.round
  limit 11);
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    qualifying_1.raceid
  from 
    qualifying as qualifying_1
  where qualifying_1.qualifyid is not NULL
  limit 9)
EXCEPT
(select  
    results_1.grid
  from 
    results as results_1
  where results_1.positionorder < results_1.laps
  group by results_1.constructorid, results_1.date, results_1.grid, results_1.laps, results_1.milliseconds, results_1.points, results_1.positionorder, results_1.raceid, results_1.rank, results_1.resultid
  limit 38);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    circuits_1.alt), 
  sum(
    circuits_1.lng), 
  circuits_1.alt, 
  circuits_1.lng, 
  circuits_1.location, 
  count(
    circuits_1.lng)
from 
  circuits as circuits_1
where circuits_1.country is not NULL
group by circuits_1.alt, circuits_1.lng, circuits_1.location
limit 15;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_standings_1.position, 
    races_1.raceid, 
    races_1.round, 
    races_1.name
  from 
    races as races_1
      inner join constructor_standings as constructor_standings_1
      on (races_1.raceid = constructor_standings_1.constructorstandingsid )
  where races_1.round is not NULL
  limit 20)
EXCEPT
(select  
    constructor_results_1.constructorid, 
    constructor_results_1.constructorresultsid, 
    constructor_results_1.raceid, 
    avg(
      constructor_results_1.raceid)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.date is not NULL
  limit 41);
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    races_1.time, 
    races_1.year
  from 
    standings as standings_1
      inner join races as races_1
      on (standings_1.driverstandingsid = races_1.raceid )
  where standings_1.points is not NULL
  limit 30)
INTERSECT
(select  
    circuits_1.circuitref, 
    circuits_1.circuitid
  from 
    circuits as circuits_1
  where circuits_1.lat is not NULL
  group by circuits_1.circuitid, circuits_1.lng, circuits_1.location
  limit 29);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  min(
    constructor_results_1.constructorresultsid), 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  min(
    constructor_results_1.constructorresultsid), 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 38;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    races_1.circuitid), 
  races_1.date
from 
  races as races_1
where races_1.raceid is not NULL
group by races_1.date
limit 13;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.time, 
  races_1.name
from 
  races as races_1
      inner join constructor_results as constructor_results_1
      on (races_1.raceid = constructor_results_1.constructorresultsid )
    inner join races as races_2
    on (races_1.raceid = races_2.raceid )
where races_1.circuitid is not NULL
limit 33;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    races_1.name, 
    races_1.circuitid
  from 
    races as races_1
  where races_1.time >= races_1.name
  limit 23)
INTERSECT
(select  
    circuits_1.location, 
    max(
      circuits_1.lng)
  from 
    circuits as circuits_1
  where circuits_1.name is not NULL
  group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.lat, circuits_1.lng
  limit 36);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name, 
  standings_1.wins, 
  standings_1.driverid, 
  standings_1.points, 
  standings_1.driverstandingsid, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_2.constructorid, 
  min(
    standings_1.points), 
  constructors_2.constructorref, 
  standings_1.position, 
  standings_1.raceid
from 
  constructors as constructors_1
    inner join constructors as constructors_2
      inner join standings as standings_1
      on (constructors_2.constructorid = standings_1.driverstandingsid )
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where standings_1.driverid is not NULL
group by constructors_1.constructorref, constructors_1.name, constructors_1.nationality, constructors_2.constructorid, constructors_2.constructorref, standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
limit 13;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    races_1.time, 
    results_1.laps, 
    races_1.raceid, 
    max(
      results_1.date), 
    results_1.number, 
    results_1.positionorder, 
    results_1.milliseconds, 
    races_1.name, 
    min(
      results_1.date), 
    races_1.circuitid
  from 
    races as races_1
      inner join results as results_1
      on (races_1.raceid = results_1.resultid )
  where races_1.time is not NULL
  group by races_1.circuitid, races_1.name, races_1.raceid, races_1.time, results_1.laps, results_1.milliseconds, results_1.number, results_1.positionorder
  limit 11)
EXCEPT
(select  
    count(
      drivers_1.nationality), 
    max(
      drivers_1.dob), 
    standings_1.wins, 
    max(
      drivers_1.dob), 
    standings_1.points, 
    standings_1.raceid, 
    standings_1.points, 
    drivers_1.code, 
    min(
      standings_1.date), 
    max(
      standings_1.date)
  from 
    drivers as drivers_1
      inner join standings as standings_1
      on (drivers_1.driverid = standings_1.driverstandingsid )
  where drivers_1.surname is not NULL
  limit 1);
-- meta {"num_joins":1,"num_aggregates":6,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    drivers_1.nationality, 
    drivers_1.forename, 
    drivers_1.dob, 
    max(
      drivers_1.dob), 
    drivers_1.surname, 
    drivers_1.driverref, 
    drivers_1.driverid, 
    drivers_1.code
  from 
    drivers as drivers_1
  where drivers_1.driverid >= drivers_1.driverid
  group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
  limit 9)
INTERSECT
(select  
    races_1.name, 
    races_1.time, 
    standings_1.date, 
    min(
      standings_1.date), 
    races_1.time, 
    max(
      races_1.date), 
    standings_1.raceid, 
    races_1.name
  from 
    standings as standings_1
      inner join races as races_1
      on (standings_1.driverstandingsid = races_1.raceid )
  where standings_1.raceid is not NULL
  group by races_1.circuitid, races_1.date, races_1.raceid, races_1.round, races_1.year, standings_1.driverid, standings_1.position
  limit 11);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    standings_1.driverid, 
    standings_1.position, 
    standings_1.driverstandingsid, 
    standings_1.raceid, 
    standings_1.wins, 
    standings_1.date
  from 
    standings as standings_1
  where standings_1.date is not NULL
  limit 20)
UNION
(select  
    circuits_1.circuitid, 
    count(*), 
    circuits_1.circuitid, 
    circuits_1.circuitid, 
    min(
      circuits_1.circuitid), 
    max(
      circuits_1.circuitid)
  from 
    circuits as circuits_1
  where circuits_1.name is not NULL
  group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.lng, circuits_1.name
  limit 4);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    min(
      constructor_standings_1.date)
  from 
    constructor_standings as constructor_standings_1
      inner join results as results_1
      on (constructor_standings_1.constructorstandingsid = results_1.resultid )
  where constructor_standings_1.constructorid is not NULL
  limit 1)
INTERSECT
(select  
    max(
      constructor_results_1.date)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.points > constructor_results_1.points
  limit 10);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_results_1.date, 
    constructor_results_1.constructorid, 
    constructor_results_1.constructorresultsid, 
    constructor_results_1.points, 
    sum(
      constructor_results_1.points)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorid is not NULL
  group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points
  limit 21)
EXCEPT
(select  
    constructor_results_2.date, 
    count(
      races_1.circuitid), 
    constructor_results_2.constructorid, 
    constructor_results_2.points, 
    min(
      constructor_results_2.points)
  from 
    races as races_1
      inner join constructor_results as constructor_results_2
      on (races_1.raceid = constructor_results_2.constructorresultsid )
  where constructor_results_2.constructorresultsid is not NULL
  group by constructor_results_2.constructorid, constructor_results_2.constructorresultsid, constructor_results_2.points, constructor_results_2.raceid
  limit 2);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    count(
      constructor_results_1.constructorresultsid)
  from 
    qualifying as qualifying_1
      inner join constructor_results as constructor_results_1
      on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
  where constructor_results_1.raceid is not NULL
  limit 13)
INTERSECT
(select  
    max(
      drivers_1.driverid)
  from 
    drivers as drivers_1
  where drivers_1.driverid is not NULL
  limit 20);
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    qualifying_1.raceid, 
    min(
      results_2.date), 
    qualifying_1.driverid, 
    qualifying_1.constructorid, 
    standings_1.date
  from 
    results as results_1
        inner join qualifying as qualifying_1
        on (results_1.resultid = qualifying_1.qualifyid )
      inner join results as results_2
        inner join standings as standings_1
        on (results_2.resultid = standings_1.driverstandingsid )
      on (results_1.resultid = results_2.resultid )
  where results_1.grid > qualifying_1.position
  group by qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.raceid, standings_1.date
  limit 30)
EXCEPT
(select  
    standings_2.driverid, 
    min(
      standings_2.date), 
    standings_2.driverstandingsid, 
    count(*), 
    count(
      standings_2.points)
  from 
    standings as standings_2
  where standings_2.position is not NULL
  limit 8);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructors_1.constructorid, 
    constructors_1.nationality, 
    constructors_1.name, 
    qualifying_1.raceid
  from 
    qualifying as qualifying_1
      inner join constructors as constructors_1
      on (qualifying_1.qualifyid = constructors_1.constructorid )
  where qualifying_1.driverid is not NULL
  limit 23)
UNION
(select  
    races_1.circuitid, 
    constructors_2.name, 
    constructors_2.nationality, 
    races_1.year
  from 
    races as races_1
      inner join constructors as constructors_2
      on (races_1.raceid = constructors_2.constructorid )
  where races_1.date <= races_1.date
  limit 19);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructors_1.nationality, 
    constructors_1.name, 
    constructors_1.constructorref, 
    min(
      constructors_1.constructorid), 
    constructors_1.constructorid
  from 
    constructors as constructors_1
  where constructors_1.nationality is not NULL
  group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
  limit 25)
INTERSECT
(select  
    count(*), 
    avg(
      qualifying_1.constructorid), 
    max(
      qualifying_1.date), 
    min(
      qualifying_1.constructorid), 
    qualifying_1.qualifyid
  from 
    qualifying as qualifying_1
  where qualifying_1.constructorid is not NULL
  limit 15);
-- meta {"num_joins":4,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    drivers_2.surname
  from 
    drivers as drivers_1
          inner join races as races_1
          on (drivers_1.driverid = races_1.raceid )
        inner join races as races_2
        on (drivers_1.driverid = races_2.raceid )
      inner join drivers as drivers_2
      on (races_2.raceid = drivers_2.driverid )
  where drivers_1.dob <= drivers_2.dob
  limit 23)
EXCEPT
(select  
    drivers_3.forename
  from 
    standings as standings_1
      inner join drivers as drivers_3
      on (standings_1.driverstandingsid = drivers_3.driverid )
  where standings_1.points > standings_1.points
  group by drivers_3.code, drivers_3.driverid, standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.raceid, standings_1.wins
  limit 33);
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_results_1.points, 
    avg(
      results_1.points)
  from 
    results as results_1
      inner join qualifying as qualifying_1
        inner join constructor_results as constructor_results_1
        on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
      on (results_1.resultid = constructor_results_1.constructorresultsid )
  where results_1.date is not NULL
  group by constructor_results_1.points
  limit 4)
INTERSECT
(select  
    circuits_1.lat, 
    avg(
      circuits_1.lng)
  from 
    constructors as constructors_1
      inner join circuits as circuits_1
      on (constructors_1.constructorid = circuits_1.circuitid )
  where circuits_1.name < constructors_1.name
  limit 31);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  max(
    qualifying_1.date), 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
    inner join constructors as constructors_1
    on (qualifying_1.qualifyid = constructors_1.constructorid )
where qualifying_1.number is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality, qualifying_1.constructorid
limit 31;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructors_1.nationality, 
    circuits_1.circuitref
  from 
    constructors as constructors_1
      inner join circuits as circuits_1
      on (constructors_1.constructorid = circuits_1.circuitid )
  where circuits_1.name is not NULL
  limit 39)
EXCEPT
(select  
    min(
      qualifying_1.date), 
    max(
      qualifying_1.date)
  from 
    qualifying as qualifying_1
  where qualifying_1.constructorid is not NULL
  limit 21);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    races_1.year, 
    races_1.name, 
    races_1.round, 
    races_1.circuitid, 
    races_1.date, 
    max(
      races_1.date), 
    count(
      races_1.circuitid), 
    races_1.raceid, 
    min(
      races_1.circuitid), 
    min(
      races_1.raceid)
  from 
    races as races_1
  where races_1.circuitid is not NULL
  group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.year
  limit 9)
EXCEPT
(select  
    constructor_results_1.constructorid, 
    max(
      constructor_results_1.date), 
    constructor_results_1.constructorresultsid, 
    constructor_results_1.constructorid, 
    constructor_results_1.date, 
    max(
      constructor_results_1.date), 
    count(*), 
    constructor_results_1.constructorid, 
    count(
      constructor_results_1.date), 
    count(*)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorresultsid is not NULL
  limit 4);
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    circuits_1.name, 
    circuits_1.alt, 
    circuits_1.circuitref, 
    circuits_1.location, 
    max(
      circuits_1.lng), 
    circuits_1.country, 
    circuits_1.lng, 
    qualifying_1.raceid
  from 
    qualifying as qualifying_1
      inner join circuits as circuits_1
      on (qualifying_1.qualifyid = circuits_1.circuitid )
  where qualifying_1.date > qualifying_1.date
  group by circuits_1.alt, circuits_1.circuitref, circuits_1.country, circuits_1.lng, circuits_1.location, circuits_1.name, qualifying_1.raceid
  limit 39)
INTERSECT
(select  
    avg(
      constructor_results_1.raceid), 
    constructor_results_1.points, 
    sum(
      constructor_results_1.points), 
    sum(
      constructor_results_1.constructorresultsid), 
    min(
      constructor_results_1.points), 
    sum(
      constructor_results_1.points), 
    constructor_results_1.points, 
    avg(
      constructor_results_1.points)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.date <= constructor_results_1.date
  group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
  limit 16);
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    results_1.positionorder, 
    sum(
      results_1.points), 
    results_1.grid, 
    results_1.position, 
    results_1.date, 
    results_1.laps, 
    results_1.number, 
    results_1.statusid, 
    results_1.points
  from 
    results as results_1
  where results_1.date is not NULL
  group by results_1.date, results_1.grid, results_1.laps, results_1.number, results_1.points, results_1.position, results_1.positionorder, results_1.statusid
  limit 41)
EXCEPT
(select  
    standings_1.wins, 
    min(
      standings_1.points), 
    standings_1.position, 
    standings_1.points, 
    min(
      standings_1.date), 
    standings_1.raceid, 
    min(
      standings_1.wins), 
    standings_1.position, 
    standings_1.points
  from 
    standings as standings_1
  where standings_1.date = standings_1.date
  group by standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
  limit 25);
-- meta {"num_joins":4,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    count(*)
  from 
    results as results_1
  where results_1.driverid is not NULL
  limit 15)
INTERSECT
(select  
    count(*)
  from 
    constructor_results as constructor_results_1
            inner join qualifying as qualifying_1
            on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
          inner join standings as standings_1
          on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
        inner join constructor_results as constructor_results_2
        on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
      inner join drivers as drivers_1
      on (constructor_results_1.constructorresultsid = drivers_1.driverid )
  where standings_1.points <= constructor_results_2.points
  group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_2.date, drivers_1.driverref, qualifying_1.qualifyid
  limit 40);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    drivers_1.surname, 
    drivers_1.code, 
    drivers_1.dob
  from 
    drivers as drivers_1
  where drivers_1.dob < drivers_1.dob
  limit 29)
EXCEPT
(select  
    count(
      circuits_1.lat), 
    circuits_1.circuitref, 
    max(
      circuits_1.lat)
  from 
    circuits as circuits_1
      inner join qualifying as qualifying_1
      on (circuits_1.circuitid = qualifying_1.qualifyid )
  where circuits_1.country is not NULL
  group by circuits_1.alt, circuits_1.lng, circuits_1.name, qualifying_1.driverid, qualifying_1.raceid
  limit 4);
-- meta {"num_joins":4,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    min(
      constructors_1.constructorid), 
    sum(
      constructors_1.constructorid), 
    count(*), 
    constructors_1.constructorid, 
    constructors_1.name, 
    constructors_1.nationality, 
    avg(
      constructors_1.constructorid)
  from 
    constructors as constructors_1
  where constructors_1.name is not NULL
  group by constructors_1.constructorid, constructors_1.name, constructors_1.nationality
  limit 3)
UNION
(select  
    count(*), 
    avg(
      constructor_standings_1.constructorstandingsid), 
    count(
      results_1.driverid), 
    qualifying_1.driverid, 
    drivers_1.forename, 
    drivers_1.driverref, 
    sum(
      constructor_standings_1.raceid)
  from 
    constructor_standings as constructor_standings_1
        inner join qualifying as qualifying_1
        on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
      inner join standings as standings_1
        inner join results as results_1
          inner join drivers as drivers_1
          on (results_1.resultid = drivers_1.driverid )
        on (standings_1.driverstandingsid = drivers_1.driverid )
      on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
  where standings_1.position is not NULL
  limit 24);
-- meta {"num_joins":2,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    max(
      results_1.date), 
    results_1.resultid, 
    results_1.grid, 
    count(*), 
    results_1.points, 
    results_1.raceid, 
    results_1.laps, 
    avg(
      results_1.fastestlap), 
    sum(
      results_1.points), 
    results_1.position, 
    results_1.fastestlap
  from 
    results as results_1
  where results_1.milliseconds is not NULL
  group by results_1.fastestlap, results_1.grid, results_1.laps, results_1.points, results_1.position, results_1.raceid, results_1.resultid
  limit 34)
UNION
(select distinct 
    min(
      drivers_1.dob), 
    constructor_standings_1.constructorid, 
    constructor_standings_1.raceid, 
    max(
      drivers_1.driverid), 
    avg(
      constructor_standings_1.points), 
    constructor_standings_1.constructorid, 
    constructors_1.constructorid, 
    min(
      constructor_standings_1.points), 
    max(
      constructor_standings_1.points), 
    constructor_standings_1.points, 
    constructor_standings_1.points
  from 
    constructors as constructors_1
      inner join drivers as drivers_1
        inner join constructor_standings as constructor_standings_1
        on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
      on (constructors_1.constructorid = drivers_1.driverid )
  where drivers_1.driverref is not NULL
  limit 24);
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructors_1.nationality, 
    min(
      drivers_1.dob)
  from 
    constructors as constructors_1
      inner join drivers as drivers_1
      on (constructors_1.constructorid = drivers_1.driverid )
  where constructors_1.constructorid <= drivers_1.driverid
  group by constructors_1.nationality
  limit 18)
INTERSECT
(select  
    circuits_1.location, 
    min(
      results_1.date)
  from 
    standings as standings_1
      inner join results as results_1
        inner join circuits as circuits_1
        on (results_1.resultid = circuits_1.circuitid )
      on (standings_1.driverstandingsid = circuits_1.circuitid )
  where circuits_1.name is not NULL
  limit 10);
-- meta {"num_joins":0,"num_aggregates":9,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_results_1.date, 
    constructor_results_1.points, 
    max(
      constructor_results_1.date), 
    sum(
      constructor_results_1.constructorid), 
    constructor_results_1.constructorresultsid, 
    max(
      constructor_results_1.date), 
    max(
      constructor_results_1.date), 
    sum(
      constructor_results_1.constructorresultsid), 
    constructor_results_1.raceid, 
    max(
      constructor_results_1.date), 
    max(
      constructor_results_1.date), 
    constructor_results_1.constructorid, 
    count(*), 
    count(
      constructor_results_1.constructorid)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.raceid is not NULL
  group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
  limit 39)
EXCEPT
(select  
    standings_1.date, 
    standings_1.points, 
    min(
      standings_1.date), 
    avg(
      standings_1.driverid), 
    standings_1.wins, 
    max(
      standings_1.date), 
    min(
      standings_1.date), 
    avg(
      standings_1.position), 
    standings_1.driverstandingsid, 
    min(
      standings_1.date), 
    max(
      standings_1.date), 
    standings_1.position, 
    min(
      standings_1.raceid), 
    count(
      standings_1.date)
  from 
    standings as standings_1
  where standings_1.points <= standings_1.points
  limit 29);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    races_1.year, 
    drivers_1.dob, 
    races_1.round
  from 
    races as races_1
      inner join drivers as drivers_1
      on (races_1.raceid = drivers_1.driverid )
  where drivers_1.code >= drivers_1.driverref
  limit 40)
EXCEPT
(select  
    drivers_2.driverid, 
    drivers_2.dob, 
    avg(
      drivers_2.driverid)
  from 
    drivers as drivers_2
  where drivers_2.driverid is not NULL
  group by drivers_2.code, drivers_2.forename
  limit 22);
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    qualifying_1.qualifyid
  from 
    qualifying as qualifying_1
  where qualifying_1.date is not NULL
  limit 24)
INTERSECT
(select  
    constructor_results_1.raceid
  from 
    constructor_standings as constructor_standings_1
        inner join constructor_results as constructor_results_1
        on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
      inner join constructor_results as constructor_results_2
      on (constructor_standings_1.constructorstandingsid = constructor_results_2.constructorresultsid )
  where constructor_standings_1.position is not NULL
  group by constructor_results_1.date, constructor_results_1.raceid, constructor_results_2.constructorresultsid, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.raceid
  limit 31);
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    drivers_1.forename, 
    qualifying_1.qualifyid
  from 
    drivers as drivers_1
      inner join qualifying as qualifying_1
      on (drivers_1.driverid = qualifying_1.qualifyid )
  where drivers_1.driverid is not NULL
  limit 4)
INTERSECT
(select  
    races_1.time, 
    min(
      races_1.round)
  from 
    races as races_1
  where races_1.raceid is not NULL
  group by races_1.date, races_1.name, races_1.raceid, races_1.time, races_1.year
  limit 16);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_results_1.raceid, 
    constructor_results_1.date, 
    constructor_results_1.points
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorid >= constructor_results_1.raceid
  limit 37)
UNION
(select  
    min(
      results_1.rank), 
    results_1.date, 
    results_1.rank
  from 
    results as results_1
  where results_1.number is not NULL
  limit 22);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_standings_1.position, 
    results_1.fastestlap, 
    constructor_standings_1.constructorstandingsid, 
    constructor_standings_1.date
  from 
    constructor_standings as constructor_standings_1
      inner join results as results_1
      on (constructor_standings_1.constructorstandingsid = results_1.resultid )
  where constructor_standings_1.date < results_1.date
  limit 20)
UNION
(select  
    avg(
      circuits_1.circuitid), 
    circuits_1.alt, 
    circuits_1.circuitid, 
    avg(
      circuits_1.circuitid)
  from 
    circuits as circuits_1
  where circuits_1.circuitid > circuits_1.circuitid
  limit 33);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_standings_1.constructorid, 
    constructor_standings_1.constructorstandingsid, 
    constructor_standings_1.date, 
    constructor_standings_1.position
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.constructorstandingsid > constructor_standings_1.raceid
  limit 31)
INTERSECT
(select  
    drivers_1.driverid, 
    min(
      drivers_1.dob), 
    drivers_1.dob, 
    drivers_2.driverid
  from 
    drivers as drivers_1
      inner join drivers as drivers_2
      on (drivers_1.driverid = drivers_2.driverid )
  where drivers_1.driverref is not NULL
  limit 1);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.surname, 
  drivers_1.driverid, 
  drivers_1.dob, 
  drivers_1.forename, 
  avg(
    drivers_1.driverid), 
  drivers_1.code, 
  max(
    drivers_1.dob)
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.forename, drivers_1.surname
limit 38;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref, 
  count(
    circuits_1.name), 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.alt is not NULL
group by circuits_1.alt, circuits_1.circuitref
limit 12;
-- meta {"num_joins":3,"num_aggregates":6,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    count(*), 
    max(
      results_1.date)
  from 
    results as results_1
        inner join results as results_2
        on (results_1.resultid = results_2.resultid )
      inner join results as results_3
      on (results_2.resultid = results_3.resultid )
  where results_2.number is not NULL
  limit 24)
UNION
(select  
    max(
      qualifying_1.number), 
    min(
      qualifying_1.date)
  from 
    constructors as constructors_1
      inner join qualifying as qualifying_1
      on (constructors_1.constructorid = qualifying_1.qualifyid )
  where constructors_1.constructorid is not NULL
  group by constructors_1.constructorid, constructors_1.nationality, qualifying_1.constructorid, qualifying_1.driverid
  limit 31);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    drivers_1.driverref, 
    drivers_1.forename
  from 
    drivers as drivers_1
  where drivers_1.forename is not NULL
  limit 17)
EXCEPT
(select  
    max(
      constructor_standings_1.date), 
    min(
      standings_1.date)
  from 
    qualifying as qualifying_1
      inner join standings as standings_1
        inner join constructor_standings as constructor_standings_1
        on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
      on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
  where constructor_standings_1.position is not NULL
  group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.position, constructor_standings_1.wins, standings_1.date, standings_1.driverid, standings_1.driverstandingsid
  limit 25);
-- meta {"num_joins":5,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    qualifying_1.constructorid, 
    standings_1.driverstandingsid, 
    sum(
      results_1.points), 
    results_1.raceid, 
    constructor_standings_1.constructorid, 
    results_1.points, 
    results_1.statusid, 
    count(*)
  from 
    constructor_standings as constructor_standings_1
      inner join standings as standings_1
          inner join qualifying as qualifying_1
          on (standings_1.driverstandingsid = qualifying_1.qualifyid )
        inner join results as results_1
        on (standings_1.driverstandingsid = results_1.resultid )
      on (constructor_standings_1.constructorstandingsid = results_1.resultid )
  where constructor_standings_1.constructorid is not NULL
  group by constructor_standings_1.constructorid, qualifying_1.constructorid, results_1.points, results_1.raceid, results_1.statusid, standings_1.driverstandingsid
  limit 41)
EXCEPT
(select  
    results_2.laps, 
    results_2.grid, 
    min(
      results_2.rank), 
    results_2.resultid, 
    results_2.grid, 
    results_2.rank, 
    results_2.statusid, 
    count(
      constructors_2.constructorref)
  from 
    results as results_2
      inner join constructors as constructors_1
        inner join constructors as constructors_2
        on (constructors_1.constructorid = constructors_2.constructorid )
      on (results_2.resultid = constructors_2.constructorid )
  where constructors_2.name is not NULL
  group by constructors_1.constructorid, constructors_2.constructorref, results_2.grid, results_2.laps, results_2.statusid
  limit 36);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    standings_1.points, 
    standings_1.raceid, 
    standings_1.wins, 
    standings_1.driverid
  from 
    standings as standings_1
  where standings_1.wins is not NULL
  limit 7)
EXCEPT
(select  
    min(
      races_1.date), 
    min(
      races_1.date), 
    results_1.statusid, 
    circuits_1.circuitid
  from 
    circuits as circuits_1
        inner join results as results_1
        on (circuits_1.circuitid = results_1.resultid )
      inner join races as races_1
      on (results_1.resultid = races_1.raceid )
  where results_1.driverid is not NULL
  group by circuits_1.country, circuits_1.lat, races_1.circuitid, races_1.name, results_1.driverid
  limit 23);
-- meta {"num_joins":2,"num_aggregates":5,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    standings_1.date, 
    min(
      standings_1.wins), 
    standings_1.points, 
    min(
      standings_1.date), 
    standings_1.driverid, 
    min(
      standings_1.date), 
    max(
      standings_1.driverstandingsid)
  from 
    standings as standings_1
  where standings_1.position <= standings_1.raceid
  group by standings_1.date, standings_1.driverid, standings_1.points
  limit 17)
INTERSECT
(select  
    drivers_1.dob, 
    count(
      circuits_2.circuitid), 
    circuits_1.lng, 
    max(
      drivers_1.dob), 
    circuits_1.circuitid, 
    min(
      drivers_1.dob), 
    count(
      circuits_2.country)
  from 
    drivers as drivers_1
      inner join circuits as circuits_1
        inner join circuits as circuits_2
        on (circuits_1.circuitid = circuits_2.circuitid )
      on (drivers_1.driverid = circuits_1.circuitid )
  where drivers_1.driverid is not NULL
  group by circuits_2.lng, drivers_1.nationality
  limit 1);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    results_1.points, 
    results_1.positionorder, 
    results_1.position, 
    sum(
      results_1.points), 
    results_1.fastestlap
  from 
    results as results_1
  where results_1.laps is not NULL
  group by results_1.fastestlap, results_1.points, results_1.position, results_1.positionorder
  limit 12)
UNION
(select  
    results_2.fastestlap, 
    results_2.constructorid, 
    results_2.points, 
    min(
      results_2.position), 
    max(
      results_2.date)
  from 
    drivers as drivers_1
      inner join results as results_2
      on (drivers_1.driverid = results_2.resultid )
  where results_2.laps is not NULL
  limit 2);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    circuits_1.location, 
    min(
      circuits_1.lng), 
    circuits_1.lat, 
    circuits_1.lng, 
    circuits_1.circuitid, 
    sum(
      circuits_1.circuitid)
  from 
    circuits as circuits_1
  where circuits_1.location is not NULL
  group by circuits_1.circuitid, circuits_1.lat, circuits_1.lng, circuits_1.location
  limit 17)
EXCEPT
(select  
    circuits_2.country, 
    max(
      standings_1.points), 
    standings_1.points, 
    circuits_2.alt, 
    circuits_2.circuitid, 
    avg(
      circuits_2.circuitid)
  from 
    circuits as circuits_2
      inner join standings as standings_1
      on (circuits_2.circuitid = standings_1.driverstandingsid )
  where circuits_2.name is not NULL
  limit 31);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number, 
  qualifying_1.constructorid, 
  qualifying_1.driverid, 
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
limit 30;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    drivers_1.driverref
  from 
    drivers as drivers_1
  where drivers_1.nationality is not NULL
  limit 31)
INTERSECT
(select  
    min(
      qualifying_1.date)
  from 
    qualifying as qualifying_1
  where qualifying_1.raceid is not NULL
  limit 2);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_standings_1.position, 
    constructor_standings_1.wins
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.points = constructor_standings_1.points
  limit 17)
INTERSECT
(select  
    circuits_1.circuitid, 
    circuits_1.circuitid
  from 
    circuits as circuits_1
  where circuits_1.location is not NULL
  group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.location
  limit 9);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    qualifying_1.constructorid, 
    qualifying_1.driverid
  from 
    qualifying as qualifying_1
  where qualifying_1.qualifyid is not NULL
  limit 4)
INTERSECT
(select  
    constructor_standings_1.constructorstandingsid, 
    min(
      constructor_standings_1.points)
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.date is not NULL
  limit 30);
-- meta {"num_joins":3,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    constructor_results_1.points), 
  constructor_results_1.date, 
  min(
    constructor_results_1.points), 
  sum(
    constructor_results_1.points), 
  constructor_results_1.points, 
  races_1.year, 
  races_2.name, 
  max(
    constructor_results_1.date), 
  races_2.time
from 
  races as races_1
    inner join races as races_2
        inner join constructor_results as constructor_results_1
        on (races_2.raceid = constructor_results_1.constructorresultsid )
      inner join qualifying as qualifying_1
      on (races_2.raceid = qualifying_1.qualifyid )
    on (races_1.raceid = races_2.raceid )
where races_1.name <= races_2.name
group by constructor_results_1.date, constructor_results_1.points, races_1.year, races_2.name, races_2.time
limit 13;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructors_1.name
  from 
    constructors as constructors_1
  where constructors_1.constructorid is not NULL
  limit 36)
EXCEPT
(select  
    circuits_1.name
  from 
    circuits as circuits_1
      inner join constructors as constructors_2
      on (circuits_1.circuitid = constructors_2.constructorid )
  where constructors_2.nationality is not NULL
  group by circuits_1.circuitref, circuits_1.location, constructors_2.constructorid, constructors_2.nationality
  limit 41);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    races_1.raceid, 
    constructor_standings_1.constructorid
  from 
    races as races_1
      inner join constructor_standings as constructor_standings_1
      on (races_1.raceid = constructor_standings_1.constructorstandingsid )
  where races_1.date is not NULL
  limit 13)
EXCEPT
(select  
    constructor_standings_2.wins, 
    constructor_standings_2.constructorstandingsid
  from 
    constructor_standings as constructor_standings_2
  where constructor_standings_2.constructorid is not NULL
  group by constructor_standings_2.constructorstandingsid, constructor_standings_2.date, constructor_standings_2.points, constructor_standings_2.position, constructor_standings_2.raceid, constructor_standings_2.wins
  limit 36);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    races_1.name
  from 
    races as races_1
  where races_1.year is not NULL
  limit 2)
INTERSECT
(select  
    min(
      drivers_1.dob)
  from 
    drivers as drivers_1
  where drivers_1.driverid <= drivers_1.driverid
  group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.nationality
  limit 38);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_results_1.points, 
    drivers_1.forename, 
    drivers_1.nationality, 
    drivers_1.driverid, 
    constructor_results_1.constructorresultsid
  from 
    drivers as drivers_1
      inner join constructor_results as constructor_results_1
        inner join constructor_results as constructor_results_2
        on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
      on (drivers_1.driverid = constructor_results_2.constructorresultsid )
  where constructor_results_2.raceid is not NULL
  limit 18)
INTERSECT
(select  
    min(
      drivers_2.dob), 
    drivers_2.driverref, 
    drivers_2.forename, 
    drivers_2.driverid, 
    count(
      drivers_2.nationality)
  from 
    drivers as drivers_2
  where drivers_2.dob <= drivers_2.dob
  limit 15);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    results_1.resultid, 
    results_1.laps, 
    results_1.position, 
    constructor_results_1.date
  from 
    constructor_results as constructor_results_1
      inner join results as results_1
      on (constructor_results_1.constructorresultsid = results_1.resultid )
  where results_1.positionorder = results_1.resultid
  limit 27)
EXCEPT
(select  
    circuits_1.circuitid, 
    circuits_1.circuitid, 
    circuits_1.lat, 
    sum(
      circuits_1.circuitid)
  from 
    circuits as circuits_1
  where circuits_1.circuitid is not NULL
  limit 18);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location, 
  drivers_1.driverref, 
  circuits_1.circuitid, 
  circuits_1.country, 
  drivers_1.nationality, 
  drivers_1.surname, 
  circuits_1.alt, 
  count(
    circuits_1.circuitid)
from 
  circuits as circuits_1
    inner join drivers as drivers_1
    on (circuits_1.circuitid = drivers_1.driverid )
where drivers_1.surname is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.country, circuits_1.location, drivers_1.driverref, drivers_1.nationality, drivers_1.surname
limit 26;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    drivers_2.nationality, 
    constructors_1.constructorid, 
    drivers_2.code, 
    constructors_1.constructorref, 
    drivers_1.driverref, 
    drivers_1.driverid, 
    drivers_2.forename
  from 
    drivers as drivers_1
      inner join constructors as constructors_1
        inner join drivers as drivers_2
        on (constructors_1.constructorid = drivers_2.driverid )
      on (drivers_1.driverid = constructors_1.constructorid )
  where drivers_2.code is not NULL
  limit 20)
EXCEPT
(select  
    avg(
      results_1.fastestlap), 
    results_1.laps, 
    min(
      results_1.date), 
    count(*), 
    avg(
      results_1.rank), 
    results_1.grid, 
    max(
      results_1.date)
  from 
    results as results_1
  where results_1.fastestlap is not NULL
  limit 21);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins < constructor_standings_1.constructorstandingsid
limit 20;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    drivers_1.driverid, 
    standings_1.points, 
    standings_1.driverstandingsid, 
    drivers_1.surname
  from 
    standings as standings_1
      inner join drivers as drivers_1
      on (standings_1.driverstandingsid = drivers_1.driverid )
  where drivers_1.driverid is not NULL
  limit 17)
UNION
(select  
    min(
      constructor_standings_1.points), 
    constructor_results_1.points, 
    constructor_standings_1.constructorid, 
    max(
      constructor_standings_1.date)
  from 
    constructor_standings as constructor_standings_1
      inner join constructor_results as constructor_results_1
      on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
  where constructor_results_1.date is not NULL
  limit 14);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    standings_1.raceid, 
    standings_1.wins, 
    standings_1.driverstandingsid, 
    standings_1.position, 
    count(
      standings_1.position), 
    standings_1.date
  from 
    standings as standings_1
  where standings_1.date is not NULL
  group by standings_1.date, standings_1.driverstandingsid, standings_1.position, standings_1.raceid, standings_1.wins
  limit 29)
INTERSECT
(select  
    qualifying_1.driverid, 
    qualifying_1.position, 
    qualifying_1.qualifyid, 
    qualifying_1.position, 
    max(
      qualifying_1.number), 
    avg(
      qualifying_1.qualifyid)
  from 
    qualifying as qualifying_1
  where qualifying_1.position > qualifying_1.raceid
  group by qualifying_1.driverid, qualifying_1.qualifyid
  limit 20);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    sum(
      constructors_1.constructorid), 
    count(*), 
    constructors_1.constructorid, 
    constructors_1.nationality
  from 
    constructors as constructors_1
  where constructors_1.nationality is not NULL
  group by constructors_1.constructorid, constructors_1.nationality
  limit 29)
INTERSECT
(select  
    avg(
      constructors_2.constructorid), 
    count(
      constructors_2.constructorid), 
    constructors_2.constructorid, 
    constructors_2.nationality
  from 
    constructors as constructors_2
  where constructors_2.constructorref is not NULL
  group by constructors_2.constructorid, constructors_2.constructorref
  limit 24);
-- meta {"num_joins":5,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverid, 
  min(
    constructor_results_1.constructorid), 
  results_1.constructorid
from 
  races as races_1
      inner join qualifying as qualifying_1
      on (races_1.raceid = qualifying_1.qualifyid )
    inner join drivers as drivers_1
        inner join races as races_2
          inner join constructor_results as constructor_results_1
          on (races_2.raceid = constructor_results_1.constructorresultsid )
        on (drivers_1.driverid = constructor_results_1.constructorresultsid )
      inner join results as results_1
      on (constructor_results_1.constructorresultsid = results_1.resultid )
    on (qualifying_1.qualifyid = results_1.resultid )
where races_2.name is not NULL
group by drivers_1.driverid, results_1.constructorid
limit 18;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    sum(
      circuits_1.lat), 
    circuits_1.alt, 
    circuits_1.circuitid, 
    max(
      circuits_1.circuitid), 
    circuits_1.country, 
    circuits_1.name, 
    circuits_1.lng
  from 
    circuits as circuits_1
  where circuits_1.lng is not NULL
  group by circuits_1.alt, circuits_1.circuitid, circuits_1.country, circuits_1.lng, circuits_1.name
  limit 40)
INTERSECT
(select  
    avg(
      constructor_results_1.points), 
    constructor_results_1.points, 
    constructor_results_1.constructorresultsid, 
    count(
      constructor_results_1.raceid), 
    avg(
      constructor_results_1.constructorid), 
    avg(
      constructor_results_1.raceid), 
    constructor_results_1.points
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.points is not NULL
  limit 4);
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_standings_1.wins, 
    races_1.raceid, 
    races_1.year, 
    constructor_standings_1.points, 
    races_1.date, 
    constructor_standings_1.raceid
  from 
    races as races_1
      inner join constructor_standings as constructor_standings_1
      on (races_1.raceid = constructor_standings_1.constructorstandingsid )
  where races_1.date = constructor_standings_1.date
  limit 9)
EXCEPT
(select  
    constructors_1.constructorid, 
    constructors_1.constructorid, 
    circuits_1.circuitid, 
    avg(
      constructors_1.constructorid), 
    count(*), 
    constructors_1.constructorid
  from 
    circuits as circuits_1
        inner join constructors as constructors_1
        on (circuits_1.circuitid = constructors_1.constructorid )
      inner join constructors as constructors_2
      on (constructors_1.constructorid = constructors_2.constructorid )
  where constructors_1.name is not NULL
  group by circuits_1.lng, constructors_2.constructorid, constructors_2.constructorref
  limit 14);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    circuits_1.location
  from 
    circuits as circuits_1
      inner join constructors as constructors_1
      on (circuits_1.circuitid = constructors_1.constructorid )
  where constructors_1.constructorid is not NULL
  limit 39)
EXCEPT
(select  
    avg(
      standings_1.points)
  from 
    standings as standings_1
  where standings_1.date >= standings_1.date
  group by standings_1.driverid, standings_1.raceid, standings_1.wins
  limit 16);
-- meta {"num_joins":5,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_standings_2.wins
  from 
    results as results_1
          inner join standings as standings_1
          on (results_1.resultid = standings_1.driverstandingsid )
        inner join constructor_standings as constructor_standings_1
        on (results_1.resultid = constructor_standings_1.constructorstandingsid )
      inner join constructor_standings as constructor_standings_2
      on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
  where constructor_standings_2.points is not NULL
  limit 36)
INTERSECT
(select  
    count(
      qualifying_1.constructorid)
  from 
    results as results_2
      inner join circuits as circuits_1
        inner join qualifying as qualifying_1
        on (circuits_1.circuitid = qualifying_1.qualifyid )
      on (results_2.resultid = circuits_1.circuitid )
  where circuits_1.name is not NULL
  group by circuits_1.location, circuits_1.name, qualifying_1.constructorid, qualifying_1.driverid, results_2.milliseconds
  limit 31);
-- meta {"num_joins":4,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    circuits_1.location, 
    circuits_1.alt, 
    circuits_1.lng, 
    circuits_1.circuitid
  from 
    circuits as circuits_1
  where circuits_1.alt is not NULL
  limit 25)
UNION
(select  
    drivers_3.code, 
    results_1.points, 
    results_1.milliseconds, 
    qualifying_1.position
  from 
    qualifying as qualifying_1
        inner join drivers as drivers_1
          inner join results as results_1
            inner join drivers as drivers_2
            on (results_1.resultid = drivers_2.driverid )
          on (drivers_1.driverid = results_1.resultid )
        on (qualifying_1.qualifyid = results_1.resultid )
      inner join drivers as drivers_3
      on (drivers_1.driverid = drivers_3.driverid )
  where drivers_3.driverid < results_1.laps
  group by drivers_1.surname
  limit 1);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    standings_1.wins
  from 
    standings as standings_1
  where standings_1.raceid is not NULL
  limit 3)
UNION
(select  
    races_1.circuitid
  from 
    races as races_1
  where races_1.year is not NULL
  limit 19);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_standings_1.position
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.constructorid is not NULL
  limit 14)
UNION
(select  
    constructor_standings_2.raceid
  from 
    qualifying as qualifying_1
        inner join constructor_standings as constructor_standings_2
        on (qualifying_1.qualifyid = constructor_standings_2.constructorstandingsid )
      inner join constructor_results as constructor_results_1
      on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
  where constructor_results_1.constructorid is not NULL
  group by qualifying_1.number, qualifying_1.position
  limit 33);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_results_1.raceid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorid is not NULL
  limit 2)
EXCEPT
(select  
    standings_1.driverid
  from 
    standings as standings_1
  where standings_1.driverid is not NULL
  limit 20);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    drivers_1.nationality, 
    drivers_1.driverid
  from 
    drivers as drivers_1
  where drivers_1.driverref is not NULL
  limit 35)
UNION
(select  
    count(*), 
    constructors_1.constructorid
  from 
    constructors as constructors_1
  where constructors_1.nationality is not NULL
  limit 29);
-- meta {"num_joins":0,"num_aggregates":6,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    drivers_1.surname, 
    drivers_1.forename, 
    drivers_1.code, 
    drivers_1.nationality, 
    drivers_1.driverref, 
    max(
      drivers_1.dob), 
    max(
      drivers_1.dob), 
    count(
      drivers_1.driverref), 
    sum(
      drivers_1.driverid), 
    min(
      drivers_1.dob)
  from 
    drivers as drivers_1
  where drivers_1.nationality is not NULL
  group by drivers_1.code, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
  limit 13)
EXCEPT
(select  
    races_1.time, 
    races_1.name, 
    races_1.time, 
    races_1.name, 
    races_1.name, 
    min(
      races_1.date), 
    min(
      races_1.date), 
    max(
      races_1.year), 
    avg(
      races_1.year), 
    max(
      races_1.date)
  from 
    races as races_1
  where races_1.circuitid = races_1.raceid
  group by races_1.round
  limit 6);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    standings_1.raceid, 
    standings_1.position, 
    standings_1.driverstandingsid, 
    standings_1.wins
  from 
    standings as standings_1
  where standings_1.points is not NULL
  limit 12)
INTERSECT
(select  
    constructor_standings_1.constructorstandingsid, 
    constructor_standings_1.raceid, 
    constructor_standings_1.constructorstandingsid, 
    max(
      constructor_standings_1.points)
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.date <= constructor_standings_1.date
  group by constructor_standings_1.date, constructor_standings_1.position
  limit 8);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    drivers_1.forename, 
    drivers_1.nationality
  from 
    drivers as drivers_1
  where drivers_1.surname is not NULL
  limit 4)
UNION
(select  
    circuits_1.country, 
    circuits_1.country
  from 
    circuits as circuits_1
  where circuits_1.location is not NULL
  limit 33);
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    count(
      races_1.raceid), 
    count(
      races_1.raceid)
  from 
    races as races_1
  where races_1.year is not NULL
  limit 1)
INTERSECT
(select  
    max(
      results_1.resultid), 
    min(
      results_1.constructorid)
  from 
    results as results_1
      inner join races as races_2
      on (results_1.resultid = races_2.raceid )
  where results_1.date > races_2.date
  group by results_1.grid, results_1.milliseconds, results_1.number
  limit 15);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    results_1.statusid, 
    results_1.position, 
    results_1.positionorder
  from 
    results as results_1
      inner join constructors as constructors_1
      on (results_1.resultid = constructors_1.constructorid )
  where results_1.position is not NULL
  limit 7)
EXCEPT
(select  
    min(
      races_1.date), 
    min(
      races_1.date), 
    races_1.raceid
  from 
    races as races_1
  where races_1.name > races_1.time
  group by races_1.circuitid, races_1.date, races_1.round
  limit 33);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.code, 
  drivers_1.dob
from 
  drivers as drivers_1
    inner join constructor_results as constructor_results_1
    on (drivers_1.driverid = constructor_results_1.constructorresultsid )
where drivers_1.nationality = drivers_1.code
limit 19;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    qualifying_1.number, 
    max(
      qualifying_1.position), 
    qualifying_1.driverid, 
    qualifying_1.constructorid, 
    qualifying_1.date, 
    qualifying_1.position, 
    count(*)
  from 
    qualifying as qualifying_1
  where qualifying_1.number is not NULL
  group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position
  limit 6)
UNION
(select  
    constructors_1.constructorid, 
    count(*), 
    constructors_1.constructorid, 
    constructors_1.constructorid, 
    sum(
      constructors_1.constructorid), 
    constructors_1.constructorid, 
    min(
      constructors_1.constructorid)
  from 
    constructors as constructors_1
  where constructors_1.constructorid is not NULL
  limit 37);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    circuits_1.name, 
    circuits_1.country, 
    circuits_1.circuitid, 
    sum(
      circuits_1.alt), 
    circuits_1.location, 
    count(*), 
    circuits_1.lat, 
    circuits_1.circuitref
  from 
    circuits as circuits_1
  where circuits_1.country is not NULL
  group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.location, circuits_1.name
  limit 20)
UNION
(select  
    max(
      results_1.statusid), 
    min(
      results_1.fastestlap), 
    results_1.positionorder, 
    min(
      results_1.rank), 
    min(
      results_1.date), 
    count(
      results_1.statusid), 
    results_1.rank, 
    min(
      results_1.constructorid)
  from 
    results as results_1
  where results_1.points is not NULL
  group by results_1.grid, results_1.number
  limit 14);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_results_1.points
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.date < constructor_results_1.date
  limit 42)
UNION
(select  
    constructor_standings_1.points
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.date < constructor_standings_1.date
  group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
  limit 34);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_standings_1.position, 
    constructor_standings_1.points
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.position is not NULL
  limit 12)
INTERSECT
(select  
    standings_1.driverid, 
    standings_1.points
  from 
    standings as standings_1
      inner join constructors as constructors_1
      on (standings_1.driverstandingsid = constructors_1.constructorid )
  where standings_1.date > standings_1.date
  limit 26);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    results_1.number
  from 
    results as results_1
  where results_1.raceid is not NULL
  limit 11)
INTERSECT
(select  
    results_2.number
  from 
    results as results_2
  where results_2.resultid is not NULL
  limit 29);
-- meta {"num_joins":0,"num_aggregates":6,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructors_1.name, 
    max(
      constructors_1.constructorid), 
    constructors_1.nationality, 
    constructors_1.constructorid, 
    constructors_1.constructorref, 
    avg(
      constructors_1.constructorid), 
    min(
      constructors_1.constructorid), 
    max(
      constructors_1.constructorid)
  from 
    constructors as constructors_1
  where constructors_1.nationality is not NULL
  group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
  limit 1)
INTERSECT
(select  
    max(
      results_1.date), 
    max(
      results_1.laps), 
    max(
      results_1.statusid), 
    results_1.constructorid, 
    count(
      results_1.positionorder), 
    sum(
      results_1.laps), 
    count(*), 
    max(
      results_1.driverid)
  from 
    results as results_1
  where results_1.constructorid >= results_1.grid
  group by results_1.date, results_1.grid, results_1.milliseconds, results_1.number
  limit 38);
-- meta {"num_joins":2,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    standings_1.wins, 
    min(
      standings_1.raceid), 
    standings_1.position
  from 
    standings as standings_1
  where standings_1.wins is not NULL
  group by standings_1.position, standings_1.wins
  limit 11)
EXCEPT
(select  
    constructor_results_1.constructorresultsid, 
    max(
      qualifying_2.position), 
    qualifying_2.position
  from 
    qualifying as qualifying_1
      inner join qualifying as qualifying_2
        inner join constructor_results as constructor_results_1
        on (qualifying_2.qualifyid = constructor_results_1.constructorresultsid )
      on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
  where qualifying_1.date is not NULL
  group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.points, qualifying_1.driverid, qualifying_2.date, qualifying_2.number, qualifying_2.qualifyid
  limit 24);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructors_1.nationality, 
    constructors_1.constructorid, 
    results_1.position
  from 
    constructors as constructors_1
      inner join results as results_1
      on (constructors_1.constructorid = results_1.resultid )
  where constructors_1.name <= constructors_1.nationality
  limit 15)
UNION
(select  
    races_1.name, 
    max(
      races_1.date), 
    min(
      races_1.date)
  from 
    races as races_1
  where races_1.year is not NULL
  limit 29);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    drivers_1.dob, 
    drivers_1.driverid, 
    drivers_1.nationality, 
    drivers_1.surname, 
    drivers_1.code, 
    avg(
      drivers_1.driverid)
  from 
    drivers as drivers_1
  where drivers_1.dob is not NULL
  group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.nationality, drivers_1.surname
  limit 27)
UNION
(select  
    races_1.date, 
    races_1.round, 
    races_1.name, 
    races_1.time, 
    races_1.name, 
    sum(
      races_1.year)
  from 
    races as races_1
  where races_1.date >= races_1.date
  group by races_1.round, races_1.time, races_1.year
  limit 9);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    drivers_1.driverref, 
    qualifying_1.date, 
    qualifying_1.number, 
    max(
      drivers_1.driverid), 
    avg(
      qualifying_1.driverid), 
    drivers_1.nationality
  from 
    qualifying as qualifying_1
      inner join drivers as drivers_1
      on (qualifying_1.qualifyid = drivers_1.driverid )
  where qualifying_1.driverid is not NULL
  group by drivers_1.driverref, drivers_1.nationality, qualifying_1.date, qualifying_1.number
  limit 14)
EXCEPT
(select  
    sum(
      results_1.milliseconds), 
    results_1.date, 
    results_1.constructorid, 
    min(
      results_1.statusid), 
    sum(
      results_1.positionorder), 
    count(*)
  from 
    results as results_1
  where results_1.fastestlap is not NULL
  limit 14);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    standings_1.wins, 
    standings_1.driverstandingsid, 
    standings_1.points
  from 
    standings as standings_1
  where standings_1.position is not NULL
  limit 14)
EXCEPT
(select  
    races_1.circuitid, 
    races_1.year, 
    avg(
      races_1.round)
  from 
    races as races_1
  where races_1.round > races_1.circuitid
  group by races_1.circuitid, races_1.time
  limit 27);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    qualifying_1.date), 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
group by qualifying_1.qualifyid
limit 20;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    qualifying_1.driverid
  from 
    qualifying as qualifying_1
  where qualifying_1.raceid is not NULL
  limit 42)
INTERSECT
(select  
    constructors_1.constructorid
  from 
    constructors as constructors_1
  where constructors_1.constructorref is not NULL
  limit 30);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructors_1.constructorid, 
    constructors_1.nationality, 
    constructors_1.constructorref, 
    count(
      constructors_1.name), 
    max(
      constructors_1.constructorid)
  from 
    constructors as constructors_1
  where constructors_1.name <= constructors_1.constructorref
  group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality
  limit 39)
EXCEPT
(select  
    constructor_standings_1.wins, 
    count(
      constructor_standings_1.constructorstandingsid), 
    count(
      constructor_standings_1.date), 
    max(
      constructor_standings_1.raceid), 
    min(
      constructor_standings_1.position)
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.constructorstandingsid is not NULL
  group by constructor_standings_1.constructorid, constructor_standings_1.wins
  limit 30);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    qualifying_1.driverid, 
    qualifying_1.constructorid, 
    qualifying_1.position
  from 
    qualifying as qualifying_1
  where qualifying_1.raceid is not NULL
  limit 30)
EXCEPT
(select  
    races_1.circuitid, 
    races_1.raceid, 
    races_1.year
  from 
    races as races_1
  where races_1.year is not NULL
  limit 7);
-- meta {"num_joins":4,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_2.constructorid, 
  results_1.raceid, 
  avg(
    circuits_1.circuitid), 
  standings_1.position, 
  results_1.positionorder, 
  constructors_1.constructorref, 
  results_1.milliseconds, 
  count(
    standings_1.points), 
  count(
    constructors_1.name), 
  standings_1.points
from 
  circuits as circuits_1
    inner join standings as standings_1
          inner join constructors as constructors_1
          on (standings_1.driverstandingsid = constructors_1.constructorid )
        inner join results as results_1
        on (standings_1.driverstandingsid = results_1.resultid )
      inner join constructors as constructors_2
      on (constructors_1.constructorid = constructors_2.constructorid )
    on (circuits_1.circuitid = results_1.resultid )
where circuits_1.alt = results_1.position
group by constructors_1.constructorref, constructors_2.constructorid, results_1.milliseconds, results_1.positionorder, results_1.raceid, standings_1.points, standings_1.position
limit 10;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_results_1.raceid
  from 
    qualifying as qualifying_1
      inner join constructor_results as constructor_results_1
        inner join constructor_results as constructor_results_2
        on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
      on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
  where constructor_results_2.raceid is not NULL
  limit 42)
UNION
(select  
    races_1.year
  from 
    races as races_1
  where races_1.date is not NULL
  group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.time, races_1.year
  limit 12);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_standings_1.position, 
    constructor_standings_1.raceid, 
    constructor_standings_1.date, 
    count(*), 
    constructor_standings_1.constructorstandingsid, 
    constructor_standings_1.constructorid
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.points is not NULL
  group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.raceid
  limit 33)
EXCEPT
(select  
    max(
      standings_1.date), 
    standings_1.position, 
    standings_1.date, 
    min(
      standings_1.raceid), 
    avg(
      standings_1.points), 
    max(
      standings_1.points)
  from 
    standings as standings_1
  where standings_1.position is not NULL
  group by standings_1.date, standings_1.driverid, standings_1.points, standings_1.raceid, standings_1.wins
  limit 25);
-- meta {"num_joins":0,"num_aggregates":6,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    min(
      standings_1.points), 
    standings_1.wins, 
    standings_1.position, 
    standings_1.raceid, 
    standings_1.driverstandingsid, 
    standings_1.points, 
    min(
      standings_1.date), 
    max(
      standings_1.points)
  from 
    standings as standings_1
  where standings_1.date < standings_1.date
  group by standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
  limit 19)
UNION
(select  
    min(
      constructor_standings_1.points), 
    constructor_standings_1.constructorstandingsid, 
    constructor_standings_1.position, 
    constructor_standings_1.constructorid, 
    constructor_standings_1.wins, 
    constructor_standings_1.points, 
    min(
      constructor_standings_1.date), 
    avg(
      constructor_standings_1.points)
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.wins >= constructor_standings_1.constructorstandingsid
  group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
  limit 17);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    max(
      drivers_1.dob), 
    drivers_1.code, 
    drivers_1.forename
  from 
    drivers as drivers_1
  where drivers_1.forename is not NULL
  group by drivers_1.code, drivers_1.forename
  limit 31)
UNION
(select  
    min(
      constructor_results_1.date), 
    min(
      constructor_results_1.date), 
    sum(
      constructor_results_1.raceid)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.points is not NULL
  group by constructor_results_1.constructorid, constructor_results_1.date
  limit 29);
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    avg(
      constructor_standings_1.points), 
    constructor_standings_1.constructorstandingsid, 
    min(
      constructor_standings_1.date), 
    avg(
      constructor_standings_1.points), 
    constructor_standings_1.constructorid, 
    constructor_standings_1.wins, 
    constructor_standings_1.raceid, 
    constructor_standings_1.points
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.constructorstandingsid is not NULL
  group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.wins
  limit 2)
EXCEPT
(select  
    min(
      circuits_1.lat), 
    circuits_1.circuitid, 
    max(
      qualifying_1.date), 
    avg(
      circuits_1.lng), 
    circuits_1.circuitid, 
    count(*), 
    qualifying_1.driverid, 
    circuits_1.alt
  from 
    circuits as circuits_1
      inner join qualifying as qualifying_1
      on (circuits_1.circuitid = qualifying_1.qualifyid )
  where qualifying_1.qualifyid is not NULL
  group by circuits_1.lat
  limit 18);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    drivers_1.dob, 
    avg(
      drivers_1.driverid), 
    drivers_1.driverref, 
    drivers_1.driverid, 
    drivers_1.forename, 
    drivers_1.nationality, 
    drivers_1.surname, 
    drivers_1.code
  from 
    drivers as drivers_1
  where drivers_1.driverid is not NULL
  group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
  limit 18)
INTERSECT
(select  
    standings_1.date, 
    avg(
      standings_1.wins), 
    avg(
      standings_1.driverstandingsid), 
    count(
      standings_1.driverid), 
    min(
      standings_1.date), 
    count(*), 
    sum(
      standings_1.driverstandingsid), 
    count(*)
  from 
    standings as standings_1
  where standings_1.wins is not NULL
  limit 20);
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    qualifying_1.constructorid, 
    max(
      constructor_standings_1.points), 
    constructor_standings_1.raceid, 
    constructor_standings_1.wins, 
    constructor_standings_1.position, 
    qualifying_1.driverid, 
    qualifying_1.position, 
    sum(
      constructor_standings_1.points), 
    max(
      qualifying_1.date), 
    qualifying_1.qualifyid, 
    constructor_standings_1.constructorid, 
    qualifying_1.number
  from 
    constructor_standings as constructor_standings_1
      inner join qualifying as qualifying_1
      on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
  where constructor_standings_1.raceid is not NULL
  group by constructor_standings_1.constructorid, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins, qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid
  limit 5)
EXCEPT
(select  
    results_1.laps, 
    avg(
      results_1.rank), 
    results_1.resultid, 
    avg(
      results_1.number), 
    results_1.laps, 
    results_1.raceid, 
    results_1.resultid, 
    avg(
      results_1.rank), 
    min(
      drivers_1.dob), 
    results_1.resultid, 
    results_1.laps, 
    results_1.positionorder
  from 
    drivers as drivers_1
      inner join results as results_1
      on (drivers_1.driverid = results_1.resultid )
  where results_1.driverid is not NULL
  limit 15);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date >= constructor_results_1.date
limit 23;
-- meta {"num_joins":1,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    results_2.rank, 
    max(
      results_2.date)
  from 
    results as results_1
      inner join results as results_2
      on (results_1.resultid = results_2.resultid )
  where results_2.fastestlap is not NULL
  group by results_2.rank
  limit 42)
UNION
(select  
    results_3.points, 
    max(
      results_3.date)
  from 
    results as results_3
  where results_3.date is not NULL
  group by results_3.driverid, results_3.fastestlap, results_3.grid, results_3.laps, results_3.number, results_3.points, results_3.raceid, results_3.resultid
  limit 10);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    results_1.position, 
    results_1.positionorder
  from 
    results as results_1
  where results_1.date <= results_1.date
  limit 24)
EXCEPT
(select  
    constructor_standings_1.points, 
    qualifying_1.number
  from 
    constructor_standings as constructor_standings_1
      inner join qualifying as qualifying_1
      on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
  where constructor_standings_1.raceid is not NULL
  group by qualifying_1.position
  limit 10);
-- meta {"num_joins":9,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    avg(
      results_1.constructorid), 
    circuits_1.circuitid, 
    results_1.position, 
    circuits_1.country, 
    results_1.rank, 
    results_1.fastestlap, 
    results_1.resultid, 
    constructor_standings_1.constructorid, 
    avg(
      results_1.fastestlap), 
    constructor_standings_1.position, 
    circuits_1.location, 
    circuits_1.name, 
    circuits_1.circuitref, 
    min(
      constructor_standings_1.date), 
    constructor_standings_1.date, 
    circuits_1.lng, 
    constructor_standings_1.constructorstandingsid, 
    circuits_1.alt, 
    circuits_1.lat, 
    results_1.milliseconds, 
    constructor_standings_1.raceid
  from 
    circuits as circuits_1
      inner join results as results_1
        inner join constructor_standings as constructor_standings_1
        on (results_1.resultid = constructor_standings_1.constructorstandingsid )
      on (circuits_1.circuitid = results_1.resultid )
  where results_1.date is not NULL
  group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.location, circuits_1.name, constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.raceid, results_1.fastestlap, results_1.milliseconds, results_1.position, results_1.rank, results_1.resultid
  limit 2)
UNION
(select  
    avg(
      qualifying_1.constructorid), 
    constructor_standings_3.position, 
    circuits_2.lat, 
    min(
      standings_1.date), 
    constructor_results_1.points, 
    results_2.position, 
    results_2.positionorder, 
    results_2.statusid, 
    max(
      standings_1.points), 
    qualifying_1.driverid, 
    circuits_2.country, 
    circuits_2.country, 
    circuits_2.circuitref, 
    min(
      standings_1.date), 
    max(
      standings_1.date), 
    circuits_2.alt, 
    count(*), 
    results_2.milliseconds, 
    circuits_3.lng, 
    results_2.points, 
    standings_1.driverstandingsid
  from 
    standings as standings_1
        inner join qualifying as qualifying_1
          inner join constructor_standings as constructor_standings_2
          on (qualifying_1.qualifyid = constructor_standings_2.constructorstandingsid )
        on (standings_1.driverstandingsid = constructor_standings_2.constructorstandingsid )
      inner join results as results_2
          inner join constructor_standings as constructor_standings_3
          on (results_2.resultid = constructor_standings_3.constructorstandingsid )
        inner join constructor_results as constructor_results_1
            inner join circuits as circuits_2
            on (constructor_results_1.constructorresultsid = circuits_2.circuitid )
          inner join circuits as circuits_3
          on (circuits_2.circuitid = circuits_3.circuitid )
        on (constructor_standings_3.constructorstandingsid = circuits_3.circuitid )
      on (constructor_standings_2.constructorstandingsid = constructor_results_1.constructorresultsid )
  where results_2.points >= constructor_standings_2.points
  limit 8);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.time, 
  races_1.year
from 
  races as races_1
where races_1.time is not NULL
limit 36;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    drivers_2.code, 
    min(
      drivers_1.driverid), 
    drivers_2.dob
  from 
    drivers as drivers_1
        inner join drivers as drivers_2
        on (drivers_1.driverid = drivers_2.driverid )
      inner join races as races_1
      on (drivers_2.driverid = races_1.raceid )
  where races_1.raceid is not NULL
  group by drivers_2.code, drivers_2.dob
  limit 5)
INTERSECT
(select  
    max(
      constructor_results_2.date), 
    min(
      constructor_results_1.raceid), 
    constructor_results_1.date
  from 
    constructor_results as constructor_results_1
      inner join constructor_results as constructor_results_2
      on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
  where constructor_results_2.raceid is not NULL
  limit 6);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    circuits_1.name, 
    circuits_1.lng, 
    circuits_1.lat, 
    count(
      circuits_1.circuitref)
  from 
    circuits as circuits_1
  where circuits_1.lng is not NULL
  group by circuits_1.lat, circuits_1.lng, circuits_1.name
  limit 17)
UNION
(select  
    min(
      races_2.year), 
    constructor_standings_1.points, 
    constructor_standings_1.points, 
    count(
      races_1.date)
  from 
    constructor_standings as constructor_standings_1
        inner join races as races_1
        on (constructor_standings_1.constructorstandingsid = races_1.raceid )
      inner join races as races_2
      on (races_1.raceid = races_2.raceid )
  where constructor_standings_1.wins is not NULL
  limit 24);
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructors_1.constructorref
  from 
    qualifying as qualifying_1
        inner join results as results_1
          inner join constructors as constructors_1
          on (results_1.resultid = constructors_1.constructorid )
        on (qualifying_1.qualifyid = constructors_1.constructorid )
      inner join qualifying as qualifying_2
      on (qualifying_1.qualifyid = qualifying_2.qualifyid )
  where results_1.raceid is not NULL
  limit 19)
EXCEPT
(select  
    min(
      constructors_2.constructorid)
  from 
    constructors as constructors_2
      inner join constructor_standings as constructor_standings_1
      on (constructors_2.constructorid = constructor_standings_1.constructorstandingsid )
  where constructors_2.constructorid is not NULL
  limit 26);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_results_1.points, 
    constructor_results_1.raceid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.points = constructor_results_1.points
  limit 1)
UNION
(select  
    min(
      results_1.date), 
    max(
      results_1.date)
  from 
    results as results_1
  where results_1.fastestlap is not NULL
  limit 19);
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_results_1.points, 
    max(
      constructor_results_1.raceid)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.date >= constructor_results_1.date
  group by constructor_results_1.points
  limit 10)
INTERSECT
(select  
    results_1.number, 
    max(
      results_1.laps)
  from 
    constructor_results as constructor_results_2
        inner join constructor_results as constructor_results_3
        on (constructor_results_2.constructorresultsid = constructor_results_3.constructorresultsid )
      inner join results as results_1
      on (constructor_results_3.constructorresultsid = results_1.resultid )
  where constructor_results_3.points >= constructor_results_2.points
  limit 13);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    max(
      constructor_results_1.date), 
    constructor_results_1.points, 
    constructor_results_1.constructorid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.date is not NULL
  group by constructor_results_1.constructorid, constructor_results_1.points
  limit 35)
INTERSECT
(select  
    max(
      qualifying_1.date), 
    circuits_1.lng, 
    qualifying_1.driverid
  from 
    qualifying as qualifying_1
      inner join circuits as circuits_1
      on (qualifying_1.qualifyid = circuits_1.circuitid )
  where circuits_1.alt is not NULL
  limit 31);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.number, 
  results_1.milliseconds, 
  results_1.statusid, 
  results_1.points, 
  results_1.resultid, 
  min(
    results_1.date)
from 
  results as results_1
where results_1.statusid >= results_1.laps
group by results_1.milliseconds, results_1.number, results_1.points, results_1.resultid, results_1.statusid
limit 19;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    qualifying_1.position, 
    qualifying_1.driverid, 
    qualifying_1.qualifyid, 
    qualifying_1.date, 
    min(
      qualifying_1.qualifyid), 
    qualifying_1.raceid
  from 
    qualifying as qualifying_1
  where qualifying_1.raceid is not NULL
  group by qualifying_1.date, qualifying_1.driverid, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
  limit 18)
INTERSECT
(select  
    constructor_standings_1.wins, 
    constructor_standings_1.position, 
    constructor_standings_1.constructorid, 
    constructor_standings_1.date, 
    max(
      constructor_standings_1.wins), 
    constructor_standings_1.wins
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.points >= constructor_standings_1.points
  group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
  limit 40);
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    sum(
      standings_1.points), 
    standings_1.driverid, 
    max(
      standings_1.points), 
    standings_1.date
  from 
    standings as standings_1
  where standings_1.raceid is not NULL
  group by standings_1.date, standings_1.driverid
  limit 1)
INTERSECT
(select  
    sum(
      constructor_results_1.points), 
    circuits_2.circuitid, 
    sum(
      circuits_2.alt), 
    drivers_1.dob
  from 
    circuits as circuits_1
        inner join drivers as drivers_1
          inner join circuits as circuits_2
          on (drivers_1.driverid = circuits_2.circuitid )
        on (circuits_1.circuitid = drivers_1.driverid )
      inner join constructor_results as constructor_results_1
      on (drivers_1.driverid = constructor_results_1.constructorresultsid )
  where constructor_results_1.constructorresultsid >= circuits_2.circuitid
  limit 11);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    qualifying_1.driverid, 
    qualifying_1.raceid
  from 
    qualifying as qualifying_1
  where qualifying_1.raceid is not NULL
  limit 40)
EXCEPT
(select  
    constructor_results_1.raceid, 
    constructor_results_1.constructorid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.raceid is not NULL
  group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
  limit 37);
-- meta {"num_joins":1,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructors_1.constructorref, 
    constructors_1.nationality, 
    max(
      constructors_1.constructorid), 
    sum(
      constructors_1.constructorid), 
    constructors_1.constructorid
  from 
    constructors as constructors_1
  where constructors_1.constructorref is not NULL
  group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality
  limit 29)
UNION
(select  
    max(
      constructor_standings_2.points), 
    count(
      constructor_standings_2.constructorid), 
    min(
      constructor_standings_2.position), 
    sum(
      constructor_standings_2.constructorid), 
    constructor_standings_2.constructorid
  from 
    constructor_standings as constructor_standings_1
      inner join constructor_standings as constructor_standings_2
      on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
  where constructor_standings_1.date is not NULL
  group by constructor_standings_1.constructorstandingsid, constructor_standings_1.raceid, constructor_standings_2.constructorid, constructor_standings_2.constructorstandingsid
  limit 10);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    standings_1.date, 
    standings_1.driverid
  from 
    standings as standings_1
  where standings_1.date is not NULL
  limit 39)
EXCEPT
(select  
    min(
      races_1.raceid), 
    races_1.round
  from 
    races as races_1
  where races_1.year is not NULL
  limit 30);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructors_1.nationality, 
    count(*)
  from 
    constructors as constructors_1
      inner join constructor_results as constructor_results_1
      on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
  where constructor_results_1.date > constructor_results_1.date
  group by constructors_1.nationality
  limit 32)
INTERSECT
(select  
    sum(
      constructor_standings_1.wins), 
    max(
      constructor_standings_1.wins)
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.points is not NULL
  limit 31);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    sum(
      circuits_1.alt), 
    circuits_2.country, 
    circuits_2.name, 
    circuits_1.circuitref, 
    circuits_2.lat
  from 
    circuits as circuits_1
      inner join circuits as circuits_2
      on (circuits_1.circuitid = circuits_2.circuitid )
  where circuits_2.name is not NULL
  group by circuits_1.circuitref, circuits_2.country, circuits_2.lat, circuits_2.name
  limit 19)
UNION
(select  
    avg(
      standings_1.points), 
    max(
      standings_1.date), 
    count(*), 
    min(
      standings_1.date), 
    standings_1.points
  from 
    standings as standings_1
  where standings_1.raceid is not NULL
  group by standings_1.driverid, standings_1.wins
  limit 16);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    qualifying_1.qualifyid, 
    qualifying_1.number, 
    qualifying_1.raceid, 
    qualifying_1.driverid
  from 
    qualifying as qualifying_1
  where qualifying_1.date >= qualifying_1.date
  limit 40)
UNION
(select  
    results_1.raceid, 
    results_1.statusid, 
    results_1.grid, 
    results_1.raceid
  from 
    results as results_1
  where results_1.number = results_1.fastestlap
  limit 17);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    drivers_1.nationality, 
    drivers_1.dob, 
    results_1.laps, 
    count(
      drivers_1.surname)
  from 
    results as results_1
      inner join drivers as drivers_1
      on (results_1.resultid = drivers_1.driverid )
  where drivers_1.dob <= results_1.date
  group by drivers_1.dob, drivers_1.nationality, results_1.laps
  limit 10)
EXCEPT
(select  
    count(
      results_2.rank), 
    qualifying_1.date, 
    qualifying_1.raceid, 
    count(*)
  from 
    qualifying as qualifying_1
      inner join results as results_2
      on (qualifying_1.qualifyid = results_2.resultid )
  where results_2.constructorid is not NULL
  limit 29);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    min(
      qualifying_1.qualifyid), 
    qualifying_1.position, 
    qualifying_1.constructorid, 
    qualifying_1.driverid, 
    qualifying_1.date, 
    qualifying_1.qualifyid, 
    qualifying_1.raceid
  from 
    qualifying as qualifying_1
  where qualifying_1.date is not NULL
  group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
  limit 22)
UNION
(select  
    count(
      drivers_1.dob), 
    drivers_1.driverid, 
    drivers_1.driverid, 
    drivers_1.driverid, 
    drivers_1.dob, 
    drivers_1.driverid, 
    drivers_1.driverid
  from 
    drivers as drivers_1
  where drivers_1.driverref is not NULL
  limit 1);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructors_1.constructorref, 
    constructors_1.name, 
    constructors_1.constructorid, 
    constructors_1.nationality
  from 
    constructors as constructors_1
  where constructors_1.nationality is not NULL
  limit 17)
INTERSECT
(select  
    races_1.name, 
    races_1.time, 
    races_1.circuitid, 
    races_1.name
  from 
    standings as standings_1
      inner join races as races_1
      on (standings_1.driverstandingsid = races_1.raceid )
  where races_1.year is not NULL
  group by races_1.raceid, races_1.time, standings_1.driverid
  limit 1);
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    count(
      constructors_1.nationality), 
    min(
      constructors_1.constructorid), 
    max(
      constructors_1.constructorid), 
    constructors_1.constructorref, 
    constructors_1.nationality
  from 
    constructors as constructors_1
  where constructors_1.nationality is not NULL
  group by constructors_1.constructorref, constructors_1.nationality
  limit 23)
INTERSECT
(select  
    max(
      results_1.positionorder), 
    count(
      results_1.number), 
    count(
      races_1.date), 
    circuits_1.name, 
    races_1.time
  from 
    races as races_1
      inner join circuits as circuits_1
        inner join results as results_1
        on (circuits_1.circuitid = results_1.resultid )
      on (races_1.raceid = results_1.resultid )
  where races_1.year is not NULL
  limit 39);
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    results_1.driverid, 
    results_2.resultid, 
    constructor_results_1.date, 
    constructor_results_1.constructorresultsid, 
    results_1.constructorid, 
    standings_1.position, 
    results_2.fastestlap
  from 
    standings as standings_1
          inner join results as results_1
          on (standings_1.driverstandingsid = results_1.resultid )
        inner join results as results_2
        on (standings_1.driverstandingsid = results_2.resultid )
      inner join constructor_results as constructor_results_1
      on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
  where results_2.constructorid is not NULL
  limit 14)
INTERSECT
(select  
    constructor_standings_1.constructorstandingsid, 
    constructor_standings_1.constructorstandingsid, 
    constructor_standings_1.date, 
    constructor_standings_1.constructorstandingsid, 
    max(
      constructor_standings_1.position), 
    constructor_standings_1.raceid, 
    constructor_standings_1.points
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.constructorid is not NULL
  group by constructor_standings_1.raceid, constructor_standings_1.wins
  limit 31);
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    max(
      results_1.date), 
    results_1.rank, 
    results_1.positionorder, 
    results_1.points, 
    results_1.driverid, 
    max(
      results_1.statusid), 
    results_1.constructorid, 
    results_1.date, 
    results_1.number, 
    results_1.fastestlap, 
    results_1.resultid, 
    results_1.laps, 
    min(
      results_1.date)
  from 
    results as results_1
  where results_1.fastestlap is not NULL
  group by results_1.constructorid, results_1.date, results_1.driverid, results_1.fastestlap, results_1.laps, results_1.number, results_1.points, results_1.positionorder, results_1.rank, results_1.resultid
  limit 30)
EXCEPT
(select  
    max(
      standings_1.date), 
    standings_1.points, 
    standings_1.wins, 
    standings_1.points, 
    standings_1.driverstandingsid, 
    max(
      standings_1.position), 
    standings_1.driverstandingsid, 
    standings_1.date, 
    standings_1.points, 
    standings_1.points, 
    standings_1.wins, 
    standings_1.raceid, 
    min(
      standings_1.date)
  from 
    constructors as constructors_1
      inner join standings as standings_1
      on (constructors_1.constructorid = standings_1.driverstandingsid )
  where standings_1.points is not NULL
  limit 1);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.date < qualifying_1.date
limit 31;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_results_1.raceid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.date <= constructor_results_1.date
  limit 22)
INTERSECT
(select  
    min(
      races_1.round)
  from 
    races as races_1
  where races_1.circuitid is not NULL
  limit 24);
-- meta {"num_joins":3,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_results_1.points
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.raceid is not NULL
  limit 15)
UNION
(select  
    constructor_standings_1.points
  from 
    constructors as constructors_1
        inner join drivers as drivers_1
        on (constructors_1.constructorid = drivers_1.driverid )
      inner join constructor_standings as constructor_standings_1
        inner join races as races_1
        on (constructor_standings_1.constructorstandingsid = races_1.raceid )
      on (drivers_1.driverid = races_1.raceid )
  where races_1.name is not NULL
  group by constructors_1.constructorref, constructors_1.nationality, drivers_1.dob, drivers_1.surname, races_1.name, races_1.time
  limit 28);
-- meta {"num_joins":6,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    results_1.position, 
    results_1.number
  from 
    circuits as circuits_1
        inner join results as results_1
          inner join standings as standings_1
          on (results_1.resultid = standings_1.driverstandingsid )
        on (circuits_1.circuitid = results_1.resultid )
      inner join qualifying as qualifying_1
          inner join constructor_results as constructor_results_1
          on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
        inner join drivers as drivers_1
        on (constructor_results_1.constructorresultsid = drivers_1.driverid )
      on (circuits_1.circuitid = qualifying_1.qualifyid )
  where results_1.position is not NULL
  limit 20)
INTERSECT
(select  
    results_2.milliseconds, 
    results_2.milliseconds
  from 
    constructor_standings as constructor_standings_1
      inner join results as results_2
      on (constructor_standings_1.constructorstandingsid = results_2.resultid )
  where constructor_standings_1.wins is not NULL
  group by constructor_standings_1.constructorstandingsid, constructor_standings_1.points, results_2.raceid, results_2.statusid
  limit 30);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    results_1.rank, 
    results_2.date, 
    results_2.resultid
  from 
    results as results_1
      inner join results as results_2
      on (results_1.resultid = results_2.resultid )
  where results_2.position is not NULL
  limit 14)
EXCEPT
(select  
    max(
      qualifying_1.date), 
    min(
      circuits_1.lat), 
    circuits_1.circuitid
  from 
    qualifying as qualifying_1
        inner join circuits as circuits_1
        on (qualifying_1.qualifyid = circuits_1.circuitid )
      inner join standings as standings_1
      on (circuits_1.circuitid = standings_1.driverstandingsid )
  where standings_1.date = qualifying_1.date
  limit 10);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    qualifying_1.constructorid, 
    drivers_1.driverref, 
    qualifying_1.number
  from 
    drivers as drivers_1
      inner join qualifying as qualifying_1
      on (drivers_1.driverid = qualifying_1.qualifyid )
  where qualifying_1.qualifyid is not NULL
  limit 18)
EXCEPT
(select  
    count(
      constructor_standings_1.date), 
    min(
      constructor_standings_1.date), 
    constructor_standings_1.constructorstandingsid
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.points is not NULL
  group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.wins
  limit 27);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    count(
      constructor_standings_1.constructorid), 
    constructor_standings_1.date, 
    constructor_standings_1.raceid, 
    constructor_standings_1.constructorid
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.raceid is not NULL
  group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.raceid
  limit 20)
INTERSECT
(select  
    min(
      results_1.positionorder), 
    constructor_results_1.date, 
    results_1.raceid, 
    count(*)
  from 
    constructor_results as constructor_results_1
      inner join results as results_1
      on (constructor_results_1.constructorresultsid = results_1.resultid )
  where constructor_results_1.date > results_1.date
  group by constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid, results_1.driverid, results_1.positionorder
  limit 2);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    qualifying_1.position, 
    qualifying_1.number, 
    drivers_1.dob, 
    qualifying_1.raceid, 
    drivers_1.driverref, 
    sum(
      qualifying_1.raceid), 
    qualifying_1.qualifyid
  from 
    drivers as drivers_1
      inner join qualifying as qualifying_1
      on (drivers_1.driverid = qualifying_1.qualifyid )
  where drivers_1.code is not NULL
  group by drivers_1.dob, drivers_1.driverref, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
  limit 22)
EXCEPT
(select  
    min(
      constructor_standings_1.points), 
    constructor_standings_1.constructorid, 
    constructor_standings_1.date, 
    constructor_standings_1.constructorid, 
    min(
      constructor_standings_1.points), 
    sum(
      constructor_standings_1.wins), 
    constructor_standings_1.wins
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.points >= constructor_standings_1.points
  limit 28);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructors_1.constructorid
  from 
    constructors as constructors_1
      inner join standings as standings_1
      on (constructors_1.constructorid = standings_1.driverstandingsid )
  where constructors_1.constructorref = constructors_1.nationality
  limit 41)
EXCEPT
(select  
    circuits_1.circuitid
  from 
    circuits as circuits_1
  where circuits_1.lat is not NULL
  group by circuits_1.alt, circuits_1.circuitid, circuits_1.lat, circuits_1.location
  limit 2);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    circuits_1.lng, 
    circuits_1.alt, 
    circuits_1.lat, 
    circuits_1.country, 
    circuits_1.circuitref, 
    circuits_1.circuitid
  from 
    circuits as circuits_1
  where circuits_1.lng is not NULL
  limit 18)
EXCEPT
(select  
    avg(
      drivers_1.driverid), 
    max(
      drivers_1.dob), 
    count(
      drivers_1.driverid), 
    drivers_1.forename, 
    min(
      drivers_1.driverid), 
    drivers_1.driverid
  from 
    drivers as drivers_1
  where drivers_1.nationality is not NULL
  limit 29);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    races_1.date, 
    races_1.circuitid, 
    min(
      races_1.date), 
    races_1.name, 
    races_1.time, 
    races_1.round
  from 
    races as races_1
  where races_1.year is not NULL
  group by races_1.circuitid, races_1.date, races_1.name, races_1.round, races_1.time
  limit 4)
EXCEPT
(select  
    constructor_results_1.date, 
    constructor_results_1.constructorresultsid, 
    min(
      constructor_results_1.date), 
    min(
      constructor_results_1.points), 
    min(
      constructor_results_1.constructorid), 
    constructor_results_1.constructorresultsid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.raceid is not NULL
  limit 25);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    drivers_1.nationality, 
    sum(
      constructor_results_1.points), 
    drivers_1.surname, 
    constructor_results_1.constructorid, 
    drivers_1.driverid
  from 
    drivers as drivers_1
      inner join constructor_results as constructor_results_1
      on (drivers_1.driverid = constructor_results_1.constructorresultsid )
  where drivers_1.surname > drivers_1.code
  group by constructor_results_1.constructorid, drivers_1.driverid, drivers_1.nationality, drivers_1.surname
  limit 13)
UNION
(select  
    avg(
      constructor_standings_1.points), 
    min(
      constructor_standings_1.points), 
    max(
      constructor_standings_1.points), 
    constructor_standings_1.constructorid, 
    constructor_standings_1.constructorstandingsid
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.date < constructor_standings_1.date
  limit 23);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    circuits_1.circuitref
  from 
    results as results_1
      inner join circuits as circuits_1
      on (results_1.resultid = circuits_1.circuitid )
  where results_1.number is not NULL
  limit 26)
EXCEPT
(select  
    drivers_1.surname
  from 
    drivers as drivers_1
      inner join drivers as drivers_2
      on (drivers_1.driverid = drivers_2.driverid )
  where drivers_2.code is not NULL
  limit 22);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    drivers_1.surname, 
    drivers_1.driverref
  from 
    drivers as drivers_1
  where drivers_1.driverid is not NULL
  limit 26)
INTERSECT
(select  
    drivers_2.driverref, 
    drivers_2.driverref
  from 
    drivers as drivers_2
  where drivers_2.nationality is not NULL
  limit 42);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    circuits_1.lng, 
    circuits_1.name, 
    max(
      circuits_1.circuitid), 
    circuits_1.circuitid, 
    circuits_1.country
  from 
    circuits as circuits_1
  where circuits_1.country is not NULL
  group by circuits_1.circuitid, circuits_1.country, circuits_1.lng, circuits_1.name
  limit 20)
INTERSECT
(select  
    constructor_results_1.points, 
    sum(
      constructor_results_1.raceid), 
    count(
      constructor_results_1.constructorid), 
    constructor_results_1.constructorid, 
    count(
      constructor_results_1.date)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorresultsid <= constructor_results_1.raceid
  group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
  limit 32);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    drivers_1.surname, 
    drivers_1.driverid, 
    drivers_1.code, 
    drivers_1.nationality, 
    drivers_1.dob
  from 
    drivers as drivers_1
  where drivers_1.driverid > drivers_1.driverid
  limit 16)
UNION
(select  
    drivers_2.forename, 
    max(
      drivers_2.dob), 
    drivers_2.forename, 
    drivers_2.code, 
    max(
      drivers_2.dob)
  from 
    drivers as drivers_2
  where drivers_2.driverid is not NULL
  group by drivers_2.code, drivers_2.driverid, drivers_2.driverref, drivers_2.forename, drivers_2.nationality
  limit 22);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    results_1.constructorid
  from 
    results as results_1
  where results_1.constructorid is not NULL
  limit 26)
UNION
(select  
    constructor_standings_1.constructorstandingsid
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.points is not NULL
  limit 26);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_standings_1.points, 
    constructor_standings_1.constructorstandingsid, 
    min(
      constructor_standings_1.date)
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.raceid is not NULL
  group by constructor_standings_1.constructorstandingsid, constructor_standings_1.points
  limit 8)
EXCEPT
(select  
    standings_1.points, 
    standings_1.driverstandingsid, 
    min(
      standings_1.date)
  from 
    standings as standings_1
      inner join qualifying as qualifying_1
      on (standings_1.driverstandingsid = qualifying_1.qualifyid )
  where qualifying_1.date is not NULL
  group by qualifying_1.constructorid, standings_1.date, standings_1.wins
  limit 35);
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    qualifying_2.qualifyid, 
    constructor_results_2.raceid, 
    qualifying_2.raceid, 
    max(
      qualifying_1.date), 
    qualifying_2.driverid
  from 
    constructor_results as constructor_results_1
        inner join qualifying as qualifying_1
        on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
      inner join qualifying as qualifying_2
        inner join constructor_results as constructor_results_2
        on (qualifying_2.qualifyid = constructor_results_2.constructorresultsid )
      on (constructor_results_1.constructorresultsid = qualifying_2.qualifyid )
  where qualifying_2.raceid is not NULL
  group by constructor_results_2.raceid, qualifying_2.driverid, qualifying_2.qualifyid, qualifying_2.raceid
  limit 26)
INTERSECT
(select  
    constructor_standings_1.constructorid, 
    constructor_standings_1.position, 
    constructor_standings_1.wins, 
    min(
      constructor_standings_1.date), 
    constructor_standings_1.constructorstandingsid
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.constructorid is not NULL
  group by constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.wins
  limit 39);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_standings_1.points, 
    constructor_standings_1.date, 
    count(
      constructor_standings_1.constructorstandingsid), 
    min(
      constructor_standings_1.date)
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.constructorstandingsid is not NULL
  group by constructor_standings_1.date, constructor_standings_1.points
  limit 22)
UNION
(select  
    avg(
      constructor_results_1.points), 
    constructor_results_1.date, 
    max(
      constructor_results_1.constructorresultsid), 
    max(
      constructor_results_1.date)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorid >= constructor_results_1.constructorresultsid
  limit 3);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructors_1.constructorid), 
  constructors_1.name, 
  constructors_1.constructorref, 
  count(*), 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name
limit 25;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.alt is not NULL
limit 31;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.position, 
  constructor_standings_1.constructorstandingsid
from 
  results as results_1
    inner join constructor_standings as constructor_standings_1
      inner join results as results_2
        inner join qualifying as qualifying_1
          inner join qualifying as qualifying_2
          on (qualifying_1.qualifyid = qualifying_2.qualifyid )
        on (results_2.resultid = qualifying_1.qualifyid )
      on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
    on (results_1.resultid = results_2.resultid )
where constructor_standings_1.raceid is not NULL
limit 22;
-- meta {"num_joins":2,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    min(
      results_1.date), 
    results_1.position, 
    results_1.grid, 
    results_1.raceid, 
    results_1.fastestlap, 
    avg(
      results_1.position), 
    results_1.positionorder, 
    results_1.milliseconds, 
    count(*)
  from 
    results as results_1
  where results_1.positionorder is not NULL
  group by results_1.fastestlap, results_1.grid, results_1.milliseconds, results_1.position, results_1.positionorder, results_1.raceid
  limit 19)
INTERSECT
(select  
    max(
      constructor_results_1.date), 
    constructor_results_1.points, 
    races_1.year, 
    races_1.raceid, 
    constructor_results_1.points, 
    min(
      constructor_results_1.points), 
    min(
      races_1.date), 
    constructor_results_1.points, 
    count(
      races_1.time)
  from 
    constructors as constructors_1
        inner join constructor_results as constructor_results_1
        on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
      inner join races as races_1
      on (constructor_results_1.constructorresultsid = races_1.raceid )
  where constructors_1.name <= constructors_1.constructorref
  limit 22);
-- meta {"num_joins":4,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_results_1.raceid, 
    constructor_results_1.date, 
    constructor_results_1.constructorid, 
    constructor_results_1.points, 
    results_1.driverid, 
    constructor_results_1.constructorresultsid, 
    results_1.raceid
  from 
    constructor_results as constructor_results_1
      inner join results as results_1
      on (constructor_results_1.constructorresultsid = results_1.resultid )
  where results_1.number >= results_1.points
  limit 28)
UNION
(select  
    results_2.driverid, 
    results_3.date, 
    results_2.resultid, 
    results_3.milliseconds, 
    results_2.raceid, 
    results_2.statusid, 
    min(
      results_2.rank)
  from 
    results as results_2
      inner join results as results_3
        inner join drivers as drivers_1
          inner join standings as standings_1
          on (drivers_1.driverid = standings_1.driverstandingsid )
        on (results_3.resultid = drivers_1.driverid )
      on (results_2.resultid = drivers_1.driverid )
  where results_3.date is not NULL
  group by drivers_1.code, drivers_1.forename, drivers_1.surname, results_2.constructorid, standings_1.driverid
  limit 4);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    max(
      constructor_results_1.date)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.points <= constructor_results_1.points
  limit 30)
UNION
(select  
    max(
      constructor_results_2.date)
  from 
    constructor_results as constructor_results_2
  where constructor_results_2.date = constructor_results_2.date
  group by constructor_results_2.constructorresultsid, constructor_results_2.date, constructor_results_2.points, constructor_results_2.raceid
  limit 16);
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_standings_1.position, 
    constructor_standings_1.points
  from 
    constructor_standings as constructor_standings_1
      inner join constructor_results as constructor_results_1
        inner join constructor_results as constructor_results_2
        on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
      on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
  where constructor_results_1.constructorid is not NULL
  limit 22)
INTERSECT
(select  
    races_1.raceid, 
    max(
      drivers_1.dob)
  from 
    races as races_1
      inner join drivers as drivers_1
        inner join constructors as constructors_1
        on (drivers_1.driverid = constructors_1.constructorid )
      on (races_1.raceid = constructors_1.constructorid )
  where drivers_1.nationality is not NULL
  limit 22);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    results_1.fastestlap, 
    drivers_1.code, 
    drivers_1.nationality, 
    drivers_1.dob, 
    avg(
      results_1.positionorder), 
    drivers_1.surname, 
    results_1.milliseconds, 
    drivers_1.driverref, 
    results_1.constructorid, 
    count(*)
  from 
    results as results_1
      inner join drivers as drivers_1
      on (results_1.resultid = drivers_1.driverid )
  where results_1.milliseconds is not NULL
  group by drivers_1.code, drivers_1.dob, drivers_1.driverref, drivers_1.nationality, drivers_1.surname, results_1.constructorid, results_1.fastestlap, results_1.milliseconds
  limit 27)
EXCEPT
(select  
    max(
      drivers_2.dob), 
    drivers_2.surname, 
    drivers_2.nationality, 
    count(*), 
    avg(
      drivers_2.driverid), 
    drivers_2.driverref, 
    min(
      drivers_2.dob), 
    count(
      drivers_2.driverref), 
    drivers_2.driverid, 
    min(
      drivers_2.driverid)
  from 
    drivers as drivers_2
  where drivers_2.forename is not NULL
  limit 31);
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructors_1.constructorref, 
    circuits_1.circuitref, 
    max(
      circuits_1.alt), 
    circuits_1.circuitid
  from 
    circuits as circuits_1
      inner join constructors as constructors_1
      on (circuits_1.circuitid = constructors_1.constructorid )
  where constructors_1.constructorid is not NULL
  group by circuits_1.circuitid, circuits_1.circuitref, constructors_1.constructorref
  limit 2)
EXCEPT
(select  
    max(
      constructor_standings_1.points), 
    sum(
      qualifying_1.position), 
    max(
      constructor_standings_1.points), 
    count(*)
  from 
    qualifying as qualifying_1
      inner join constructor_standings as constructor_standings_1
      on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
  where constructor_standings_1.position is not NULL
  group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.wins, qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.qualifyid, qualifying_1.raceid
  limit 4);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.date, 
  standings_1.points
from 
  qualifying as qualifying_1
      inner join constructor_standings as constructor_standings_1
      on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
    inner join constructor_standings as constructor_standings_2
      inner join standings as standings_1
      on (constructor_standings_2.constructorstandingsid = standings_1.driverstandingsid )
    on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
where constructor_standings_1.constructorstandingsid is not NULL
limit 31;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitid, 
  max(
    circuits_1.lat), 
  circuits_1.alt, 
  circuits_1.country, 
  circuits_1.location, 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.circuitref = circuits_1.name
group by circuits_1.alt, circuits_1.circuitid, circuits_1.country, circuits_1.lng, circuits_1.location
limit 27;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    max(
      constructor_standings_1.points), 
    constructor_standings_1.date, 
    constructor_standings_1.constructorid, 
    constructor_standings_1.constructorstandingsid, 
    constructor_standings_1.wins, 
    count(*), 
    count(*)
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.raceid is not NULL
  group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.wins
  limit 42)
EXCEPT
(select  
    avg(
      results_1.milliseconds), 
    results_1.date, 
    results_1.statusid, 
    results_1.positionorder, 
    sum(
      results_1.rank), 
    count(
      results_1.rank), 
    max(
      results_1.constructorid)
  from 
    results as results_1
  where results_1.resultid is not NULL
  group by results_1.points, results_1.position
  limit 6);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    circuits_1.country
  from 
    circuits as circuits_1
  where circuits_1.circuitref is not NULL
  limit 11)
INTERSECT
(select  
    constructors_1.name
  from 
    constructors as constructors_1
      inner join results as results_1
      on (constructors_1.constructorid = results_1.resultid )
  where constructors_1.constructorid is not NULL
  limit 16);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    drivers_1.forename, 
    constructor_standings_1.constructorstandingsid, 
    constructor_standings_1.position, 
    drivers_1.dob, 
    max(
      constructor_standings_1.constructorid)
  from 
    drivers as drivers_1
      inner join constructor_standings as constructor_standings_1
      on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
  where constructor_standings_1.wins <= constructor_standings_1.constructorstandingsid
  group by constructor_standings_1.constructorstandingsid, constructor_standings_1.position, drivers_1.dob, drivers_1.forename
  limit 27)
INTERSECT
(select  
    min(
      qualifying_1.date), 
    qualifying_1.constructorid, 
    qualifying_1.position, 
    qualifying_1.date, 
    count(
      qualifying_1.number)
  from 
    qualifying as qualifying_1
  where qualifying_1.qualifyid is not NULL
  limit 17);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    min(
      races_1.date), 
    races_1.date, 
    races_1.circuitid, 
    races_1.year
  from 
    races as races_1
  where races_1.raceid is not NULL
  group by races_1.circuitid, races_1.date, races_1.year
  limit 40)
INTERSECT
(select  
    max(
      constructor_standings_1.date), 
    min(
      constructor_standings_1.points), 
    constructor_standings_1.constructorstandingsid, 
    constructor_standings_1.constructorid
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.date is not NULL
  limit 15);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    count(
      drivers_1.forename), 
    drivers_1.surname
  from 
    drivers as drivers_1
  where drivers_1.dob is not NULL
  group by drivers_1.surname
  limit 24)
EXCEPT
(select  
    count(*), 
    sum(
      qualifying_1.position)
  from 
    qualifying as qualifying_1
  where qualifying_1.constructorid is not NULL
  group by qualifying_1.constructorid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
  limit 24);
-- meta {"num_joins":0,"num_aggregates":7,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    drivers_1.nationality, 
    drivers_1.code, 
    drivers_1.surname, 
    max(
      drivers_1.dob), 
    min(
      drivers_1.dob), 
    max(
      drivers_1.driverid), 
    drivers_1.driverid, 
    max(
      drivers_1.driverid), 
    max(
      drivers_1.dob), 
    drivers_1.driverref, 
    drivers_1.forename, 
    drivers_1.dob
  from 
    drivers as drivers_1
  where drivers_1.driverid is not NULL
  group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
  limit 38)
EXCEPT
(select  
    avg(
      constructor_standings_1.wins), 
    sum(
      constructor_standings_1.points), 
    max(
      constructor_standings_1.points), 
    max(
      constructor_standings_1.date), 
    max(
      constructor_standings_1.date), 
    min(
      constructor_standings_1.constructorstandingsid), 
    constructor_standings_1.constructorstandingsid, 
    count(*), 
    max(
      constructor_standings_1.date), 
    min(
      constructor_standings_1.constructorid), 
    sum(
      constructor_standings_1.constructorstandingsid), 
    count(*)
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.points is not NULL
  group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
  limit 3);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    qualifying_1.date), 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
group by qualifying_1.raceid
limit 5;
-- meta {"num_joins":0,"num_aggregates":6,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_results_1.constructorid, 
    min(
      constructor_results_1.raceid), 
    max(
      constructor_results_1.points), 
    count(*)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorresultsid <= constructor_results_1.constructorid
  group by constructor_results_1.constructorid
  limit 29)
EXCEPT
(select  
    circuits_1.circuitid, 
    count(
      circuits_1.lng), 
    min(
      circuits_1.lat), 
    count(*)
  from 
    circuits as circuits_1
  where circuits_1.circuitid is not NULL
  group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.location, circuits_1.name
  limit 39);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    qualifying_1.raceid, 
    qualifying_1.number, 
    count(
      constructors_1.nationality)
  from 
    qualifying as qualifying_1
      inner join constructors as constructors_1
      on (qualifying_1.qualifyid = constructors_1.constructorid )
  where qualifying_1.raceid is not NULL
  group by qualifying_1.number, qualifying_1.raceid
  limit 29)
INTERSECT
(select  
    max(
      circuits_1.circuitid), 
    max(
      circuits_1.circuitid), 
    count(*)
  from 
    circuits as circuits_1
  where circuits_1.country is not NULL
  limit 15);
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.position, 
  avg(
    constructor_standings_2.points), 
  constructor_standings_2.wins, 
  circuits_1.circuitref, 
  circuits_1.alt, 
  circuits_1.lng, 
  constructor_standings_2.constructorid
from 
  circuits as circuits_1
        inner join constructor_standings as constructor_standings_1
          inner join constructor_standings as constructor_standings_2
          on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
        on (circuits_1.circuitid = constructor_standings_2.constructorstandingsid )
      inner join qualifying as qualifying_1
      on (circuits_1.circuitid = qualifying_1.qualifyid )
    inner join constructors as constructors_1
    on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
where constructor_standings_2.wins is not NULL
group by circuits_1.alt, circuits_1.circuitref, circuits_1.lng, constructor_standings_2.constructorid, constructor_standings_2.wins, qualifying_1.position
limit 9;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    standings_1.date, 
    standings_1.driverstandingsid, 
    standings_1.raceid, 
    standings_1.position, 
    standings_1.points
  from 
    standings as standings_1
  where standings_1.points >= standings_1.points
  limit 19)
UNION
(select  
    count(*), 
    constructors_1.constructorid, 
    sum(
      constructors_1.constructorid), 
    constructors_1.constructorid, 
    min(
      constructors_1.constructorid)
  from 
    constructors as constructors_1
  where constructors_1.name is not NULL
  limit 3);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    qualifying_1.number, 
    qualifying_1.driverid, 
    drivers_1.code, 
    drivers_1.dob
  from 
    qualifying as qualifying_1
      inner join drivers as drivers_1
      on (qualifying_1.qualifyid = drivers_1.driverid )
  where qualifying_1.date is not NULL
  limit 23)
INTERSECT
(select  
    standings_1.driverstandingsid, 
    standings_1.position, 
    max(
      standings_1.raceid), 
    max(
      standings_1.driverid)
  from 
    standings as standings_1
  where standings_1.wins is not NULL
  group by standings_1.driverid, standings_1.raceid
  limit 39);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructors_1.name, 
    constructors_1.constructorref, 
    constructors_1.nationality
  from 
    constructors as constructors_1
  where constructors_1.constructorid is not NULL
  limit 21)
UNION
(select  
    circuits_1.location, 
    constructors_2.name, 
    circuits_1.country
  from 
    constructors as constructors_2
      inner join circuits as circuits_1
      on (constructors_2.constructorid = circuits_1.circuitid )
  where constructors_2.constructorid is not NULL
  group by circuits_1.circuitref, circuits_1.country, constructors_2.nationality
  limit 38);
-- meta {"num_joins":2,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_results_1.constructorid, 
    constructor_results_1.points, 
    constructor_results_1.date, 
    constructor_results_1.raceid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.points is not NULL
  limit 18)
UNION
(select  
    qualifying_1.raceid, 
    max(
      standings_1.points), 
    qualifying_1.date, 
    qualifying_1.position
  from 
    standings as standings_1
        inner join qualifying as qualifying_1
        on (standings_1.driverstandingsid = qualifying_1.qualifyid )
      inner join qualifying as qualifying_2
      on (qualifying_1.qualifyid = qualifying_2.qualifyid )
  where qualifying_1.qualifyid >= standings_1.driverstandingsid
  group by qualifying_2.position, qualifying_2.raceid, standings_1.points, standings_1.position, standings_1.wins
  limit 11);
-- meta {"num_joins":3,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    sum(
      qualifying_1.number), 
    qualifying_1.driverid, 
    qualifying_1.raceid, 
    max(
      qualifying_1.date)
  from 
    races as races_1
      inner join qualifying as qualifying_1
      on (races_1.raceid = qualifying_1.qualifyid )
  where races_1.time is not NULL
  group by qualifying_1.driverid, qualifying_1.raceid
  limit 2)
INTERSECT
(select  
    sum(
      races_2.raceid), 
    max(
      constructor_results_1.constructorresultsid), 
    drivers_1.driverid, 
    max(
      drivers_1.dob)
  from 
    races as races_2
        inner join drivers as drivers_1
        on (races_2.raceid = drivers_1.driverid )
      inner join constructor_results as constructor_results_1
      on (races_2.raceid = constructor_results_1.constructorresultsid )
  where constructor_results_1.raceid is not NULL
  group by constructor_results_1.points, drivers_1.dob, drivers_1.driverref, races_2.time
  limit 35);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.dob, 
  avg(
    drivers_1.driverid), 
  drivers_1.code, 
  count(*)
from 
  drivers as drivers_1
where drivers_1.code is not NULL
group by drivers_1.code, drivers_1.dob
limit 20;
-- meta {"num_joins":4,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid, 
  standings_1.points, 
  max(
    standings_1.points), 
  standings_1.driverstandingsid, 
  races_1.raceid, 
  max(
    constructors_1.constructorid), 
  constructor_standings_1.points
from 
  circuits as circuits_1
        inner join constructors as constructors_1
        on (circuits_1.circuitid = constructors_1.constructorid )
      inner join constructor_standings as constructor_standings_1
      on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
    inner join standings as standings_1
      inner join races as races_1
      on (standings_1.driverstandingsid = races_1.raceid )
    on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
where circuits_1.name is not NULL
group by constructor_standings_1.points, races_1.raceid, standings_1.driverid, standings_1.driverstandingsid, standings_1.points
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.raceid, 
  races_1.year, 
  sum(
    races_1.circuitid), 
  races_1.circuitid
from 
  races as races_1
where races_1.year is not NULL
group by races_1.circuitid, races_1.raceid, races_1.year
limit 6;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    circuits_1.circuitid, 
    circuits_1.location, 
    circuits_1.circuitref, 
    circuits_1.lng
  from 
    circuits as circuits_1
  where circuits_1.lng is not NULL
  limit 32)
EXCEPT
(select  
    avg(
      constructor_results_1.raceid), 
    min(
      constructor_results_1.date), 
    max(
      constructor_results_1.date), 
    constructor_results_1.points
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorresultsid is not NULL
  limit 20);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    drivers_1.driverid
  from 
    drivers as drivers_1
  where drivers_1.dob is not NULL
  limit 11)
EXCEPT
(select  
    count(*)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorid is not NULL
  limit 23);
-- meta {"num_joins":3,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    results_1.fastestlap, 
    constructors_1.nationality, 
    constructors_1.constructorref
  from 
    constructors as constructors_1
      inner join results as results_1
      on (constructors_1.constructorid = results_1.resultid )
  where results_1.rank is not NULL
  limit 12)
UNION
(select  
    circuits_1.lng, 
    constructors_2.name, 
    circuits_1.country
  from 
    races as races_1
        inner join constructors as constructors_2
        on (races_1.raceid = constructors_2.constructorid )
      inner join circuits as circuits_1
      on (races_1.raceid = circuits_1.circuitid )
  where races_1.date >= races_1.date
  group by circuits_1.circuitref, constructors_2.constructorid, constructors_2.name, races_1.date, races_1.raceid, races_1.time
  limit 11);
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_2.raceid, 
  min(
    races_2.date), 
  races_1.date, 
  races_2.date, 
  races_2.year, 
  races_1.round, 
  min(
    races_1.raceid), 
  races_1.raceid, 
  races_1.circuitid, 
  count(*), 
  min(
    races_1.date)
from 
  races as races_1
    inner join races as races_2
    on (races_1.raceid = races_2.raceid )
where races_1.time is not NULL
group by races_1.circuitid, races_1.date, races_1.raceid, races_1.round, races_2.date, races_2.raceid, races_2.year
limit 31;
-- meta {"num_joins":3,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_standings_1.points, 
    races_1.name, 
    races_1.raceid, 
    races_1.year, 
    circuits_1.circuitid
  from 
    races as races_1
        inner join circuits as circuits_1
        on (races_1.raceid = circuits_1.circuitid )
      inner join constructor_standings as constructor_standings_1
      on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
  where circuits_1.circuitid < constructor_standings_1.constructorstandingsid
  limit 11)
EXCEPT
(select  
    constructor_standings_2.points, 
    races_2.name, 
    constructor_standings_2.position, 
    races_2.round, 
    max(
      constructor_standings_2.constructorstandingsid)
  from 
    races as races_2
      inner join constructor_standings as constructor_standings_2
      on (races_2.raceid = constructor_standings_2.constructorstandingsid )
  where constructor_standings_2.raceid is not NULL
  group by constructor_standings_2.constructorid, constructor_standings_2.position, constructor_standings_2.wins, races_2.circuitid, races_2.date, races_2.round
  limit 13);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.resultid, 
  races_1.circuitid, 
  results_1.constructorid, 
  races_1.raceid, 
  races_1.date, 
  results_1.positionorder, 
  max(
    results_1.laps), 
  results_1.laps, 
  races_1.name, 
  results_1.position, 
  results_1.milliseconds, 
  races_1.round
from 
  results as results_1
    inner join races as races_1
    on (results_1.resultid = races_1.raceid )
where results_1.positionorder is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, results_1.constructorid, results_1.laps, results_1.milliseconds, results_1.position, results_1.positionorder, results_1.resultid
limit 14;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    results_1.grid
  from 
    results as results_1
  where results_1.resultid is not NULL
  limit 24)
UNION
(select  
    constructor_standings_1.raceid
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.wins is not NULL
  group by constructor_standings_1.constructorid, constructor_standings_1.date
  limit 18);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    qualifying_1.raceid, 
    qualifying_1.driverid
  from 
    races as races_1
      inner join qualifying as qualifying_1
        inner join constructor_results as constructor_results_1
        on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
      on (races_1.raceid = qualifying_1.qualifyid )
  where constructor_results_1.date < races_1.date
  limit 9)
INTERSECT
(select  
    standings_1.wins, 
    standings_1.raceid
  from 
    standings as standings_1
  where standings_1.date > standings_1.date
  limit 5);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    drivers_1.driverref, 
    drivers_1.nationality
  from 
    drivers as drivers_1
  where drivers_1.driverid > drivers_1.driverid
  limit 35)
INTERSECT
(select  
    min(
      qualifying_1.date), 
    max(
      qualifying_1.date)
  from 
    qualifying as qualifying_1
  where qualifying_1.date is not NULL
  group by qualifying_1.date, qualifying_1.number, qualifying_1.position
  limit 36);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 19;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    qualifying_1.driverid, 
    qualifying_1.constructorid, 
    qualifying_1.position, 
    qualifying_1.date, 
    qualifying_1.raceid, 
    qualifying_1.number
  from 
    qualifying as qualifying_1
  where qualifying_1.date = qualifying_1.date
  limit 37)
UNION
(select  
    constructor_results_1.constructorid, 
    constructor_results_1.constructorresultsid, 
    constructor_results_1.constructorid, 
    constructor_results_1.date, 
    constructor_results_1.raceid, 
    constructor_results_1.raceid
  from 
    circuits as circuits_1
      inner join constructor_results as constructor_results_1
      on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
  where constructor_results_1.constructorid is not NULL
  group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.lat, circuits_1.location, circuits_1.name, constructor_results_1.raceid
  limit 27);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    races_1.date, 
    races_1.round, 
    races_1.time
  from 
    races as races_1
  where races_1.circuitid is not NULL
  limit 10)
EXCEPT
(select  
    min(
      constructor_results_1.points), 
    constructor_results_1.raceid, 
    avg(
      constructor_results_1.points)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorid < constructor_results_1.constructorresultsid
  limit 4);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year, 
  max(
    races_1.date), 
  races_1.circuitid, 
  races_1.date, 
  races_1.time, 
  min(
    races_1.date), 
  min(
    races_1.circuitid)
from 
  races as races_1
where races_1.time is not NULL
group by races_1.circuitid, races_1.date, races_1.time, races_1.year
limit 13;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_standings_1.raceid, 
    constructor_standings_1.constructorstandingsid, 
    standings_2.date, 
    standings_2.raceid
  from 
    standings as standings_1
        inner join standings as standings_2
        on (standings_1.driverstandingsid = standings_2.driverstandingsid )
      inner join constructor_standings as constructor_standings_1
      on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
  where standings_2.position is not NULL
  limit 2)
UNION
(select  
    sum(
      drivers_1.driverid), 
    drivers_1.driverid, 
    drivers_1.dob, 
    drivers_1.driverid
  from 
    drivers as drivers_1
  where drivers_1.code >= drivers_1.driverref
  limit 19);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    results_1.rank
  from 
    results as results_1
  where results_1.number is not NULL
  limit 36)
EXCEPT
(select  
    min(
      standings_1.date)
  from 
    standings as standings_1
      inner join qualifying as qualifying_1
      on (standings_1.driverstandingsid = qualifying_1.qualifyid )
  where standings_1.points is not NULL
  limit 27);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    drivers_1.code, 
    standings_2.wins, 
    standings_1.date, 
    drivers_1.dob, 
    drivers_1.driverref, 
    drivers_1.surname
  from 
    standings as standings_1
        inner join drivers as drivers_1
          inner join standings as standings_2
          on (drivers_1.driverid = standings_2.driverstandingsid )
        on (standings_1.driverstandingsid = drivers_1.driverid )
      inner join drivers as drivers_2
      on (standings_1.driverstandingsid = drivers_2.driverid )
  where drivers_2.driverref is not NULL
  limit 21)
INTERSECT
(select  
    min(
      qualifying_1.number), 
    qualifying_1.number, 
    qualifying_1.date, 
    max(
      qualifying_1.date), 
    max(
      qualifying_1.date), 
    count(*)
  from 
    qualifying as qualifying_1
  where qualifying_1.constructorid is not NULL
  limit 11);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitid, 
  constructor_results_1.raceid, 
  max(
    constructor_results_1.date), 
  count(
    circuits_1.country), 
  circuits_1.country, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
    inner join circuits as circuits_1
    on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
where circuits_1.country is not NULL
group by circuits_1.circuitid, circuits_1.country, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.raceid
limit 38;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    results_1.resultid, 
    results_1.fastestlap, 
    results_1.milliseconds, 
    standings_1.position, 
    standings_1.driverid
  from 
    drivers as drivers_1
        inner join standings as standings_1
        on (drivers_1.driverid = standings_1.driverstandingsid )
      inner join results as results_1
      on (standings_1.driverstandingsid = results_1.resultid )
  where standings_1.date >= results_1.date
  limit 7)
EXCEPT
(select  
    circuits_1.circuitid, 
    circuits_1.lat, 
    count(
      circuits_1.alt), 
    circuits_1.circuitid, 
    circuits_1.circuitid
  from 
    circuits as circuits_1
  where circuits_1.circuitref is not NULL
  group by circuits_1.alt, circuits_1.circuitid, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.location, circuits_1.name
  limit 6);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.nationality, 
  drivers_1.forename, 
  drivers_1.surname, 
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.code is not NULL
limit 21;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_results_1.raceid, 
    constructor_results_1.points
  from 
    drivers as drivers_1
        inner join constructor_standings as constructor_standings_1
        on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
      inner join constructor_results as constructor_results_1
      on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
  where constructor_results_1.date is not NULL
  limit 21)
UNION
(select  
    constructor_standings_2.constructorid, 
    constructor_standings_2.points
  from 
    constructor_standings as constructor_standings_2
  where constructor_standings_2.points > constructor_standings_2.points
  limit 10);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
limit 35;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    races_1.year, 
    constructor_standings_1.wins, 
    races_1.date, 
    constructor_standings_1.points, 
    races_1.circuitid
  from 
    races as races_1
      inner join constructor_standings as constructor_standings_1
      on (races_1.raceid = constructor_standings_1.constructorstandingsid )
  where constructor_standings_1.constructorstandingsid > races_1.circuitid
  limit 40)
INTERSECT
(select  
    circuits_1.circuitid, 
    circuits_1.circuitid, 
    min(
      circuits_1.alt), 
    circuits_1.alt, 
    max(
      circuits_1.lat)
  from 
    circuits as circuits_1
  where circuits_1.circuitid is not NULL
  limit 12);
-- meta {"num_joins":2,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_results_1.raceid, 
    qualifying_1.qualifyid, 
    qualifying_1.raceid, 
    sum(
      constructor_results_1.points), 
    constructor_results_1.constructorresultsid, 
    constructor_results_1.date
  from 
    qualifying as qualifying_1
      inner join constructor_results as constructor_results_1
      on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
  where qualifying_1.date = constructor_results_1.date
  group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.raceid, qualifying_1.qualifyid, qualifying_1.raceid
  limit 22)
UNION
(select  
    drivers_1.driverid, 
    drivers_1.driverid, 
    max(
      drivers_1.dob), 
    sum(
      circuits_1.alt), 
    circuits_1.circuitid, 
    sum(
      circuits_1.alt)
  from 
    drivers as drivers_1
      inner join circuits as circuits_1
      on (drivers_1.driverid = circuits_1.circuitid )
  where drivers_1.surname is not NULL
  group by drivers_1.code, drivers_1.driverid, drivers_1.forename, drivers_1.nationality
  limit 37);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    drivers_1.surname, 
    drivers_1.code
  from 
    drivers as drivers_1
  where drivers_1.driverid is not NULL
  limit 16)
EXCEPT
(select  
    avg(
      constructor_standings_1.constructorstandingsid), 
    min(
      constructor_standings_1.date)
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.raceid is not NULL
  group by constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.raceid
  limit 8);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructors_1.constructorid, 
    constructors_1.name, 
    constructors_1.constructorref, 
    constructors_1.nationality
  from 
    constructors as constructors_1
  where constructors_1.constructorid is not NULL
  limit 29)
UNION
(select  
    qualifying_1.driverid, 
    max(
      qualifying_1.date), 
    count(
      qualifying_1.constructorid), 
    max(
      qualifying_1.date)
  from 
    qualifying as qualifying_1
  where qualifying_1.constructorid is not NULL
  limit 14);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    qualifying_1.constructorid, 
    qualifying_1.raceid, 
    qualifying_1.qualifyid, 
    drivers_1.driverref, 
    qualifying_1.date
  from 
    qualifying as qualifying_1
      inner join drivers as drivers_1
      on (qualifying_1.qualifyid = drivers_1.driverid )
  where drivers_1.code <= drivers_1.surname
  limit 30)
INTERSECT
(select  
    constructor_standings_1.constructorstandingsid, 
    constructor_standings_1.wins, 
    avg(
      constructor_standings_1.points), 
    min(
      constructor_standings_1.constructorid), 
    constructor_standings_1.date
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.constructorstandingsid is not NULL
  group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.wins
  limit 8);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    circuits_1.lng, 
    circuits_1.location, 
    circuits_1.alt, 
    circuits_1.circuitref, 
    count(
      circuits_1.lat), 
    circuits_1.name, 
    circuits_1.circuitid
  from 
    circuits as circuits_1
  where circuits_1.name is not NULL
  group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.lng, circuits_1.location, circuits_1.name
  limit 26)
UNION
(select  
    results_1.milliseconds, 
    races_1.time, 
    results_1.milliseconds, 
    races_1.name, 
    max(
      results_1.constructorid), 
    races_1.time, 
    results_1.grid
  from 
    results as results_1
      inner join races as races_1
      on (results_1.resultid = races_1.raceid )
  where races_1.time >= races_1.name
  group by races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year, results_1.grid, results_1.milliseconds, results_1.positionorder, results_1.raceid, results_1.rank, results_1.resultid, results_1.statusid
  limit 10);
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_standings_1.raceid, 
    qualifying_1.number
  from 
    qualifying as qualifying_1
      inner join constructor_standings as constructor_standings_1
      on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
  where constructor_standings_1.points >= constructor_standings_1.points
  limit 12)
INTERSECT
(select  
    qualifying_2.constructorid, 
    standings_1.position
  from 
    standings as standings_1
      inner join qualifying as qualifying_2
      on (standings_1.driverstandingsid = qualifying_2.qualifyid )
  where standings_1.points <= standings_1.points
  group by qualifying_2.date, qualifying_2.qualifyid, qualifying_2.raceid, standings_1.date, standings_1.wins
  limit 19);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructors_1.constructorref, 
    constructors_2.nationality, 
    constructors_2.name
  from 
    constructors as constructors_1
      inner join constructors as constructors_2
      on (constructors_1.constructorid = constructors_2.constructorid )
  where constructors_1.nationality is not NULL
  limit 11)
INTERSECT
(select  
    constructors_3.name, 
    constructors_3.nationality, 
    min(
      constructors_3.constructorid)
  from 
    constructors as constructors_3
  where constructors_3.constructorref is not NULL
  group by constructors_3.constructorref, constructors_3.name
  limit 1);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    results_1.positionorder, 
    results_1.date, 
    results_1.rank
  from 
    results as results_1
  where results_1.date = results_1.date
  limit 1)
EXCEPT
(select  
    max(
      constructor_standings_1.points), 
    constructor_standings_1.date, 
    constructor_standings_1.points
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.wins is not NULL
  limit 31);
-- meta {"num_joins":7,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    constructor_results_1.points), 
  min(
    constructor_results_3.date), 
  constructor_results_2.constructorid, 
  drivers_2.surname, 
  qualifying_1.number, 
  count(*), 
  min(
    qualifying_1.date), 
  constructor_results_2.date, 
  standings_2.position, 
  constructor_results_2.points, 
  constructor_results_1.points, 
  drivers_1.driverref
from 
  constructor_results as constructor_results_1
      inner join drivers as drivers_1
      on (constructor_results_1.constructorresultsid = drivers_1.driverid )
    inner join drivers as drivers_2
      inner join constructor_results as constructor_results_2
            inner join standings as standings_1
            on (constructor_results_2.constructorresultsid = standings_1.driverstandingsid )
          inner join constructor_results as constructor_results_3
            inner join qualifying as qualifying_1
            on (constructor_results_3.constructorresultsid = qualifying_1.qualifyid )
          on (constructor_results_2.constructorresultsid = qualifying_1.qualifyid )
        inner join standings as standings_2
        on (constructor_results_3.constructorresultsid = standings_2.driverstandingsid )
      on (drivers_2.driverid = constructor_results_2.constructorresultsid )
    on (constructor_results_1.constructorresultsid = constructor_results_3.constructorresultsid )
where constructor_results_2.constructorid > standings_1.driverid
group by constructor_results_1.points, constructor_results_2.constructorid, constructor_results_2.date, constructor_results_2.points, drivers_1.driverref, drivers_2.surname, qualifying_1.number, standings_2.position
limit 22;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    circuits_1.country
  from 
    constructor_standings as constructor_standings_1
      inner join circuits as circuits_1
        inner join constructor_results as constructor_results_1
        on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
      on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
  where circuits_1.name is not NULL
  limit 41)
UNION
(select  
    races_1.name
  from 
    races as races_1
  where races_1.name is not NULL
  limit 36);
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    count(*), 
    constructor_results_1.points, 
    constructor_results_1.raceid, 
    min(
      constructor_results_1.date)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.raceid is not NULL
  group by constructor_results_1.points, constructor_results_1.raceid
  limit 19)
INTERSECT
(select  
    max(
      races_1.circuitid), 
    circuits_1.lat, 
    min(
      races_1.date), 
    max(
      races_1.date)
  from 
    circuits as circuits_1
        inner join constructors as constructors_1
        on (circuits_1.circuitid = constructors_1.constructorid )
      inner join races as races_1
      on (circuits_1.circuitid = races_1.raceid )
  where races_1.time is not NULL
  limit 32);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    races_1.circuitid
  from 
    races as races_1
  where races_1.name > races_1.time
  limit 3)
UNION
(select  
    constructors_1.constructorid
  from 
    constructors as constructors_1
  where constructors_1.nationality is not NULL
  limit 33);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_results_1.constructorresultsid, 
    constructor_results_1.raceid, 
    constructor_results_1.constructorid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorid = constructor_results_1.raceid
  limit 14)
EXCEPT
(select  
    constructor_standings_1.raceid, 
    constructor_standings_1.position, 
    max(
      constructor_standings_1.date)
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.raceid <= constructor_standings_1.wins
  group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid
  limit 19);
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_results_1.points, 
    constructor_results_1.date, 
    constructor_results_1.constructorid
  from 
    circuits as circuits_1
      inner join constructor_results as constructor_results_1
          inner join results as results_1
          on (constructor_results_1.constructorresultsid = results_1.resultid )
        inner join results as results_2
        on (results_1.resultid = results_2.resultid )
      on (circuits_1.circuitid = results_1.resultid )
  where constructor_results_1.points is not NULL
  limit 29)
INTERSECT
(select  
    count(*), 
    races_1.date, 
    races_1.circuitid
  from 
    races as races_1
  where races_1.date is not NULL
  limit 19);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref
from 
  circuits as circuits_1
    inner join constructors as constructors_1
      inner join qualifying as qualifying_1
        inner join constructor_standings as constructor_standings_1
        on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
      on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where constructors_1.nationality is not NULL
limit 33;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    circuits_1.alt
  from 
    circuits as circuits_1
  where circuits_1.name >= circuits_1.circuitref
  limit 8)
INTERSECT
(select  
    avg(
      constructors_1.constructorid)
  from 
    constructors as constructors_1
  where constructors_1.name is not NULL
  limit 16);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    circuits_1.location, 
    circuits_1.lng, 
    circuits_1.name, 
    circuits_1.lat, 
    circuits_1.alt, 
    count(*)
  from 
    circuits as circuits_1
  where circuits_1.name is not NULL
  group by circuits_1.alt, circuits_1.lat, circuits_1.lng, circuits_1.location, circuits_1.name
  limit 15)
UNION
(select  
    avg(
      constructor_results_1.constructorid), 
    constructor_results_1.points, 
    max(
      constructor_results_1.date), 
    min(
      constructor_results_1.raceid), 
    constructor_results_1.points, 
    max(
      constructor_results_1.constructorresultsid)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.date is not NULL
  group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
  limit 38);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    circuits_1.circuitid, 
    circuits_1.lat
  from 
    circuits as circuits_1
  where circuits_1.circuitid <= circuits_1.circuitid
  limit 26)
EXCEPT
(select  
    constructor_standings_1.constructorid, 
    constructor_standings_1.points
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.date is not NULL
  limit 21);
-- meta {"num_joins":3,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    drivers_1.code, 
    max(
      drivers_1.dob), 
    drivers_1.forename, 
    drivers_1.driverref, 
    min(
      drivers_1.driverid)
  from 
    drivers as drivers_1
  where drivers_1.driverref is not NULL
  group by drivers_1.code, drivers_1.driverref, drivers_1.forename
  limit 22)
EXCEPT
(select  
    races_1.name, 
    max(
      races_2.date), 
    races_1.name, 
    races_2.time, 
    count(
      results_2.positionorder)
  from 
    results as results_1
        inner join results as results_2
        on (results_1.resultid = results_2.resultid )
      inner join races as races_1
        inner join races as races_2
        on (races_1.raceid = races_2.raceid )
      on (results_1.resultid = races_1.raceid )
  where results_1.date < results_2.date
  group by races_2.circuitid, results_1.rank, results_2.grid, results_2.raceid, results_2.statusid
  limit 38);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.nationality >= constructors_1.constructorref
limit 25;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    races_1.time, 
    max(
      races_1.date), 
    min(
      races_1.date)
  from 
    races as races_1
  where races_1.time is not NULL
  group by races_1.time
  limit 39)
INTERSECT
(select  
    avg(
      results_1.position), 
    max(
      results_1.date), 
    max(
      constructor_results_1.date)
  from 
    results as results_1
      inner join constructor_results as constructor_results_1
      on (results_1.resultid = constructor_results_1.constructorresultsid )
  where results_1.grid is not NULL
  limit 27);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    qualifying_1.position, 
    qualifying_1.number, 
    qualifying_1.qualifyid
  from 
    qualifying as qualifying_1
  where qualifying_1.raceid is not NULL
  limit 2)
INTERSECT
(select  
    qualifying_2.number, 
    qualifying_2.number, 
    qualifying_2.raceid
  from 
    qualifying as qualifying_2
  where qualifying_2.date is not NULL
  group by qualifying_2.qualifyid
  limit 41);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    standings_1.date, 
    standings_1.points, 
    standings_1.wins, 
    standings_1.raceid, 
    standings_1.driverid
  from 
    standings as standings_1
  where standings_1.raceid is not NULL
  limit 37)
EXCEPT
(select  
    drivers_1.dob, 
    min(
      drivers_1.dob), 
    constructors_1.constructorid, 
    drivers_1.driverid, 
    drivers_1.driverid
  from 
    drivers as drivers_1
      inner join constructors as constructors_1
      on (drivers_1.driverid = constructors_1.constructorid )
  where constructors_1.constructorid = drivers_1.driverid
  limit 14);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.circuitid > circuits_1.circuitid
limit 26;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructors_1.constructorref, 
    constructors_1.name, 
    constructors_1.nationality
  from 
    constructors as constructors_1
  where constructors_1.constructorid is not NULL
  limit 36)
INTERSECT
(select  
    circuits_1.country, 
    circuits_1.country, 
    circuits_1.circuitref
  from 
    circuits as circuits_1
  where circuits_1.location is not NULL
  limit 17);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 32;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    count(*), 
    qualifying_1.driverid, 
    qualifying_1.qualifyid
  from 
    qualifying as qualifying_1
  where qualifying_1.position is not NULL
  group by qualifying_1.driverid, qualifying_1.qualifyid
  limit 2)
UNION
(select  
    min(
      standings_1.position), 
    standings_1.raceid, 
    standings_1.driverstandingsid
  from 
    standings as standings_1
  where standings_1.points <= standings_1.points
  limit 12);
-- meta {"num_joins":1,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    min(
      qualifying_1.date), 
    circuits_1.country, 
    min(
      qualifying_1.date), 
    circuits_1.lat, 
    circuits_1.alt, 
    min(
      qualifying_1.date)
  from 
    qualifying as qualifying_1
      inner join circuits as circuits_1
      on (qualifying_1.qualifyid = circuits_1.circuitid )
  where qualifying_1.raceid is not NULL
  group by circuits_1.alt, circuits_1.country, circuits_1.lat
  limit 29)
UNION
(select  
    min(
      results_1.date), 
    max(
      results_1.date), 
    min(
      results_1.date), 
    results_1.fastestlap, 
    results_1.points, 
    min(
      results_1.date)
  from 
    results as results_1
  where results_1.rank is not NULL
  group by results_1.fastestlap, results_1.milliseconds
  limit 17);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    drivers_1.forename, 
    max(
      drivers_1.dob), 
    count(
      drivers_1.driverid), 
    avg(
      drivers_1.driverid), 
    drivers_1.driverid, 
    drivers_1.nationality, 
    drivers_1.dob
  from 
    drivers as drivers_1
  where drivers_1.dob is not NULL
  group by drivers_1.dob, drivers_1.driverid, drivers_1.forename, drivers_1.nationality
  limit 31)
UNION
(select  
    races_1.name, 
    max(
      races_1.date), 
    count(*), 
    avg(
      races_1.round), 
    races_1.raceid, 
    races_1.time, 
    races_1.date
  from 
    races as races_1
  where races_1.round is not NULL
  limit 6);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    standings_1.driverstandingsid, 
    standings_1.date
  from 
    standings as standings_1
  where standings_1.driverstandingsid is not NULL
  limit 17)
UNION
(select  
    standings_2.position, 
    standings_2.date
  from 
    qualifying as qualifying_1
      inner join standings as standings_2
      on (qualifying_1.qualifyid = standings_2.driverstandingsid )
  where standings_2.points is not NULL
  group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.number, qualifying_1.qualifyid, standings_2.driverid, standings_2.driverstandingsid, standings_2.wins
  limit 24);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructors_1.constructorid, 
    count(
      constructors_1.name), 
    constructors_1.name, 
    constructors_1.constructorref
  from 
    constructors as constructors_1
  where constructors_1.nationality is not NULL
  group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name
  limit 24)
UNION
(select distinct 
    races_1.raceid, 
    count(
      races_1.time), 
    races_1.name, 
    races_1.name
  from 
    races as races_1
  where races_1.date is not NULL
  limit 8);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    drivers_1.surname, 
    races_1.date, 
    drivers_1.forename, 
    drivers_1.dob
  from 
    drivers as drivers_1
      inner join races as races_1
      on (drivers_1.driverid = races_1.raceid )
  where drivers_1.code is not NULL
  limit 3)
EXCEPT
(select  
    circuits_1.circuitref, 
    count(*), 
    circuits_1.circuitref, 
    max(
      circuits_1.lat)
  from 
    circuits as circuits_1
  where circuits_1.lng is not NULL
  limit 1);
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    races_1.circuitid, 
    constructor_results_1.raceid, 
    races_1.year, 
    constructor_results_1.date, 
    constructor_results_1.constructorresultsid, 
    min(
      races_1.date), 
    avg(
      constructor_results_1.raceid), 
    constructor_results_1.points
  from 
    constructor_results as constructor_results_1
      inner join races as races_1
      on (constructor_results_1.constructorresultsid = races_1.raceid )
  where constructor_results_1.points <= constructor_results_1.points
  group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid, races_1.circuitid, races_1.year
  limit 6)
EXCEPT
(select  
    standings_1.position, 
    races_2.raceid, 
    max(
      races_2.date), 
    max(
      standings_1.date), 
    standings_1.driverstandingsid, 
    min(
      races_2.date), 
    sum(
      standings_1.driverid), 
    standings_1.points
  from 
    standings as standings_1
      inner join races as races_2
      on (standings_1.driverstandingsid = races_2.raceid )
  where races_2.name < races_2.time
  limit 5);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructors_1.name, 
    min(
      standings_1.driverstandingsid)
  from 
    races as races_1
        inner join constructors as constructors_1
        on (races_1.raceid = constructors_1.constructorid )
      inner join standings as standings_1
      on (constructors_1.constructorid = standings_1.driverstandingsid )
  where races_1.time is not NULL
  group by constructors_1.name
  limit 7)
UNION
(select  
    constructors_2.nationality, 
    count(*)
  from 
    constructors as constructors_2
  where constructors_2.nationality is not NULL
  limit 34);
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    standings_1.wins, 
    results_1.raceid, 
    results_1.laps, 
    results_1.grid, 
    standings_1.driverstandingsid, 
    min(
      standings_1.date), 
    results_1.date, 
    count(*), 
    standings_1.driverid, 
    count(*), 
    results_1.driverid
  from 
    qualifying as qualifying_1
        inner join standings as standings_1
        on (qualifying_1.qualifyid = standings_1.driverstandingsid )
      inner join results as results_1
      on (qualifying_1.qualifyid = results_1.resultid )
  where results_1.date = standings_1.date
  group by results_1.date, results_1.driverid, results_1.grid, results_1.laps, results_1.raceid, standings_1.driverid, standings_1.driverstandingsid, standings_1.wins
  limit 31)
INTERSECT
(select  
    results_2.laps, 
    results_2.positionorder, 
    results_2.positionorder, 
    results_2.statusid, 
    results_2.raceid, 
    max(
      results_2.date), 
    count(*), 
    count(
      results_2.milliseconds), 
    results_2.grid, 
    count(*), 
    results_2.constructorid
  from 
    results as results_2
  where results_2.rank is not NULL
  limit 4);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_results_1.date, 
    constructor_results_1.points, 
    constructor_results_1.constructorresultsid, 
    constructor_results_1.constructorid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.points < constructor_results_1.points
  limit 20)
INTERSECT
(select  
    races_1.date, 
    min(
      races_2.date), 
    races_2.round, 
    qualifying_1.driverid
  from 
    qualifying as qualifying_1
      inner join races as races_1
        inner join races as races_2
        on (races_1.raceid = races_2.raceid )
      on (qualifying_1.qualifyid = races_2.raceid )
  where races_1.date > races_2.date
  group by qualifying_1.driverid, races_1.raceid, races_1.round, races_1.time
  limit 21);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_standings_1.date, 
    constructor_standings_1.position
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.date is not NULL
  limit 22)
EXCEPT
(select  
    constructor_results_1.date, 
    constructor_results_1.constructorresultsid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.date is not NULL
  limit 30);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    drivers_1.forename, 
    drivers_1.dob, 
    count(*), 
    sum(
      drivers_1.driverid)
  from 
    drivers as drivers_1
  where drivers_1.dob = drivers_1.dob
  group by drivers_1.dob, drivers_1.forename
  limit 25)
EXCEPT
(select  
    max(
      results_1.rank), 
    min(
      results_1.date), 
    min(
      results_1.laps), 
    sum(
      results_1.resultid)
  from 
    results as results_1
  where results_1.rank is not NULL
  group by results_1.driverid, results_1.milliseconds, results_1.position, results_1.resultid
  limit 27);
-- meta {"num_joins":2,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    drivers_1.driverid, 
    drivers_1.dob, 
    count(
      drivers_1.code), 
    drivers_1.code, 
    sum(
      drivers_1.driverid), 
    drivers_1.driverref
  from 
    drivers as drivers_1
  where drivers_1.nationality is not NULL
  group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.driverref
  limit 42)
UNION
(select  
    standings_1.wins, 
    avg(
      results_1.statusid), 
    count(*), 
    constructors_1.nationality, 
    sum(
      results_1.statusid), 
    constructors_1.nationality
  from 
    standings as standings_1
      inner join constructors as constructors_1
        inner join results as results_1
        on (constructors_1.constructorid = results_1.resultid )
      on (standings_1.driverstandingsid = constructors_1.constructorid )
  where standings_1.date < results_1.date
  limit 38);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructors_1.constructorref
  from 
    constructors as constructors_1
  where constructors_1.constructorid is not NULL
  limit 37)
EXCEPT
(select  
    avg(
      standings_1.position)
  from 
    standings as standings_1
  where standings_1.wins is not NULL
  limit 33);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    drivers_1.forename, 
    drivers_1.nationality, 
    drivers_1.driverref
  from 
    drivers as drivers_1
  where drivers_1.driverref <= drivers_1.surname
  limit 39)
UNION
(select  
    races_1.name, 
    races_1.name, 
    races_1.name
  from 
    races as races_1
  where races_1.time is not NULL
  limit 12);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructors_1.nationality, 
    constructors_1.constructorid, 
    count(
      constructors_1.nationality)
  from 
    constructors as constructors_1
  where constructors_1.constructorid is not NULL
  group by constructors_1.constructorid, constructors_1.nationality
  limit 29)
INTERSECT
(select  
    max(
      constructor_standings_1.date), 
    constructor_standings_1.constructorid, 
    count(
      constructor_standings_1.constructorstandingsid)
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.points is not NULL
  group by constructor_standings_1.constructorstandingsid
  limit 32);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    races_1.name, 
    races_1.raceid, 
    min(
      races_1.year)
  from 
    races as races_1
  where races_1.circuitid is not NULL
  group by races_1.name, races_1.raceid
  limit 40)
UNION
(select  
    circuits_1.location, 
    circuits_1.circuitid, 
    count(
      circuits_1.circuitid)
  from 
    circuits as circuits_1
  where circuits_1.lng is not NULL
  group by circuits_1.alt, circuits_1.country, circuits_1.location
  limit 7);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructors_1.name, 
    constructors_1.nationality, 
    constructors_1.constructorref, 
    constructors_1.constructorid
  from 
    constructors as constructors_1
  where constructors_1.constructorid = constructors_1.constructorid
  limit 15)
EXCEPT
(select  
    max(
      standings_1.date), 
    sum(
      standings_1.wins), 
    max(
      standings_1.date), 
    standings_1.driverstandingsid
  from 
    standings as standings_1
  where standings_1.date is not NULL
  limit 4);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    drivers_1.dob
  from 
    drivers as drivers_1
  where drivers_1.driverref is not NULL
  limit 11)
UNION
(select  
    sum(
      circuits_1.lat)
  from 
    circuits as circuits_1
  where circuits_1.country is not NULL
  limit 1);
-- meta {"num_joins":2,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_standings_1.constructorid, 
    constructor_results_1.constructorid, 
    avg(
      results_1.points), 
    results_1.position, 
    constructor_standings_1.raceid, 
    results_1.statusid, 
    results_1.rank, 
    min(
      constructor_results_1.date), 
    results_1.fastestlap, 
    results_1.milliseconds, 
    constructor_standings_1.date, 
    max(
      results_1.date)
  from 
    constructor_results as constructor_results_1
      inner join results as results_1
        inner join constructor_standings as constructor_standings_1
        on (results_1.resultid = constructor_standings_1.constructorstandingsid )
      on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
  where results_1.resultid is not NULL
  group by constructor_results_1.constructorid, constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.raceid, results_1.fastestlap, results_1.milliseconds, results_1.position, results_1.rank, results_1.statusid
  limit 21)
UNION
(select  
    constructor_results_2.constructorresultsid, 
    constructor_results_2.constructorid, 
    avg(
      constructor_results_2.points), 
    constructor_results_2.points, 
    min(
      constructor_results_2.points), 
    constructor_results_2.constructorid, 
    constructor_results_2.points, 
    max(
      constructor_results_2.date), 
    constructor_results_2.points, 
    constructor_results_2.points, 
    avg(
      constructor_results_2.points), 
    min(
      constructor_results_2.date)
  from 
    constructor_results as constructor_results_2
  where constructor_results_2.constructorresultsid = constructor_results_2.raceid
  limit 35);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    sum(
      constructor_results_1.points)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorresultsid is not NULL
  limit 30)
INTERSECT
(select  
    min(
      circuits_1.lng)
  from 
    circuits as circuits_1
      inner join races as races_1
      on (circuits_1.circuitid = races_1.raceid )
  where circuits_1.circuitid is not NULL
  limit 18);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    circuits_1.alt, 
    circuits_1.name, 
    circuits_1.circuitid
  from 
    circuits as circuits_1
  where circuits_1.circuitref is not NULL
  limit 23)
EXCEPT
(select  
    count(*), 
    max(
      results_1.date), 
    results_1.statusid
  from 
    results as results_1
  where results_1.grid is not NULL
  group by results_1.constructorid, results_1.number, results_1.positionorder, results_1.raceid
  limit 28);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    races_1.circuitid, 
    races_1.name, 
    count(*)
  from 
    races as races_1
  where races_1.circuitid is not NULL
  group by races_1.circuitid, races_1.name
  limit 37)
EXCEPT
(select  
    constructor_standings_1.raceid, 
    sum(
      constructor_standings_1.points), 
    count(
      constructor_standings_1.position)
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.date > constructor_standings_1.date
  group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
  limit 33);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    constructor_results_1.points), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  max(
    constructor_results_1.constructorresultsid), 
  min(
    constructor_results_1.date)
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid
limit 4;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    count(*), 
    sum(
      constructors_1.constructorid)
  from 
    constructors as constructors_1
  where constructors_1.constructorid is not NULL
  limit 28)
EXCEPT
(select  
    min(
      constructors_2.constructorid), 
    sum(
      constructors_2.constructorid)
  from 
    constructors as constructors_2
  where constructors_2.constructorref is not NULL
  group by constructors_2.constructorid, constructors_2.constructorref, constructors_2.name, constructors_2.nationality
  limit 25);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_standings_1.points, 
    constructor_standings_1.raceid
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.points is not NULL
  limit 3)
EXCEPT
(select  
    sum(
      qualifying_1.qualifyid), 
    qualifying_1.qualifyid
  from 
    qualifying as qualifying_1
  where qualifying_1.constructorid is not NULL
  group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.qualifyid
  limit 36);
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    drivers_1.surname
  from 
    constructors as constructors_1
        inner join qualifying as qualifying_1
        on (constructors_1.constructorid = qualifying_1.qualifyid )
      inner join circuits as circuits_1
        inner join drivers as drivers_1
        on (circuits_1.circuitid = drivers_1.driverid )
      on (qualifying_1.qualifyid = drivers_1.driverid )
  where circuits_1.circuitid <= qualifying_1.position
  limit 41)
INTERSECT
(select  
    drivers_3.code
  from 
    drivers as drivers_2
      inner join constructor_results as constructor_results_1
        inner join drivers as drivers_3
        on (constructor_results_1.constructorresultsid = drivers_3.driverid )
      on (drivers_2.driverid = constructor_results_1.constructorresultsid )
  where drivers_2.driverref < drivers_2.code
  limit 35);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    standings_1.driverstandingsid, 
    standings_1.position, 
    standings_1.points
  from 
    standings as standings_1
  where standings_1.date = standings_1.date
  limit 35)
EXCEPT
(select  
    drivers_1.driverid, 
    drivers_1.driverid, 
    count(
      drivers_1.driverid)
  from 
    drivers as drivers_1
  where drivers_1.driverref is not NULL
  limit 22);
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    races_1.date), 
  avg(
    circuits_1.alt), 
  races_1.year, 
  max(
    races_1.date)
from 
  circuits as circuits_1
    inner join races as races_1
    on (circuits_1.circuitid = races_1.raceid )
where circuits_1.circuitref is not NULL
group by races_1.year
limit 42;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location, 
  constructor_standings_1.points, 
  circuits_1.name, 
  max(
    constructor_standings_1.wins), 
  circuits_1.circuitid
from 
  constructor_results as constructor_results_1
      inner join circuits as circuits_1
      on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
    inner join constructor_standings as constructor_standings_1
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where circuits_1.circuitref >= circuits_1.name
group by circuits_1.circuitid, circuits_1.location, circuits_1.name, constructor_standings_1.points
limit 37;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    circuits_1.circuitid, 
    circuits_1.location, 
    circuits_1.alt, 
    circuits_1.country, 
    circuits_1.lng, 
    circuits_1.circuitref, 
    circuits_1.lat, 
    sum(
      circuits_1.circuitid)
  from 
    circuits as circuits_1
  where circuits_1.country is not NULL
  group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.location
  limit 40)
INTERSECT
(select  
    circuits_2.circuitid, 
    sum(
      circuits_2.circuitid), 
    circuits_2.alt, 
    circuits_2.circuitref, 
    sum(
      circuits_2.circuitid), 
    circuits_2.location, 
    count(*), 
    avg(
      circuits_2.circuitid)
  from 
    circuits as circuits_2
  where circuits_2.location is not NULL
  group by circuits_2.alt, circuits_2.circuitref, circuits_2.location
  limit 18);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_results_1.raceid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.points is not NULL
  limit 23)
UNION
(select  
    constructor_results_2.raceid
  from 
    constructor_results as constructor_results_2
  where constructor_results_2.raceid is not NULL
  group by constructor_results_2.points
  limit 29);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    results_1.milliseconds, 
    results_1.number, 
    results_1.positionorder, 
    results_1.points, 
    results_1.position
  from 
    results as results_1
  where results_1.driverid is not NULL
  limit 42)
UNION
(select  
    results_2.number, 
    results_2.number, 
    results_2.driverid, 
    results_2.number, 
    results_2.points
  from 
    results as results_2
  where results_2.milliseconds is not NULL
  limit 8);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructors_1.nationality, 
    count(
      constructors_1.name), 
    constructors_1.name
  from 
    constructors as constructors_1
  where constructors_1.constructorid is not NULL
  group by constructors_1.name, constructors_1.nationality
  limit 23)
UNION
(select  
    races_1.time, 
    min(
      races_1.year), 
    races_1.time
  from 
    races as races_1
  where races_1.time < races_1.name
  group by races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year
  limit 17);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_standings_1.constructorid, 
    constructor_standings_1.raceid, 
    races_1.raceid
  from 
    constructor_standings as constructor_standings_1
      inner join races as races_1
      on (constructor_standings_1.constructorstandingsid = races_1.raceid )
  where constructor_standings_1.wins is not NULL
  limit 21)
INTERSECT
(select  
    results_1.resultid, 
    sum(
      results_1.number), 
    results_1.driverid
  from 
    results as results_1
  where results_1.constructorid is not NULL
  limit 35);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    results_2.date, 
    results_2.position, 
    results_2.resultid, 
    results_1.positionorder, 
    results_2.rank, 
    results_1.grid, 
    results_2.grid, 
    results_2.positionorder
  from 
    results as results_1
      inner join results as results_2
      on (results_1.resultid = results_2.resultid )
  where results_1.number is not NULL
  limit 22)
INTERSECT
(select  
    constructor_results_1.date, 
    constructor_results_1.points, 
    constructor_results_1.raceid, 
    max(
      constructor_results_1.date), 
    constructor_results_1.points, 
    constructor_results_1.constructorid, 
    avg(
      constructor_results_1.points), 
    constructor_results_1.raceid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorresultsid is not NULL
  group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.raceid
  limit 28);
-- meta {"num_joins":2,"num_aggregates":5,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    standings_2.points, 
    standings_2.position, 
    standings_2.driverstandingsid
  from 
    races as races_1
      inner join standings as standings_1
        inner join standings as standings_2
        on (standings_1.driverstandingsid = standings_2.driverstandingsid )
      on (races_1.raceid = standings_1.driverstandingsid )
  where standings_1.date >= races_1.date
  limit 8)
INTERSECT
(select  
    avg(
      drivers_1.driverid), 
    drivers_1.driverid, 
    drivers_1.driverid
  from 
    drivers as drivers_1
  where drivers_1.surname is not NULL
  group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.forename
  limit 4);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructors_1.nationality, 
    constructors_1.constructorref
  from 
    constructors as constructors_1
  where constructors_1.constructorref is not NULL
  limit 22)
INTERSECT
(select  
    races_1.name, 
    avg(
      races_1.circuitid)
  from 
    races as races_1
  where races_1.time is not NULL
  limit 13);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    drivers_1.dob), 
  drivers_1.driverid, 
  drivers_1.forename, 
  circuits_1.lat, 
  drivers_1.surname, 
  drivers_1.code
from 
  races as races_1
      inner join drivers as drivers_1
      on (races_1.raceid = drivers_1.driverid )
    inner join circuits as circuits_1
    on (races_1.raceid = circuits_1.circuitid )
where drivers_1.driverid is not NULL
group by circuits_1.lat, drivers_1.code, drivers_1.driverid, drivers_1.forename, drivers_1.surname
limit 21;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    races_1.time, 
    races_1.circuitid, 
    races_1.round, 
    races_1.date, 
    races_1.raceid, 
    sum(
      races_1.circuitid), 
    races_1.year
  from 
    races as races_1
  where races_1.year is not NULL
  group by races_1.circuitid, races_1.date, races_1.raceid, races_1.round, races_1.time, races_1.year
  limit 27)
EXCEPT
(select  
    circuits_1.country, 
    circuits_1.circuitid, 
    circuits_1.circuitid, 
    sum(
      circuits_1.lng), 
    circuits_1.circuitid, 
    sum(
      circuits_1.circuitid), 
    circuits_1.circuitid
  from 
    circuits as circuits_1
  where circuits_1.location is not NULL
  limit 26);
-- meta {"num_joins":3,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    results_1.raceid, 
    avg(
      results_1.positionorder), 
    circuits_2.circuitref, 
    circuits_1.alt, 
    circuits_2.circuitid, 
    circuits_2.location, 
    results_1.resultid, 
    count(
      circuits_2.name)
  from 
    results as results_1
        inner join drivers as drivers_1
        on (results_1.resultid = drivers_1.driverid )
      inner join circuits as circuits_1
        inner join circuits as circuits_2
        on (circuits_1.circuitid = circuits_2.circuitid )
      on (results_1.resultid = circuits_1.circuitid )
  where drivers_1.code is not NULL
  group by circuits_1.alt, circuits_2.circuitid, circuits_2.circuitref, circuits_2.location, results_1.raceid, results_1.resultid
  limit 20)
INTERSECT
(select  
    standings_1.wins, 
    avg(
      standings_1.wins), 
    min(
      standings_1.date), 
    standings_1.points, 
    standings_1.driverstandingsid, 
    sum(
      standings_1.points), 
    standings_1.wins, 
    count(*)
  from 
    standings as standings_1
  where standings_1.wins < standings_1.driverid
  group by standings_1.date, standings_1.driverstandingsid, standings_1.points, standings_1.wins
  limit 33);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    results_1.position, 
    results_1.date
  from 
    results as results_1
  where results_1.date > results_1.date
  limit 7)
UNION
(select distinct 
    constructor_results_1.points, 
    constructor_results_1.date
  from 
    constructor_results as constructor_results_1
        inner join drivers as drivers_1
        on (constructor_results_1.constructorresultsid = drivers_1.driverid )
      inner join drivers as drivers_2
      on (constructor_results_1.constructorresultsid = drivers_2.driverid )
  where drivers_1.nationality is not NULL
  limit 23);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    standings_1.date, 
    standings_1.wins, 
    standings_2.raceid, 
    standings_1.driverstandingsid
  from 
    standings as standings_1
      inner join standings as standings_2
      on (standings_1.driverstandingsid = standings_2.driverstandingsid )
  where standings_2.points = standings_1.points
  limit 29)
EXCEPT
(select  
    max(
      constructor_results_1.points), 
    constructor_results_1.raceid, 
    constructor_results_1.constructorid, 
    constructor_results_1.constructorresultsid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.raceid is not NULL
  group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date
  limit 28);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.resultid, 
  results_1.position, 
  results_1.rank, 
  results_2.constructorid, 
  results_1.statusid, 
  min(
    results_2.constructorid), 
  results_2.driverid
from 
  results as results_1
    inner join results as results_2
    on (results_1.resultid = results_2.resultid )
where results_2.raceid > results_1.grid
group by results_1.position, results_1.rank, results_1.resultid, results_1.statusid, results_2.constructorid, results_2.driverid
limit 21;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    max(
      standings_1.date), 
    standings_1.date, 
    standings_1.raceid, 
    standings_1.wins, 
    standings_1.driverid, 
    standings_1.points
  from 
    standings as standings_1
  where standings_1.raceid is not NULL
  group by standings_1.date, standings_1.driverid, standings_1.points, standings_1.raceid, standings_1.wins
  limit 9)
EXCEPT
(select  
    min(
      drivers_1.dob), 
    drivers_1.dob, 
    count(*), 
    drivers_1.driverid, 
    standings_2.driverstandingsid, 
    standings_2.points
  from 
    standings as standings_2
      inner join drivers as drivers_1
      on (standings_2.driverstandingsid = drivers_1.driverid )
  where standings_2.date is not NULL
  group by drivers_1.driverid, standings_2.date, standings_2.driverid, standings_2.driverstandingsid
  limit 32);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    standings_1.position
  from 
    standings as standings_1
      inner join constructor_standings as constructor_standings_1
      on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
  where constructor_standings_1.raceid is not NULL
  limit 14)
INTERSECT
(select  
    races_1.raceid
  from 
    races as races_1
  where races_1.year < races_1.circuitid
  limit 7);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.raceid, 
  results_1.number
from 
  results as results_1
where results_1.laps is not NULL
limit 23;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    races_1.time, 
    races_1.name
  from 
    constructor_standings as constructor_standings_1
      inner join circuits as circuits_1
        inner join races as races_1
        on (circuits_1.circuitid = races_1.raceid )
      on (constructor_standings_1.constructorstandingsid = races_1.raceid )
  where constructor_standings_1.points <= circuits_1.alt
  limit 19)
UNION
(select  
    count(
      constructor_results_1.raceid), 
    max(
      constructor_results_1.date)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.date > constructor_results_1.date
  group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.raceid
  limit 35);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructors_1.constructorid, 
    circuits_1.lng, 
    circuits_1.circuitref, 
    constructors_1.name
  from 
    constructors as constructors_1
      inner join circuits as circuits_1
      on (constructors_1.constructorid = circuits_1.circuitid )
  where constructors_1.name > circuits_1.country
  limit 2)
UNION
(select  
    constructor_results_1.raceid, 
    constructor_results_1.points, 
    constructors_2.nationality, 
    max(
      constructor_results_1.date)
  from 
    constructor_results as constructor_results_1
      inner join constructors as constructors_2
      on (constructor_results_1.constructorresultsid = constructors_2.constructorid )
  where constructors_2.constructorid is not NULL
  limit 23);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    drivers_1.driverref, 
    constructor_standings_1.constructorstandingsid, 
    constructor_standings_1.points, 
    standings_1.date, 
    standings_1.driverid
  from 
    constructor_standings as constructor_standings_1
        inner join standings as standings_1
        on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
      inner join drivers as drivers_1
      on (standings_1.driverstandingsid = drivers_1.driverid )
  where constructor_standings_1.constructorstandingsid is not NULL
  limit 2)
UNION
(select  
    circuits_1.name, 
    qualifying_1.qualifyid, 
    avg(
      circuits_1.alt), 
    qualifying_1.date, 
    qualifying_1.driverid
  from 
    circuits as circuits_1
      inner join qualifying as qualifying_1
      on (circuits_1.circuitid = qualifying_1.qualifyid )
  where qualifying_1.qualifyid is not NULL
  limit 12);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_results_1.points, 
    constructor_results_1.raceid, 
    constructor_results_1.constructorid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.points is not NULL
  limit 18)
EXCEPT
(select  
    constructor_results_2.points, 
    constructor_results_2.raceid, 
    constructor_results_2.constructorid
  from 
    constructor_results as constructor_results_2
  where constructor_results_2.points is not NULL
  group by constructor_results_2.constructorid, constructor_results_2.raceid
  limit 34);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    drivers_1.driverref, 
    drivers_1.code, 
    max(
      drivers_1.driverid), 
    drivers_1.driverid
  from 
    drivers as drivers_1
  where drivers_1.dob is not NULL
  group by drivers_1.code, drivers_1.driverid, drivers_1.driverref
  limit 27)
EXCEPT
(select  
    constructors_1.name, 
    max(
      constructors_1.constructorid), 
    count(
      constructors_1.name), 
    avg(
      constructors_1.constructorid)
  from 
    constructors as constructors_1
  where constructors_1.name = constructors_1.constructorref
  group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name
  limit 40);
-- meta {"num_joins":0,"num_aggregates":8,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    standings_1.position, 
    standings_1.wins, 
    standings_1.driverstandingsid
  from 
    standings as standings_1
  where standings_1.driverid is not NULL
  limit 9)
UNION
(select  
    standings_2.position, 
    min(
      standings_2.date), 
    standings_2.driverstandingsid
  from 
    standings as standings_2
  where standings_2.date <= standings_2.date
  group by standings_2.date, standings_2.driverid, standings_2.driverstandingsid, standings_2.points, standings_2.position, standings_2.raceid, standings_2.wins
  limit 26);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    circuits_1.lng
  from 
    circuits as circuits_1
  where circuits_1.circuitref > circuits_1.country
  limit 10)
UNION
(select  
    max(
      races_1.date)
  from 
    races as races_1
  where races_1.year is not NULL
  limit 29);
-- meta {"num_joins":0,"num_aggregates":7,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    races_1.name, 
    races_1.time, 
    races_1.raceid
  from 
    races as races_1
  where races_1.name is not NULL
  limit 28)
UNION
(select  
    max(
      constructor_results_1.date), 
    max(
      constructor_results_1.date), 
    constructor_results_1.constructorid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.raceid is not NULL
  group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points
  limit 12);
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructors_1.constructorid
  from 
    constructors as constructors_1
      inner join constructors as constructors_2
      on (constructors_1.constructorid = constructors_2.constructorid )
  where constructors_1.nationality is not NULL
  limit 16)
EXCEPT
(select  
    standings_1.wins
  from 
    standings as standings_1
      inner join drivers as drivers_1
      on (standings_1.driverstandingsid = drivers_1.driverid )
  where standings_1.date <= drivers_1.dob
  group by drivers_1.dob, drivers_1.driverid, drivers_1.nationality, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.wins
  limit 14);
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorstandingsid, 
  circuits_1.location
from 
  qualifying as qualifying_1
      inner join constructor_standings as constructor_standings_1
        inner join standings as standings_1
        on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
      on (qualifying_1.qualifyid = standings_1.driverstandingsid )
    inner join races as races_1
      inner join circuits as circuits_1
      on (races_1.raceid = circuits_1.circuitid )
    on (qualifying_1.qualifyid = circuits_1.circuitid )
where qualifying_1.raceid is not NULL
limit 25;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    qualifying_1.constructorid, 
    qualifying_1.position, 
    qualifying_1.driverid, 
    qualifying_1.date, 
    max(
      qualifying_1.date), 
    qualifying_1.number, 
    qualifying_1.raceid, 
    max(
      qualifying_1.number), 
    max(
      qualifying_1.date)
  from 
    qualifying as qualifying_1
  where qualifying_1.number is not NULL
  group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.raceid
  limit 13)
UNION
(select  
    qualifying_2.constructorid, 
    avg(
      qualifying_2.driverid), 
    qualifying_2.driverid, 
    qualifying_2.date, 
    max(
      qualifying_2.date), 
    qualifying_2.number, 
    qualifying_2.constructorid, 
    count(
      qualifying_2.number), 
    min(
      qualifying_2.date)
  from 
    qualifying as qualifying_2
  where qualifying_2.position is not NULL
  limit 26);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  sum(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorref
limit 21;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    standings_1.points, 
    standings_1.date, 
    standings_1.driverstandingsid, 
    standings_1.position, 
    standings_1.raceid, 
    standings_1.wins, 
    standings_1.driverid
  from 
    standings as standings_1
  where standings_1.wins <= standings_1.raceid
  limit 28)
EXCEPT
(select  
    constructor_standings_1.points, 
    constructor_standings_1.date, 
    constructor_standings_1.position, 
    constructor_standings_1.position, 
    min(
      constructor_standings_1.points), 
    min(
      constructor_standings_1.date), 
    constructor_standings_1.constructorid
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.date is not NULL
  group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.position, constructor_standings_1.wins
  limit 17);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    standings_1.position, 
    standings_1.driverid, 
    standings_1.raceid, 
    standings_1.points
  from 
    standings as standings_1
  where standings_1.position is not NULL
  limit 5)
EXCEPT
(select  
    standings_2.wins, 
    standings_2.wins, 
    standings_2.wins, 
    standings_2.points
  from 
    drivers as drivers_1
      inner join standings as standings_2
      on (drivers_1.driverid = standings_2.driverstandingsid )
  where standings_2.points is not NULL
  limit 22);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    count(
      drivers_1.surname), 
    drivers_1.surname, 
    drivers_1.dob, 
    drivers_1.driverref, 
    drivers_1.driverid, 
    drivers_1.code
  from 
    drivers as drivers_1
  where drivers_1.forename = drivers_1.surname
  group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.surname
  limit 31)
EXCEPT
(select  
    count(*), 
    max(
      constructor_standings_1.constructorstandingsid), 
    sum(
      constructor_standings_1.points), 
    min(
      constructor_standings_1.points), 
    constructor_standings_1.wins, 
    min(
      constructor_standings_1.wins)
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.wins > constructor_standings_1.raceid
  limit 14);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructors_1.nationality, 
    constructors_1.constructorref
  from 
    constructors as constructors_1
  where constructors_1.constructorref is not NULL
  limit 31)
EXCEPT
(select  
    races_1.name, 
    max(
      races_1.date)
  from 
    races as races_1
  where races_1.time is not NULL
  group by races_1.raceid, races_1.year
  limit 11);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lat, 
  circuits_1.country, 
  avg(
    circuits_1.circuitid)
from 
  circuits as circuits_1
where circuits_1.location is not NULL
group by circuits_1.country, circuits_1.lat
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid, 
  qualifying_1.date, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.date > qualifying_1.date
limit 5;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    qualifying_1.number, 
    qualifying_1.driverid, 
    avg(
      qualifying_1.raceid)
  from 
    qualifying as qualifying_1
  where qualifying_1.position is not NULL
  group by qualifying_1.driverid, qualifying_1.number
  limit 13)
EXCEPT
(select  
    drivers_1.driverid, 
    constructor_results_1.constructorresultsid, 
    sum(
      drivers_1.driverid)
  from 
    drivers as drivers_1
      inner join constructor_results as constructor_results_1
      on (drivers_1.driverid = constructor_results_1.constructorresultsid )
  where drivers_1.nationality is not NULL
  limit 18);
-- meta {"num_joins":4,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  min(
    constructor_results_1.points), 
  qualifying_1.qualifyid, 
  constructor_results_1.date, 
  sum(
    standings_1.points), 
  qualifying_1.raceid, 
  constructor_results_1.raceid, 
  standings_1.driverid, 
  max(
    qualifying_1.date), 
  sum(
    constructor_results_1.points), 
  standings_1.points, 
  races_1.time
from 
  standings as standings_1
        inner join qualifying as qualifying_1
        on (standings_1.driverstandingsid = qualifying_1.qualifyid )
      inner join constructor_results as constructor_results_1
        inner join races as races_1
        on (constructor_results_1.constructorresultsid = races_1.raceid )
      on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
    inner join qualifying as qualifying_2
    on (constructor_results_1.constructorresultsid = qualifying_2.qualifyid )
where constructor_results_1.date <= standings_1.date
group by constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid, qualifying_1.qualifyid, qualifying_1.raceid, races_1.time, standings_1.driverid, standings_1.points
limit 15;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    results_1.position, 
    results_1.constructorid, 
    results_1.statusid
  from 
    results as results_1
  where results_1.points is not NULL
  limit 41)
EXCEPT
(select  
    min(
      qualifying_1.date), 
    qualifying_1.constructorid, 
    sum(
      qualifying_1.constructorid)
  from 
    qualifying as qualifying_1
  where qualifying_1.date is not NULL
  limit 27);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.resultid, 
  avg(
    results_1.fastestlap), 
  constructor_results_1.constructorid, 
  results_1.grid, 
  sum(
    constructor_results_1.points)
from 
  constructor_results as constructor_results_1
    inner join results as results_1
    on (constructor_results_1.constructorresultsid = results_1.resultid )
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorid, results_1.grid, results_1.resultid
limit 34;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    min(
      qualifying_1.constructorid), 
    min(
      qualifying_1.date), 
    qualifying_1.driverid
  from 
    qualifying as qualifying_1
  where qualifying_1.date is not NULL
  group by qualifying_1.driverid
  limit 15)
INTERSECT
(select  
    count(
      constructors_1.constructorref), 
    min(
      races_1.date), 
    races_1.round
  from 
    races as races_1
      inner join constructors as constructors_1
      on (races_1.raceid = constructors_1.constructorid )
  where constructors_1.nationality is not NULL
  limit 29);
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    qualifying_2.number
  from 
    standings as standings_1
      inner join qualifying as qualifying_1
        inner join qualifying as qualifying_2
        on (qualifying_1.qualifyid = qualifying_2.qualifyid )
      on (standings_1.driverstandingsid = qualifying_2.qualifyid )
  where qualifying_2.raceid is not NULL
  limit 10)
EXCEPT
(select  
    avg(
      qualifying_3.number)
  from 
    races as races_1
        inner join constructors as constructors_1
        on (races_1.raceid = constructors_1.constructorid )
      inner join qualifying as qualifying_3
        inner join constructors as constructors_2
        on (qualifying_3.qualifyid = constructors_2.constructorid )
      on (races_1.raceid = constructors_2.constructorid )
  where qualifying_3.position is not NULL
  limit 25);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.driverid, 
  results_1.milliseconds, 
  max(
    results_1.laps), 
  results_1.date, 
  results_1.constructorid, 
  results_1.fastestlap
from 
  results as results_1
where results_1.statusid is not NULL
group by results_1.constructorid, results_1.date, results_1.driverid, results_1.fastestlap, results_1.milliseconds
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position, 
  standings_1.wins
from 
  standings as standings_1
where standings_1.wins is not NULL
limit 9;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    circuits_1.lng, 
    circuits_1.circuitref, 
    circuits_1.alt, 
    circuits_1.location
  from 
    circuits as circuits_1
  where circuits_1.circuitid is not NULL
  limit 37)
UNION
(select  
    circuits_2.alt, 
    circuits_2.location, 
    circuits_2.alt, 
    circuits_2.name
  from 
    circuits as circuits_2
  where circuits_2.lat is not NULL
  group by circuits_2.alt, circuits_2.country, circuits_2.lat, circuits_2.lng, circuits_2.location
  limit 31);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_results_1.constructorid, 
    constructor_results_1.points
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.date is not NULL
  limit 5)
UNION
(select  
    circuits_1.circuitid, 
    circuits_1.lat
  from 
    circuits as circuits_1
  where circuits_1.alt is not NULL
  group by circuits_1.country, circuits_1.lng, circuits_1.location, circuits_1.name
  limit 13);
-- meta {"num_joins":3,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    sum(
      qualifying_1.raceid), 
    constructor_results_1.points
  from 
    constructor_results as constructor_results_1
      inner join qualifying as qualifying_1
      on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
  where qualifying_1.driverid is not NULL
  group by constructor_results_1.points
  limit 25)
UNION
(select  
    avg(
      races_2.round), 
    circuits_1.lng
  from 
    races as races_1
      inner join races as races_2
        inner join circuits as circuits_1
        on (races_2.raceid = circuits_1.circuitid )
      on (races_1.raceid = circuits_1.circuitid )
  where races_1.year is not NULL
  limit 39);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    count(
      constructor_results_1.constructorresultsid), 
    constructor_results_1.raceid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.raceid is not NULL
  group by constructor_results_1.raceid
  limit 31)
EXCEPT
(select  
    min(
      qualifying_1.position), 
    max(
      qualifying_1.date)
  from 
    qualifying as qualifying_1
  where qualifying_1.driverid is not NULL
  limit 13);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    circuits_1.alt, 
    circuits_1.lng, 
    circuits_1.country, 
    circuits_1.lat
  from 
    circuits as circuits_1
  where circuits_1.circuitid > circuits_1.circuitid
  limit 12)
UNION
(select  
    circuits_2.alt, 
    sum(
      circuits_2.lng), 
    circuits_2.location, 
    circuits_2.alt
  from 
    circuits as circuits_2
  where circuits_2.circuitid is not NULL
  limit 24);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    drivers_1.driverid, 
    drivers_1.driverref, 
    drivers_1.surname, 
    drivers_1.nationality, 
    drivers_1.dob
  from 
    drivers as drivers_1
  where drivers_1.dob > drivers_1.dob
  limit 16)
INTERSECT
(select  
    constructor_results_1.constructorid, 
    max(
      constructor_results_1.date), 
    max(
      constructor_results_1.date), 
    min(
      constructor_results_1.date), 
    constructor_results_1.date
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.raceid is not NULL
  limit 4);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.date, 
  constructors_1.constructorref
from 
  constructor_standings as constructor_standings_1
    inner join circuits as circuits_1
        inner join constructors as constructors_1
        on (circuits_1.circuitid = constructors_1.constructorid )
      inner join races as races_1
      on (circuits_1.circuitid = races_1.raceid )
    on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
where circuits_1.location > races_1.name
limit 3;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    races_1.date, 
    races_1.time, 
    min(
      races_1.raceid), 
    races_1.name, 
    races_1.round, 
    count(
      races_1.circuitid), 
    max(
      races_1.round), 
    races_1.raceid
  from 
    races as races_1
  where races_1.name > races_1.time
  group by races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time
  limit 3)
INTERSECT
(select  
    results_1.date, 
    constructors_1.nationality, 
    count(
      results_1.laps), 
    constructors_1.name, 
    min(
      results_1.rank), 
    max(
      results_1.statusid), 
    min(
      constructors_1.constructorid), 
    results_1.constructorid
  from 
    results as results_1
      inner join constructors as constructors_1
      on (results_1.resultid = constructors_1.constructorid )
  where results_1.milliseconds is not NULL
  limit 11);
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorstandingsid, 
  drivers_1.code, 
  constructors_2.name, 
  constructor_standings_1.position, 
  drivers_1.driverref, 
  constructors_3.name, 
  constructors_2.nationality
from 
  constructors as constructors_1
      inner join constructors as constructors_2
      on (constructors_1.constructorid = constructors_2.constructorid )
    inner join drivers as drivers_1
      inner join constructor_standings as constructor_standings_1
        inner join constructors as constructors_3
        on (constructor_standings_1.constructorstandingsid = constructors_3.constructorid )
      on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
    on (constructors_2.constructorid = drivers_1.driverid )
where constructors_1.nationality is not NULL
limit 37;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    avg(
      races_1.round), 
    constructors_1.constructorref, 
    races_1.name, 
    max(
      races_1.raceid)
  from 
    races as races_1
        inner join constructors as constructors_1
        on (races_1.raceid = constructors_1.constructorid )
      inner join results as results_1
      on (constructors_1.constructorid = results_1.resultid )
  where constructors_1.constructorref is not NULL
  group by constructors_1.constructorref, races_1.name
  limit 25)
EXCEPT
(select  
    avg(
      results_2.driverid), 
    max(
      results_2.date), 
    min(
      results_2.positionorder), 
    count(
      results_2.date)
  from 
    results as results_2
  where results_2.resultid is not NULL
  limit 19);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    results_1.grid, 
    sum(
      results_1.position), 
    results_1.positionorder, 
    results_1.laps, 
    results_1.raceid, 
    results_1.position
  from 
    results as results_1
  where results_1.laps is not NULL
  group by results_1.grid, results_1.laps, results_1.position, results_1.positionorder, results_1.raceid
  limit 38)
UNION
(select  
    constructor_results_1.constructorresultsid, 
    min(
      constructor_results_1.points), 
    constructor_results_1.constructorid, 
    constructor_results_1.constructorresultsid, 
    constructor_results_1.raceid, 
    constructor_results_1.points
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.date is not NULL
  group by constructor_results_1.constructorid
  limit 12);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.nationality, 
  count(*), 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.constructorid, constructors_1.name, constructors_1.nationality
limit 24;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructors_1.constructorref
  from 
    constructors as constructors_1
  where constructors_1.name is not NULL
  limit 30)
EXCEPT
(select  
    min(
      qualifying_1.date)
  from 
    qualifying as qualifying_1
  where qualifying_1.date = qualifying_1.date
  limit 33);
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  max(
    constructor_results_1.points), 
  races_1.name, 
  constructors_1.constructorref, 
  constructors_1.name, 
  standings_1.raceid, 
  standings_1.date
from 
  races as races_1
      inner join constructor_results as constructor_results_1
      on (races_1.raceid = constructor_results_1.constructorresultsid )
    inner join standings as standings_1
      inner join constructors as constructors_1
      on (standings_1.driverstandingsid = constructors_1.constructorid )
    on (races_1.raceid = constructors_1.constructorid )
where races_1.time < races_1.name
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, races_1.name, standings_1.date, standings_1.raceid
limit 25;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    qualifying_1.number, 
    qualifying_1.qualifyid
  from 
    qualifying as qualifying_1
  where qualifying_1.date is not NULL
  limit 15)
EXCEPT
(select  
    races_1.circuitid, 
    races_1.round
  from 
    races as races_1
  where races_1.circuitid is not NULL
  limit 3);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructors_1.name, 
    constructors_1.constructorid, 
    constructors_1.constructorref
  from 
    constructors as constructors_1
  where constructors_1.constructorref is not NULL
  limit 7)
EXCEPT
(select  
    max(
      standings_1.date), 
    standings_1.driverid, 
    avg(
      standings_1.raceid)
  from 
    standings as standings_1
      inner join standings as standings_2
      on (standings_1.driverstandingsid = standings_2.driverstandingsid )
  where standings_2.driverstandingsid > standings_1.raceid
  group by standings_1.driverid, standings_1.driverstandingsid, standings_2.date, standings_2.driverid, standings_2.points, standings_2.position, standings_2.wins
  limit 32);
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    drivers_1.driverid, 
    count(*)
  from 
    drivers as drivers_1
        inner join races as races_1
        on (drivers_1.driverid = races_1.raceid )
      inner join standings as standings_1
        inner join circuits as circuits_1
        on (standings_1.driverstandingsid = circuits_1.circuitid )
      on (races_1.raceid = standings_1.driverstandingsid )
  where circuits_1.name is not NULL
  group by drivers_1.driverid
  limit 40)
INTERSECT
(select  
    constructor_results_1.constructorresultsid, 
    max(
      constructor_results_1.raceid)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorid is not NULL
  group by constructor_results_1.points, constructor_results_1.raceid
  limit 18);
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    max(
      drivers_1.dob), 
    constructors_1.constructorref
  from 
    constructors as constructors_1
      inner join standings as standings_1
        inner join drivers as drivers_1
        on (standings_1.driverstandingsid = drivers_1.driverid )
      on (constructors_1.constructorid = drivers_1.driverid )
  where constructors_1.constructorref is not NULL
  group by constructors_1.constructorref
  limit 24)
EXCEPT
(select  
    min(
      races_1.date), 
    races_1.time
  from 
    races as races_1
  where races_1.round is not NULL
  group by races_1.circuitid
  limit 7);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_standings_1.constructorstandingsid
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.wins is not NULL
  limit 29)
INTERSECT
(select  
    races_1.round
  from 
    races as races_1
  where races_1.round is not NULL
  group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.time, races_1.year
  limit 36);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name, 
  circuits_1.lat, 
  circuits_1.circuitref, 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.location is not NULL
limit 29;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    qualifying_1.driverid, 
    qualifying_1.date, 
    qualifying_1.qualifyid, 
    sum(
      qualifying_1.constructorid), 
    qualifying_1.raceid
  from 
    qualifying as qualifying_1
      inner join standings as standings_1
      on (qualifying_1.qualifyid = standings_1.driverstandingsid )
  where qualifying_1.raceid is not NULL
  group by qualifying_1.date, qualifying_1.driverid, qualifying_1.qualifyid, qualifying_1.raceid
  limit 11)
EXCEPT
(select  
    constructors_1.constructorid, 
    count(*), 
    avg(
      constructors_1.constructorid), 
    sum(
      constructors_1.constructorid), 
    constructors_1.constructorid
  from 
    constructors as constructors_1
  where constructors_1.name is not NULL
  group by constructors_1.constructorid, constructors_1.nationality
  limit 20);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructors_1.constructorid, 
    constructors_1.nationality, 
    constructors_1.name, 
    count(
      constructors_1.nationality), 
    constructors_1.constructorref
  from 
    constructors as constructors_1
  where constructors_1.name is not NULL
  group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
  limit 34)
UNION
(select  
    standings_1.wins, 
    sum(
      standings_1.driverid), 
    min(
      standings_1.points), 
    count(
      standings_1.points), 
    max(
      standings_1.points)
  from 
    standings as standings_1
  where standings_1.points >= standings_1.points
  group by standings_1.driverid, standings_1.driverstandingsid, standings_1.position
  limit 42);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    races_1.year
  from 
    races as races_1
      inner join results as results_1
      on (races_1.raceid = results_1.resultid )
  where results_1.grid is not NULL
  limit 25)
EXCEPT
(select  
    min(
      standings_1.points)
  from 
    standings as standings_1
  where standings_1.points is not NULL
  limit 10);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_results_1.constructorid, 
    constructor_results_1.points, 
    constructor_results_1.raceid, 
    sum(
      constructor_results_1.points), 
    constructor_results_1.date, 
    count(
      constructor_results_1.constructorresultsid)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorid is not NULL
  group by constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
  limit 25)
INTERSECT
(select  
    constructor_results_2.constructorresultsid, 
    constructor_results_2.points, 
    constructor_results_2.constructorresultsid, 
    min(
      constructor_results_2.points), 
    constructor_results_2.date, 
    max(
      constructor_results_2.raceid)
  from 
    constructor_results as constructor_results_2
  where constructor_results_2.raceid is not NULL
  group by constructor_results_2.constructorresultsid
  limit 25);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    circuits_1.name, 
    circuits_1.alt, 
    circuits_1.lng
  from 
    circuits as circuits_1
  where circuits_1.country is not NULL
  limit 5)
EXCEPT
(select  
    races_1.time, 
    standings_1.points, 
    min(
      standings_1.points)
  from 
    races as races_1
        inner join standings as standings_1
        on (races_1.raceid = standings_1.driverstandingsid )
      inner join constructors as constructors_1
      on (races_1.raceid = constructors_1.constructorid )
  where standings_1.driverstandingsid is not NULL
  limit 9);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_results_1.constructorresultsid, 
    max(
      constructor_results_1.points)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.points <= constructor_results_1.points
  group by constructor_results_1.constructorresultsid
  limit 7)
EXCEPT
(select  
    constructor_results_2.constructorresultsid, 
    avg(
      constructor_results_2.points)
  from 
    constructor_results as constructor_results_2
  where constructor_results_2.constructorresultsid is not NULL
  group by constructor_results_2.points
  limit 18);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    results_1.number
  from 
    results as results_1
  where results_1.date >= results_1.date
  limit 13)
EXCEPT
(select  
    results_2.rank
  from 
    results as results_2
  where results_2.grid is not NULL
  limit 18);
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    qualifying_1.constructorid, 
    qualifying_1.date, 
    constructors_1.constructorid
  from 
    constructor_standings as constructor_standings_1
          inner join qualifying as qualifying_1
          on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
        inner join circuits as circuits_1
          inner join circuits as circuits_2
          on (circuits_1.circuitid = circuits_2.circuitid )
        on (qualifying_1.qualifyid = circuits_2.circuitid )
      inner join constructors as constructors_1
      on (circuits_1.circuitid = constructors_1.constructorid )
  where qualifying_1.constructorid is not NULL
  limit 16)
INTERSECT
(select  
    standings_1.raceid, 
    standings_1.date, 
    standings_1.position
  from 
    standings as standings_1
  where standings_1.driverstandingsid is not NULL
  limit 7);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    sum(
      constructors_1.constructorid), 
    constructors_1.nationality, 
    min(
      constructors_1.constructorid), 
    constructors_1.name, 
    constructors_1.constructorref
  from 
    constructors as constructors_1
  where constructors_1.constructorid is not NULL
  group by constructors_1.constructorref, constructors_1.name, constructors_1.nationality
  limit 37)
INTERSECT
(select  
    sum(
      drivers_1.driverid), 
    drivers_1.surname, 
    min(
      drivers_1.driverid), 
    drivers_1.code, 
    drivers_1.driverref
  from 
    drivers as drivers_1
  where drivers_1.dob = drivers_1.dob
  limit 26);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    standings_1.driverid
  from 
    standings as standings_1
  where standings_1.raceid is not NULL
  limit 10)
UNION
(select  
    sum(
      constructor_standings_1.points)
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.constructorid is not NULL
  limit 40);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_results_1.raceid, 
    constructor_results_1.constructorid
  from 
    constructor_results as constructor_results_1
      inner join qualifying as qualifying_1
      on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
  where constructor_results_1.points <= constructor_results_1.points
  limit 27)
UNION
(select  
    constructor_results_2.raceid, 
    constructor_standings_1.raceid
  from 
    constructor_results as constructor_results_2
      inner join constructor_standings as constructor_standings_1
      on (constructor_results_2.constructorresultsid = constructor_standings_1.constructorstandingsid )
  where constructor_standings_1.constructorid is not NULL
  limit 27);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    qualifying_1.constructorid, 
    qualifying_1.position, 
    qualifying_1.number
  from 
    qualifying as qualifying_1
  where qualifying_1.position is not NULL
  limit 2)
UNION
(select  
    max(
      standings_1.date), 
    standings_1.raceid, 
    standings_1.raceid
  from 
    standings as standings_1
  where standings_1.points is not NULL
  limit 7);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    standings_1.raceid, 
    standings_1.driverstandingsid
  from 
    standings as standings_1
  where standings_1.driverid is not NULL
  limit 15)
UNION
(select  
    qualifying_1.position, 
    qualifying_1.qualifyid
  from 
    races as races_1
      inner join qualifying as qualifying_1
      on (races_1.raceid = qualifying_1.qualifyid )
  where races_1.date is not NULL
  limit 24);
-- meta {"num_joins":3,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    qualifying_1.driverid, 
    max(
      qualifying_1.constructorid), 
    min(
      qualifying_1.qualifyid), 
    circuits_1.name, 
    qualifying_1.raceid, 
    qualifying_1.position, 
    max(
      circuits_1.lng), 
    circuits_1.country, 
    circuits_1.alt, 
    sum(
      circuits_1.lng), 
    qualifying_1.constructorid, 
    qualifying_1.number
  from 
    qualifying as qualifying_1
      inner join circuits as circuits_1
      on (qualifying_1.qualifyid = circuits_1.circuitid )
  where circuits_1.circuitref < circuits_1.country
  group by circuits_1.alt, circuits_1.country, circuits_1.name, qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.raceid
  limit 35)
EXCEPT
(select  
    constructor_standings_1.position, 
    min(
      constructor_results_1.constructorid), 
    max(
      constructor_standings_1.constructorid), 
    circuits_2.name, 
    constructor_standings_1.constructorid, 
    circuits_2.circuitid, 
    sum(
      circuits_2.lng), 
    max(
      circuits_2.lng), 
    count(*), 
    min(
      circuits_2.lat), 
    min(
      circuits_2.alt), 
    circuits_2.circuitid
  from 
    constructor_results as constructor_results_1
        inner join circuits as circuits_2
        on (constructor_results_1.constructorresultsid = circuits_2.circuitid )
      inner join constructor_standings as constructor_standings_1
      on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
  where constructor_standings_1.constructorid is not NULL
  limit 3);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    races_1.date, 
    races_1.year, 
    min(
      races_1.date), 
    races_1.circuitid, 
    races_1.time, 
    max(
      races_1.raceid), 
    min(
      races_1.date)
  from 
    races as races_1
  where races_1.time <= races_1.name
  group by races_1.circuitid, races_1.date, races_1.time, races_1.year
  limit 36)
UNION
(select  
    qualifying_1.date, 
    qualifying_1.driverid, 
    max(
      qualifying_1.date), 
    qualifying_1.position, 
    min(
      qualifying_1.constructorid), 
    count(*), 
    max(
      qualifying_1.date)
  from 
    qualifying as qualifying_1
  where qualifying_1.raceid is not NULL
  limit 8);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 8;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    min(
      standings_1.date), 
    standings_1.driverid, 
    avg(
      standings_1.points), 
    standings_1.position, 
    standings_1.raceid, 
    count(
      standings_1.wins), 
    standings_1.points
  from 
    standings as standings_1
  where standings_1.driverid is not NULL
  group by standings_1.driverid, standings_1.points, standings_1.position, standings_1.raceid
  limit 13)
INTERSECT
(select  
    max(
      standings_2.date), 
    standings_2.driverstandingsid, 
    sum(
      standings_2.points), 
    standings_2.raceid, 
    standings_2.wins, 
    count(
      standings_2.wins), 
    standings_2.points
  from 
    standings as standings_2
  where standings_2.position >= standings_2.wins
  group by standings_2.driverid, standings_2.driverstandingsid, standings_2.points, standings_2.wins
  limit 21);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    results_1.laps, 
    results_1.statusid, 
    results_1.rank, 
    results_1.grid, 
    max(
      results_1.milliseconds)
  from 
    results as results_1
  where results_1.number is not NULL
  group by results_1.grid, results_1.laps, results_1.rank, results_1.statusid
  limit 7)
INTERSECT
(select  
    circuits_1.circuitid, 
    constructors_1.constructorid, 
    circuits_1.lng, 
    circuits_1.circuitid, 
    sum(
      circuits_1.alt)
  from 
    circuits as circuits_1
      inner join constructors as constructors_1
      on (circuits_1.circuitid = constructors_1.constructorid )
  where constructors_1.name <= circuits_1.circuitref
  limit 15);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    max(
      circuits_1.lat), 
    circuits_1.circuitid, 
    constructor_standings_1.constructorid
  from 
    circuits as circuits_1
      inner join constructor_standings as constructor_standings_1
      on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
  where constructor_standings_1.constructorid is not NULL
  group by circuits_1.circuitid, constructor_standings_1.constructorid
  limit 12)
EXCEPT
(select  
    max(
      constructor_standings_2.points), 
    constructor_standings_2.position, 
    constructor_standings_2.wins
  from 
    constructor_standings as constructor_standings_2
  where constructor_standings_2.constructorid is not NULL
  group by constructor_standings_2.date, constructor_standings_2.raceid
  limit 20);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    qualifying_1.raceid, 
    standings_1.date, 
    qualifying_1.driverid, 
    min(
      qualifying_1.date), 
    qualifying_1.date, 
    qualifying_1.position, 
    qualifying_1.constructorid
  from 
    qualifying as qualifying_1
      inner join standings as standings_1
      on (qualifying_1.qualifyid = standings_1.driverstandingsid )
  where qualifying_1.constructorid is not NULL
  group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.position, qualifying_1.raceid, standings_1.date
  limit 15)
INTERSECT
(select  
    results_1.driverid, 
    results_1.date, 
    results_1.grid, 
    min(
      results_1.date), 
    results_1.date, 
    results_1.resultid, 
    results_1.laps
  from 
    results as results_1
  where results_1.rank is not NULL
  limit 32);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.time, 
  drivers_1.nationality
from 
  drivers as drivers_1
    inner join constructors as constructors_1
        inner join races as races_1
        on (constructors_1.constructorid = races_1.raceid )
      inner join circuits as circuits_1
      on (constructors_1.constructorid = circuits_1.circuitid )
    on (drivers_1.driverid = circuits_1.circuitid )
where drivers_1.driverid is not NULL
limit 26;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    qualifying_1.number, 
    qualifying_1.position, 
    drivers_1.surname, 
    qualifying_1.date
  from 
    standings as standings_1
      inner join qualifying as qualifying_1
            inner join drivers as drivers_1
            on (qualifying_1.qualifyid = drivers_1.driverid )
          inner join drivers as drivers_2
          on (drivers_1.driverid = drivers_2.driverid )
        inner join qualifying as qualifying_2
        on (drivers_1.driverid = qualifying_2.qualifyid )
      on (standings_1.driverstandingsid = qualifying_1.qualifyid )
  where qualifying_1.date > drivers_2.dob
  limit 17)
INTERSECT
(select  
    standings_2.driverid, 
    standings_2.position, 
    max(
      standings_2.date), 
    standings_2.date
  from 
    standings as standings_2
  where standings_2.wins is not NULL
  limit 38);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    avg(
      circuits_1.lat), 
    circuits_1.circuitid
  from 
    circuits as circuits_1
  where circuits_1.circuitref is not NULL
  group by circuits_1.circuitid
  limit 33)
EXCEPT
(select  
    avg(
      constructor_results_1.points), 
    constructor_results_1.constructorresultsid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.date is not NULL
  group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
  limit 5);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    standings_1.driverid
  from 
    standings as standings_1
  where standings_1.driverstandingsid is not NULL
  limit 30)
EXCEPT
(select  
    qualifying_1.position
  from 
    qualifying as qualifying_1
  where qualifying_1.number < qualifying_1.position
  group by qualifying_1.constructorid, qualifying_1.position, qualifying_1.raceid
  limit 40);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select distinct 
    constructors_1.constructorref, 
    constructors_1.nationality, 
    constructors_1.name
  from 
    constructors as constructors_1
  where constructors_1.name is not NULL
  limit 30)
INTERSECT
(select  
    sum(
      qualifying_1.raceid), 
    max(
      qualifying_1.date), 
    max(
      constructor_results_1.points)
  from 
    constructor_results as constructor_results_1
      inner join qualifying as qualifying_1
      on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
  where qualifying_1.date >= constructor_results_1.date
  limit 2);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    circuits_1.lat, 
    circuits_1.alt
  from 
    circuits as circuits_1
  where circuits_1.lng is not NULL
  limit 14)
INTERSECT
(select  
    count(
      races_1.year), 
    count(*)
  from 
    races as races_1
  where races_1.time is not NULL
  limit 26);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    drivers_1.driverref, 
    drivers_1.forename, 
    drivers_1.code
  from 
    constructor_standings as constructor_standings_1
      inner join drivers as drivers_1
      on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
  where constructor_standings_1.points < constructor_standings_1.points
  limit 18)
UNION
(select  
    constructors_1.constructorref, 
    sum(
      constructor_results_1.constructorid), 
    constructors_1.name
  from 
    constructor_results as constructor_results_1
      inner join constructors as constructors_1
      on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
  where constructor_results_1.raceid is not NULL
  limit 31);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    results_1.grid
  from 
    results as results_1
  where results_1.constructorid is not NULL
  limit 15)
INTERSECT
(select  
    constructors_1.constructorid
  from 
    constructors as constructors_1
  where constructors_1.constructorref is not NULL
  limit 13);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    standings_1.wins, 
    max(
      standings_1.date), 
    standings_1.driverstandingsid, 
    standings_1.position, 
    standings_1.points, 
    standings_1.driverid
  from 
    standings as standings_1
  where standings_1.points is not NULL
  group by standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.wins
  limit 17)
UNION
(select  
    constructor_results_1.constructorid, 
    min(
      constructor_results_1.date), 
    constructor_results_1.constructorresultsid, 
    constructor_results_1.constructorresultsid, 
    constructor_results_1.points, 
    constructor_results_1.constructorid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.points < constructor_results_1.points
  group by constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
  limit 18);
-- meta {"num_joins":3,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_results_1.constructorresultsid, 
    constructors_1.constructorref
  from 
    constructor_standings as constructor_standings_1
      inner join constructors as constructors_1
        inner join constructor_results as constructor_results_1
        on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
      on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
  where constructor_results_1.raceid is not NULL
  limit 37)
INTERSECT
(select  
    constructor_results_2.constructorid, 
    circuits_1.location
  from 
    constructor_results as constructor_results_2
      inner join circuits as circuits_1
      on (constructor_results_2.constructorresultsid = circuits_1.circuitid )
  where constructor_results_2.date is not NULL
  group by circuits_1.alt, circuits_1.country, constructor_results_2.points
  limit 25);
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    drivers_1.dob, 
    drivers_1.surname
  from 
    qualifying as qualifying_1
        inner join constructor_results as constructor_results_1
        on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
      inner join drivers as drivers_1
          inner join constructor_standings as constructor_standings_1
          on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
        inner join constructor_standings as constructor_standings_2
        on (drivers_1.driverid = constructor_standings_2.constructorstandingsid )
      on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
  where drivers_1.driverref < drivers_1.code
  limit 17)
EXCEPT
(select  
    min(
      races_1.year), 
    max(
      races_1.round)
  from 
    races as races_1
  where races_1.year is not NULL
  limit 6);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    qualifying_1.date, 
    qualifying_1.position, 
    results_1.resultid, 
    results_1.fastestlap, 
    results_1.date
  from 
    results as results_1
      inner join qualifying as qualifying_1
      on (results_1.resultid = qualifying_1.qualifyid )
  where results_1.constructorid is not NULL
  limit 35)
INTERSECT
(select  
    constructor_results_1.date, 
    constructor_results_1.constructorid, 
    constructor_results_1.constructorid, 
    constructor_results_1.points, 
    constructor_results_1.date
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.date >= constructor_results_1.date
  limit 8);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_results_1.constructorresultsid
  from 
    constructor_standings as constructor_standings_1
          inner join constructor_results as constructor_results_1
          on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
        inner join circuits as circuits_1
        on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
      inner join races as races_1
      on (circuits_1.circuitid = races_1.raceid )
  where races_1.year is not NULL
  limit 25)
INTERSECT
(select  
    races_2.raceid
  from 
    races as races_2
  where races_2.round is not NULL
  limit 13);
-- meta {"num_joins":2,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    results_1.date, 
    qualifying_1.qualifyid
  from 
    constructor_results as constructor_results_1
      inner join results as results_1
        inner join qualifying as qualifying_1
        on (results_1.resultid = qualifying_1.qualifyid )
      on (constructor_results_1.constructorresultsid = results_1.resultid )
  where results_1.milliseconds = results_1.rank
  limit 3)
UNION
(select  
    count(
      circuits_1.name), 
    circuits_1.circuitid
  from 
    circuits as circuits_1
  where circuits_1.lat is not NULL
  group by circuits_1.alt, circuits_1.circuitid, circuits_1.country
  limit 23);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_results_1.constructorresultsid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.raceid is not NULL
  limit 19)
EXCEPT
(select  
    constructor_standings_1.raceid
  from 
    circuits as circuits_1
      inner join constructor_standings as constructor_standings_1
      on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
  where constructor_standings_1.date <= constructor_standings_1.date
  limit 27);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location, 
  results_1.milliseconds
from 
  circuits as circuits_1
    inner join results as results_1
    on (circuits_1.circuitid = results_1.resultid )
where results_1.resultid > results_1.laps
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.raceid, 
  min(
    qualifying_1.date), 
  qualifying_1.position, 
  qualifying_1.constructorid, 
  qualifying_1.date, 
  qualifying_1.driverid, 
  sum(
    qualifying_1.number)
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.position, qualifying_1.raceid
limit 22;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.statusid, 
  max(
    results_1.date), 
  max(
    results_1.constructorid), 
  results_1.resultid, 
  results_1.grid
from 
  results as results_1
where results_1.resultid is not NULL
group by results_1.grid, results_1.resultid, results_1.statusid
limit 29;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    drivers_1.driverref
  from 
    drivers as drivers_1
  where drivers_1.dob > drivers_1.dob
  limit 31)
INTERSECT
(select  
    races_1.name
  from 
    races as races_1
  where races_1.year is not NULL
  limit 25);
-- meta {"num_joins":2,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    races_1.round, 
    races_1.year, 
    max(
      races_1.raceid), 
    avg(
      races_1.round), 
    races_1.name, 
    races_1.circuitid
  from 
    races as races_1
  where races_1.year is not NULL
  group by races_1.circuitid, races_1.name, races_1.round, races_1.year
  limit 4)
UNION
(select  
    constructor_results_1.constructorresultsid, 
    constructor_results_1.raceid, 
    count(
      constructors_2.constructorref), 
    avg(
      constructor_results_1.raceid), 
    constructors_2.name, 
    constructors_2.constructorid
  from 
    constructor_results as constructor_results_1
      inner join constructors as constructors_1
        inner join constructors as constructors_2
        on (constructors_1.constructorid = constructors_2.constructorid )
      on (constructor_results_1.constructorresultsid = constructors_2.constructorid )
  where constructors_1.nationality is not NULL
  group by constructor_results_1.date, constructors_1.name, constructors_2.constructorid, constructors_2.constructorref, constructors_2.nationality
  limit 22);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    min(
      results_1.date), 
    results_1.statusid, 
    count(
      results_1.fastestlap), 
    results_1.constructorid, 
    results_1.points
  from 
    results as results_1
  where results_1.number = results_1.milliseconds
  group by results_1.constructorid, results_1.points, results_1.statusid
  limit 23)
EXCEPT
(select  
    max(
      races_1.date), 
    avg(
      races_1.year), 
    min(
      races_1.year), 
    min(
      races_1.date), 
    min(
      races_1.year)
  from 
    races as races_1
  where races_1.date is not NULL
  limit 34);
-- meta {"num_joins":0,"num_aggregates":6,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    drivers_1.dob, 
    max(
      drivers_1.dob), 
    max(
      drivers_1.dob), 
    count(*)
  from 
    drivers as drivers_1
  where drivers_1.forename is not NULL
  group by drivers_1.dob
  limit 29)
INTERSECT
(select  
    standings_1.date, 
    min(
      standings_1.date), 
    min(
      standings_1.date), 
    count(*)
  from 
    standings as standings_1
  where standings_1.date is not NULL
  group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.position, standings_1.raceid, standings_1.wins
  limit 23);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    drivers_1.nationality, 
    drivers_1.surname, 
    drivers_1.dob, 
    drivers_1.forename
  from 
    drivers as drivers_1
  where drivers_1.code is not NULL
  limit 25)
UNION
(select  
    races_1.name, 
    races_1.name, 
    races_1.date, 
    max(
      constructor_standings_1.raceid)
  from 
    races as races_1
      inner join constructor_standings as constructor_standings_1
      on (races_1.raceid = constructor_standings_1.constructorstandingsid )
  where races_1.round is not NULL
  group by constructor_standings_1.date, constructor_standings_1.position
  limit 10);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    avg(
      drivers_1.driverid), 
    drivers_1.driverid, 
    sum(
      drivers_1.driverid), 
    drivers_1.dob, 
    min(
      drivers_1.driverid), 
    drivers_1.nationality
  from 
    drivers as drivers_1
  where drivers_1.dob is not NULL
  group by drivers_1.dob, drivers_1.driverid, drivers_1.nationality
  limit 14)
EXCEPT
(select  
    avg(
      qualifying_1.driverid), 
    qualifying_1.raceid, 
    avg(
      qualifying_1.raceid), 
    qualifying_1.date, 
    count(
      qualifying_1.driverid), 
    min(
      qualifying_1.date)
  from 
    qualifying as qualifying_1
  where qualifying_1.driverid is not NULL
  limit 7);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    qualifying_1.constructorid, 
    qualifying_1.date, 
    constructors_1.nationality, 
    count(
      constructors_1.constructorid)
  from 
    qualifying as qualifying_1
      inner join constructors as constructors_1
      on (qualifying_1.qualifyid = constructors_1.constructorid )
  where constructors_1.constructorref is not NULL
  group by constructors_1.nationality, qualifying_1.constructorid, qualifying_1.date
  limit 34)
INTERSECT
(select  
    results_1.constructorid, 
    max(
      results_1.date), 
    max(
      results_1.constructorid), 
    count(*)
  from 
    results as results_1
  where results_1.constructorid is not NULL
  limit 13);
-- meta {"num_joins":3,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_standings_1.points
  from 
    results as results_1
          inner join constructor_results as constructor_results_1
          on (results_1.resultid = constructor_results_1.constructorresultsid )
        inner join constructor_standings as constructor_standings_1
        on (results_1.resultid = constructor_standings_1.constructorstandingsid )
      inner join constructor_results as constructor_results_2
      on (constructor_standings_1.constructorstandingsid = constructor_results_2.constructorresultsid )
  where constructor_standings_1.wins > constructor_standings_1.position
  limit 14)
UNION
(select  
    circuits_1.alt
  from 
    circuits as circuits_1
  where circuits_1.lat is not NULL
  group by circuits_1.circuitref, circuits_1.country, circuits_1.lng, circuits_1.name
  limit 20);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.fastestlap, 
  results_1.raceid, 
  results_1.date
from 
  constructors as constructors_1
    inner join results as results_1
    on (constructors_1.constructorid = results_1.resultid )
where results_1.date is not NULL
limit 4;
-- meta {"num_joins":2,"num_aggregates":5,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructors_1.constructorid
  from 
    constructors as constructors_1
      inner join qualifying as qualifying_1
      on (constructors_1.constructorid = qualifying_1.qualifyid )
  where qualifying_1.date >= qualifying_1.date
  limit 32)
INTERSECT
(select  
    qualifying_2.raceid
  from 
    standings as standings_1
      inner join qualifying as qualifying_2
      on (standings_1.driverstandingsid = qualifying_2.qualifyid )
  where qualifying_2.constructorid is not NULL
  group by qualifying_2.constructorid, qualifying_2.date, qualifying_2.driverid, qualifying_2.number, qualifying_2.raceid, standings_1.driverid, standings_1.position
  limit 9);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    qualifying_1.raceid
  from 
    qualifying as qualifying_1
      inner join qualifying as qualifying_2
      on (qualifying_1.qualifyid = qualifying_2.qualifyid )
  where qualifying_2.position is not NULL
  limit 16)
INTERSECT
(select  
    constructors_1.constructorid
  from 
    constructors as constructors_1
  where constructors_1.constructorref is not NULL
  group by constructors_1.constructorref
  limit 31);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins, 
  standings_1.points, 
  standings_1.position, 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.wins is not NULL
limit 15;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    sum(
      standings_1.driverstandingsid)
  from 
    standings as standings_1
  where standings_1.wins is not NULL
  limit 39)
UNION
(select  
    sum(
      standings_2.position)
  from 
    standings as standings_2
  where standings_2.date < standings_2.date
  limit 39);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  min(
    constructor_results_1.points), 
  constructor_results_1.constructorresultsid, 
  max(
    constructor_results_1.raceid), 
  constructor_results_1.points, 
  max(
    constructor_results_1.date), 
  max(
    constructor_results_1.date)
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 15;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    races_1.time, 
    count(
      races_1.name), 
    races_1.name, 
    races_1.date, 
    min(
      races_1.date), 
    races_1.raceid, 
    max(
      races_1.date)
  from 
    races as races_1
  where races_1.time is not NULL
  group by races_1.date, races_1.name, races_1.raceid, races_1.time
  limit 26)
UNION
(select  
    min(
      qualifying_1.position), 
    count(
      qualifying_1.qualifyid), 
    min(
      qualifying_1.date), 
    qualifying_1.date, 
    max(
      qualifying_1.date), 
    count(*), 
    min(
      qualifying_1.date)
  from 
    qualifying as qualifying_1
  where qualifying_1.qualifyid is not NULL
  limit 25);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_results_1.points
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.date >= constructor_results_1.date
  limit 36)
EXCEPT
(select  
    constructor_results_2.points
  from 
    constructor_results as constructor_results_2
      inner join drivers as drivers_1
      on (constructor_results_2.constructorresultsid = drivers_1.driverid )
  where constructor_results_2.points is not NULL
  group by constructor_results_2.constructorid, constructor_results_2.date, constructor_results_2.raceid, drivers_1.driverref, drivers_1.nationality
  limit 2);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_standings_1.date, 
    constructor_standings_1.constructorid, 
    min(
      constructor_standings_1.points)
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.constructorid is not NULL
  group by constructor_standings_1.constructorid, constructor_standings_1.date
  limit 42)
EXCEPT
(select  
    min(
      standings_1.points), 
    standings_1.wins, 
    sum(
      standings_1.points)
  from 
    standings as standings_1
  where standings_1.wins is not NULL
  group by standings_1.points, standings_1.raceid, standings_1.wins
  limit 2);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructors_1.nationality, 
    constructors_1.constructorref, 
    max(
      constructors_1.constructorid)
  from 
    constructors as constructors_1
  where constructors_1.constructorid is not NULL
  group by constructors_1.constructorref, constructors_1.nationality
  limit 23)
EXCEPT
(select  
    min(
      results_1.date), 
    max(
      results_1.date), 
    count(*)
  from 
    results as results_1
  where results_1.position is not NULL
  limit 34);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.round, 
  qualifying_1.date, 
  qualifying_1.driverid, 
  qualifying_1.number
from 
  races as races_1
    inner join qualifying as qualifying_1
    on (races_1.raceid = qualifying_1.qualifyid )
where races_1.date > qualifying_1.date
limit 2;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    qualifying_1.position, 
    standings_1.driverstandingsid, 
    standings_1.position, 
    qualifying_1.date
  from 
    standings as standings_1
      inner join qualifying as qualifying_1
      on (standings_1.driverstandingsid = qualifying_1.qualifyid )
  where qualifying_1.number is not NULL
  limit 37)
EXCEPT
(select  
    constructor_results_1.raceid, 
    constructor_results_1.constructorid, 
    min(
      constructor_results_1.points), 
    constructor_results_1.date
  from 
    constructors as constructors_1
      inner join constructor_results as constructor_results_1
      on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
  where constructors_1.constructorref > constructors_1.name
  limit 6);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_standings_1.date
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.points is not NULL
  limit 22)
UNION
(select  
    constructor_standings_2.date
  from 
    constructor_standings as constructor_standings_2
  where constructor_standings_2.position is not NULL
  group by constructor_standings_2.constructorstandingsid, constructor_standings_2.raceid
  limit 15);
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    standings_1.driverid, 
    count(*), 
    standings_1.wins, 
    standings_1.position, 
    qualifying_1.date, 
    sum(
      standings_1.points), 
    races_1.circuitid, 
    races_1.round, 
    qualifying_1.qualifyid, 
    sum(
      standings_1.points), 
    races_1.year, 
    standings_1.points, 
    qualifying_1.position, 
    qualifying_1.raceid, 
    standings_1.raceid, 
    races_1.date
  from 
    races as races_1
        inner join standings as standings_1
        on (races_1.raceid = standings_1.driverstandingsid )
      inner join qualifying as qualifying_1
      on (races_1.raceid = qualifying_1.qualifyid )
  where standings_1.driverstandingsid is not NULL
  group by qualifying_1.date, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid, races_1.circuitid, races_1.date, races_1.round, races_1.year, standings_1.driverid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
  limit 21)
EXCEPT
(select  
    results_1.driverid, 
    count(
      results_1.resultid), 
    results_1.grid, 
    results_1.driverid, 
    count(*), 
    max(
      results_1.position), 
    results_1.grid, 
    results_1.driverid, 
    results_1.statusid, 
    max(
      results_1.rank), 
    results_1.laps, 
    results_1.number, 
    results_1.laps, 
    count(*), 
    results_1.driverid, 
    results_1.date
  from 
    results as results_1
  where results_1.constructorid is not NULL
  limit 25);
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    qualifying_1.constructorid, 
    qualifying_1.date, 
    qualifying_1.driverid, 
    races_1.round, 
    qualifying_1.number, 
    races_1.date, 
    max(
      qualifying_1.date)
  from 
    drivers as drivers_1
        inner join qualifying as qualifying_1
        on (drivers_1.driverid = qualifying_1.qualifyid )
      inner join races as races_1
      on (qualifying_1.qualifyid = races_1.raceid )
  where drivers_1.code is not NULL
  group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, races_1.date, races_1.round
  limit 11)
INTERSECT
(select  
    qualifying_2.number, 
    standings_1.date, 
    circuits_1.circuitid, 
    qualifying_2.raceid, 
    qualifying_2.position, 
    standings_1.date, 
    min(
      qualifying_2.date)
  from 
    qualifying as qualifying_2
      inner join standings as standings_1
        inner join circuits as circuits_1
        on (standings_1.driverstandingsid = circuits_1.circuitid )
      on (qualifying_2.qualifyid = circuits_1.circuitid )
  where circuits_1.lng is not NULL
  limit 22);
-- meta {"num_joins":1,"num_aggregates":7,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    min(
      standings_1.date), 
    standings_1.raceid, 
    standings_1.points, 
    max(
      standings_1.wins), 
    standings_1.driverid, 
    max(
      standings_1.date), 
    standings_1.wins, 
    standings_1.date, 
    sum(
      standings_1.position), 
    standings_1.position, 
    standings_1.driverstandingsid, 
    min(
      standings_1.date)
  from 
    standings as standings_1
  where standings_1.driverid is not NULL
  group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
  limit 11)
UNION
(select  
    min(
      standings_2.date), 
    standings_2.driverid, 
    max(
      standings_2.date), 
    count(*), 
    standings_2.raceid, 
    min(
      standings_2.date), 
    standings_2.driverid, 
    standings_2.date, 
    avg(
      standings_2.wins), 
    standings_2.driverid, 
    standings_2.driverid, 
    max(
      standings_2.date)
  from 
    standings as standings_2
      inner join circuits as circuits_1
      on (standings_2.driverstandingsid = circuits_1.circuitid )
  where circuits_1.lng is not NULL
  group by circuits_1.alt, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.location, standings_2.date, standings_2.position, standings_2.raceid
  limit 29);
-- meta {"num_joins":2,"num_aggregates":8,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructors_2.constructorref, 
    max(
      constructors_2.constructorid), 
    count(
      qualifying_1.constructorid), 
    constructors_1.nationality, 
    min(
      qualifying_1.date), 
    max(
      constructors_1.constructorid), 
    max(
      qualifying_1.constructorid), 
    max(
      qualifying_1.date), 
    qualifying_1.position, 
    min(
      qualifying_1.date), 
    constructors_2.constructorid
  from 
    constructors as constructors_1
        inner join constructors as constructors_2
        on (constructors_1.constructorid = constructors_2.constructorid )
      inner join qualifying as qualifying_1
      on (constructors_1.constructorid = qualifying_1.qualifyid )
  where qualifying_1.position is not NULL
  group by constructors_1.nationality, constructors_2.constructorid, constructors_2.constructorref, qualifying_1.position
  limit 38)
INTERSECT
(select  
    max(
      qualifying_2.date), 
    count(*), 
    count(*), 
    min(
      qualifying_2.position), 
    min(
      qualifying_2.date), 
    count(
      qualifying_2.driverid), 
    count(*), 
    max(
      qualifying_2.date), 
    qualifying_2.position, 
    min(
      qualifying_2.date), 
    qualifying_2.position
  from 
    qualifying as qualifying_2
  where qualifying_2.date > qualifying_2.date
  group by qualifying_2.constructorid, qualifying_2.date, qualifying_2.raceid
  limit 37);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    constructors_1.constructorid), 
  constructors_1.name, 
  min(
    constructors_1.constructorid), 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.name, constructors_1.nationality
limit 13;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructors_1.name
  from 
    constructors as constructors_1
  where constructors_1.constructorref = constructors_1.nationality
  limit 8)
INTERSECT
(select  
    max(
      results_1.date)
  from 
    results as results_1
  where results_1.laps is not NULL
  group by results_1.date, results_1.resultid
  limit 35);
-- meta {"num_joins":2,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    drivers_1.driverid, 
    max(
      standings_1.date), 
    circuits_1.circuitid
  from 
    circuits as circuits_1
      inner join drivers as drivers_1
        inner join standings as standings_1
        on (drivers_1.driverid = standings_1.driverstandingsid )
      on (circuits_1.circuitid = standings_1.driverstandingsid )
  where standings_1.wins is not NULL
  group by circuits_1.circuitid, drivers_1.driverid
  limit 34)
UNION
(select  
    standings_2.driverid, 
    min(
      standings_2.date), 
    standings_2.driverstandingsid
  from 
    standings as standings_2
  where standings_2.points is not NULL
  group by standings_2.date, standings_2.wins
  limit 30);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid, 
  standings_1.points, 
  standings_1.position, 
  max(
    standings_1.position), 
  standings_1.date, 
  standings_1.wins
from 
  standings as standings_1
where standings_1.driverstandingsid < standings_1.position
group by standings_1.date, standings_1.driverid, standings_1.points, standings_1.position, standings_1.wins
limit 9;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    races_1.round, 
    races_1.year, 
    max(
      races_1.date), 
    races_1.raceid, 
    min(
      qualifying_1.constructorid), 
    races_1.circuitid, 
    qualifying_1.date
  from 
    races as races_1
      inner join qualifying as qualifying_1
      on (races_1.raceid = qualifying_1.qualifyid )
  where races_1.name is not NULL
  group by qualifying_1.date, races_1.circuitid, races_1.raceid, races_1.round, races_1.year
  limit 33)
INTERSECT
(select  
    results_1.constructorid, 
    results_1.statusid, 
    min(
      results_1.date), 
    results_1.positionorder, 
    min(
      results_1.resultid), 
    results_1.grid, 
    results_1.date
  from 
    results as results_1
  where results_1.rank = results_1.position
  limit 20);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  constructors_1.constructorid, 
  max(
    constructors_1.constructorid), 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality
limit 34;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    qualifying_3.number
  from 
    qualifying as qualifying_1
        inner join qualifying as qualifying_2
          inner join qualifying as qualifying_3
          on (qualifying_2.qualifyid = qualifying_3.qualifyid )
        on (qualifying_1.qualifyid = qualifying_2.qualifyid )
      inner join standings as standings_1
        inner join standings as standings_2
        on (standings_1.driverstandingsid = standings_2.driverstandingsid )
      on (qualifying_2.qualifyid = standings_1.driverstandingsid )
  where qualifying_3.constructorid > standings_1.wins
  limit 1)
INTERSECT
(select  
    max(
      standings_3.points)
  from 
    standings as standings_3
  where standings_3.points >= standings_3.points
  limit 40);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    min(
      races_1.date), 
    races_1.raceid, 
    races_1.circuitid, 
    races_1.name, 
    races_1.time, 
    races_1.round, 
    races_1.date
  from 
    races as races_1
  where races_1.date >= races_1.date
  group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time
  limit 7)
INTERSECT
(select  
    min(
      standings_1.date), 
    standings_1.driverstandingsid, 
    standings_1.position, 
    min(
      standings_1.date), 
    avg(
      standings_1.position), 
    standings_1.driverid, 
    standings_1.date
  from 
    standings as standings_1
  where standings_1.position is not NULL
  limit 36);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    count(
      constructors_1.constructorref), 
    constructors_1.constructorref, 
    min(
      constructors_1.constructorid)
  from 
    constructors as constructors_1
  where constructors_1.constructorref is not NULL
  group by constructors_1.constructorref
  limit 22)
UNION
(select  
    count(
      constructor_standings_1.raceid), 
    avg(
      constructor_standings_1.points), 
    count(*)
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.constructorstandingsid is not NULL
  group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position
  limit 39);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    qualifying_1.driverid, 
    qualifying_1.constructorid, 
    qualifying_1.position, 
    sum(
      qualifying_1.position), 
    qualifying_1.raceid, 
    qualifying_1.date
  from 
    qualifying as qualifying_1
  where qualifying_1.qualifyid is not NULL
  group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.position, qualifying_1.raceid
  limit 41)
EXCEPT
(select  
    standings_1.wins, 
    standings_1.position, 
    max(
      standings_1.date), 
    avg(
      standings_1.position), 
    max(
      standings_1.date), 
    standings_1.date
  from 
    standings as standings_1
  where standings_1.raceid is not NULL
  limit 13);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    circuits_1.country
  from 
    results as results_1
      inner join circuits as circuits_1
      on (results_1.resultid = circuits_1.circuitid )
  where circuits_1.circuitref is not NULL
  limit 26)
EXCEPT
(select  
    races_1.name
  from 
    races as races_1
      inner join standings as standings_1
      on (races_1.raceid = standings_1.driverstandingsid )
  where standings_1.position is not NULL
  limit 21);
-- meta {"num_joins":0,"num_aggregates":6,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    standings_1.position, 
    standings_1.date, 
    avg(
      standings_1.points), 
    standings_1.wins, 
    min(
      standings_1.points), 
    max(
      standings_1.points), 
    standings_1.raceid, 
    standings_1.driverstandingsid, 
    standings_1.points, 
    sum(
      standings_1.points), 
    sum(
      standings_1.wins)
  from 
    standings as standings_1
  where standings_1.date is not NULL
  group by standings_1.date, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
  limit 11)
INTERSECT
(select  
    constructor_results_1.raceid, 
    constructor_results_1.date, 
    max(
      constructor_results_1.points), 
    constructor_results_1.constructorresultsid, 
    max(
      constructor_results_1.points), 
    min(
      constructor_results_1.points), 
    constructor_results_1.raceid, 
    constructor_results_1.constructorresultsid, 
    constructor_results_1.points, 
    min(
      constructor_results_1.points), 
    sum(
      constructor_results_1.constructorresultsid)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorid is not NULL
  group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
  limit 16);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    results_1.fastestlap, 
    results_1.rank, 
    results_1.grid, 
    results_1.raceid
  from 
    results as results_1
  where results_1.position <= results_1.number
  limit 34)
UNION
(select  
    sum(
      races_1.year), 
    max(
      races_1.date), 
    races_1.year, 
    races_1.circuitid
  from 
    races as races_1
  where races_1.raceid is not NULL
  limit 19);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_results_1.constructorresultsid, 
    constructor_results_1.date, 
    constructor_results_1.points, 
    constructor_results_1.constructorid, 
    constructor_results_1.raceid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorresultsid is not NULL
  limit 40)
UNION
(select  
    results_1.grid, 
    results_1.date, 
    results_1.position, 
    results_1.statusid, 
    results_1.resultid
  from 
    results as results_1
      inner join drivers as drivers_1
        inner join constructors as constructors_1
        on (drivers_1.driverid = constructors_1.constructorid )
      on (results_1.resultid = constructors_1.constructorid )
  where constructors_1.constructorref is not NULL
  limit 18);
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    drivers_1.surname, 
    min(
      drivers_1.dob)
  from 
    standings as standings_1
      inner join drivers as drivers_1
      on (standings_1.driverstandingsid = drivers_1.driverid )
  where standings_1.position is not NULL
  group by drivers_1.surname
  limit 42)
INTERSECT
(select  
    races_1.time, 
    min(
      constructor_standings_1.date)
  from 
    constructor_standings as constructor_standings_1
        inner join races as races_1
        on (constructor_standings_1.constructorstandingsid = races_1.raceid )
      inner join constructors as constructors_1
      on (races_1.raceid = constructors_1.constructorid )
  where constructor_standings_1.points < constructor_standings_1.points
  group by constructor_standings_1.points, constructor_standings_1.position, constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, races_1.date, races_1.name, races_1.round, races_1.year
  limit 30);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.country, 
  circuits_1.name, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  min(
    constructor_results_1.date), 
  circuits_1.lng, 
  min(
    circuits_1.alt), 
  circuits_1.circuitref
from 
  constructor_results as constructor_results_1
    inner join circuits as circuits_1
    on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
where circuits_1.lng is not NULL
group by circuits_1.circuitref, circuits_1.country, circuits_1.lng, circuits_1.name, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 19;
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    circuits_1.lng, 
    min(
      circuits_1.lng), 
    sum(
      circuits_1.lat), 
    circuits_1.lat, 
    circuits_1.location, 
    circuits_1.circuitid, 
    circuits_1.circuitref
  from 
    circuits as circuits_1
  where circuits_1.lat is not NULL
  group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.lat, circuits_1.lng, circuits_1.location
  limit 16)
EXCEPT
(select  
    circuits_2.lat, 
    avg(
      circuits_2.lng), 
    min(
      circuits_2.alt), 
    circuits_2.alt, 
    max(
      qualifying_2.date), 
    qualifying_2.constructorid, 
    circuits_2.country
  from 
    constructors as constructors_1
        inner join qualifying as qualifying_1
          inner join qualifying as qualifying_2
          on (qualifying_1.qualifyid = qualifying_2.qualifyid )
        on (constructors_1.constructorid = qualifying_2.qualifyid )
      inner join circuits as circuits_2
      on (qualifying_1.qualifyid = circuits_2.circuitid )
  where qualifying_2.number <= circuits_2.circuitid
  limit 19);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    races_1.raceid
  from 
    races as races_1
      inner join qualifying as qualifying_1
      on (races_1.raceid = qualifying_1.qualifyid )
  where races_1.time is not NULL
  limit 20)
INTERSECT
(select  
    results_1.laps
  from 
    results as results_1
  where results_1.resultid is not NULL
  group by results_1.constructorid, results_1.fastestlap, results_1.grid, results_1.milliseconds, results_1.number, results_1.position, results_1.positionorder
  limit 24);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    races_1.raceid, 
    races_1.date, 
    max(
      constructor_results_1.date), 
    constructor_results_1.constructorresultsid
  from 
    races as races_1
      inner join constructor_results as constructor_results_1
      on (races_1.raceid = constructor_results_1.constructorresultsid )
  where races_1.round is not NULL
  group by constructor_results_1.constructorresultsid, races_1.date, races_1.raceid
  limit 18)
INTERSECT
(select  
    results_1.grid, 
    sum(
      results_1.grid), 
    max(
      results_1.date), 
    results_1.positionorder
  from 
    results as results_1
  where results_1.statusid < results_1.driverid
  limit 41);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructors_1.name
  from 
    constructors as constructors_1
  where constructors_1.nationality is not NULL
  limit 26)
UNION
(select  
    min(
      results_1.date)
  from 
    results as results_1
  where results_1.date > results_1.date
  limit 34);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_standings_1.points
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.wins >= constructor_standings_1.constructorstandingsid
  limit 1)
INTERSECT
(select  
    constructor_standings_2.points
  from 
    constructor_standings as constructor_standings_2
  where constructor_standings_2.date < constructor_standings_2.date
  group by constructor_standings_2.constructorid, constructor_standings_2.constructorstandingsid, constructor_standings_2.date, constructor_standings_2.points, constructor_standings_2.position, constructor_standings_2.raceid
  limit 39);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    drivers_1.driverid, 
    drivers_1.nationality, 
    drivers_1.dob, 
    drivers_1.forename
  from 
    drivers as drivers_1
  where drivers_1.driverid is not NULL
  limit 7)
INTERSECT
(select  
    qualifying_1.qualifyid, 
    max(
      qualifying_1.date), 
    count(*), 
    max(
      qualifying_1.date)
  from 
    qualifying as qualifying_1
  where qualifying_1.driverid is not NULL
  limit 32);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    standings_1.position
  from 
    standings as standings_1
  where standings_1.driverid is not NULL
  limit 37)
EXCEPT
(select  
    constructor_standings_1.constructorstandingsid
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.position is not NULL
  limit 19);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
limit 2;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    circuits_1.name, 
    standings_1.date, 
    standings_1.position, 
    circuits_1.circuitid, 
    count(*), 
    circuits_1.location, 
    circuits_1.lng
  from 
    standings as standings_1
      inner join circuits as circuits_1
      on (standings_1.driverstandingsid = circuits_1.circuitid )
  where standings_1.position is not NULL
  group by circuits_1.circuitid, circuits_1.lng, circuits_1.location, circuits_1.name, standings_1.date, standings_1.position
  limit 32)
INTERSECT
(select  
    circuits_2.circuitref, 
    count(*), 
    circuits_2.circuitid, 
    circuits_2.circuitid, 
    min(
      circuits_2.circuitid), 
    circuits_2.country, 
    count(*)
  from 
    circuits as circuits_2
  where circuits_2.alt is not NULL
  limit 7);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    races_1.time
  from 
    races as races_1
  where races_1.circuitid is not NULL
  limit 9)
INTERSECT
(select  
    min(
      constructor_results_1.date)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.date is not NULL
  limit 22);
-- meta {"num_joins":3,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    min(
      races_1.date)
  from 
    races as races_1
  where races_1.circuitid is not NULL
  limit 33)
UNION
(select  
    max(
      constructor_standings_1.date)
  from 
    circuits as circuits_1
        inner join constructor_standings as constructor_standings_1
          inner join circuits as circuits_2
          on (constructor_standings_1.constructorstandingsid = circuits_2.circuitid )
        on (circuits_1.circuitid = circuits_2.circuitid )
      inner join drivers as drivers_1
      on (circuits_2.circuitid = drivers_1.driverid )
  where drivers_1.driverid >= circuits_1.circuitid
  limit 29);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructors_1.constructorref
  from 
    constructors as constructors_1
  where constructors_1.constructorref is not NULL
  limit 7)
EXCEPT
(select  
    circuits_1.location
  from 
    constructor_results as constructor_results_1
      inner join circuits as circuits_1
      on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
  where circuits_1.country is not NULL
  group by constructor_results_1.raceid
  limit 6);
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    circuits_1.lat, 
    circuits_1.alt, 
    circuits_1.location, 
    sum(
      circuits_1.circuitid)
  from 
    circuits as circuits_1
  where circuits_1.lng is not NULL
  group by circuits_1.alt, circuits_1.lat, circuits_1.location
  limit 31)
EXCEPT
(select  
    results_1.fastestlap, 
    results_1.fastestlap, 
    max(
      standings_1.date), 
    sum(
      results_1.constructorid)
  from 
    standings as standings_1
      inner join results as results_1
      on (standings_1.driverstandingsid = results_1.resultid )
  where results_1.milliseconds = results_1.number
  group by results_1.grid, results_1.laps, standings_1.position
  limit 28);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    drivers_1.forename, 
    drivers_1.dob, 
    drivers_1.nationality, 
    drivers_1.code
  from 
    drivers as drivers_1
  where drivers_1.code is not NULL
  limit 11)
UNION
(select  
    count(
      races_1.time), 
    max(
      races_1.date), 
    races_1.name, 
    races_1.time
  from 
    races as races_1
  where races_1.name is not NULL
  limit 13);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    sum(
      circuits_1.lat)
  from 
    circuits as circuits_1
  where circuits_1.country is not NULL
  limit 17)
EXCEPT
(select  
    sum(
      constructor_results_1.points)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.date is not NULL
  group by constructor_results_1.raceid
  limit 31);
-- meta {"num_joins":1,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_results_1.raceid, 
    constructor_results_1.date
  from 
    drivers as drivers_1
      inner join constructor_results as constructor_results_1
      on (drivers_1.driverid = constructor_results_1.constructorresultsid )
  where constructor_results_1.constructorid is not NULL
  limit 13)
UNION
(select  
    qualifying_1.raceid, 
    qualifying_1.date
  from 
    qualifying as qualifying_1
  where qualifying_1.number = qualifying_1.constructorid
  group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
  limit 41);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select distinct 
    constructors_1.constructorref, 
    constructors_1.name
  from 
    constructors as constructors_1
  where constructors_1.nationality is not NULL
  limit 39)
INTERSECT
(select  
    sum(
      constructor_standings_1.position), 
    max(
      constructor_standings_1.date)
  from 
    constructor_results as constructor_results_1
      inner join constructor_standings as constructor_standings_1
      on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
  where constructor_results_1.date is not NULL
  limit 22);
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    results_1.driverid, 
    results_1.milliseconds
  from 
    circuits as circuits_1
        inner join results as results_1
          inner join qualifying as qualifying_1
          on (results_1.resultid = qualifying_1.qualifyid )
        on (circuits_1.circuitid = results_1.resultid )
      inner join constructor_standings as constructor_standings_1
      on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
  where circuits_1.name is not NULL
  limit 42)
INTERSECT
(select  
    constructor_standings_2.wins, 
    constructor_standings_2.points
  from 
    constructor_standings as constructor_standings_2
  where constructor_standings_2.date is not NULL
  group by constructor_standings_2.constructorstandingsid, constructor_standings_2.position
  limit 19);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    results_1.positionorder
  from 
    results as results_1
  where results_1.statusid is not NULL
  limit 40)
UNION
(select  
    constructors_1.constructorid
  from 
    constructors as constructors_1
  where constructors_1.constructorid is not NULL
  limit 39);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    qualifying_1.raceid, 
    avg(
      qualifying_1.driverid)
  from 
    qualifying as qualifying_1
      inner join results as results_1
      on (qualifying_1.qualifyid = results_1.resultid )
  where results_1.milliseconds > results_1.rank
  group by qualifying_1.raceid
  limit 19)
EXCEPT
(select  
    qualifying_2.raceid, 
    sum(
      qualifying_2.constructorid)
  from 
    qualifying as qualifying_2
  where qualifying_2.raceid is not NULL
  limit 1);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructors_1.name, 
    constructors_1.constructorref, 
    constructors_1.constructorid, 
    constructors_1.nationality
  from 
    constructors as constructors_1
  where constructors_1.name is not NULL
  limit 5)
UNION
(select  
    sum(
      qualifying_1.driverid), 
    count(*), 
    count(
      qualifying_1.qualifyid), 
    min(
      qualifying_1.date)
  from 
    qualifying as qualifying_1
  where qualifying_1.number is not NULL
  limit 11);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    races_1.round, 
    races_1.date, 
    races_1.raceid, 
    races_1.name, 
    races_1.year, 
    count(*), 
    races_1.circuitid, 
    min(
      races_1.date), 
    races_1.time
  from 
    races as races_1
  where races_1.date is not NULL
  group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year
  limit 25)
UNION
(select  
    races_2.raceid, 
    races_2.date, 
    races_2.year, 
    races_2.time, 
    races_2.round, 
    count(
      races_2.date), 
    max(
      races_2.round), 
    max(
      races_2.date), 
    races_2.time
  from 
    races as races_2
  where races_2.date = races_2.date
  limit 8);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructors_1.constructorid, 
    constructors_1.constructorref, 
    count(
      constructors_1.constructorid), 
    constructors_1.nationality
  from 
    constructors as constructors_1
  where constructors_1.name is not NULL
  group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality
  limit 40)
UNION
(select  
    standings_1.raceid, 
    sum(
      standings_1.raceid), 
    max(
      standings_1.position), 
    min(
      standings_1.date)
  from 
    standings as standings_1
  where standings_1.points is not NULL
  limit 32);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructors_1.constructorid, 
    constructors_1.nationality, 
    constructors_1.name, 
    sum(
      constructors_1.constructorid), 
    constructors_1.constructorref
  from 
    constructors as constructors_1
  where constructors_1.constructorref is not NULL
  group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
  limit 36)
UNION
(select  
    circuits_1.circuitid, 
    min(
      circuits_1.circuitid), 
    circuits_1.country, 
    sum(
      circuits_1.circuitid), 
    circuits_1.location
  from 
    circuits as circuits_1
  where circuits_1.country is not NULL
  limit 9);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_results_1.constructorid, 
    constructor_results_1.date
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorid is not NULL
  limit 23)
EXCEPT
(select  
    min(
      races_1.date), 
    races_1.date
  from 
    races as races_1
  where races_1.year is not NULL
  limit 14);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    races_1.time, 
    max(
      races_1.date), 
    min(
      races_1.circuitid), 
    races_1.name, 
    races_1.raceid, 
    races_1.date
  from 
    races as races_1
  where races_1.circuitid is not NULL
  group by races_1.date, races_1.name, races_1.raceid, races_1.time
  limit 25)
UNION
(select  
    max(
      results_1.position), 
    max(
      results_1.date), 
    max(
      results_1.constructorid), 
    max(
      results_1.raceid), 
    results_1.constructorid, 
    results_1.date
  from 
    results as results_1
  where results_1.driverid is not NULL
  group by results_1.grid, results_1.milliseconds, results_1.number, results_1.points, results_1.positionorder, results_1.statusid
  limit 15);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_standings_1.constructorstandingsid, 
    avg(
      constructor_standings_1.points)
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.position is not NULL
  group by constructor_standings_1.constructorstandingsid
  limit 30)
INTERSECT
(select  
    standings_1.driverid, 
    max(
      standings_1.points)
  from 
    standings as standings_1
  where standings_1.position > standings_1.wins
  group by standings_1.date, standings_1.points, standings_1.wins
  limit 41);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    max(
      qualifying_1.date)
  from 
    qualifying as qualifying_1
        inner join constructor_standings as constructor_standings_1
        on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
      inner join constructor_standings as constructor_standings_2
      on (qualifying_1.qualifyid = constructor_standings_2.constructorstandingsid )
  where constructor_standings_1.constructorid is not NULL
  limit 10)
UNION
(select  
    min(
      standings_1.date)
  from 
    standings as standings_1
  where standings_1.driverid is not NULL
  limit 14);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    races_1.round, 
    count(*)
  from 
    races as races_1
  where races_1.year is not NULL
  group by races_1.round
  limit 13)
INTERSECT
(select  
    constructor_results_1.constructorid, 
    count(
      constructor_results_1.date)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorresultsid is not NULL
  group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points
  limit 2);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    drivers_1.surname, 
    qualifying_1.position, 
    max(
      qualifying_1.date)
  from 
    drivers as drivers_1
      inner join qualifying as qualifying_1
      on (drivers_1.driverid = qualifying_1.qualifyid )
  where qualifying_1.date is not NULL
  group by drivers_1.surname, qualifying_1.position
  limit 3)
EXCEPT
(select  
    races_1.name, 
    max(
      races_1.date), 
    min(
      races_1.date)
  from 
    races as races_1
  where races_1.circuitid is not NULL
  limit 42);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    qualifying_1.number, 
    qualifying_1.constructorid
  from 
    qualifying as qualifying_1
  where qualifying_1.driverid is not NULL
  limit 32)
UNION
(select  
    results_1.grid, 
    results_1.statusid
  from 
    results as results_1
  where results_1.milliseconds is not NULL
  limit 18);
-- meta {"num_joins":2,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_standings_1.constructorid, 
    constructor_standings_1.wins, 
    constructor_standings_1.raceid, 
    constructor_standings_1.points
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.position is not NULL
  limit 9)
UNION
(select  
    constructor_standings_2.raceid, 
    constructor_standings_2.position, 
    constructor_standings_2.constructorid, 
    constructor_standings_2.points
  from 
    constructors as constructors_1
        inner join qualifying as qualifying_1
        on (constructors_1.constructorid = qualifying_1.qualifyid )
      inner join constructor_standings as constructor_standings_2
      on (qualifying_1.qualifyid = constructor_standings_2.constructorstandingsid )
  where constructor_standings_2.points <= constructor_standings_2.points
  group by constructors_1.constructorid, qualifying_1.qualifyid
  limit 39);
-- meta {"num_joins":0,"num_aggregates":7,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_results_1.points, 
    max(
      constructor_results_1.date), 
    count(
      constructor_results_1.date), 
    constructor_results_1.raceid, 
    constructor_results_1.date, 
    avg(
      constructor_results_1.points), 
    count(
      constructor_results_1.raceid), 
    min(
      constructor_results_1.constructorresultsid), 
    constructor_results_1.constructorid, 
    constructor_results_1.constructorresultsid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.date is not NULL
  group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
  limit 39)
INTERSECT
(select  
    standings_1.points, 
    max(
      standings_1.date), 
    count(*), 
    standings_1.wins, 
    standings_1.date, 
    min(
      standings_1.points), 
    max(
      standings_1.wins), 
    count(*), 
    standings_1.driverstandingsid, 
    standings_1.driverstandingsid
  from 
    standings as standings_1
  where standings_1.date = standings_1.date
  group by standings_1.raceid, standings_1.wins
  limit 15);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    drivers_1.driverref
  from 
    drivers as drivers_1
      inner join qualifying as qualifying_1
      on (drivers_1.driverid = qualifying_1.qualifyid )
  where qualifying_1.constructorid is not NULL
  limit 12)
INTERSECT
(select  
    sum(
      standings_2.position)
  from 
    standings as standings_1
      inner join standings as standings_2
      on (standings_1.driverstandingsid = standings_2.driverstandingsid )
  where standings_2.date <= standings_1.date
  group by standings_1.points, standings_1.position, standings_1.raceid, standings_2.date, standings_2.driverid, standings_2.driverstandingsid, standings_2.position
  limit 14);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    circuits_1.circuitid
  from 
    circuits as circuits_1
  where circuits_1.circuitref is not NULL
  limit 39)
EXCEPT
(select  
    constructor_standings_1.raceid
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.constructorid >= constructor_standings_1.raceid
  limit 39);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_results_1.constructorresultsid, 
    constructor_results_1.date
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorresultsid is not NULL
  limit 34)
EXCEPT
(select  
    standings_1.position, 
    count(
      standings_1.driverid)
  from 
    standings as standings_1
  where standings_1.date < standings_1.date
  group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.raceid
  limit 3);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    standings_1.driverid
  from 
    drivers as drivers_1
      inner join standings as standings_1
      on (drivers_1.driverid = standings_1.driverstandingsid )
  where standings_1.wins is not NULL
  limit 19)
EXCEPT
(select  
    constructors_1.constructorid
  from 
    constructors as constructors_1
  where constructors_1.name is not NULL
  limit 19);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    max(
      qualifying_1.raceid), 
    qualifying_1.position, 
    qualifying_1.raceid, 
    qualifying_1.date, 
    qualifying_1.constructorid, 
    qualifying_1.driverid, 
    sum(
      qualifying_1.number), 
    qualifying_1.number, 
    qualifying_1.qualifyid
  from 
    qualifying as qualifying_1
  where qualifying_1.raceid is not NULL
  group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
  limit 18)
EXCEPT
(select  
    max(
      constructors_1.constructorid), 
    min(
      constructors_1.constructorid), 
    constructors_1.constructorid, 
    avg(
      constructors_1.constructorid), 
    constructors_1.constructorid, 
    constructors_1.constructorid, 
    sum(
      constructors_1.constructorid), 
    constructors_1.constructorid, 
    constructors_1.constructorid
  from 
    constructors as constructors_1
  where constructors_1.nationality is not NULL
  group by constructors_1.constructorid, constructors_1.name, constructors_1.nationality
  limit 25);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  standings_1.raceid, 
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  standings_1.points, 
  standings_1.position
from 
  standings as standings_1
where standings_1.raceid is not NULL
group by standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid
limit 23;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructors_1.constructorref, 
    min(
      constructors_1.constructorid)
  from 
    constructors as constructors_1
  where constructors_1.constructorref is not NULL
  group by constructors_1.constructorref
  limit 3)
UNION
(select  
    max(
      constructor_results_1.date), 
    count(
      constructor_results_1.date)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.date is not NULL
  limit 13);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    circuits_1.circuitref, 
    results_1.fastestlap, 
    results_1.number, 
    circuits_1.country, 
    results_1.points
  from 
    results as results_1
      inner join circuits as circuits_1
      on (results_1.resultid = circuits_1.circuitid )
  where circuits_1.lng is not NULL
  limit 24)
EXCEPT
(select  
    sum(
      constructor_results_1.points), 
    constructor_results_1.points, 
    constructor_results_1.points, 
    min(
      constructor_results_1.constructorresultsid), 
    constructor_results_1.points
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.raceid is not NULL
  group by constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
  limit 25);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    races_1.circuitid, 
    races_1.time, 
    avg(
      races_1.year)
  from 
    races as races_1
  where races_1.raceid is not NULL
  group by races_1.circuitid, races_1.time
  limit 4)
INTERSECT
(select  
    constructor_results_1.constructorid, 
    max(
      constructor_results_1.date), 
    avg(
      constructor_results_1.constructorid)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.date < constructor_results_1.date
  limit 20);
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_2.raceid, 
  max(
    constructor_results_2.points), 
  races_1.date, 
  drivers_1.forename, 
  races_1.time
from 
  constructor_results as constructor_results_1
      inner join constructor_results as constructor_results_2
      on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
    inner join races as races_1
      inner join drivers as drivers_1
      on (races_1.raceid = drivers_1.driverid )
    on (constructor_results_1.constructorresultsid = races_1.raceid )
where constructor_results_2.points is not NULL
group by constructor_results_2.raceid, drivers_1.forename, races_1.date, races_1.time
limit 21;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    results_1.grid, 
    results_1.positionorder, 
    count(*), 
    results_1.date, 
    results_1.rank, 
    results_1.position, 
    results_1.constructorid, 
    results_1.points, 
    results_1.driverid
  from 
    results as results_1
  where results_1.position = results_1.rank
  group by results_1.constructorid, results_1.date, results_1.driverid, results_1.grid, results_1.points, results_1.position, results_1.positionorder, results_1.rank
  limit 38)
INTERSECT
(select  
    drivers_1.driverid, 
    drivers_2.driverid, 
    min(
      drivers_1.driverid), 
    drivers_1.dob, 
    min(
      drivers_2.dob), 
    avg(
      drivers_2.driverid), 
    drivers_2.driverid, 
    max(
      drivers_1.driverid), 
    drivers_1.driverid
  from 
    drivers as drivers_1
      inner join drivers as drivers_2
      on (drivers_1.driverid = drivers_2.driverid )
  where drivers_1.dob is not NULL
  limit 15);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    races_1.round, 
    min(
      races_1.date), 
    races_1.circuitid, 
    races_1.raceid
  from 
    races as races_1
  where races_1.date >= races_1.date
  group by races_1.circuitid, races_1.raceid, races_1.round
  limit 8)
INTERSECT
(select  
    constructor_standings_1.constructorstandingsid, 
    max(
      constructor_standings_1.date), 
    constructor_standings_1.constructorstandingsid, 
    constructor_standings_1.constructorstandingsid
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.position is not NULL
  group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
  limit 40);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    min(
      standings_1.position), 
    standings_1.driverid, 
    standings_1.raceid
  from 
    standings as standings_1
  where standings_1.points is not NULL
  group by standings_1.driverid, standings_1.raceid
  limit 39)
EXCEPT
(select  
    max(
      results_1.driverid), 
    results_1.laps, 
    results_1.grid
  from 
    results as results_1
  where results_1.laps is not NULL
  group by results_1.driverid, results_1.fastestlap, results_1.milliseconds, results_1.positionorder
  limit 3);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    drivers_1.surname
  from 
    drivers as drivers_1
  where drivers_1.driverref is not NULL
  limit 2)
UNION
(select  
    count(
      results_1.raceid)
  from 
    results as results_1
  where results_1.rank is not NULL
  group by results_1.constructorid, results_1.date, results_1.driverid, results_1.fastestlap, results_1.grid, results_1.number, results_1.position, results_1.resultid
  limit 8);
-- meta {"num_joins":2,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    circuits_1.country, 
    circuits_1.lat, 
    sum(
      circuits_1.lng), 
    circuits_1.name, 
    circuits_1.location, 
    circuits_1.circuitid, 
    circuits_1.circuitref, 
    circuits_1.alt, 
    min(
      circuits_1.circuitid), 
    sum(
      circuits_1.circuitid), 
    avg(
      circuits_1.circuitid)
  from 
    circuits as circuits_1
  where circuits_1.lat is not NULL
  group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.location, circuits_1.name
  limit 39)
UNION
(select  
    races_1.name, 
    constructor_standings_1.points, 
    sum(
      constructor_standings_1.points), 
    races_1.name, 
    races_1.time, 
    constructor_standings_1.position, 
    races_1.time, 
    max(
      constructor_standings_1.date), 
    max(
      constructor_standings_1.constructorstandingsid), 
    avg(
      qualifying_1.qualifyid), 
    sum(
      qualifying_1.position)
  from 
    qualifying as qualifying_1
      inner join races as races_1
        inner join constructor_standings as constructor_standings_1
        on (races_1.raceid = constructor_standings_1.constructorstandingsid )
      on (qualifying_1.qualifyid = races_1.raceid )
  where qualifying_1.raceid is not NULL
  limit 2);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    qualifying_1.raceid
  from 
    qualifying as qualifying_1
  where qualifying_1.constructorid >= qualifying_1.number
  limit 26)
UNION
(select  
    qualifying_2.constructorid
  from 
    qualifying as qualifying_2
  where qualifying_2.date <= qualifying_2.date
  limit 11);
-- meta {"num_joins":2,"num_aggregates":11,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    results_1.fastestlap, 
    count(
      results_1.points), 
    results_1.position, 
    sum(
      results_1.raceid), 
    results_1.constructorid, 
    results_1.points, 
    min(
      results_1.grid), 
    results_1.resultid, 
    results_1.raceid, 
    results_1.date, 
    max(
      results_1.statusid), 
    results_1.driverid, 
    results_1.statusid, 
    sum(
      results_1.points), 
    max(
      results_1.driverid), 
    results_1.number, 
    results_1.positionorder, 
    max(
      results_1.date), 
    max(
      results_1.date), 
    avg(
      results_1.points)
  from 
    results as results_1
  where results_1.rank is not NULL
  group by results_1.constructorid, results_1.date, results_1.driverid, results_1.fastestlap, results_1.number, results_1.points, results_1.position, results_1.positionorder, results_1.raceid, results_1.resultid, results_1.statusid
  limit 41)
EXCEPT
(select  
    constructor_results_1.points, 
    max(
      races_1.circuitid), 
    constructor_results_1.points, 
    sum(
      qualifying_1.number), 
    races_1.raceid, 
    max(
      races_1.date), 
    count(
      races_1.name), 
    qualifying_1.position, 
    qualifying_1.qualifyid, 
    races_1.date, 
    max(
      races_1.raceid), 
    qualifying_1.position, 
    qualifying_1.position, 
    sum(
      constructor_results_1.points), 
    max(
      qualifying_1.number), 
    constructor_results_1.points, 
    races_1.circuitid, 
    min(
      qualifying_1.date), 
    max(
      qualifying_1.date), 
    avg(
      constructor_results_1.points)
  from 
    races as races_1
      inner join qualifying as qualifying_1
        inner join constructor_results as constructor_results_1
        on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
      on (races_1.raceid = constructor_results_1.constructorresultsid )
  where constructor_results_1.raceid <= qualifying_1.driverid
  group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, qualifying_1.qualifyid, races_1.date
  limit 1);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructors_1.name, 
    constructors_1.constructorref
  from 
    constructors as constructors_1
  where constructors_1.constructorid is not NULL
  limit 3)
INTERSECT
(select  
    min(
      constructor_results_1.date), 
    min(
      constructor_results_1.date)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorresultsid is not NULL
  group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date
  limit 4);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    circuits_1.name
  from 
    circuits as circuits_1
  where circuits_1.alt is not NULL
  limit 5)
INTERSECT
(select  
    max(
      constructors_1.constructorid)
  from 
    constructors as constructors_1
  where constructors_1.nationality is not NULL
  limit 17);
-- meta {"num_joins":5,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_results_1.date
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorid is not NULL
  limit 2)
UNION
(select  
    results_1.date
  from 
    constructor_results as constructor_results_2
          inner join constructor_results as constructor_results_3
          on (constructor_results_2.constructorresultsid = constructor_results_3.constructorresultsid )
        inner join standings as standings_1
        on (constructor_results_2.constructorresultsid = standings_1.driverstandingsid )
      inner join results as results_1
          inner join races as races_1
          on (results_1.resultid = races_1.raceid )
        inner join constructors as constructors_1
        on (races_1.raceid = constructors_1.constructorid )
      on (constructor_results_3.constructorresultsid = races_1.raceid )
  where results_1.statusid is not NULL
  group by constructor_results_2.raceid, constructor_results_3.points, constructors_1.constructorid, constructors_1.constructorref
  limit 2);
-- meta {"num_joins":1,"num_aggregates":5,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructors_1.constructorid, 
    qualifying_1.raceid, 
    max(
      qualifying_1.date), 
    qualifying_1.number, 
    constructors_1.name, 
    qualifying_1.driverid, 
    max(
      qualifying_1.date), 
    max(
      qualifying_1.date), 
    constructors_1.constructorref, 
    count(
      qualifying_1.qualifyid)
  from 
    qualifying as qualifying_1
      inner join constructors as constructors_1
      on (qualifying_1.qualifyid = constructors_1.constructorid )
  where qualifying_1.number is not NULL
  group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, qualifying_1.driverid, qualifying_1.number, qualifying_1.raceid
  limit 31)
INTERSECT
(select  
    drivers_1.driverid, 
    drivers_1.driverid, 
    max(
      drivers_1.dob), 
    drivers_1.driverid, 
    drivers_1.driverref, 
    drivers_1.driverid, 
    min(
      drivers_1.dob), 
    max(
      drivers_1.dob), 
    drivers_1.forename, 
    count(
      drivers_1.forename)
  from 
    drivers as drivers_1
  where drivers_1.driverid is not NULL
  group by drivers_1.dob, drivers_1.driverid, drivers_1.surname
  limit 21);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    standings_1.date, 
    standings_1.driverstandingsid, 
    max(
      standings_1.points), 
    standings_1.driverid, 
    standings_1.position
  from 
    standings as standings_1
  where standings_1.wins is not NULL
  group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.position
  limit 41)
INTERSECT
(select  
    constructor_standings_1.date, 
    constructor_standings_1.raceid, 
    sum(
      constructor_standings_1.points), 
    constructor_standings_1.raceid, 
    constructor_standings_1.position
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.constructorid is not NULL
  limit 34);
-- meta {"num_joins":5,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    results_1.milliseconds, 
    results_1.position
  from 
    results as results_1
  where results_1.number is not NULL
  limit 18)
EXCEPT
(select  
    constructor_results_1.points, 
    constructor_results_1.points
  from 
    drivers as drivers_1
          inner join drivers as drivers_2
          on (drivers_1.driverid = drivers_2.driverid )
        inner join constructor_results as constructor_results_1
        on (drivers_1.driverid = constructor_results_1.constructorresultsid )
      inner join constructors as constructors_1
          inner join qualifying as qualifying_1
          on (constructors_1.constructorid = qualifying_1.qualifyid )
        inner join drivers as drivers_3
        on (constructors_1.constructorid = drivers_3.driverid )
      on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
  where qualifying_1.driverid is not NULL
  group by constructor_results_1.constructorid, constructor_results_1.date, constructors_1.constructorid, drivers_1.surname, drivers_3.driverid
  limit 25);
-- meta {"num_joins":1,"num_aggregates":8,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_standings_1.position, 
    constructor_standings_1.constructorid
  from 
    races as races_1
      inner join constructor_standings as constructor_standings_1
      on (races_1.raceid = constructor_standings_1.constructorstandingsid )
  where races_1.circuitid is not NULL
  limit 18)
INTERSECT
(select  
    constructor_standings_2.constructorid, 
    max(
      constructor_standings_2.constructorid)
  from 
    constructor_standings as constructor_standings_2
  where constructor_standings_2.points is not NULL
  group by constructor_standings_2.constructorid, constructor_standings_2.constructorstandingsid, constructor_standings_2.date, constructor_standings_2.points, constructor_standings_2.position, constructor_standings_2.raceid, constructor_standings_2.wins
  limit 18);
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    count(*)
  from 
    races as races_1
  where races_1.date >= races_1.date
  limit 28)
EXCEPT
(select  
    min(
      standings_1.driverstandingsid)
  from 
    drivers as drivers_1
      inner join standings as standings_1
      on (drivers_1.driverid = standings_1.driverstandingsid )
  where drivers_1.driverref is not NULL
  group by drivers_1.dob, drivers_1.driverref, drivers_1.nationality, standings_1.date, standings_1.driverid, standings_1.points
  limit 20);
-- meta {"num_joins":1,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    results_1.position, 
    results_1.resultid
  from 
    results as results_1
  where results_1.date is not NULL
  limit 13)
UNION
(select  
    standings_1.points, 
    standings_1.wins
  from 
    standings as standings_1
      inner join constructors as constructors_1
      on (standings_1.driverstandingsid = constructors_1.constructorid )
  where constructors_1.name is not NULL
  group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.wins
  limit 39);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 34;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    circuits_1.name, 
    circuits_1.alt, 
    circuits_1.circuitref, 
    circuits_1.lng
  from 
    circuits as circuits_1
  where circuits_1.lng is not NULL
  limit 9)
INTERSECT
(select  
    circuits_2.location, 
    circuits_2.lng, 
    circuits_2.country, 
    circuits_2.lng
  from 
    circuits as circuits_2
  where circuits_2.alt is not NULL
  limit 6);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    results_1.fastestlap
  from 
    results as results_1
  where results_1.laps is not NULL
  limit 24)
INTERSECT
(select  
    max(
      drivers_1.dob)
  from 
    drivers as drivers_1
  where drivers_1.code is not NULL
  limit 33);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    circuits_1.location, 
    standings_1.raceid, 
    circuits_1.country, 
    circuits_1.circuitref, 
    standings_2.date
  from 
    standings as standings_1
        inner join standings as standings_2
        on (standings_1.driverstandingsid = standings_2.driverstandingsid )
      inner join circuits as circuits_1
      on (standings_1.driverstandingsid = circuits_1.circuitid )
  where standings_1.driverid is not NULL
  limit 31)
EXCEPT
(select  
    max(
      constructor_results_1.date), 
    constructor_results_1.raceid, 
    min(
      constructor_results_1.points), 
    avg(
      constructor_results_1.constructorid), 
    constructor_results_1.date
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorid is not NULL
  limit 6);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    races_1.raceid, 
    max(
      races_1.year), 
    races_1.year, 
    races_1.round, 
    races_1.time
  from 
    races as races_1
  where races_1.circuitid is not NULL
  group by races_1.raceid, races_1.round, races_1.time, races_1.year
  limit 11)
INTERSECT
(select  
    circuits_2.circuitid, 
    count(
      circuits_2.circuitid), 
    circuits_2.circuitid, 
    circuits_2.circuitid, 
    circuits_1.circuitref
  from 
    circuits as circuits_1
      inner join circuits as circuits_2
      on (circuits_1.circuitid = circuits_2.circuitid )
  where circuits_1.lng is not NULL
  limit 6);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    qualifying_1.number, 
    qualifying_1.raceid, 
    qualifying_1.date
  from 
    qualifying as qualifying_1
  where qualifying_1.constructorid is not NULL
  limit 41)
EXCEPT
(select  
    races_2.round, 
    races_2.circuitid, 
    races_2.date
  from 
    races as races_1
      inner join races as races_2
      on (races_1.raceid = races_2.raceid )
  where races_1.date is not NULL
  limit 7);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 37;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    races_1.date, 
    races_1.raceid
  from 
    races as races_1
  where races_1.round is not NULL
  limit 32)
INTERSECT
(select  
    standings_1.date, 
    standings_1.driverid
  from 
    standings as standings_1
  where standings_1.date is not NULL
  group by standings_1.position, standings_1.raceid
  limit 30);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    max(
      races_1.date), 
    races_1.raceid, 
    races_1.year
  from 
    circuits as circuits_1
      inner join races as races_1
      on (circuits_1.circuitid = races_1.raceid )
  where races_1.date >= races_1.date
  group by races_1.raceid, races_1.year
  limit 7)
UNION
(select  
    min(
      races_2.date), 
    races_2.raceid, 
    races_2.round
  from 
    races as races_2
  where races_2.circuitid is not NULL
  group by races_2.name, races_2.year
  limit 2);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorid, 
  max(
    constructors_1.constructorid), 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 17;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_standings_1.raceid, 
    constructor_standings_1.wins, 
    standings_1.raceid, 
    standings_1.driverstandingsid
  from 
    constructor_standings as constructor_standings_1
      inner join standings as standings_1
      on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
  where standings_1.points >= constructor_standings_1.points
  limit 38)
UNION
(select  
    results_1.positionorder, 
    results_1.grid, 
    qualifying_1.raceid, 
    results_1.constructorid
  from 
    qualifying as qualifying_1
      inner join results as results_1
      on (qualifying_1.qualifyid = results_1.resultid )
  where results_1.raceid is not NULL
  group by qualifying_1.date, qualifying_1.driverid, qualifying_1.qualifyid, results_1.driverid, results_1.number
  limit 16);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_standings_1.constructorid, 
    constructor_standings_1.wins, 
    count(*)
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.raceid is not NULL
  group by constructor_standings_1.constructorid, constructor_standings_1.wins
  limit 14)
UNION
(select  
    drivers_1.driverid, 
    max(
      drivers_1.driverid), 
    max(
      drivers_1.driverid)
  from 
    drivers as drivers_1
  where drivers_1.nationality >= drivers_1.surname
  group by drivers_1.dob, drivers_1.driverid, drivers_1.nationality, drivers_1.surname
  limit 9);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_results_1.constructorid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.raceid is not NULL
  limit 28)
INTERSECT
(select  
    circuits_1.circuitid
  from 
    circuits as circuits_1
  where circuits_1.circuitid > circuits_1.circuitid
  group by circuits_1.circuitid, circuits_1.name
  limit 27);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructors_1.constructorid, 
    constructors_1.name
  from 
    constructors as constructors_1
  where constructors_1.constructorref is not NULL
  limit 37)
INTERSECT
(select  
    qualifying_1.raceid, 
    min(
      qualifying_1.driverid)
  from 
    qualifying as qualifying_1
  where qualifying_1.raceid is not NULL
  group by qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
  limit 38);
-- meta {"num_joins":4,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructors_1.nationality, 
    constructors_1.name, 
    min(
      results_1.date), 
    qualifying_1.date, 
    constructors_1.constructorref, 
    results_1.fastestlap, 
    qualifying_1.number, 
    qualifying_1.qualifyid, 
    sum(
      qualifying_1.raceid), 
    results_1.milliseconds, 
    qualifying_1.driverid
  from 
    qualifying as qualifying_1
      inner join constructors as constructors_1
        inner join results as results_1
        on (constructors_1.constructorid = results_1.resultid )
      on (qualifying_1.qualifyid = results_1.resultid )
  where constructors_1.name is not NULL
  group by constructors_1.constructorref, constructors_1.name, constructors_1.nationality, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.qualifyid, results_1.fastestlap, results_1.milliseconds
  limit 3)
INTERSECT
(select  
    races_1.name, 
    races_1.name, 
    min(
      results_2.date), 
    races_1.date, 
    min(
      races_1.date), 
    results_2.position, 
    results_2.driverid, 
    races_1.circuitid, 
    avg(
      races_1.round), 
    results_2.position, 
    constructors_2.constructorid
  from 
    constructors as constructors_2
      inner join races as races_1
        inner join results as results_2
        on (races_1.raceid = results_2.resultid )
      on (constructors_2.constructorid = results_2.resultid )
  where races_1.raceid is not NULL
  limit 15);
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    max(
      constructor_results_1.date), 
    min(
      constructor_results_1.date), 
    constructor_results_1.constructorresultsid, 
    constructor_results_1.raceid, 
    constructor_results_1.date, 
    constructor_results_1.constructorid, 
    constructor_results_1.points
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorid is not NULL
  group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
  limit 11)
EXCEPT
(select  
    max(
      constructor_standings_1.date), 
    min(
      constructor_standings_1.date), 
    constructor_standings_1.constructorstandingsid, 
    results_1.driverid, 
    max(
      constructor_standings_1.date), 
    constructor_standings_1.raceid, 
    sum(
      results_1.resultid)
  from 
    results as results_1
        inner join constructor_standings as constructor_standings_1
        on (results_1.resultid = constructor_standings_1.constructorstandingsid )
      inner join drivers as drivers_1
      on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
  where results_1.rank < results_1.points
  limit 12);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    max(
      constructor_results_1.points), 
    constructor_results_1.raceid, 
    max(
      constructor_results_1.date), 
    avg(
      constructor_results_1.constructorid), 
    constructor_results_1.constructorresultsid, 
    constructor_results_1.points
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.points is not NULL
  group by constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.raceid
  limit 30)
EXCEPT
(select  
    min(
      standings_1.points), 
    standings_1.position, 
    max(
      standings_1.date), 
    sum(
      standings_1.position), 
    standings_1.driverstandingsid, 
    standings_1.points
  from 
    standings as standings_1
  where standings_1.driverid is not NULL
  group by standings_1.points, standings_1.raceid, standings_1.wins
  limit 7);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.number, 
  results_1.rank, 
  results_1.milliseconds, 
  results_1.grid, 
  results_1.position, 
  results_1.constructorid, 
  results_1.statusid, 
  results_1.fastestlap, 
  results_1.points, 
  max(
    results_1.positionorder), 
  results_1.raceid
from 
  results as results_1
where results_1.number > results_1.milliseconds
group by results_1.constructorid, results_1.fastestlap, results_1.grid, results_1.milliseconds, results_1.number, results_1.points, results_1.position, results_1.raceid, results_1.rank, results_1.statusid
limit 13;
-- meta {"num_joins":4,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    avg(
      circuits_1.lng), 
    sum(
      standings_1.points)
  from 
    standings as standings_1
        inner join constructor_standings as constructor_standings_1
        on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
      inner join circuits as circuits_1
          inner join constructor_standings as constructor_standings_2
          on (circuits_1.circuitid = constructor_standings_2.constructorstandingsid )
        inner join drivers as drivers_1
        on (constructor_standings_2.constructorstandingsid = drivers_1.driverid )
      on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
  where drivers_1.driverref is not NULL
  limit 42)
UNION
(select  
    sum(
      standings_2.points), 
    min(
      standings_2.points)
  from 
    standings as standings_2
  where standings_2.raceid is not NULL
  group by standings_2.date, standings_2.driverid, standings_2.driverstandingsid, standings_2.position, standings_2.raceid, standings_2.wins
  limit 27);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    constructor_standings_1.raceid), 
  constructor_standings_1.position, 
  count(
    constructor_standings_1.wins), 
  constructor_standings_1.wins, 
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.wins
limit 7;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    races_1.time, 
    constructor_results_1.raceid, 
    circuits_1.lat, 
    circuits_1.lng, 
    races_1.name, 
    standings_1.raceid, 
    circuits_1.circuitid, 
    constructor_results_1.date, 
    races_1.year, 
    constructor_results_1.constructorresultsid, 
    constructor_results_1.constructorid, 
    races_1.raceid, 
    circuits_1.alt
  from 
    circuits as circuits_1
          inner join races as races_1
          on (circuits_1.circuitid = races_1.raceid )
        inner join constructor_results as constructor_results_1
        on (races_1.raceid = constructor_results_1.constructorresultsid )
      inner join standings as standings_1
      on (races_1.raceid = standings_1.driverstandingsid )
  where races_1.time is not NULL
  limit 14)
UNION
(select  
    min(
      constructor_standings_1.date), 
    constructor_standings_1.constructorid, 
    constructor_standings_1.points, 
    count(
      constructor_standings_1.constructorid), 
    count(*), 
    constructor_standings_1.raceid, 
    constructor_standings_1.constructorstandingsid, 
    constructor_standings_1.date, 
    constructor_standings_1.raceid, 
    sum(
      constructor_standings_1.constructorid), 
    constructor_standings_1.constructorid, 
    constructor_standings_1.wins, 
    constructor_standings_1.points
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.raceid is not NULL
  limit 2);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    min(
      races_1.circuitid), 
    races_1.date, 
    races_1.raceid, 
    races_1.name, 
    races_1.circuitid, 
    races_1.time, 
    races_1.round
  from 
    races as races_1
  where races_1.time is not NULL
  group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time
  limit 1)
INTERSECT
(select  
    count(
      constructors_1.nationality), 
    max(
      constructors_1.constructorid), 
    constructors_1.constructorid, 
    constructors_1.nationality, 
    constructors_1.constructorid, 
    constructors_1.name, 
    constructors_1.constructorid
  from 
    constructors as constructors_1
  where constructors_1.name is not NULL
  limit 31);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    count(*), 
    races_1.name, 
    races_1.circuitid
  from 
    drivers as drivers_1
      inner join races as races_1
      on (drivers_1.driverid = races_1.raceid )
  where races_1.raceid is not NULL
  group by races_1.circuitid, races_1.name
  limit 34)
INTERSECT
(select  
    count(*), 
    races_2.time, 
    races_2.raceid
  from 
    races as races_2
      inner join results as results_1
      on (races_2.raceid = results_1.resultid )
  where results_1.position < results_1.rank
  limit 40);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    max(
      constructor_results_1.raceid), 
    constructor_results_1.constructorid, 
    constructor_results_1.constructorresultsid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorresultsid is not NULL
  group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid
  limit 3)
UNION
(select  
    min(
      constructor_results_2.constructorid), 
    constructor_results_2.constructorid, 
    constructor_results_2.constructorresultsid
  from 
    constructor_results as constructor_results_2
  where constructor_results_2.constructorresultsid is not NULL
  group by constructor_results_2.constructorid
  limit 32);
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructors_1.constructorid, 
    constructor_results_1.points
  from 
    qualifying as qualifying_1
      inner join constructors as constructors_1
        inner join constructor_results as constructor_results_1
        on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
      on (qualifying_1.qualifyid = constructors_1.constructorid )
  where constructor_results_1.points is not NULL
  limit 2)
EXCEPT
(select  
    races_1.raceid, 
    sum(
      races_1.raceid)
  from 
    races as races_1
  where races_1.date > races_1.date
  group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year
  limit 41);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorid >= constructors_1.constructorid
limit 22;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.dob, 
  sum(
    drivers_1.driverid), 
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.dob <= drivers_1.dob
group by drivers_1.dob, drivers_1.driverref
limit 31;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
limit 6;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    drivers_1.forename, 
    drivers_1.dob, 
    constructor_standings_1.constructorid, 
    max(
      constructor_standings_1.constructorstandingsid), 
    constructor_standings_1.position, 
    drivers_1.driverid, 
    max(
      constructor_standings_1.points), 
    drivers_1.code
  from 
    drivers as drivers_1
      inner join constructor_standings as constructor_standings_1
      on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
  where constructor_standings_1.points > constructor_standings_1.points
  group by constructor_standings_1.constructorid, constructor_standings_1.position, drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.forename
  limit 10)
EXCEPT
(select  
    constructors_1.constructorref, 
    results_1.date, 
    results_1.driverid, 
    count(
      results_1.driverid), 
    results_1.laps, 
    constructors_1.constructorid, 
    avg(
      results_1.number), 
    constructors_1.nationality
  from 
    constructors as constructors_1
      inner join results as results_1
      on (constructors_1.constructorid = results_1.resultid )
  where results_1.driverid is not NULL
  limit 1);
-- meta {"num_joins":3,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_2.nationality, 
  max(
    constructor_results_1.constructorid), 
  constructors_1.constructorid, 
  max(
    constructor_results_1.raceid), 
  min(
    drivers_1.driverid), 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  max(
    constructor_results_1.date)
from 
  constructor_results as constructor_results_1
    inner join constructors as constructors_1
        inner join constructors as constructors_2
        on (constructors_1.constructorid = constructors_2.constructorid )
      inner join drivers as drivers_1
      on (constructors_1.constructorid = drivers_1.driverid )
    on (constructor_results_1.constructorresultsid = drivers_1.driverid )
where drivers_1.surname >= drivers_1.forename
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.points, constructors_1.constructorid, constructors_2.nationality
limit 7;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref, 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.alt is not NULL
limit 8;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    standings_1.date, 
    standings_1.driverid
  from 
    standings as standings_1
  where standings_1.date is not NULL
  limit 31)
INTERSECT
(select  
    min(
      qualifying_1.date), 
    max(
      qualifying_1.date)
  from 
    qualifying as qualifying_1
  where qualifying_1.number is not NULL
  limit 4);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructors_1.constructorref, 
    avg(
      constructors_1.constructorid), 
    constructors_1.nationality
  from 
    constructors as constructors_1
  where constructors_1.constructorid = constructors_1.constructorid
  group by constructors_1.constructorref, constructors_1.nationality
  limit 12)
EXCEPT
(select  
    avg(
      results_1.fastestlap), 
    sum(
      results_1.laps), 
    min(
      results_1.date)
  from 
    results as results_1
  where results_1.laps is not NULL
  limit 10);
-- meta {"num_joins":5,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_results_2.date, 
    constructor_results_1.raceid, 
    count(*), 
    constructor_results_1.date, 
    max(
      constructor_results_1.points), 
    constructors_1.constructorref, 
    sum(
      constructor_results_1.constructorid)
  from 
    constructor_results as constructor_results_1
      inner join constructor_results as constructor_results_2
        inner join constructors as constructors_1
        on (constructor_results_2.constructorresultsid = constructors_1.constructorid )
      on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
  where constructor_results_1.constructorresultsid is not NULL
  group by constructor_results_1.date, constructor_results_1.raceid, constructor_results_2.date, constructors_1.constructorref
  limit 17)
UNION
(select  
    drivers_1.dob, 
    qualifying_1.qualifyid, 
    min(
      constructor_results_3.constructorresultsid), 
    qualifying_1.date, 
    max(
      constructor_results_3.points), 
    drivers_1.code, 
    sum(
      constructor_results_4.constructorid)
  from 
    constructor_results as constructor_results_3
      inner join constructor_results as constructor_results_4
          inner join drivers as drivers_1
          on (constructor_results_4.constructorresultsid = drivers_1.driverid )
        inner join qualifying as qualifying_1
        on (constructor_results_4.constructorresultsid = qualifying_1.qualifyid )
      on (constructor_results_3.constructorresultsid = drivers_1.driverid )
  where drivers_1.forename is not NULL
  limit 18);
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    standings_1.driverstandingsid, 
    standings_1.wins, 
    standings_1.position, 
    standings_1.points, 
    standings_1.raceid, 
    standings_1.driverid
  from 
    standings as standings_1
  where standings_1.date <= standings_1.date
  limit 41)
INTERSECT
(select  
    races_1.round, 
    count(*), 
    races_1.round, 
    min(
      races_1.date), 
    races_1.year, 
    races_1.round
  from 
    races as races_1
  where races_1.date <= races_1.date
  group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year
  limit 7);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    min(
      standings_1.date), 
    sum(
      standings_1.position), 
    standings_1.raceid, 
    standings_1.driverid
  from 
    standings as standings_1
  where standings_1.date = standings_1.date
  group by standings_1.driverid, standings_1.raceid
  limit 41)
UNION
(select  
    min(
      qualifying_1.date), 
    avg(
      qualifying_1.position), 
    max(
      qualifying_1.date), 
    qualifying_1.qualifyid
  from 
    qualifying as qualifying_1
  where qualifying_1.constructorid is not NULL
  group by qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.qualifyid, qualifying_1.raceid
  limit 39);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    standings_1.driverid
  from 
    standings as standings_1
  where standings_1.wins is not NULL
  limit 2)
UNION
(select  
    races_1.circuitid
  from 
    races as races_1
      inner join circuits as circuits_1
      on (races_1.raceid = circuits_1.circuitid )
  where races_1.year is not NULL
  group by circuits_1.alt, circuits_1.country, circuits_1.lng, circuits_1.location, races_1.raceid, races_1.round, races_1.time
  limit 33);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_results_1.constructorresultsid, 
    constructor_results_1.date, 
    constructor_results_1.points
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.raceid is not NULL
  limit 22)
EXCEPT
(select  
    circuits_1.circuitid, 
    avg(
      circuits_1.circuitid), 
    circuits_1.lng
  from 
    circuits as circuits_1
  where circuits_1.alt is not NULL
  group by circuits_1.alt, circuits_1.circuitref
  limit 15);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select distinct 
  sum(
    races_1.circuitid)
from 
  qualifying as qualifying_1
    inner join races as races_1
      inner join races as races_2
      on (races_1.raceid = races_2.raceid )
    on (qualifying_1.qualifyid = races_2.raceid )
where races_1.circuitid < races_1.year
limit 15;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    drivers_1.dob, 
    count(
      constructors_1.nationality)
  from 
    constructors as constructors_1
      inner join drivers as drivers_1
      on (constructors_1.constructorid = drivers_1.driverid )
  where drivers_1.dob <= drivers_1.dob
  group by drivers_1.dob
  limit 6)
EXCEPT
(select  
    results_1.date, 
    count(*)
  from 
    results as results_1
  where results_1.resultid is not NULL
  group by results_1.constructorid, results_1.date, results_1.grid, results_1.milliseconds, results_1.number, results_1.points, results_1.positionorder, results_1.resultid, results_1.statusid
  limit 19);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_standings_1.points, 
    avg(
      constructor_standings_1.constructorstandingsid), 
    constructor_standings_1.raceid
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.date is not NULL
  group by constructor_standings_1.points, constructor_standings_1.raceid
  limit 13)
EXCEPT
(select  
    constructor_results_1.points, 
    sum(
      constructor_results_1.raceid), 
    constructor_results_1.raceid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.date is not NULL
  limit 1);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructors_1.constructorref
  from 
    constructors as constructors_1
  where constructors_1.nationality is not NULL
  limit 29)
UNION
(select  
    min(
      constructor_results_1.points)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorid is not NULL
  group by constructor_results_1.constructorresultsid
  limit 18);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    qualifying_1.constructorid, 
    qualifying_1.date
  from 
    qualifying as qualifying_1
      inner join qualifying as qualifying_2
      on (qualifying_1.qualifyid = qualifying_2.qualifyid )
  where qualifying_1.driverid is not NULL
  limit 6)
INTERSECT
(select  
    constructor_results_1.constructorresultsid, 
    max(
      constructor_results_1.date)
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.date = constructor_results_1.date
  group by constructor_results_1.constructorid
  limit 8);
-- meta {"num_joins":2,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    constructor_results_1.date, 
    max(
      results_1.date), 
    results_1.points, 
    constructor_results_1.constructorresultsid, 
    results_1.statusid, 
    max(
      constructor_results_1.date), 
    results_1.fastestlap, 
    results_1.driverid, 
    min(
      constructor_results_1.date), 
    constructor_results_1.constructorid, 
    races_1.year, 
    constructor_results_1.points, 
    results_1.laps, 
    sum(
      results_1.grid)
  from 
    results as results_1
        inner join races as races_1
        on (results_1.resultid = races_1.raceid )
      inner join constructor_results as constructor_results_1
      on (results_1.resultid = constructor_results_1.constructorresultsid )
  where results_1.raceid is not NULL
  group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, races_1.year, results_1.driverid, results_1.fastestlap, results_1.laps, results_1.points, results_1.statusid
  limit 4)
EXCEPT
(select  
    standings_1.date, 
    min(
      standings_1.date), 
    standings_1.points, 
    standings_1.wins, 
    standings_1.raceid, 
    max(
      standings_1.date), 
    standings_1.points, 
    standings_1.wins, 
    max(
      standings_1.date), 
    standings_1.wins, 
    standings_1.driverid, 
    standings_1.points, 
    standings_1.position, 
    avg(
      standings_1.driverstandingsid)
  from 
    standings as standings_1
  where standings_1.driverstandingsid = standings_1.position
  limit 38);
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    min(
      results_1.date), 
    avg(
      results_1.laps)
  from 
    results as results_1
  where results_1.rank is not NULL
  limit 27)
INTERSECT
(select  
    max(
      qualifying_1.date), 
    sum(
      qualifying_1.constructorid)
  from 
    qualifying as qualifying_1
  where qualifying_1.number is not NULL
  group by qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
  limit 33);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    qualifying_1.constructorid
  from 
    qualifying as qualifying_1
  where qualifying_1.driverid >= qualifying_1.position
  limit 16)
INTERSECT
(select  
    qualifying_2.constructorid
  from 
    qualifying as qualifying_2
  where qualifying_2.date is not NULL
  group by qualifying_2.constructorid, qualifying_2.number
  limit 6);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    max(
      standings_1.raceid), 
    standings_1.points
  from 
    standings as standings_1
  where standings_1.raceid is not NULL
  group by standings_1.points
  limit 6)
UNION
(select  
    count(
      constructor_standings_1.points), 
    constructor_standings_1.points
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.constructorid is not NULL
  group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.wins
  limit 19);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    min(
      standings_1.raceid), 
    standings_1.date, 
    standings_1.points
  from 
    standings as standings_1
  where standings_1.driverstandingsid is not NULL
  group by standings_1.date, standings_1.points
  limit 33)
EXCEPT
(select  
    max(
      constructor_standings_1.raceid), 
    constructor_standings_1.date, 
    constructor_standings_1.points
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.raceid < constructor_standings_1.position
  limit 13);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.forename, 
  drivers_1.driverid, 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.code is not NULL
limit 8;
-- meta {"num_joins":1,"num_aggregates":9,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    min(
      constructor_standings_1.points), 
    constructor_standings_1.date, 
    sum(
      constructor_standings_1.points), 
    min(
      constructor_standings_1.date), 
    max(
      constructor_standings_1.date), 
    constructor_standings_1.raceid, 
    constructor_standings_1.position, 
    constructor_standings_1.constructorid, 
    constructor_standings_1.wins, 
    avg(
      constructor_standings_1.points), 
    max(
      constructor_standings_1.date), 
    constructor_standings_1.points, 
    constructor_standings_1.constructorstandingsid, 
    max(
      constructor_standings_1.date), 
    min(
      constructor_standings_1.wins)
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.points is not NULL
  group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
  limit 26)
INTERSECT
(select  
    max(
      constructor_standings_2.points), 
    races_1.date, 
    min(
      constructor_standings_2.points), 
    max(
      constructor_standings_2.date), 
    max(
      races_1.date), 
    constructor_standings_2.wins, 
    constructor_standings_2.constructorstandingsid, 
    races_1.year, 
    races_1.circuitid, 
    avg(
      constructor_standings_2.points), 
    min(
      constructor_standings_2.date), 
    constructor_standings_2.points, 
    constructor_standings_2.constructorstandingsid, 
    max(
      races_1.date), 
    count(*)
  from 
    races as races_1
      inner join constructor_standings as constructor_standings_2
      on (races_1.raceid = constructor_standings_2.constructorstandingsid )
  where constructor_standings_2.constructorid is not NULL
  group by races_1.circuitid, races_1.round
  limit 16);
-- meta {"num_joins":4,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    results_1.milliseconds, 
    results_1.position
  from 
    standings as standings_1
      inner join results as results_1
        inner join circuits as circuits_1
          inner join constructors as constructors_1
          on (circuits_1.circuitid = constructors_1.constructorid )
        on (results_1.resultid = constructors_1.constructorid )
      on (standings_1.driverstandingsid = circuits_1.circuitid )
  where results_1.fastestlap > results_1.milliseconds
  limit 3)
UNION
(select  
    constructor_results_1.points, 
    sum(
      constructor_results_1.points)
  from 
    qualifying as qualifying_1
      inner join constructor_results as constructor_results_1
      on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
  where qualifying_1.driverid is not NULL
  group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid, qualifying_1.constructorid, qualifying_1.date, qualifying_1.position
  limit 11);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_results_1.constructorresultsid, 
    constructor_results_1.constructorid, 
    constructor_results_1.date, 
    constructor_results_1.points, 
    constructor_results_1.raceid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.constructorresultsid is not NULL
  limit 41)
INTERSECT
(select  
    qualifying_1.raceid, 
    races_1.circuitid, 
    sum(
      qualifying_1.qualifyid), 
    max(
      drivers_1.dob), 
    qualifying_1.driverid
  from 
    qualifying as qualifying_1
      inner join races as races_1
        inner join drivers as drivers_1
        on (races_1.raceid = drivers_1.driverid )
      on (qualifying_1.qualifyid = drivers_1.driverid )
  where qualifying_1.qualifyid is not NULL
  limit 30);
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    min(
      qualifying_1.date), 
    constructor_standings_1.constructorid, 
    constructor_standings_1.constructorstandingsid, 
    max(
      constructor_standings_1.date), 
    qualifying_1.date, 
    races_1.time, 
    races_1.year, 
    constructor_standings_1.date
  from 
    qualifying as qualifying_1
      inner join constructor_standings as constructor_standings_1
        inner join races as races_1
        on (constructor_standings_1.constructorstandingsid = races_1.raceid )
      on (qualifying_1.qualifyid = races_1.raceid )
  where races_1.name > races_1.time
  group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, qualifying_1.date, races_1.time, races_1.year
  limit 21)
INTERSECT
(select  
    min(
      results_1.date), 
    results_1.constructorid, 
    min(
      results_1.fastestlap), 
    max(
      results_1.date), 
    results_1.date, 
    avg(
      results_1.milliseconds), 
    results_1.statusid, 
    results_1.date
  from 
    results as results_1
  where results_1.milliseconds is not NULL
  limit 3);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_results_1.points, 
    constructor_results_1.constructorid, 
    constructor_results_1.constructorresultsid
  from 
    constructor_results as constructor_results_1
      inner join qualifying as qualifying_1
      on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
  where constructor_results_1.points is not NULL
  limit 15)
INTERSECT
(select  
    results_1.milliseconds, 
    qualifying_2.qualifyid, 
    results_1.resultid
  from 
    qualifying as qualifying_2
        inner join constructor_standings as constructor_standings_1
        on (qualifying_2.qualifyid = constructor_standings_1.constructorstandingsid )
      inner join results as results_1
      on (constructor_standings_1.constructorstandingsid = results_1.resultid )
  where results_1.rank is not NULL
  limit 6);
-- meta {"num_joins":1,"num_aggregates":7,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    qualifying_1.constructorid, 
    min(
      qualifying_1.date), 
    qualifying_1.raceid, 
    count(
      qualifying_1.date), 
    qualifying_1.position, 
    qualifying_1.number, 
    max(
      qualifying_1.date), 
    min(
      qualifying_1.date), 
    qualifying_1.qualifyid, 
    qualifying_1.date, 
    min(
      qualifying_1.date)
  from 
    qualifying as qualifying_1
  where qualifying_1.constructorid is not NULL
  group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
  limit 16)
UNION
(select  
    min(
      results_1.points), 
    max(
      qualifying_2.date), 
    results_1.laps, 
    count(
      qualifying_2.constructorid), 
    results_1.grid, 
    max(
      results_1.date), 
    min(
      qualifying_2.date), 
    min(
      qualifying_2.date), 
    results_1.raceid, 
    results_1.date, 
    min(
      results_1.date)
  from 
    qualifying as qualifying_2
      inner join results as results_1
      on (qualifying_2.qualifyid = results_1.resultid )
  where results_1.date < qualifying_2.date
  group by results_1.grid, results_1.milliseconds, results_1.number
  limit 29);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_results_1.date
  from 
    constructor_results as constructor_results_1
      inner join constructor_standings as constructor_standings_1
      on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
  where constructor_standings_1.points = constructor_results_1.points
  limit 7)
UNION
(select  
    max(
      drivers_1.dob)
  from 
    drivers as drivers_1
  where drivers_1.dob = drivers_1.dob
  group by drivers_1.surname
  limit 30);
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    min(
      constructor_results_1.points), 
    constructor_results_1.raceid, 
    constructor_results_1.constructorid, 
    constructor_results_1.constructorresultsid, 
    constructor_results_1.points, 
    constructor_results_1.date
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.points is not NULL
  group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
  limit 40)
EXCEPT
(select  
    min(
      results_2.milliseconds), 
    count(*), 
    constructor_results_2.constructorresultsid, 
    max(
      results_2.rank), 
    constructor_results_2.points, 
    results_2.date
  from 
    constructor_results as constructor_results_2
        inner join constructors as constructors_1
          inner join results as results_1
          on (constructors_1.constructorid = results_1.resultid )
        on (constructor_results_2.constructorresultsid = results_1.resultid )
      inner join results as results_2
        inner join qualifying as qualifying_1
        on (results_2.resultid = qualifying_1.qualifyid )
      on (results_1.resultid = results_2.resultid )
  where constructor_results_2.date > qualifying_1.date
  limit 20);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    races_1.year
  from 
    races as races_1
  where races_1.date < races_1.date
  limit 39)
UNION
(select  
    drivers_1.driverid
  from 
    drivers as drivers_1
  where drivers_1.driverid is not NULL
  limit 5);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    circuits_1.name, 
    circuits_1.country, 
    circuits_1.circuitid, 
    min(
      circuits_1.lng)
  from 
    circuits as circuits_1
  where circuits_1.lat is not NULL
  group by circuits_1.circuitid, circuits_1.country, circuits_1.name
  limit 25)
EXCEPT
(select  
    circuits_2.circuitref, 
    drivers_1.nationality, 
    min(
      standings_1.points), 
    avg(
      circuits_2.lat)
  from 
    drivers as drivers_1
        inner join standings as standings_1
        on (drivers_1.driverid = standings_1.driverstandingsid )
      inner join circuits as circuits_2
      on (standings_1.driverstandingsid = circuits_2.circuitid )
  where drivers_1.driverref is not NULL
  limit 40);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    qualifying_1.raceid, 
    qualifying_1.date
  from 
    qualifying as qualifying_1
  where qualifying_1.position is not NULL
  limit 7)
UNION
(select  
    qualifying_2.driverid, 
    min(
      qualifying_2.date)
  from 
    qualifying as qualifying_2
  where qualifying_2.driverid >= qualifying_2.qualifyid
  limit 11);
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    results_1.laps, 
    results_1.statusid, 
    results_1.driverid, 
    results_1.rank, 
    results_1.date, 
    results_1.points, 
    max(
      results_1.date), 
    avg(
      results_1.laps), 
    results_1.raceid, 
    results_1.fastestlap
  from 
    results as results_1
  where results_1.milliseconds > results_1.rank
  group by results_1.date, results_1.driverid, results_1.fastestlap, results_1.laps, results_1.points, results_1.raceid, results_1.rank, results_1.statusid
  limit 39)
EXCEPT
(select  
    standings_1.driverstandingsid, 
    standings_1.position, 
    standings_1.position, 
    standings_1.points, 
    max(
      standings_1.date), 
    standings_1.points, 
    min(
      standings_1.date), 
    avg(
      standings_1.position), 
    standings_1.wins, 
    standings_1.points
  from 
    standings as standings_1
  where standings_1.driverstandingsid is not NULL
  group by standings_1.date, standings_1.driverstandingsid, standings_1.raceid, standings_1.wins
  limit 9);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    results_1.raceid, 
    results_1.positionorder, 
    standings_1.driverid
  from 
    results as results_1
      inner join standings as standings_1
      on (results_1.resultid = standings_1.driverstandingsid )
  where standings_1.position is not NULL
  limit 38)
UNION
(select  
    qualifying_1.number, 
    avg(
      qualifying_2.qualifyid), 
    count(
      qualifying_2.date)
  from 
    drivers as drivers_1
        inner join qualifying as qualifying_1
        on (drivers_1.driverid = qualifying_1.qualifyid )
      inner join qualifying as qualifying_2
      on (drivers_1.driverid = qualifying_2.qualifyid )
  where qualifying_1.qualifyid is not NULL
  limit 27);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_results_1.constructorid, 
    constructor_results_1.date, 
    constructor_results_1.points, 
    constructor_results_1.constructorresultsid
  from 
    constructor_results as constructor_results_1
  where constructor_results_1.points <= constructor_results_1.points
  limit 16)
INTERSECT
(select  
    constructor_standings_1.position, 
    constructor_standings_1.date, 
    constructor_standings_1.points, 
    constructor_standings_1.raceid
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.position is not NULL
  group by constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points
  limit 21);
-- meta {"num_joins":0,"num_aggregates":10,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    circuits_1.location, 
    count(
      circuits_1.location), 
    max(
      circuits_1.lng), 
    sum(
      circuits_1.circuitid), 
    circuits_1.lat, 
    circuits_1.name, 
    circuits_1.alt, 
    circuits_1.country, 
    circuits_1.circuitref
  from 
    circuits as circuits_1
  where circuits_1.circuitref is not NULL
  group by circuits_1.alt, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.location, circuits_1.name
  limit 23)
UNION
(select  
    min(
      constructor_standings_1.points), 
    min(
      constructor_standings_1.constructorid), 
    sum(
      constructor_standings_1.points), 
    avg(
      constructor_standings_1.constructorid), 
    constructor_standings_1.points, 
    min(
      constructor_standings_1.date), 
    constructor_standings_1.points, 
    max(
      constructor_standings_1.date), 
    min(
      constructor_standings_1.points)
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.wins is not NULL
  group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
  limit 23);
-- meta {"num_joins":2,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    drivers_1.driverref, 
    drivers_1.forename, 
    drivers_1.driverid, 
    avg(
      qualifying_1.driverid), 
    standings_1.position, 
    qualifying_1.position
  from 
    standings as standings_1
      inner join qualifying as qualifying_1
        inner join drivers as drivers_1
        on (qualifying_1.qualifyid = drivers_1.driverid )
      on (standings_1.driverstandingsid = qualifying_1.qualifyid )
  where qualifying_1.date is not NULL
  group by drivers_1.driverid, drivers_1.driverref, drivers_1.forename, qualifying_1.position, standings_1.position
  limit 19)
UNION
(select  
    circuits_1.country, 
    circuits_1.location, 
    circuits_1.circuitid, 
    avg(
      circuits_1.circuitid), 
    circuits_1.circuitid, 
    circuits_1.circuitid
  from 
    circuits as circuits_1
  where circuits_1.country is not NULL
  group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.lat, circuits_1.lng, circuits_1.location, circuits_1.name
  limit 15);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  standings_1.raceid, 
  standings_1.driverid, 
  races_1.date
from 
  constructors as constructors_1
    inner join races as races_1
      inner join circuits as circuits_1
        inner join standings as standings_1
        on (circuits_1.circuitid = standings_1.driverstandingsid )
      on (races_1.raceid = standings_1.driverstandingsid )
    on (constructors_1.constructorid = races_1.raceid )
where constructors_1.name is not NULL
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    drivers_1.nationality
  from 
    drivers as drivers_1
      inner join drivers as drivers_2
      on (drivers_1.driverid = drivers_2.driverid )
  where drivers_2.code is not NULL
  limit 9)
EXCEPT
(select  
    drivers_3.surname
  from 
    drivers as drivers_3
  where drivers_3.driverref is not NULL
  limit 32);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    standings_1.position, 
    standings_1.driverid
  from 
    standings as standings_1
  where standings_1.points is not NULL
  limit 18)
INTERSECT
(select  
    max(
      circuits_1.lat), 
    standings_2.wins
  from 
    standings as standings_2
      inner join circuits as circuits_1
        inner join constructor_results as constructor_results_1
        on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
      on (standings_2.driverstandingsid = constructor_results_1.constructorresultsid )
  where constructor_results_1.points is not NULL
  limit 14);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    results_1.date, 
    max(
      results_1.date), 
    results_1.number, 
    results_1.laps, 
    results_1.raceid
  from 
    results as results_1
  where results_1.date is not NULL
  group by results_1.date, results_1.laps, results_1.number, results_1.raceid
  limit 26)
EXCEPT
(select  
    max(
      drivers_1.dob), 
    min(
      drivers_1.dob), 
    min(
      drivers_1.dob), 
    drivers_1.driverid, 
    drivers_1.driverid
  from 
    drivers as drivers_1
  where drivers_1.driverref is not NULL
  limit 8);
-- meta {"num_joins":0,"num_aggregates":7,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    circuits_1.lng, 
    circuits_1.country, 
    count(*)
  from 
    circuits as circuits_1
  where circuits_1.lat is not NULL
  group by circuits_1.country, circuits_1.lng
  limit 34)
EXCEPT
(select  
    count(*), 
    min(
      qualifying_1.number), 
    count(
      qualifying_1.position)
  from 
    qualifying as qualifying_1
  where qualifying_1.raceid is not NULL
  group by qualifying_1.date, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
  limit 1);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    qualifying_1.driverid
  from 
    qualifying as qualifying_1
  where qualifying_1.constructorid is not NULL
  limit 32)
INTERSECT
(select  
    constructors_1.constructorid
  from 
    constructors as constructors_1
  where constructors_1.constructorref >= constructors_1.name
  group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
  limit 10);
-- meta {"num_joins":1,"num_aggregates":5,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    standings_1.wins, 
    max(
      standings_1.date), 
    avg(
      standings_1.points), 
    min(
      standings_1.points), 
    count(
      standings_1.raceid), 
    standings_1.points, 
    standings_1.driverstandingsid
  from 
    standings as standings_1
  where standings_1.date is not NULL
  group by standings_1.driverstandingsid, standings_1.points, standings_1.wins
  limit 42)
UNION
(select  
    standings_2.raceid, 
    max(
      standings_2.date), 
    sum(
      standings_2.points), 
    max(
      standings_2.points), 
    min(
      standings_2.driverid), 
    standings_2.points, 
    standings_2.raceid
  from 
    constructors as constructors_1
      inner join standings as standings_2
      on (constructors_1.constructorid = standings_2.driverstandingsid )
  where standings_2.points = standings_2.points
  group by constructors_1.constructorid, constructors_1.name, constructors_1.nationality, standings_2.driverid, standings_2.driverstandingsid, standings_2.raceid, standings_2.wins
  limit 14);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    qualifying_1.date), 
  constructors_2.constructorref, 
  constructors_2.constructorid, 
  constructors_2.name, 
  constructors_2.nationality, 
  qualifying_1.driverid, 
  qualifying_1.position, 
  qualifying_1.qualifyid
from 
  constructors as constructors_1
      inner join qualifying as qualifying_1
      on (constructors_1.constructorid = qualifying_1.qualifyid )
    inner join constructors as constructors_2
    on (qualifying_1.qualifyid = constructors_2.constructorid )
where constructors_1.nationality is not NULL
group by constructors_2.constructorid, constructors_2.constructorref, constructors_2.name, constructors_2.nationality, qualifying_1.driverid, qualifying_1.position, qualifying_1.qualifyid
limit 27;
-- meta {"num_joins":2,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    constructor_standings_1.date, 
    constructor_standings_1.points, 
    avg(
      constructor_standings_1.raceid), 
    constructor_standings_1.position, 
    constructor_standings_1.raceid
  from 
    constructor_standings as constructor_standings_1
  where constructor_standings_1.position is not NULL
  group by constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid
  limit 39)
UNION
(select  
    constructor_standings_2.date, 
    sum(
      constructor_standings_2.constructorid), 
    avg(
      results_1.constructorid), 
    results_1.laps, 
    min(
      circuits_1.lng)
  from 
    constructor_standings as constructor_standings_2
        inner join circuits as circuits_1
        on (constructor_standings_2.constructorstandingsid = circuits_1.circuitid )
      inner join results as results_1
      on (circuits_1.circuitid = results_1.resultid )
  where circuits_1.lat is not NULL
  group by constructor_standings_2.constructorid, constructor_standings_2.constructorstandingsid, constructor_standings_2.raceid, results_1.grid
  limit 15);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    constructor_standings_1.wins, 
    standings_1.driverid, 
    constructor_standings_1.date, 
    constructor_standings_1.raceid, 
    constructor_standings_1.constructorid
  from 
    constructor_standings as constructor_standings_1
      inner join standings as standings_1
      on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
  where constructor_standings_1.date is not NULL
  limit 10)
INTERSECT
(select  
    constructor_standings_2.wins, 
    standings_2.raceid, 
    constructor_standings_2.date, 
    standings_2.position, 
    constructor_standings_2.position
  from 
    constructor_standings as constructor_standings_2
      inner join standings as standings_2
      on (constructor_standings_2.constructorstandingsid = standings_2.driverstandingsid )
  where constructor_standings_2.constructorid is not NULL
  group by constructor_standings_2.wins, standings_2.points, standings_2.raceid, standings_2.wins
  limit 1);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid
from 
  races as races_1
where races_1.raceid <= races_1.year
limit 27;
-- meta {"num_joins":0,"num_aggregates":8,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    avg(
      results_1.rank), 
    results_1.constructorid, 
    results_1.driverid, 
    avg(
      results_1.raceid), 
    sum(
      results_1.grid), 
    max(
      results_1.date), 
    count(*), 
    results_1.position, 
    avg(
      results_1.points), 
    results_1.statusid, 
    results_1.milliseconds, 
    results_1.rank
  from 
    results as results_1
  where results_1.laps > results_1.statusid
  group by results_1.constructorid, results_1.driverid, results_1.milliseconds, results_1.position, results_1.rank, results_1.statusid
  limit 4)
EXCEPT
(select  
    max(
      standings_1.points), 
    standings_1.driverstandingsid, 
    standings_1.position, 
    sum(
      standings_1.driverstandingsid), 
    avg(
      standings_1.driverid), 
    max(
      standings_1.date), 
    min(
      standings_1.wins), 
    standings_1.points, 
    min(
      standings_1.points), 
    max(
      standings_1.driverstandingsid), 
    min(
      standings_1.date), 
    standings_1.points
  from 
    standings as standings_1
  where standings_1.date is not NULL
  group by standings_1.date, standings_1.raceid
  limit 36);
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    max(
      standings_1.driverid), 
    constructor_results_1.constructorresultsid, 
    standings_1.driverid, 
    constructor_results_1.raceid, 
    qualifying_1.position
  from 
    qualifying as qualifying_1
      inner join constructor_results as constructor_results_1
        inner join standings as standings_1
        on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
      on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
  where standings_1.points is not NULL
  group by constructor_results_1.constructorresultsid, constructor_results_1.raceid, qualifying_1.position, standings_1.driverid
  limit 17)
EXCEPT
(select  
    max(
      standings_2.driverid), 
    standings_2.wins, 
    standings_2.raceid, 
    standings_2.raceid, 
    standings_2.position
  from 
    standings as standings_2
  where standings_2.date < standings_2.date
  group by standings_2.driverid, standings_2.points, standings_2.position, standings_2.raceid
  limit 2);
-- meta {"num_joins":3,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    drivers_1.nationality, 
    drivers_1.forename, 
    drivers_1.code, 
    drivers_1.driverref, 
    drivers_1.driverid, 
    drivers_1.surname
  from 
    drivers as drivers_1
  where drivers_1.code is not NULL
  limit 5)
UNION
(select  
    circuits_1.circuitref, 
    circuits_1.circuitref, 
    circuits_1.circuitref, 
    count(
      constructor_standings_1.constructorid), 
    circuits_1.circuitid, 
    min(
      constructor_standings_1.wins)
  from 
    constructor_standings as constructor_standings_1
          inner join standings as standings_1
          on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
        inner join circuits as circuits_1
        on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
      inner join constructor_standings as constructor_standings_2
      on (standings_1.driverstandingsid = constructor_standings_2.constructorstandingsid )
  where circuits_1.lng <= constructor_standings_2.points
  group by circuits_1.circuitid, circuits_1.lat, circuits_1.lng, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_2.constructorstandingsid, constructor_standings_2.date, constructor_standings_2.raceid, standings_1.driverid
  limit 33);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    results_1.date, 
    results_1.positionorder, 
    results_1.laps, 
    results_1.rank
  from 
    results as results_1
  where results_1.number is not NULL
  limit 33)
EXCEPT
(select  
    count(*), 
    results_2.constructorid, 
    results_2.grid, 
    results_2.milliseconds
  from 
    results as results_2
  where results_2.fastestlap is not NULL
  limit 17);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    results_1.position), 
  results_1.constructorid, 
  races_1.date, 
  results_1.rank, 
  min(
    results_1.date), 
  races_1.year
from 
  races as races_1
    inner join results as results_1
    on (races_1.raceid = results_1.resultid )
where races_1.time is not NULL
group by races_1.date, races_1.year, results_1.constructorid, results_1.rank
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date, 
  standings_1.points, 
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  standings_1.driverid
from 
  constructor_standings as constructor_standings_1
    inner join standings as standings_1
    on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
where standings_1.driverstandingsid is not NULL
limit 36;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref, 
  drivers_1.driverid, 
  races_1.date, 
  avg(
    races_1.year), 
  min(
    races_1.year), 
  races_1.year, 
  max(
    races_1.date)
from 
  races as races_1
    inner join drivers as drivers_1
    on (races_1.raceid = drivers_1.driverid )
where races_1.time is not NULL
group by drivers_1.driverid, drivers_1.driverref, races_1.date, races_1.year
limit 24;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    results_1.constructorid, 
    results_1.position
  from 
    results as results_1
  where results_1.resultid is not NULL
  limit 17)
UNION
(select  
    standings_1.driverstandingsid, 
    circuits_1.lat
  from 
    standings as standings_1
      inner join circuits as circuits_1
      on (standings_1.driverstandingsid = circuits_1.circuitid )
  where circuits_1.country is not NULL
  limit 32);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    circuits_1.name, 
    circuits_1.lng, 
    circuits_1.circuitref, 
    circuits_1.location, 
    circuits_1.lat
  from 
    circuits as circuits_1
  where circuits_1.circuitid is not NULL
  limit 42)
EXCEPT
(select  
    min(
      drivers_1.dob), 
    count(*), 
    drivers_1.forename, 
    drivers_1.driverref, 
    circuits_2.lat
  from 
    drivers as drivers_1
      inner join circuits as circuits_2
      on (drivers_1.driverid = circuits_2.circuitid )
  where circuits_2.lng > circuits_2.lat
  limit 26);
