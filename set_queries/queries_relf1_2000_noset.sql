-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructor_results_1.date), 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructors_1.constructorid, 
  count(
    constructors_1.nationality), 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.nationality, 
  max(
    constructor_results_1.points), 
  min(
    constructor_results_1.date)
from 
  constructors as constructors_1
    inner join constructor_results as constructor_results_1
    on (constructor_results_1.constructorid = constructors_1.constructorid )
where constructor_results_1.date >= constructor_results_1.date
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  standings_1.date
from 
  standings as standings_1
where standings_1.points is not NULL
limit 1;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins, 
  standings_2.wins, 
  constructor_results_1.points
from 
  standings as standings_1
      inner join constructor_results as constructor_results_1
      on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
    inner join standings as standings_2
    on (constructor_results_1.constructorresultsid = standings_2.driverstandingsid )
where standings_2.position is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid > constructor_standings_1.constructorid
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid, 
  min(
    qualifying_1.date), 
  qualifying_1.number, 
  max(
    qualifying_1.date), 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
group by qualifying_1.driverid, qualifying_1.number, qualifying_1.qualifyid
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.rank, 
  results_1.milliseconds, 
  results_1.resultid, 
  results_1.points
from 
  results as results_1
where results_1.constructorid is not NULL
limit 2;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date
from 
  results as results_1
          inner join constructor_results as constructor_results_1
            inner join constructor_standings as constructor_standings_1
            on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
          on (results_1.resultid = constructor_results_1.constructorresultsid )
        inner join circuits as circuits_1
        on (results_1.resultid = circuits_1.circuitid )
      inner join races as races_1
      on (constructor_standings_1.raceid = races_1.raceid )
    inner join constructors as constructors_1
    on (races_1.raceid = constructors_1.constructorid )
where constructor_results_1.constructorresultsid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    constructor_standings_1.constructorstandingsid), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.position, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points > constructor_standings_1.points
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.position
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.code, 
  max(
    drivers_1.dob)
from 
  drivers as drivers_1
where drivers_1.forename is not NULL
group by drivers_1.code
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid, 
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
limit 3;
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    results_1.date), 
  races_1.raceid, 
  min(
    results_1.constructorid), 
  count(
    results_1.laps), 
  drivers_1.code, 
  races_1.name, 
  drivers_1.surname, 
  drivers_1.nationality, 
  races_1.round
from 
  races as races_1
      inner join results as results_1
      on (results_1.raceid = races_1.raceid )
    inner join drivers as drivers_1
    on (races_1.raceid = drivers_1.driverid )
where results_1.date > races_1.date
group by drivers_1.code, drivers_1.nationality, drivers_1.surname, races_1.name, races_1.raceid, races_1.round
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.round, 
  races_1.time, 
  races_1.raceid, 
  races_1.date, 
  races_1.name, 
  races_1.circuitid
from 
  races as races_1
where races_1.round is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.driverid, 
  results_1.grid
from 
  results as results_1
where results_1.date is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorid > constructors_1.constructorid
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  min(
    qualifying_1.date)
from 
  qualifying as qualifying_1
where qualifying_1.date = qualifying_1.date
group by qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid
from 
  standings as standings_1
where standings_1.raceid = standings_1.wins
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.code is not NULL
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref, 
  circuits_1.location, 
  circuits_1.circuitid
from 
  circuits as circuits_1
    inner join results as results_1
    on (circuits_1.circuitid = results_1.resultid )
where results_1.laps is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  avg(
    constructor_results_1.points)
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.points
limit 3;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    drivers_1.dob), 
  min(
    drivers_1.dob), 
  races_1.time, 
  drivers_1.code, 
  avg(
    races_1.raceid), 
  races_1.name
from 
  races as races_1
    inner join drivers as drivers_1
    on (races_1.raceid = drivers_1.driverid )
where drivers_1.dob is not NULL
group by drivers_1.code, races_1.name, races_1.time
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid
from 
  races as races_1
    inner join constructor_results as constructor_results_1
    on (constructor_results_1.raceid = races_1.raceid )
where constructor_results_1.raceid is not NULL
limit 4;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.surname, 
  constructor_results_1.points, 
  drivers_1.nationality, 
  races_1.round, 
  constructor_results_1.raceid, 
  races_1.raceid, 
  standings_1.position
from 
  standings as standings_1
        inner join drivers as drivers_1
        on (standings_1.driverid = drivers_1.driverid )
      inner join constructor_results as constructor_results_1
      on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
    inner join races as races_1
    on (standings_1.raceid = races_1.raceid )
where races_1.date is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":7,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  constructor_standings_1.points, 
  constructor_standings_1.wins, 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.date, 
  sum(
    constructor_standings_1.constructorstandingsid), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid, 
  max(
    constructor_standings_1.date), 
  max(
    constructor_standings_1.constructorstandingsid), 
  max(
    constructor_standings_1.position), 
  max(
    constructor_standings_1.constructorstandingsid), 
  min(
    constructor_standings_1.date)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.forename > drivers_1.nationality
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid, 
  qualifying_1.qualifyid, 
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number, 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
limit 1;
-- meta {"num_joins":1,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  max(
    circuits_1.alt), 
  standings_1.driverstandingsid, 
  circuits_1.name, 
  min(
    standings_1.date), 
  standings_1.wins, 
  min(
    circuits_1.circuitid), 
  standings_1.driverid, 
  circuits_1.circuitid, 
  sum(
    circuits_1.lng)
from 
  circuits as circuits_1
    inner join standings as standings_1
    on (circuits_1.circuitid = standings_1.driverstandingsid )
where standings_1.date is not NULL
group by circuits_1.circuitid, circuits_1.name, standings_1.driverid, standings_1.driverstandingsid, standings_1.wins
limit 4;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverid, 
  min(
    drivers_1.driverid), 
  drivers_2.nationality
from 
  drivers as drivers_1
    inner join drivers as drivers_2
    on (drivers_1.driverid = drivers_2.driverid )
where drivers_2.dob is not NULL
group by drivers_1.driverid, drivers_2.nationality
limit 3;
-- meta {"num_joins":6,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorstandingsid, 
  circuits_1.country, 
  count(
    constructors_1.constructorref), 
  constructor_standings_1.raceid, 
  circuits_3.name, 
  constructors_1.constructorid, 
  circuits_3.location, 
  results_2.raceid, 
  circuits_3.lng, 
  circuits_1.lng, 
  circuits_2.lng, 
  constructor_standings_1.points, 
  results_2.positionorder, 
  max(
    circuits_2.circuitid)
from 
  circuits as circuits_1
    inner join constructors as constructors_1
      inner join results as results_1
        inner join results as results_2
            inner join circuits as circuits_2
            on (results_2.resultid = circuits_2.circuitid )
          inner join constructor_standings as constructor_standings_1
            inner join circuits as circuits_3
            on (constructor_standings_1.constructorstandingsid = circuits_3.circuitid )
          on (circuits_2.circuitid = constructor_standings_1.constructorstandingsid )
        on (results_1.resultid = circuits_2.circuitid )
      on (constructors_1.constructorid = circuits_3.circuitid )
    on (circuits_1.circuitid = results_2.resultid )
where results_2.fastestlap is not NULL
group by circuits_1.country, circuits_1.lng, circuits_2.lng, circuits_3.lng, circuits_3.location, circuits_3.name, constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.raceid, constructors_1.constructorid, results_2.positionorder, results_2.raceid
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.constructorid, 
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitid, 
  circuits_1.country, 
  circuits_1.lng, 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.country, 
  min(
    circuits_1.alt), 
  avg(
    circuits_1.lat), 
  circuits_1.lat, 
  circuits_1.alt, 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
group by circuits_1.alt, circuits_1.country, circuits_1.lat, circuits_1.location
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_standings_1.constructorstandingsid), 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
group by constructor_standings_1.date
limit 4;
-- meta {"num_joins":7,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_standings_2.position, 
  min(
    constructor_standings_1.date), 
  constructors_1.constructorid, 
  constructor_results_1.raceid
from 
  constructor_standings as constructor_standings_1
          inner join standings as standings_1
            inner join constructors as constructors_1
            on (standings_1.driverstandingsid = constructors_1.constructorid )
          on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
        inner join qualifying as qualifying_1
        on (standings_1.driverstandingsid = qualifying_1.qualifyid )
      inner join constructor_standings as constructor_standings_2
        inner join constructor_results as constructor_results_1
        on (constructor_standings_2.constructorstandingsid = constructor_results_1.constructorresultsid )
      on (qualifying_1.qualifyid = constructor_standings_2.constructorstandingsid )
    inner join constructors as constructors_2
      inner join standings as standings_2
      on (constructors_2.constructorid = standings_2.driverstandingsid )
    on (constructors_1.constructorid = standings_2.driverstandingsid )
where standings_2.wins is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.raceid, constructor_standings_1.constructorstandingsid, constructor_standings_2.position, constructors_1.constructorid, standings_1.driverid
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    drivers_1.dob), 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.forename < drivers_1.nationality
group by drivers_1.nationality
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 3;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.raceid, 
  constructor_results_1.date, 
  count(*), 
  constructors_1.nationality, 
  constructor_standings_1.constructorstandingsid, 
  constructors_1.name, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
    inner join constructors as constructors_1
      inner join constructor_standings as constructor_standings_1
      on (constructor_standings_1.constructorid = constructors_1.constructorid )
    on (constructor_results_1.constructorid = constructors_1.constructorid )
where constructor_standings_1.constructorid is not NULL
group by constructor_results_1.date, constructor_results_1.points, constructor_standings_1.constructorstandingsid, constructor_standings_1.raceid, constructors_1.name, constructors_1.nationality
limit 1;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid, 
  qualifying_1.number, 
  circuits_1.circuitref, 
  count(
    qualifying_1.constructorid), 
  qualifying_1.qualifyid, 
  circuits_1.name
from 
  circuits as circuits_1
    inner join qualifying as qualifying_1
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where circuits_1.location is not NULL
group by circuits_1.circuitref, circuits_1.name, qualifying_1.driverid, qualifying_1.number, qualifying_1.qualifyid
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorref = constructors_1.name
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.statusid, 
  results_1.raceid, 
  results_1.laps, 
  min(
    results_1.date), 
  results_1.date, 
  results_1.fastestlap, 
  sum(
    results_1.rank), 
  results_1.grid
from 
  results as results_1
where results_1.laps is not NULL
group by results_1.date, results_1.fastestlap, results_1.grid, results_1.laps, results_1.raceid, results_1.statusid
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 1;
-- meta {"num_joins":7,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_4.driverref, 
  max(
    standings_1.driverstandingsid), 
  standings_1.raceid, 
  drivers_3.code, 
  races_1.time, 
  drivers_3.dob, 
  drivers_2.forename
from 
  constructors as constructors_1
      inner join standings as standings_1
        inner join races as races_1
        on (standings_1.raceid = races_1.raceid )
      on (constructors_1.constructorid = races_1.raceid )
    inner join results as results_1
        inner join drivers as drivers_1
            inner join drivers as drivers_2
            on (drivers_1.driverid = drivers_2.driverid )
          inner join drivers as drivers_3
          on (drivers_2.driverid = drivers_3.driverid )
        on (results_1.driverid = drivers_1.driverid )
      inner join drivers as drivers_4
      on (drivers_1.driverid = drivers_4.driverid )
    on (constructors_1.constructorid = drivers_2.driverid )
where drivers_4.code is not NULL
group by drivers_2.forename, drivers_3.code, drivers_3.dob, drivers_4.driverref, races_1.time, standings_1.raceid
limit 4;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorstandingsid, 
  standings_1.raceid, 
  max(
    results_1.date)
from 
  results as results_1
        inner join standings as standings_1
        on (results_1.resultid = standings_1.driverstandingsid )
      inner join races as races_1
      on (standings_1.raceid = races_1.raceid )
    inner join constructor_standings as constructor_standings_1
    on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
where results_1.fastestlap >= constructor_standings_1.points
group by constructor_standings_1.constructorstandingsid, standings_1.raceid
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.date, 
  constructor_results_1.points, 
  standings_1.wins, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  standings_1.raceid, 
  standings_1.points, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
    inner join standings as standings_1
    on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
where constructor_results_1.constructorresultsid >= constructor_results_1.raceid
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.name
from 
  races as races_1
where races_1.circuitid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  min(
    constructor_results_1.points), 
  max(
    constructor_results_1.raceid), 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date > constructor_results_1.date
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid, 
  standings_1.points, 
  min(
    standings_1.points)
from 
  standings as standings_1
where standings_1.date is not NULL
group by standings_1.driverid, standings_1.points
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.lng = circuits_1.alt
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.qualifyid, 
  qualifying_1.position, 
  qualifying_1.driverid, 
  qualifying_1.constructorid, 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
limit 3;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitid, 
  qualifying_1.raceid, 
  circuits_1.lng, 
  qualifying_1.number, 
  qualifying_1.constructorid, 
  min(
    qualifying_1.date), 
  qualifying_1.driverid, 
  max(
    qualifying_1.date), 
  qualifying_1.date, 
  circuits_1.country
from 
  qualifying as qualifying_1
    inner join circuits as circuits_1
    on (qualifying_1.qualifyid = circuits_1.circuitid )
where qualifying_1.constructorid is not NULL
group by circuits_1.circuitid, circuits_1.country, circuits_1.lng, qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.raceid
limit 2;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name
from 
  races as races_1
      inner join qualifying as qualifying_1
      on (qualifying_1.raceid = races_1.raceid )
    inner join results as results_1
      inner join constructors as constructors_1
      on (results_1.constructorid = constructors_1.constructorid )
    on (results_1.raceid = races_1.raceid )
where results_1.raceid >= results_1.statusid
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    constructor_results_1.date), 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    qualifying_1.date), 
  qualifying_1.date, 
  qualifying_1.number, 
  qualifying_1.driverid, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.qualifyid
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.code, 
  constructor_standings_1.wins, 
  drivers_1.forename
from 
  constructor_standings as constructor_standings_1
    inner join drivers as drivers_1
    on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
where constructor_standings_1.constructorstandingsid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.forename, 
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.code = drivers_1.driverref
limit 1;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  avg(
    constructors_1.constructorid)
from 
  constructors as constructors_1
    inner join circuits as circuits_1
    on (constructors_1.constructorid = circuits_1.circuitid )
where circuits_1.circuitid < constructors_1.constructorid
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality
limit 2;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverstandingsid, 
  qualifying_1.raceid, 
  standings_1.position, 
  standings_1.wins
from 
  qualifying as qualifying_1
        inner join standings as standings_1
        on (qualifying_1.qualifyid = standings_1.driverstandingsid )
      inner join standings as standings_2
      on (standings_1.driverstandingsid = standings_2.driverstandingsid )
    inner join qualifying as qualifying_2
    on (qualifying_1.qualifyid = qualifying_2.qualifyid )
where standings_2.raceid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    races_1.date), 
  min(
    races_1.date), 
  min(
    races_1.date), 
  races_1.circuitid
from 
  races as races_1
where races_1.year is not NULL
group by races_1.circuitid
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  min(
    constructor_results_1.date), 
  constructor_results_1.raceid, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  circuits_1.location
from 
  constructor_results as constructor_results_1
    inner join circuits as circuits_1
    on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
where circuits_1.name >= circuits_1.location
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    standings_1.wins), 
  standings_1.wins, 
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  standings_1.position, 
  standings_1.raceid, 
  max(
    standings_1.date), 
  standings_1.points
from 
  standings as standings_1
where standings_1.points is not NULL
group by standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
limit 2;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    standings_1.driverid), 
  standings_1.position, 
  standings_1.points, 
  results_1.fastestlap, 
  results_1.raceid, 
  results_1.grid, 
  standings_1.date
from 
  standings as standings_1
    inner join results as results_1
    on (standings_1.driverstandingsid = results_1.resultid )
where standings_1.date > results_1.date
group by results_1.fastestlap, results_1.grid, results_1.raceid, standings_1.date, standings_1.points, standings_1.position
limit 3;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverid, 
  drivers_1.surname, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  avg(
    constructor_results_1.points), 
  min(
    constructor_results_1.date)
from 
  constructor_results as constructor_results_1
    inner join drivers as drivers_1
    on (constructor_results_1.constructorresultsid = drivers_1.driverid )
where constructor_results_1.date < drivers_1.dob
group by constructor_results_1.constructorid, constructor_results_1.points, drivers_1.driverid, drivers_1.surname
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lat, 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
limit 3;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_standings_1.date), 
  constructor_standings_1.date, 
  constructor_standings_1.position, 
  count(*)
from 
  drivers as drivers_1
    inner join constructor_standings as constructor_standings_1
    on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.points is not NULL
group by constructor_standings_1.date, constructor_standings_1.position
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 3;
-- meta {"num_joins":3,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.code, 
  standings_1.driverstandingsid, 
  races_1.year, 
  races_1.raceid, 
  drivers_1.driverref, 
  standings_1.points, 
  max(
    races_1.date), 
  races_2.raceid, 
  drivers_1.nationality, 
  standings_1.driverid, 
  standings_1.position, 
  standings_1.wins, 
  drivers_1.dob, 
  avg(
    races_2.year), 
  races_1.circuitid, 
  count(
    races_1.raceid), 
  standings_1.date, 
  races_1.name, 
  min(
    standings_1.date), 
  min(
    standings_1.points), 
  drivers_1.forename
from 
  standings as standings_1
    inner join races as races_1
        inner join drivers as drivers_1
        on (races_1.raceid = drivers_1.driverid )
      inner join races as races_2
      on (drivers_1.driverid = races_2.raceid )
    on (standings_1.raceid = races_1.raceid )
where standings_1.points = standings_1.points
group by drivers_1.code, drivers_1.dob, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, races_1.circuitid, races_1.name, races_1.raceid, races_1.year, races_2.raceid, standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.wins
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  standings_1.points
from 
  standings as standings_1
where standings_1.position is not NULL
limit 2;
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  constructors_1.name, 
  results_1.fastestlap, 
  results_1.milliseconds, 
  min(
    constructors_1.constructorid), 
  min(
    results_1.resultid), 
  constructors_1.constructorid, 
  results_1.laps, 
  max(
    results_1.date), 
  avg(
    results_1.resultid)
from 
  results as results_1
    inner join constructors as constructors_1
    on (results_1.constructorid = constructors_1.constructorid )
where results_1.resultid is not NULL
group by constructors_1.constructorid, constructors_1.name, constructors_1.nationality, results_1.fastestlap, results_1.laps, results_1.milliseconds
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    circuits_1.circuitid), 
  circuits_1.location, 
  circuits_1.circuitref, 
  circuits_1.circuitid, 
  circuits_1.name, 
  circuits_1.lat, 
  circuits_1.country
from 
  circuits as circuits_1
where circuits_1.circuitid < circuits_1.circuitid
group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.location, circuits_1.name
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    constructors_1.constructorid), 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.name
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.date, 
  races_1.time, 
  races_1.name, 
  races_1.circuitid, 
  races_1.round, 
  max(
    races_1.date), 
  races_1.year, 
  count(*)
from 
  races as races_1
where races_1.date < races_1.date
group by races_1.circuitid, races_1.date, races_1.name, races_1.round, races_1.time, races_1.year
limit 2;
-- meta {"num_joins":1,"num_aggregates":8,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    drivers_1.dob), 
  drivers_1.nationality, 
  avg(
    circuits_1.lng), 
  circuits_1.circuitid, 
  drivers_1.surname, 
  drivers_1.driverid, 
  avg(
    drivers_1.driverid), 
  circuits_1.alt, 
  min(
    circuits_1.lng), 
  avg(
    circuits_1.alt), 
  count(*), 
  max(
    drivers_1.dob), 
  circuits_1.circuitref, 
  drivers_1.code, 
  max(
    circuits_1.circuitid), 
  circuits_1.lat
from 
  circuits as circuits_1
    inner join drivers as drivers_1
    on (circuits_1.circuitid = drivers_1.driverid )
where drivers_1.forename is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.lat, drivers_1.code, drivers_1.driverid, drivers_1.nationality, drivers_1.surname
limit 3;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
        inner join qualifying as qualifying_2
        on (qualifying_1.qualifyid = qualifying_2.qualifyid )
      inner join constructor_results as constructor_results_1
      on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
    inner join constructors as constructors_1
    on (constructor_results_1.constructorid = constructors_1.constructorid )
where constructor_results_1.raceid is not NULL
limit 2;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref, 
  constructors_1.nationality
from 
  constructors as constructors_1
      inner join standings as standings_1
      on (constructors_1.constructorid = standings_1.driverstandingsid )
    inner join circuits as circuits_1
    on (standings_1.driverstandingsid = circuits_1.circuitid )
where circuits_1.lat < circuits_1.lng
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  sum(
    constructor_results_1.points), 
  max(
    constructor_results_1.constructorid), 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.date, constructor_results_1.points
limit 2;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.date, 
  races_1.name
from 
  races as races_1
        inner join standings as standings_1
        on (standings_1.raceid = races_1.raceid )
      inner join races as races_2
      on (standings_1.raceid = races_2.raceid )
    inner join races as races_3
    on (standings_1.raceid = races_3.raceid )
where races_2.name is not NULL
limit 2;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    standings_1.points), 
  constructor_standings_1.raceid, 
  standings_1.raceid, 
  constructor_results_1.constructorid, 
  circuits_1.alt, 
  constructor_results_1.constructorresultsid, 
  standings_1.points
from 
  constructor_standings as constructor_standings_1
    inner join standings as standings_1
      inner join circuits as circuits_1
        inner join constructor_results as constructor_results_1
        on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
      on (standings_1.driverstandingsid = circuits_1.circuitid )
    on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
where constructor_standings_1.wins is not NULL
group by circuits_1.alt, constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_standings_1.raceid, standings_1.points, standings_1.raceid
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.milliseconds
from 
  results as results_1
where results_1.positionorder < results_1.raceid
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date <= constructor_results_1.date
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  avg(
    constructor_results_1.constructorid), 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  avg(
    constructor_results_1.constructorresultsid)
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 1;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points
from 
  drivers as drivers_1
      inner join drivers as drivers_2
      on (drivers_1.driverid = drivers_2.driverid )
    inner join constructor_results as constructor_results_1
    on (drivers_2.driverid = constructor_results_1.constructorresultsid )
where drivers_2.dob <= constructor_results_1.date
limit 3;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.qualifyid
from 
  circuits as circuits_1
      inner join constructor_standings as constructor_standings_1
        inner join circuits as circuits_2
        on (constructor_standings_1.constructorstandingsid = circuits_2.circuitid )
      on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
    inner join qualifying as qualifying_1
    on (circuits_2.circuitid = qualifying_1.qualifyid )
where qualifying_1.qualifyid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.date
from 
  standings as standings_1
where standings_1.points is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location, 
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.circuitid <= circuits_1.circuitid
limit 4;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_2.raceid
from 
  results as results_1
    inner join constructor_results as constructor_results_1
      inner join results as results_2
      on (constructor_results_1.constructorresultsid = results_2.resultid )
    on (results_1.resultid = results_2.resultid )
where constructor_results_1.constructorid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.points, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
limit 1;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  constructors_1.name, 
  constructor_standings_1.points, 
  constructor_results_1.points, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
      inner join constructor_results as constructor_results_1
      on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
    inner join constructors as constructors_1
    on (constructor_standings_1.constructorid = constructors_1.constructorid )
where constructor_standings_1.constructorid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    results_1.points), 
  sum(
    results_1.fastestlap), 
  results_1.number
from 
  results as results_1
where results_1.positionorder = results_1.resultid
group by results_1.number
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date, 
  standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
    inner join standings as standings_1
    on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
where standings_1.driverid > constructor_standings_1.raceid
limit 3;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
    inner join results as results_1
      inner join constructors as constructors_1
      on (results_1.constructorid = constructors_1.constructorid )
    on (qualifying_1.constructorid = constructors_1.constructorid )
where results_1.statusid is not NULL
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.qualifyid, 
  qualifying_1.driverid, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
    inner join constructor_results as constructor_results_1
    on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
where constructor_results_1.raceid is not NULL
limit 1;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid, 
  drivers_1.forename, 
  max(
    drivers_1.dob), 
  drivers_1.nationality, 
  drivers_1.surname, 
  drivers_1.driverid, 
  min(
    drivers_1.dob), 
  sum(
    standings_1.points), 
  drivers_1.code
from 
  standings as standings_1
    inner join drivers as drivers_1
    on (standings_1.driverid = drivers_1.driverid )
where standings_1.driverid is not NULL
group by drivers_1.code, drivers_1.driverid, drivers_1.forename, drivers_1.nationality, drivers_1.surname, standings_1.driverid
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.date, 
  results_1.statusid
from 
  results as results_1
where results_1.date < results_1.date
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid, 
  min(
    constructor_standings_1.points)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins >= constructor_standings_1.constructorid
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date
limit 4;
-- meta {"num_joins":4,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    drivers_2.dob), 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  min(
    standings_2.date)
from 
  drivers as drivers_1
        inner join standings as standings_1
        on (standings_1.driverid = drivers_1.driverid )
      inner join constructor_results as constructor_results_1
      on (drivers_1.driverid = constructor_results_1.constructorresultsid )
    inner join drivers as drivers_2
      inner join standings as standings_2
      on (standings_2.driverid = drivers_2.driverid )
    on (standings_2.driverid = drivers_1.driverid )
where standings_2.raceid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.points
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins, 
  standings_1.raceid, 
  standings_1.points
from 
  standings as standings_1
where standings_1.position is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lng, 
  circuits_1.lat, 
  circuits_1.name, 
  circuits_1.circuitref, 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.alt < circuits_1.lng
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date
from 
  qualifying as qualifying_1
    inner join qualifying as qualifying_2
    on (qualifying_1.qualifyid = qualifying_2.qualifyid )
where qualifying_2.date > qualifying_1.date
limit 2;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.name, 
  min(
    constructors_1.constructorid), 
  min(
    constructors_1.constructorid), 
  constructors_1.constructorref, 
  sum(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name
limit 1;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.resultid, 
  min(
    results_1.number), 
  results_1.raceid, 
  results_1.milliseconds
from 
  results as results_1
    inner join drivers as drivers_1
    on (results_1.driverid = drivers_1.driverid )
where results_1.driverid is not NULL
group by results_1.milliseconds, results_1.raceid, results_1.resultid
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year, 
  races_1.time, 
  races_1.round
from 
  races as races_1
where races_1.round = races_1.circuitid
limit 3;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins, 
  max(
    constructor_standings_1.constructorstandingsid), 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.points, 
  constructor_standings_1.date, 
  sum(
    constructor_standings_1.raceid), 
  max(
    constructor_standings_1.constructorid), 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.wins
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name, 
  sum(
    circuits_1.circuitid), 
  circuits_1.lat, 
  max(
    circuits_1.lat), 
  circuits_1.country
from 
  circuits as circuits_1
where circuits_1.country is not NULL
group by circuits_1.country, circuits_1.lat, circuits_1.name
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructor_standings_1.constructorstandingsid), 
  constructor_standings_1.points, 
  avg(
    constructor_standings_1.points), 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position <= constructor_standings_1.raceid
group by constructor_standings_1.date, constructor_standings_1.points
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.nationality
from 
  constructors as constructors_1
    inner join qualifying as qualifying_1
    on (qualifying_1.constructorid = constructors_1.constructorid )
where constructors_1.name < constructors_1.constructorref
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    standings_1.points), 
  standings_1.date, 
  standings_1.raceid, 
  standings_1.position, 
  standings_1.wins, 
  standings_1.points, 
  min(
    standings_1.date), 
  standings_1.driverid, 
  avg(
    standings_1.points)
from 
  standings as standings_1
where standings_1.date is not NULL
group by standings_1.date, standings_1.driverid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
limit 3;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.laps, 
  results_1.statusid, 
  qualifying_1.date, 
  qualifying_1.qualifyid, 
  results_1.resultid
from 
  races as races_1
      inner join results as results_1
        inner join qualifying as qualifying_1
        on (results_1.resultid = qualifying_1.qualifyid )
      on (results_1.raceid = races_1.raceid )
    inner join qualifying as qualifying_2
    on (qualifying_1.qualifyid = qualifying_2.qualifyid )
where results_1.points >= results_1.fastestlap
limit 2;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructor_results_1.constructorresultsid, 
  constructors_1.nationality, 
  constructor_results_2.points, 
  constructors_1.constructorid, 
  constructor_results_2.constructorresultsid, 
  avg(
    constructor_results_2.raceid), 
  constructor_results_1.points, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
      inner join constructors as constructors_1
      on (constructor_results_1.constructorid = constructors_1.constructorid )
    inner join constructor_results as constructor_results_2
    on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
where constructor_results_1.points >= constructor_results_2.points
group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_2.constructorresultsid, constructor_results_2.points, constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name, 
  constructors_1.constructorid
from 
  constructors as constructors_1
    inner join races as races_1
    on (constructors_1.constructorid = races_1.raceid )
where constructors_1.nationality is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  max(
    constructor_results_1.points), 
  min(
    constructor_results_1.points), 
  avg(
    constructor_results_1.points), 
  max(
    constructor_results_1.date)
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 3;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.date, 
  min(
    results_1.number), 
  results_1.points, 
  max(
    results_1.date), 
  results_1.resultid, 
  constructors_1.constructorref, 
  results_1.grid, 
  constructors_1.nationality, 
  results_1.rank, 
  max(
    results_1.date), 
  constructors_1.constructorid, 
  results_1.positionorder
from 
  results as results_1
    inner join constructors as constructors_1
    on (results_1.constructorid = constructors_1.constructorid )
where results_1.date = results_1.date
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality, results_1.date, results_1.grid, results_1.points, results_1.positionorder, results_1.rank, results_1.resultid
limit 2;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructors_1.name, 
  circuits_1.circuitref, 
  min(
    circuits_1.lng)
from 
  circuits as circuits_1
    inner join constructors as constructors_1
    on (circuits_1.circuitid = constructors_1.constructorid )
where circuits_1.country is not NULL
group by circuits_1.circuitref, constructors_1.constructorref, constructors_1.name
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  avg(
    constructor_standings_1.points), 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.position
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins
from 
  standings as standings_1
where standings_1.wins is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name, 
  sum(
    constructors_1.constructorid), 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorref, constructors_1.name
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.name
from 
  constructors as constructors_1
    inner join races as races_1
    on (constructors_1.constructorid = races_1.raceid )
where races_1.date is not NULL
limit 2;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  drivers_1.driverid, 
  max(
    drivers_1.dob), 
  constructor_results_1.points, 
  drivers_1.nationality, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  max(
    constructor_results_1.raceid), 
  min(
    constructor_results_1.points)
from 
  constructor_results as constructor_results_1
    inner join drivers as drivers_1
    on (constructor_results_1.constructorresultsid = drivers_1.driverid )
where drivers_1.forename is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid, drivers_1.driverid, drivers_1.nationality
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.points, 
  results_1.statusid
from 
  results as results_1
where results_1.laps is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  max(
    constructor_results_1.raceid), 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.raceid
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    circuits_1.alt), 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
group by circuits_1.circuitid
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_2.date, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
    inner join qualifying as qualifying_2
    on (qualifying_1.qualifyid = qualifying_2.qualifyid )
where qualifying_2.constructorid is not NULL
limit 2;
-- meta {"num_joins":1,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.nationality, 
  standings_1.wins, 
  standings_1.date, 
  standings_1.position, 
  drivers_1.driverid, 
  standings_1.raceid, 
  standings_1.points, 
  drivers_1.driverref, 
  min(
    standings_1.position), 
  avg(
    standings_1.driverstandingsid), 
  min(
    standings_1.position), 
  max(
    standings_1.driverstandingsid), 
  max(
    standings_1.date), 
  drivers_1.surname
from 
  standings as standings_1
    inner join drivers as drivers_1
    on (standings_1.driverid = drivers_1.driverid )
where standings_1.raceid is not NULL
group by drivers_1.driverid, drivers_1.driverref, drivers_1.nationality, drivers_1.surname, standings_1.date, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
limit 3;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.raceid, 
  drivers_1.nationality, 
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  avg(
    constructor_standings_1.points)
from 
  drivers as drivers_1
    inner join constructor_standings as constructor_standings_1
    on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins, drivers_1.nationality
limit 2;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.date, 
  standings_1.raceid, 
  standings_1.driverstandingsid, 
  constructor_standings_1.position, 
  avg(
    constructor_standings_1.constructorid), 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
    inner join standings as standings_1
    on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
where standings_1.raceid <= constructor_standings_1.position
group by constructor_standings_1.date, constructor_standings_1.position, standings_1.date, standings_1.driverstandingsid, standings_1.raceid
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt, 
  min(
    circuits_1.circuitid), 
  circuits_1.lng, 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.lng
limit 3;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    standings_1.points), 
  sum(
    standings_1.position), 
  standings_1.date, 
  max(
    standings_1.date), 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.date > standings_1.date
group by standings_1.date, standings_1.driverid
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.position, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points <= constructor_standings_1.points
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.country, 
  circuits_1.circuitid, 
  avg(
    circuits_1.lat), 
  circuits_1.lat
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
group by circuits_1.circuitid, circuits_1.country, circuits_1.lat
limit 1;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name, 
  count(
    constructors_1.nationality), 
  count(*), 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  sum(
    constructors_1.constructorid), 
  count(
    constructors_1.name)
from 
  constructors as constructors_1
where constructors_1.name < constructors_1.nationality
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 1;
-- meta {"num_joins":5,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.forename, 
  races_1.raceid, 
  races_1.date, 
  sum(
    races_2.circuitid), 
  drivers_1.driverid, 
  races_2.time
from 
  constructor_standings as constructor_standings_1
    inner join circuits as circuits_1
          inner join constructors as constructors_1
          on (circuits_1.circuitid = constructors_1.constructorid )
        inner join drivers as drivers_1
          inner join races as races_1
          on (drivers_1.driverid = races_1.raceid )
        on (races_1.circuitid = circuits_1.circuitid )
      inner join races as races_2
      on (drivers_1.driverid = races_2.raceid )
    on (constructor_standings_1.raceid = races_1.raceid )
where circuits_1.location > drivers_1.driverref
group by drivers_1.driverid, drivers_1.forename, races_1.date, races_1.raceid, races_2.time
limit 1;
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    results_1.date), 
  circuits_1.lng, 
  min(
    results_1.milliseconds), 
  results_1.positionorder, 
  circuits_1.circuitid, 
  results_1.laps, 
  count(
    circuits_1.alt), 
  circuits_1.alt, 
  max(
    results_1.date)
from 
  circuits as circuits_1
    inner join results as results_1
    on (circuits_1.circuitid = results_1.resultid )
where results_1.grid is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.lng, results_1.laps, results_1.positionorder
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    results_1.date), 
  results_1.rank
from 
  results as results_1
where results_1.resultid >= results_1.positionorder
group by results_1.rank
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.qualifyid, 
  qualifying_1.driverid, 
  qualifying_1.constructorid, 
  count(
    qualifying_1.qualifyid)
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid < qualifying_1.raceid
group by qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.qualifyid
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    constructors_1.constructorid), 
  constructors_1.name, 
  max(
    constructors_1.constructorid), 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorref, constructors_1.name
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.country
from 
  circuits as circuits_1
where circuits_1.country is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  standings_1.points, 
  count(
    standings_1.position), 
  standings_1.wins, 
  standings_1.driverstandingsid, 
  standings_1.position, 
  standings_1.date
from 
  standings as standings_1
where standings_1.raceid is not NULL
group by standings_1.date, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    constructors_1.constructorid), 
  constructors_1.name, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.name
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    constructor_results_1.raceid), 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorresultsid
limit 1;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    qualifying_1.driverid), 
  qualifying_1.driverid, 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  avg(
    qualifying_1.position)
from 
  qualifying as qualifying_1
    inner join constructor_standings as constructor_standings_1
    on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.raceid is not NULL
group by qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.qualifyid
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_standings_1.date), 
  constructor_standings_1.position, 
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid > constructor_standings_1.constructorstandingsid
group by constructor_standings_1.points, constructor_standings_1.position
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.dob, 
  standings_1.driverid
from 
  drivers as drivers_1
    inner join standings as standings_1
    on (standings_1.driverid = drivers_1.driverid )
where standings_1.raceid is not NULL
limit 4;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_2.constructorid, 
  constructors_1.nationality, 
  constructors_2.constructorref, 
  constructors_2.nationality, 
  max(
    standings_1.date), 
  standings_1.driverstandingsid
from 
  constructors as constructors_1
      inner join constructors as constructors_2
      on (constructors_1.constructorid = constructors_2.constructorid )
    inner join standings as standings_1
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where constructors_2.name is not NULL
group by constructors_1.nationality, constructors_2.constructorid, constructors_2.constructorref, constructors_2.nationality, standings_1.driverstandingsid
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.nationality
from 
  standings as standings_1
    inner join drivers as drivers_1
    on (standings_1.driverid = drivers_1.driverid )
where standings_1.raceid is not NULL
limit 2;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  constructor_results_2.constructorid, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructor_results_2.points
from 
  constructor_results as constructor_results_1
    inner join constructors as constructors_1
      inner join constructor_results as constructor_results_2
      on (constructor_results_2.constructorid = constructors_1.constructorid )
    on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
where constructor_results_1.date > constructor_results_2.date
limit 4;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    races_1.round), 
  count(*), 
  races_1.raceid, 
  min(
    races_1.date), 
  races_1.year, 
  races_1.round
from 
  races as races_1
where races_1.year is not NULL
group by races_1.raceid, races_1.round, races_1.year
limit 3;
-- meta {"num_joins":4,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    qualifying_1.date), 
  qualifying_1.driverid, 
  qualifying_1.date, 
  sum(
    results_1.number), 
  constructor_results_1.points, 
  drivers_1.dob, 
  races_1.round, 
  races_1.time
from 
  drivers as drivers_1
        inner join constructor_results as constructor_results_1
        on (drivers_1.driverid = constructor_results_1.constructorresultsid )
      inner join results as results_1
      on (results_1.driverid = drivers_1.driverid )
    inner join races as races_1
      inner join qualifying as qualifying_1
      on (qualifying_1.raceid = races_1.raceid )
    on (constructor_results_1.raceid = races_1.raceid )
where qualifying_1.qualifyid > races_1.year
group by constructor_results_1.points, drivers_1.dob, qualifying_1.date, qualifying_1.driverid, races_1.round, races_1.time
limit 2;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.points, 
  standings_1.driverstandingsid, 
  max(
    constructor_standings_1.constructorid), 
  standings_1.position, 
  standings_1.raceid, 
  max(
    constructor_standings_1.points), 
  constructor_standings_1.constructorstandingsid, 
  standings_1.date, 
  standings_1.driverid, 
  constructor_standings_1.position, 
  constructor_standings_1.date, 
  constructor_standings_1.raceid, 
  min(
    constructor_standings_1.points)
from 
  constructor_standings as constructor_standings_1
    inner join standings as standings_1
    on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
where standings_1.position is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.raceid, standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid
limit 1;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_2.driverid, 
  results_1.statusid, 
  max(
    results_1.driverid), 
  drivers_1.forename
from 
  results as results_1
    inner join drivers as drivers_1
      inner join drivers as drivers_2
      on (drivers_1.driverid = drivers_2.driverid )
    on (results_1.driverid = drivers_2.driverid )
where drivers_1.driverref is not NULL
group by drivers_1.forename, drivers_2.driverid, results_1.statusid
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_2.driverid
from 
  drivers as drivers_1
    inner join drivers as drivers_2
    on (drivers_1.driverid = drivers_2.driverid )
where drivers_2.nationality is not NULL
limit 2;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    qualifying_2.constructorid), 
  qualifying_2.raceid, 
  min(
    qualifying_1.date), 
  qualifying_2.date, 
  count(
    qualifying_2.raceid)
from 
  qualifying as qualifying_1
    inner join qualifying as qualifying_2
    on (qualifying_1.qualifyid = qualifying_2.qualifyid )
where qualifying_2.driverid = qualifying_1.qualifyid
group by qualifying_2.date, qualifying_2.raceid
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lng, 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.lng <= circuits_1.lat
limit 2;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_2.driverid
from 
  constructor_results as constructor_results_1
      inner join drivers as drivers_1
        inner join results as results_1
        on (results_1.driverid = drivers_1.driverid )
      on (constructor_results_1.constructorresultsid = drivers_1.driverid )
    inner join results as results_2
    on (results_1.resultid = results_2.resultid )
where drivers_1.driverid <= results_1.raceid
limit 3;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.position, 
  results_1.statusid, 
  results_1.resultid, 
  results_1.constructorid, 
  results_1.raceid, 
  results_1.number, 
  results_1.positionorder, 
  min(
    results_1.grid), 
  results_1.fastestlap, 
  min(
    results_1.date), 
  results_1.points, 
  results_1.rank, 
  sum(
    results_1.grid), 
  max(
    results_1.date), 
  results_1.date
from 
  results as results_1
where results_1.fastestlap is not NULL
group by results_1.constructorid, results_1.date, results_1.fastestlap, results_1.number, results_1.points, results_1.position, results_1.positionorder, results_1.raceid, results_1.rank, results_1.resultid, results_1.statusid
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid, 
  races_1.year, 
  races_1.raceid
from 
  races as races_1
    inner join constructor_standings as constructor_standings_1
    on (constructor_standings_1.raceid = races_1.raceid )
where races_1.round is not NULL
limit 1;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    qualifying_1.date)
from 
  qualifying as qualifying_1
    inner join constructors as constructors_1
    on (qualifying_1.constructorid = constructors_1.constructorid )
where qualifying_1.date is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.time, 
  races_1.circuitid, 
  races_1.date, 
  races_1.name
from 
  races as races_1
where races_1.name is not NULL
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year, 
  races_1.circuitid, 
  drivers_1.code, 
  drivers_1.driverref
from 
  races as races_1
    inner join drivers as drivers_1
    on (races_1.raceid = drivers_1.driverid )
where drivers_1.driverref > drivers_1.nationality
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.position, 
  results_1.milliseconds, 
  results_1.constructorid, 
  min(
    results_1.date), 
  results_1.driverid
from 
  results as results_1
where results_1.milliseconds is not NULL
group by results_1.constructorid, results_1.driverid, results_1.milliseconds, results_1.position
limit 1;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.points, 
  constructor_results_2.raceid
from 
  constructor_results as constructor_results_1
        inner join constructor_standings as constructor_standings_1
          inner join results as results_1
          on (constructor_standings_1.constructorstandingsid = results_1.resultid )
        on (constructor_results_1.constructorresultsid = results_1.resultid )
      inner join constructor_results as constructor_results_2
      on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
    inner join constructor_standings as constructor_standings_2
    on (constructor_results_1.constructorresultsid = constructor_standings_2.constructorstandingsid )
where constructor_standings_1.constructorstandingsid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  sum(
    constructor_standings_1.points), 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date = constructor_standings_1.date
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.wins
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  qualifying_1.number, 
  qualifying_1.constructorid, 
  qualifying_1.date, 
  qualifying_1.driverid, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.date > qualifying_1.date
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.qualifyid
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.surname
from 
  drivers as drivers_1
    inner join constructor_results as constructor_results_1
    on (drivers_1.driverid = constructor_results_1.constructorresultsid )
where drivers_1.code is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.number, 
  standings_1.driverid
from 
  results as results_1
    inner join standings as standings_1
    on (results_1.resultid = standings_1.driverstandingsid )
where results_1.fastestlap is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid
from 
  standings as standings_1
where standings_1.date > standings_1.date
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.date
from 
  constructors as constructors_1
    inner join results as results_1
    on (results_1.constructorid = constructors_1.constructorid )
where constructors_1.nationality is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":6,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    circuits_1.circuitid), 
  circuits_1.circuitid, 
  max(
    circuits_1.lat), 
  circuits_1.circuitref, 
  count(
    circuits_1.country), 
  max(
    circuits_1.circuitid), 
  count(
    circuits_1.circuitid), 
  count(*), 
  circuits_1.country
from 
  circuits as circuits_1
where circuits_1.circuitid < circuits_1.circuitid
group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.country
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year, 
  races_1.time, 
  races_1.circuitid, 
  sum(
    races_1.year)
from 
  races as races_1
where races_1.date <= races_1.date
group by races_1.circuitid, races_1.time, races_1.year
limit 3;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.positionorder, 
  results_1.rank, 
  results_1.grid, 
  min(
    results_2.date), 
  results_1.milliseconds
from 
  results as results_1
    inner join results as results_2
    on (results_1.resultid = results_2.resultid )
where results_1.statusid is not NULL
group by results_1.grid, results_1.milliseconds, results_1.positionorder, results_1.rank
limit 3;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  avg(
    constructor_results_1.raceid), 
  drivers_1.forename, 
  constructor_results_1.raceid, 
  min(
    drivers_1.dob), 
  constructor_results_1.constructorid, 
  drivers_1.nationality
from 
  constructor_results as constructor_results_1
    inner join drivers as drivers_1
    on (constructor_results_1.constructorresultsid = drivers_1.driverid )
where drivers_1.surname >= drivers_1.driverref
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.raceid, drivers_1.forename, drivers_1.nationality
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.resultid, 
  results_1.positionorder, 
  results_1.number
from 
  results as results_1
where results_1.driverid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  avg(
    constructors_1.constructorid), 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorid, constructors_1.name
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.constructorid, 
  results_1.resultid, 
  results_1.position
from 
  results as results_1
where results_1.rank is not NULL
limit 1;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_standings_1.date), 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
        inner join circuits as circuits_1
        on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
      inner join races as races_1
      on (constructor_standings_1.raceid = races_1.raceid )
    inner join standings as standings_1
    on (standings_1.raceid = races_1.raceid )
where standings_1.raceid < races_1.raceid
group by constructor_standings_1.position
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.name, 
  count(
    constructors_1.constructorref)
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.constructorid, constructors_1.name
limit 3;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    races_1.date), 
  standings_1.driverstandingsid, 
  races_1.time, 
  races_1.raceid, 
  races_1.date, 
  races_1.name, 
  races_1.circuitid
from 
  races as races_1
    inner join standings as standings_1
    on (standings_1.raceid = races_1.raceid )
where races_1.round is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.time, standings_1.driverstandingsid
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 4;
-- meta {"num_joins":6,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    results_1.date), 
  constructor_standings_2.constructorstandingsid, 
  drivers_1.driverid, 
  sum(
    results_1.constructorid), 
  drivers_2.driverref
from 
  results as results_1
      inner join drivers as drivers_1
      on (results_1.driverid = drivers_1.driverid )
    inner join constructor_standings as constructor_standings_1
      inner join constructors as constructors_1
        inner join constructor_standings as constructor_standings_2
          inner join drivers as drivers_2
            inner join qualifying as qualifying_1
            on (qualifying_1.driverid = drivers_2.driverid )
          on (constructor_standings_2.constructorstandingsid = drivers_2.driverid )
        on (qualifying_1.constructorid = constructors_1.constructorid )
      on (constructor_standings_1.constructorstandingsid = drivers_2.driverid )
    on (results_1.resultid = qualifying_1.qualifyid )
where constructors_1.nationality is not NULL
group by constructor_standings_2.constructorstandingsid, drivers_1.driverid, drivers_2.driverref
limit 1;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.position, 
  results_1.positionorder, 
  qualifying_1.qualifyid, 
  results_1.grid, 
  results_1.fastestlap
from 
  results as results_1
      inner join circuits as circuits_1
      on (results_1.resultid = circuits_1.circuitid )
    inner join qualifying as qualifying_1
    on (results_1.resultid = qualifying_1.qualifyid )
where results_1.raceid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    circuits_1.lng), 
  circuits_1.circuitref, 
  circuits_1.country
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
group by circuits_1.circuitref, circuits_1.country
limit 4;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select distinct 
  standings_1.raceid, 
  standings_1.points, 
  constructor_results_3.constructorresultsid, 
  races_2.name, 
  constructor_results_3.points
from 
  standings as standings_1
      inner join constructor_results as constructor_results_1
      on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
    inner join races as races_1
      inner join constructor_results as constructor_results_2
        inner join races as races_2
          inner join constructor_results as constructor_results_3
          on (constructor_results_3.raceid = races_2.raceid )
        on (constructor_results_2.constructorresultsid = constructor_results_3.constructorresultsid )
      on (constructor_results_2.raceid = races_1.raceid )
    on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
where constructor_results_2.points is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  qualifying_1.raceid, 
  qualifying_1.date, 
  max(
    constructor_results_1.points), 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  qualifying_1.position, 
  qualifying_1.number, 
  qualifying_1.constructorid, 
  qualifying_1.driverid, 
  sum(
    qualifying_1.position)
from 
  constructor_results as constructor_results_1
    inner join qualifying as qualifying_1
    on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.raceid, qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.raceid
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
    inner join standings as standings_1
    on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
where constructor_results_1.constructorid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref, 
  circuits_1.lat, 
  circuits_1.country, 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lng, 
  circuits_1.location, 
  circuits_1.alt, 
  circuits_1.circuitid, 
  circuits_1.name, 
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.circuitid <= circuits_1.circuitid
limit 4;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.grid
from 
  results as results_1
      inner join constructors as constructors_1
        inner join drivers as drivers_1
        on (constructors_1.constructorid = drivers_1.driverid )
      on (results_1.constructorid = constructors_1.constructorid )
    inner join constructors as constructors_2
    on (results_1.constructorid = constructors_2.constructorid )
where results_1.raceid < results_1.resultid
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location, 
  circuits_1.circuitid, 
  circuits_1.name, 
  circuits_1.lng, 
  circuits_1.circuitref, 
  circuits_1.lat, 
  min(
    circuits_1.circuitid)
from 
  circuits as circuits_1
where circuits_1.location <= circuits_1.circuitref
group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.lat, circuits_1.lng, circuits_1.location, circuits_1.name
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    circuits_1.lng), 
  circuits_1.lat, 
  circuits_1.alt, 
  circuits_1.country, 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.country is not NULL
group by circuits_1.alt, circuits_1.country, circuits_1.lat, circuits_1.lng
limit 2;
-- meta {"num_joins":6,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  constructor_results_1.constructorid, 
  drivers_1.driverref, 
  drivers_1.driverid, 
  constructor_standings_1.wins, 
  constructor_results_1.raceid, 
  constructor_results_2.points, 
  results_1.driverid, 
  constructor_standings_1.constructorid, 
  max(
    constructor_results_1.date), 
  constructor_standings_1.position, 
  results_1.constructorid, 
  races_1.date, 
  constructor_results_1.date, 
  constructor_standings_1.points
from 
  constructor_results as constructor_results_1
      inner join results as results_1
        inner join races as races_1
        on (results_1.raceid = races_1.raceid )
      on (constructor_results_1.raceid = races_1.raceid )
    inner join qualifying as qualifying_1
        inner join drivers as drivers_1
          inner join constructor_standings as constructor_standings_1
          on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
        on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
      inner join constructor_results as constructor_results_2
      on (qualifying_1.qualifyid = constructor_results_2.constructorresultsid )
    on (results_1.resultid = qualifying_1.qualifyid )
where drivers_1.surname is not NULL
group by constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.raceid, constructor_results_2.points, constructor_standings_1.constructorid, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.wins, drivers_1.driverid, drivers_1.driverref, qualifying_1.date, races_1.date, results_1.constructorid, results_1.driverid
limit 1;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid, 
  standings_1.date, 
  standings_1.points, 
  max(
    standings_2.date), 
  min(
    standings_1.points), 
  standings_2.points
from 
  standings as standings_1
    inner join standings as standings_2
    on (standings_1.driverstandingsid = standings_2.driverstandingsid )
where standings_2.points >= standings_1.points
group by standings_1.date, standings_1.driverid, standings_1.points, standings_2.points
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position, 
  standings_1.date, 
  standings_1.driverid, 
  standings_1.points, 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.date is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt, 
  circuits_1.location, 
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.country is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.code is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.positionorder, 
  results_1.statusid, 
  max(
    results_1.fastestlap), 
  count(*)
from 
  results as results_1
where results_1.date is not NULL
group by results_1.positionorder, results_1.statusid
limit 2;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid, 
  qualifying_1.date, 
  qualifying_1.number, 
  avg(
    standings_1.position)
from 
  qualifying as qualifying_1
      inner join standings as standings_1
      on (qualifying_1.qualifyid = standings_1.driverstandingsid )
    inner join drivers as drivers_1
    on (qualifying_1.driverid = drivers_1.driverid )
where drivers_1.nationality is not NULL
group by qualifying_1.date, qualifying_1.driverid, qualifying_1.number
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref, 
  avg(
    drivers_1.driverid), 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.code is not NULL
group by drivers_1.driverref, drivers_1.surname
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lat, 
  circuits_1.lng, 
  circuits_1.country, 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.country is not NULL
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.nationality, 
  drivers_1.surname, 
  qualifying_1.raceid, 
  qualifying_1.driverid, 
  drivers_1.code, 
  drivers_1.driverid
from 
  qualifying as qualifying_1
    inner join drivers as drivers_1
    on (qualifying_1.driverid = drivers_1.driverid )
where qualifying_1.constructorid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref, 
  drivers_1.nationality, 
  min(
    drivers_1.dob)
from 
  drivers as drivers_1
where drivers_1.forename is not NULL
group by drivers_1.driverref, drivers_1.nationality
limit 4;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.name, 
  circuits_1.alt, 
  max(
    races_1.date)
from 
  circuits as circuits_1
    inner join races as races_1
    on (races_1.circuitid = circuits_1.circuitid )
where circuits_1.circuitid is not NULL
group by circuits_1.alt, races_1.name
limit 4;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  sum(
    constructor_standings_1.points), 
  avg(
    constructor_standings_1.points), 
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  min(
    constructor_standings_1.position)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date < constructor_standings_1.date
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 1;
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    constructor_results_1.points), 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_2.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_2.constructorid, 
  count(
    constructor_results_1.raceid), 
  constructor_results_2.raceid, 
  sum(
    constructor_results_2.points), 
  min(
    constructor_results_1.constructorresultsid), 
  constructor_results_2.points, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
    inner join constructor_results as constructor_results_2
    on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
where constructor_results_1.raceid = constructor_results_2.constructorresultsid
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_2.constructorid, constructor_results_2.constructorresultsid, constructor_results_2.points, constructor_results_2.raceid
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.position, 
  max(
    constructor_standings_1.date), 
  constructor_standings_1.date, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  max(
    constructor_standings_1.points), 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position <= constructor_standings_1.raceid
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.wins
limit 4;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  circuits_1.country
from 
  circuits as circuits_1
    inner join constructor_results as constructor_results_1
    on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
where constructor_results_1.date is not NULL
group by circuits_1.country
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  standings_1.date, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  standings_1.wins, 
  constructor_standings_1.position, 
  min(
    standings_1.date)
from 
  standings as standings_1
    inner join constructor_standings as constructor_standings_1
    on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.date < standings_1.date
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.position, standings_1.date, standings_1.raceid, standings_1.wins
limit 4;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid
from 
  standings as standings_1
      inner join constructors as constructors_1
      on (standings_1.driverstandingsid = constructors_1.constructorid )
    inner join standings as standings_2
    on (constructors_1.constructorid = standings_2.driverstandingsid )
where standings_2.driverid is not NULL
limit 4;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.name
from 
  qualifying as qualifying_1
    inner join races as races_1
      inner join constructor_results as constructor_results_1
      on (constructor_results_1.raceid = races_1.raceid )
    on (qualifying_1.raceid = races_1.raceid )
where qualifying_1.date < races_1.date
limit 1;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt, 
  circuits_1.circuitid, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
    inner join constructors as constructors_1
      inner join circuits as circuits_1
      on (constructors_1.constructorid = circuits_1.circuitid )
    on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
where constructor_standings_1.date <= constructor_standings_1.date
limit 1;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    standings_1.points), 
  constructors_1.name
from 
  drivers as drivers_1
    inner join constructors as constructors_1
      inner join standings as standings_1
      on (constructors_1.constructorid = standings_1.driverstandingsid )
    on (drivers_1.driverid = constructors_1.constructorid )
where standings_1.points < standings_1.points
group by constructors_1.name
limit 1;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverid, 
  drivers_1.forename, 
  drivers_1.code, 
  drivers_1.driverref, 
  drivers_1.nationality, 
  avg(
    drivers_1.driverid), 
  max(
    drivers_1.driverid), 
  min(
    drivers_1.driverid)
from 
  drivers as drivers_1
where drivers_1.code is not NULL
group by drivers_1.code, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality
limit 2;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  drivers_1.nationality, 
  standings_1.driverstandingsid, 
  drivers_1.driverid, 
  drivers_1.forename, 
  min(
    standings_1.driverid), 
  standings_1.date, 
  drivers_1.driverref, 
  drivers_1.code, 
  standings_1.driverid, 
  min(
    standings_1.date)
from 
  standings as standings_1
    inner join drivers as drivers_1
    on (standings_1.driverid = drivers_1.driverid )
where drivers_1.forename = drivers_1.nationality
group by drivers_1.code, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, standings_1.date, standings_1.driverid, standings_1.driverstandingsid
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.driverid, 
  results_1.date, 
  results_1.position, 
  max(
    results_1.date), 
  results_1.constructorid, 
  results_1.fastestlap
from 
  results as results_1
where results_1.driverid is not NULL
group by results_1.constructorid, results_1.date, results_1.driverid, results_1.fastestlap, results_1.position
limit 4;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt, 
  circuits_1.country, 
  count(*), 
  count(
    circuits_1.circuitid), 
  circuits_1.lng, 
  circuits_1.name, 
  circuits_1.lat, 
  circuits_1.circuitid, 
  circuits_1.location, 
  min(
    circuits_1.circuitid)
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.location, circuits_1.name
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    drivers_1.dob), 
  drivers_1.nationality, 
  drivers_1.surname, 
  drivers_1.forename, 
  drivers_1.driverid, 
  min(
    drivers_1.driverid), 
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.dob >= drivers_1.dob
group by drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 1;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  count(*), 
  constructor_standings_1.wins, 
  constructor_standings_1.date, 
  max(
    constructor_standings_1.date), 
  count(*)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position >= constructor_standings_1.raceid
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location
from 
  standings as standings_1
    inner join circuits as circuits_1
    on (standings_1.driverstandingsid = circuits_1.circuitid )
where circuits_1.alt < standings_1.points
limit 1;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt, 
  drivers_1.surname
from 
  circuits as circuits_1
    inner join drivers as drivers_1
      inner join races as races_1
      on (drivers_1.driverid = races_1.raceid )
    on (circuits_1.circuitid = drivers_1.driverid )
where drivers_1.nationality is not NULL
limit 3;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_2.date, 
  standings_2.raceid, 
  standings_2.wins, 
  max(
    standings_2.raceid), 
  standings_1.wins, 
  standings_1.driverstandingsid, 
  standings_1.raceid
from 
  standings as standings_1
    inner join standings as standings_2
    on (standings_1.driverstandingsid = standings_2.driverstandingsid )
where standings_1.driverid is not NULL
group by standings_1.driverstandingsid, standings_1.raceid, standings_1.wins, standings_2.date, standings_2.raceid, standings_2.wins
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lat
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.driverid = drivers_1.driverid
limit 1;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.date, 
  max(
    qualifying_1.date), 
  races_1.time, 
  races_1.raceid, 
  qualifying_1.driverid, 
  max(
    qualifying_1.date), 
  races_1.name, 
  races_1.year
from 
  races as races_1
    inner join qualifying as qualifying_1
    on (qualifying_1.raceid = races_1.raceid )
where qualifying_1.number is not NULL
group by qualifying_1.driverid, races_1.date, races_1.name, races_1.raceid, races_1.time, races_1.year
limit 4;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    constructor_results_1.points), 
  races_1.date, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  max(
    constructor_results_1.raceid)
from 
  constructor_results as constructor_results_1
    inner join races as races_1
    on (constructor_results_1.raceid = races_1.raceid )
where races_1.round > races_1.raceid
group by constructor_results_1.constructorresultsid, constructor_results_1.points, races_1.date
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    drivers_1.dob), 
  drivers_1.forename, 
  drivers_1.code, 
  drivers_1.nationality, 
  drivers_1.driverref, 
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverref, drivers_1.forename, drivers_1.nationality
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.resultid, 
  max(
    results_1.date), 
  results_1.points, 
  results_1.rank, 
  results_1.position
from 
  results as results_1
where results_1.constructorid is not NULL
group by results_1.points, results_1.position, results_1.rank, results_1.resultid
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date, 
  avg(
    constructor_standings_1.points), 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.date
limit 4;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref, 
  circuits_2.name, 
  circuits_2.circuitref
from 
  circuits as circuits_1
      inner join constructor_results as constructor_results_1
        inner join circuits as circuits_2
        on (constructor_results_1.constructorresultsid = circuits_2.circuitid )
      on (circuits_1.circuitid = circuits_2.circuitid )
    inner join qualifying as qualifying_1
      inner join qualifying as qualifying_2
      on (qualifying_1.qualifyid = qualifying_2.qualifyid )
    on (circuits_2.circuitid = qualifying_2.qualifyid )
where constructor_results_1.constructorid > constructor_results_1.raceid
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 2;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  constructor_standings_2.constructorstandingsid, 
  constructor_standings_1.date, 
  count(*), 
  constructor_standings_2.wins, 
  constructor_standings_2.points, 
  min(
    constructor_standings_2.date), 
  constructor_standings_2.raceid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_2.constructorid, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
    inner join constructor_standings as constructor_standings_2
    on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
where constructor_standings_2.points > constructor_standings_1.points
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins, constructor_standings_2.constructorid, constructor_standings_2.constructorstandingsid, constructor_standings_2.points, constructor_standings_2.raceid, constructor_standings_2.wins
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorid < constructors_1.constructorid
limit 4;
-- meta {"num_joins":4,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorstandingsid, 
  standings_1.driverstandingsid, 
  drivers_1.driverid, 
  min(
    standings_1.date), 
  count(*), 
  min(
    constructor_results_1.date), 
  constructor_results_1.date, 
  constructor_standings_1.raceid, 
  count(
    standings_1.wins), 
  constructor_standings_1.date, 
  constructor_standings_1.wins
from 
  standings as standings_1
    inner join constructor_standings as constructor_standings_1
          inner join drivers as drivers_1
          on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
        inner join drivers as drivers_2
        on (drivers_1.driverid = drivers_2.driverid )
      inner join constructor_results as constructor_results_1
      on (drivers_2.driverid = constructor_results_1.constructorresultsid )
    on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.constructorid is not NULL
group by constructor_results_1.date, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.raceid, constructor_standings_1.wins, drivers_1.driverid, standings_1.driverstandingsid
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.circuitid >= circuits_1.circuitid
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.position, 
  qualifying_1.number, 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    constructor_standings_1.points), 
  constructor_standings_1.points, 
  count(*), 
  constructor_standings_1.raceid, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid
limit 3;
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    standings_1.points), 
  constructors_1.name, 
  standings_1.points, 
  constructors_1.nationality, 
  qualifying_1.number, 
  min(
    standings_2.points), 
  standings_1.wins
from 
  standings as standings_1
    inner join standings as standings_2
        inner join constructors as constructors_1
        on (standings_2.driverstandingsid = constructors_1.constructorid )
      inner join qualifying as qualifying_1
      on (qualifying_1.constructorid = constructors_1.constructorid )
    on (standings_1.driverstandingsid = qualifying_1.qualifyid )
where standings_2.points <= standings_1.points
group by constructors_1.name, constructors_1.nationality, qualifying_1.number, standings_1.points, standings_1.wins
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 4;
-- meta {"num_joins":4,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorid, 
  max(
    results_1.positionorder), 
  max(
    results_2.milliseconds), 
  results_1.milliseconds
from 
  constructors as constructors_1
      inner join results as results_1
        inner join drivers as drivers_1
          inner join results as results_2
          on (results_2.driverid = drivers_1.driverid )
        on (results_1.driverid = drivers_1.driverid )
      on (constructors_1.constructorid = drivers_1.driverid )
    inner join constructor_standings as constructor_standings_1
    on (results_2.resultid = constructor_standings_1.constructorstandingsid )
where results_1.constructorid is not NULL
group by constructor_standings_1.constructorid, results_1.milliseconds
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select distinct 
  drivers_1.driverref, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.driverid > drivers_1.driverid
limit 2;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  constructor_results_1.points, 
  min(
    constructor_results_1.date), 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  max(
    constructor_results_1.points), 
  constructor_results_1.constructorid, 
  count(*)
from 
  constructor_results as constructor_results_1
where constructor_results_1.points >= constructor_results_1.points
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 4;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.points, 
  constructor_results_1.constructorid, 
  qualifying_1.raceid, 
  circuits_1.country
from 
  circuits as circuits_1
      inner join results as results_1
          inner join qualifying as qualifying_1
          on (results_1.resultid = qualifying_1.qualifyid )
        inner join results as results_2
        on (qualifying_1.qualifyid = results_2.resultid )
      on (circuits_1.circuitid = qualifying_1.qualifyid )
    inner join qualifying as qualifying_2
      inner join constructor_results as constructor_results_1
      on (qualifying_2.qualifyid = constructor_results_1.constructorresultsid )
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where constructor_results_1.constructorresultsid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.rank, 
  results_1.milliseconds, 
  results_1.date, 
  max(
    results_1.date), 
  results_1.constructorid
from 
  results as results_1
where results_1.driverid is not NULL
group by results_1.constructorid, results_1.date, results_1.milliseconds, results_1.rank
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_standings_1.date), 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
group by constructor_standings_1.position
limit 4;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date
from 
  qualifying as qualifying_1
        inner join drivers as drivers_1
        on (qualifying_1.driverid = drivers_1.driverid )
      inner join circuits as circuits_1
        inner join constructors as constructors_1
          inner join constructor_standings as constructor_standings_1
          on (constructor_standings_1.constructorid = constructors_1.constructorid )
        on (circuits_1.circuitid = constructors_1.constructorid )
      on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
    inner join drivers as drivers_2
    on (constructor_standings_1.constructorstandingsid = drivers_2.driverid )
where qualifying_1.qualifyid is not NULL
limit 2;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_2.constructorid, 
  constructors_2.constructorref, 
  drivers_1.driverid, 
  constructor_standings_1.wins, 
  max(
    drivers_1.dob)
from 
  drivers as drivers_1
    inner join constructors as constructors_1
        inner join constructors as constructors_2
        on (constructors_1.constructorid = constructors_2.constructorid )
      inner join constructor_standings as constructor_standings_1
      on (constructor_standings_1.constructorid = constructors_2.constructorid )
    on (drivers_1.driverid = constructors_1.constructorid )
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.wins, constructors_2.constructorid, constructors_2.constructorref, drivers_1.driverid
limit 4;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.code, 
  avg(
    constructors_1.constructorid), 
  constructors_1.name, 
  drivers_1.driverid
from 
  constructors as constructors_1
    inner join drivers as drivers_1
    on (constructors_1.constructorid = drivers_1.driverid )
where drivers_1.dob > drivers_1.dob
group by constructors_1.name, drivers_1.code, drivers_1.driverid
limit 4;
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name, 
  constructors_1.nationality, 
  max(
    constructor_results_1.date), 
  sum(
    constructor_results_1.points), 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  sum(
    constructor_results_1.constructorresultsid), 
  constructors_1.constructorref, 
  count(
    constructor_results_1.points)
from 
  constructors as constructors_1
    inner join constructor_results as constructor_results_1
    on (constructor_results_1.constructorid = constructors_1.constructorid )
where constructors_1.constructorref is not NULL
group by constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.raceid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 2;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  avg(
    constructor_results_1.points)
from 
  constructor_results as constructor_results_1
    inner join races as races_1
    on (constructor_results_1.raceid = races_1.raceid )
where constructor_results_1.points is not NULL
group by constructor_results_1.points
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.name is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    circuits_1.lng), 
  circuits_1.lat
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
group by circuits_1.lat
limit 2;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.date, 
  results_1.statusid, 
  count(
    circuits_1.circuitid), 
  min(
    results_1.date), 
  max(
    results_1.date), 
  circuits_1.lat, 
  results_1.resultid
from 
  results as results_1
    inner join circuits as circuits_1
    on (results_1.resultid = circuits_1.circuitid )
where circuits_1.country is not NULL
group by circuits_1.lat, results_1.date, results_1.resultid, results_1.statusid
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid, 
  races_1.date, 
  races_1.round, 
  races_1.year
from 
  races as races_1
where races_1.raceid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid, 
  races_1.year, 
  min(
    races_1.date), 
  races_1.round, 
  races_1.raceid, 
  count(
    races_1.raceid)
from 
  races as races_1
where races_1.name >= races_1.time
group by races_1.circuitid, races_1.raceid, races_1.round, races_1.year
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.date, 
  results_1.laps, 
  results_1.driverid
from 
  results as results_1
where results_1.number is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    standings_1.points), 
  max(
    standings_1.driverstandingsid), 
  standings_1.position
from 
  standings as standings_1
where standings_1.wins is not NULL
group by standings_1.position
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructors_1.name, 
  constructor_results_1.raceid, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.points
from 
  constructors as constructors_1
    inner join constructor_results as constructor_results_1
    on (constructor_results_1.constructorid = constructors_1.constructorid )
where constructor_results_1.date is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.time, 
  qualifying_1.constructorid, 
  qualifying_1.number
from 
  qualifying as qualifying_1
    inner join races as races_1
    on (qualifying_1.raceid = races_1.raceid )
where qualifying_1.position is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid, 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  qualifying_1.date, 
  qualifying_1.position, 
  qualifying_1.number, 
  max(
    qualifying_1.date)
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 2;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_2.constructorref, 
  constructors_2.name, 
  sum(
    constructors_1.constructorid), 
  constructors_2.nationality, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  avg(
    constructors_2.constructorid), 
  max(
    constructors_2.constructorid)
from 
  constructors as constructors_1
    inner join constructors as constructors_2
    on (constructors_1.constructorid = constructors_2.constructorid )
where constructors_2.constructorref is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_2.constructorref, constructors_2.name, constructors_2.nationality
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  races_1.name
from 
  races as races_1
    inner join constructor_results as constructor_results_1
    on (constructor_results_1.raceid = races_1.raceid )
where races_1.round = constructor_results_1.constructorid
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  max(
    constructors_1.constructorid), 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  min(
    constructors_1.constructorid), 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    constructors_1.name), 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorid >= constructors_1.constructorid
group by constructors_1.constructorid
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitid, 
  circuits_1.name, 
  constructor_results_1.points, 
  constructor_results_1.date, 
  circuits_1.location
from 
  circuits as circuits_1
    inner join constructor_results as constructor_results_1
    on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
where circuits_1.circuitref is not NULL
limit 3;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid, 
  circuits_1.circuitid
from 
  circuits as circuits_1
      inner join constructors as constructors_1
      on (circuits_1.circuitid = constructors_1.constructorid )
    inner join races as races_1
    on (races_1.circuitid = circuits_1.circuitid )
where circuits_1.name = races_1.name
limit 2;
-- meta {"num_joins":6,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    results_1.resultid), 
  constructors_1.name, 
  qualifying_1.constructorid, 
  constructor_results_1.date
from 
  results as results_1
        inner join results as results_2
          inner join constructor_results as constructor_results_1
          on (results_2.resultid = constructor_results_1.constructorresultsid )
        on (results_1.resultid = constructor_results_1.constructorresultsid )
      inner join qualifying as qualifying_1
      on (results_2.resultid = qualifying_1.qualifyid )
    inner join drivers as drivers_1
        inner join races as races_1
        on (drivers_1.driverid = races_1.raceid )
      inner join constructors as constructors_1
      on (drivers_1.driverid = constructors_1.constructorid )
    on (results_2.driverid = drivers_1.driverid )
where constructor_results_1.points is not NULL
group by constructor_results_1.date, constructors_1.name, qualifying_1.constructorid
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 3;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.country, 
  avg(
    standings_1.points), 
  max(
    circuits_1.alt)
from 
  circuits as circuits_1
    inner join standings as standings_1
      inner join constructor_results as constructor_results_1
      on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
    on (circuits_1.circuitid = standings_1.driverstandingsid )
where standings_1.wins is not NULL
group by circuits_1.country
limit 1;
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.points, 
  constructor_standings_1.wins, 
  results_1.constructorid, 
  min(
    results_1.date), 
  max(
    results_1.date), 
  count(
    constructor_standings_1.raceid), 
  constructor_standings_1.points, 
  results_1.milliseconds, 
  constructor_standings_1.position, 
  results_1.fastestlap, 
  constructor_standings_1.raceid, 
  count(*), 
  results_1.rank
from 
  results as results_1
    inner join constructor_standings as constructor_standings_1
    on (results_1.resultid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.date is not NULL
group by constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins, results_1.constructorid, results_1.fastestlap, results_1.milliseconds, results_1.points, results_1.rank
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year
from 
  races as races_1
where races_1.round = races_1.raceid
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  min(
    constructor_standings_1.wins), 
  avg(
    constructor_standings_1.points), 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 2;
-- meta {"num_joins":5,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.round, 
  min(
    constructor_results_2.date)
from 
  constructor_results as constructor_results_1
        inner join circuits as circuits_1
          inner join constructor_results as constructor_results_2
          on (circuits_1.circuitid = constructor_results_2.constructorresultsid )
        on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
      inner join races as races_1
      on (constructor_results_2.raceid = races_1.raceid )
    inner join races as races_2
      inner join constructors as constructors_1
      on (races_2.raceid = constructors_1.constructorid )
    on (circuits_1.circuitid = constructors_1.constructorid )
where circuits_1.alt = constructor_results_2.points
group by races_1.round
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.resultid, 
  results_1.grid, 
  results_1.rank, 
  results_1.driverid, 
  results_1.positionorder
from 
  results as results_1
where results_1.rank is not NULL
limit 2;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.round, 
  standings_1.wins
from 
  races as races_1
      inner join results as results_1
      on (results_1.raceid = races_1.raceid )
    inner join standings as standings_1
    on (standings_1.raceid = races_1.raceid )
where standings_1.date is not NULL
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorstandingsid, 
  qualifying_1.date
from 
  constructor_standings as constructor_standings_1
    inner join qualifying as qualifying_1
    on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
where qualifying_1.qualifyid is not NULL
limit 2;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverstandingsid, 
  max(
    standings_1.date), 
  constructor_standings_1.raceid, 
  races_1.year, 
  constructor_standings_1.date, 
  constructor_standings_1.position, 
  constructor_standings_1.points, 
  standings_1.points
from 
  standings as standings_1
    inner join races as races_1
      inner join constructor_standings as constructor_standings_1
      on (constructor_standings_1.raceid = races_1.raceid )
    on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, races_1.year, standings_1.driverstandingsid, standings_1.points
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref, 
  circuits_1.location, 
  circuits_1.circuitid, 
  max(
    circuits_1.alt), 
  circuits_1.alt, 
  circuits_1.lng, 
  circuits_1.name, 
  circuits_1.lat
from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.lat, circuits_1.lng, circuits_1.location, circuits_1.name
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  min(
    constructors_1.constructorid), 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date, 
  constructor_standings_1.raceid, 
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.position, 
  avg(
    qualifying_1.driverid), 
  qualifying_1.driverid, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
group by qualifying_1.driverid, qualifying_1.position, qualifying_1.qualifyid
limit 3;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorstandingsid, 
  results_1.fastestlap, 
  results_1.raceid, 
  results_1.resultid, 
  constructor_standings_1.position, 
  max(
    constructor_standings_1.date), 
  results_1.date, 
  constructor_standings_1.points, 
  min(
    results_1.number), 
  constructor_standings_1.wins, 
  results_1.milliseconds
from 
  results as results_1
    inner join constructor_standings as constructor_standings_1
    on (results_1.resultid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.date is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.wins, results_1.date, results_1.fastestlap, results_1.milliseconds, results_1.raceid, results_1.resultid
limit 2;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid, 
  avg(
    qualifying_1.driverid), 
  count(
    qualifying_1.number), 
  qualifying_1.number, 
  min(
    qualifying_1.date), 
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
group by qualifying_1.driverid, qualifying_1.number, qualifying_1.position
limit 3;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  drivers_1.driverref, 
  constructors_2.nationality
from 
  constructors as constructors_1
    inner join drivers as drivers_1
        inner join constructors as constructors_2
        on (drivers_1.driverid = constructors_2.constructorid )
      inner join circuits as circuits_1
      on (constructors_2.constructorid = circuits_1.circuitid )
    on (constructors_1.constructorid = drivers_1.driverid )
where constructors_2.constructorref <= constructors_2.nationality
group by constructors_2.nationality, drivers_1.driverref
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.points = constructor_results_1.points
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.time, 
  races_1.circuitid
from 
  races as races_1
where races_1.round is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_2.constructorid, 
  qualifying_2.qualifyid, 
  qualifying_1.position, 
  qualifying_1.date, 
  qualifying_2.driverid
from 
  qualifying as qualifying_1
    inner join qualifying as qualifying_2
    on (qualifying_1.qualifyid = qualifying_2.qualifyid )
where qualifying_1.raceid is not NULL
limit 2;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  results_2.grid, 
  results_1.date
from 
  qualifying as qualifying_1
      inner join constructor_results as constructor_results_1
        inner join results as results_1
          inner join circuits as circuits_1
          on (results_1.resultid = circuits_1.circuitid )
        on (constructor_results_1.constructorresultsid = results_1.resultid )
      on (qualifying_1.qualifyid = results_1.resultid )
    inner join qualifying as qualifying_2
      inner join results as results_2
      on (qualifying_2.qualifyid = results_2.resultid )
    on (constructor_results_1.constructorresultsid = qualifying_2.qualifyid )
where results_1.date is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.points, 
  standings_1.position, 
  standings_1.driverstandingsid, 
  min(
    standings_1.position), 
  standings_1.raceid, 
  standings_1.driverid, 
  standings_1.date, 
  max(
    standings_1.date), 
  min(
    standings_1.date), 
  avg(
    standings_1.points), 
  max(
    standings_1.date)
from 
  standings as standings_1
where standings_1.raceid is not NULL
group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.name, 
  circuits_1.location
from 
  circuits as circuits_1
    inner join races as races_1
    on (races_1.circuitid = circuits_1.circuitid )
where circuits_1.location is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins, 
  standings_1.date, 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.points is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructors_1.name, 
  avg(
    constructors_1.constructorid), 
  min(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.constructorref, constructors_1.name
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location, 
  circuits_1.lng, 
  avg(
    circuits_1.circuitid), 
  circuits_1.name, 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.alt is not NULL
group by circuits_1.alt, circuits_1.lng, circuits_1.location, circuits_1.name
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.position, 
  constructor_standings_1.points, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.grid, 
  results_1.laps
from 
  results as results_1
where results_1.grid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.number < qualifying_1.position
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
    inner join constructor_standings as constructor_standings_1
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.date is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.raceid, 
  min(
    races_1.date), 
  min(
    races_1.round), 
  races_1.round, 
  constructors_1.nationality, 
  races_1.name, 
  races_1.date, 
  races_1.time, 
  constructors_1.constructorid
from 
  constructors as constructors_1
    inner join races as races_1
    on (constructors_1.constructorid = races_1.raceid )
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.nationality, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time
limit 1;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_2.wins, 
  standings_2.date, 
  min(
    standings_2.date), 
  standings_3.date
from 
  standings as standings_1
    inner join standings as standings_2
      inner join standings as standings_3
      on (standings_2.driverstandingsid = standings_3.driverstandingsid )
    on (standings_1.driverstandingsid = standings_3.driverstandingsid )
where standings_2.points is not NULL
group by standings_2.date, standings_2.wins, standings_3.date
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructor_standings_1.date), 
  constructor_standings_1.points, 
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid
limit 3;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins, 
  constructor_standings_1.position, 
  standings_1.points, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
      inner join drivers as drivers_1
        inner join standings as standings_1
        on (standings_1.driverid = drivers_1.driverid )
      on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
    inner join results as results_1
    on (constructor_standings_1.constructorstandingsid = results_1.resultid )
where results_1.constructorid is not NULL
limit 4;
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_2.forename, 
  drivers_1.driverid, 
  constructor_results_1.date, 
  races_1.circuitid, 
  races_1.year, 
  drivers_1.driverref, 
  max(
    races_1.date), 
  drivers_2.dob, 
  sum(
    constructor_results_1.points), 
  drivers_1.code, 
  drivers_1.surname
from 
  drivers as drivers_1
      inner join races as races_1
        inner join constructor_results as constructor_results_1
        on (constructor_results_1.raceid = races_1.raceid )
      on (drivers_1.driverid = races_1.raceid )
    inner join drivers as drivers_2
    on (races_1.raceid = drivers_2.driverid )
where races_1.time <= drivers_2.driverref
group by constructor_results_1.date, drivers_1.code, drivers_1.driverid, drivers_1.driverref, drivers_1.surname, drivers_2.dob, drivers_2.forename, races_1.circuitid, races_1.year
limit 4;
-- meta {"num_joins":3,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_2.points, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  qualifying_1.date, 
  sum(
    circuits_1.lng), 
  max(
    constructor_results_2.points), 
  qualifying_1.qualifyid, 
  constructor_results_1.raceid, 
  qualifying_1.driverid, 
  constructor_results_2.constructorresultsid, 
  qualifying_1.raceid, 
  circuits_1.alt, 
  min(
    circuits_1.lng), 
  constructor_results_1.constructorid, 
  qualifying_1.position, 
  circuits_1.lat, 
  count(*), 
  constructor_results_2.raceid
from 
  circuits as circuits_1
      inner join constructor_results as constructor_results_1
      on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
    inner join qualifying as qualifying_1
      inner join constructor_results as constructor_results_2
      on (qualifying_1.qualifyid = constructor_results_2.constructorresultsid )
    on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
where qualifying_1.driverid is not NULL
group by circuits_1.alt, circuits_1.lat, constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid, constructor_results_2.constructorresultsid, constructor_results_2.points, constructor_results_2.raceid, qualifying_1.date, qualifying_1.driverid, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 2;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.position, 
  constructor_standings_1.constructorid, 
  sum(
    results_1.points)
from 
  results as results_1
      inner join constructor_results as constructor_results_1
      on (results_1.resultid = constructor_results_1.constructorresultsid )
    inner join constructor_standings as constructor_standings_1
      inner join qualifying as qualifying_1
      on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.points is not NULL
group by constructor_standings_1.constructorid, qualifying_1.position
limit 1;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    qualifying_1.number), 
  qualifying_1.raceid, 
  circuits_1.circuitid
from 
  circuits as circuits_1
    inner join qualifying as qualifying_1
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where circuits_1.lat is not NULL
group by circuits_1.circuitid, qualifying_1.raceid
limit 4;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins, 
  constructor_standings_1.date, 
  avg(
    constructor_standings_1.constructorstandingsid), 
  constructor_standings_1.constructorid, 
  min(
    constructor_standings_1.constructorstandingsid), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  constructor_standings_1.points, 
  min(
    constructor_standings_1.points), 
  sum(
    constructor_standings_1.wins)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.wins
limit 2;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_2.constructorref, 
  races_1.time, 
  max(
    races_1.year)
from 
  constructors as constructors_1
      inner join constructors as constructors_2
      on (constructors_1.constructorid = constructors_2.constructorid )
    inner join races as races_1
      inner join constructor_results as constructor_results_1
      on (constructor_results_1.raceid = races_1.raceid )
    on (constructor_results_1.constructorid = constructors_2.constructorid )
where constructors_2.constructorref = constructors_2.nationality
group by constructors_2.constructorref, races_1.time
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name, 
  sum(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.name
limit 1;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid, 
  max(
    drivers_1.dob), 
  qualifying_1.position
from 
  drivers as drivers_1
    inner join qualifying as qualifying_1
    on (qualifying_1.driverid = drivers_1.driverid )
where drivers_1.code is not NULL
group by qualifying_1.driverid, qualifying_1.position
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    races_1.date), 
  races_1.round, 
  races_1.circuitid, 
  races_1.date, 
  races_1.name, 
  races_1.raceid, 
  min(
    races_1.date)
from 
  races as races_1
where races_1.name is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round
limit 3;
-- meta {"num_joins":0,"num_aggregates":7,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    races_1.date), 
  min(
    races_1.date), 
  races_1.round, 
  races_1.date, 
  min(
    races_1.raceid), 
  min(
    races_1.raceid), 
  races_1.circuitid, 
  min(
    races_1.circuitid), 
  races_1.raceid, 
  min(
    races_1.date), 
  races_1.time, 
  avg(
    races_1.year)
from 
  races as races_1
where races_1.name is not NULL
group by races_1.circuitid, races_1.date, races_1.raceid, races_1.round, races_1.time
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    races_1.year), 
  races_1.time
from 
  races as races_1
where races_1.date > races_1.date
group by races_1.time
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
limit 1;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*)
from 
  results as results_1
    inner join constructors as constructors_1
    on (results_1.constructorid = constructors_1.constructorid )
where results_1.constructorid is not NULL
limit 1;
-- meta {"num_joins":4,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_2.constructorid, 
  count(*), 
  count(*), 
  constructor_results_1.constructorresultsid, 
  constructors_1.constructorref
from 
  standings as standings_1
    inner join constructors as constructors_1
      inner join circuits as circuits_1
          inner join constructor_results as constructor_results_1
          on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
        inner join constructor_results as constructor_results_2
        on (circuits_1.circuitid = constructor_results_2.constructorresultsid )
      on (constructor_results_2.constructorid = constructors_1.constructorid )
    on (standings_1.driverstandingsid = constructors_1.constructorid )
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_2.constructorid, constructors_1.constructorref
limit 4;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.position, 
  standings_1.wins
from 
  constructor_results as constructor_results_1
    inner join standings as standings_1
        inner join constructor_standings as constructor_standings_1
        on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
      inner join constructors as constructors_1
      on (constructor_standings_1.constructorid = constructors_1.constructorid )
    on (constructor_results_1.constructorid = constructors_1.constructorid )
where constructor_standings_1.constructorid >= standings_1.wins
limit 2;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.points, 
  circuits_1.lat, 
  results_1.driverid, 
  results_1.constructorid, 
  results_1.number, 
  circuits_1.circuitref, 
  results_1.fastestlap, 
  circuits_1.lng, 
  min(
    results_1.date)
from 
  results as results_1
    inner join circuits as circuits_1
    on (results_1.resultid = circuits_1.circuitid )
where circuits_1.circuitid = results_1.laps
group by circuits_1.circuitref, circuits_1.lat, circuits_1.lng, results_1.constructorid, results_1.driverid, results_1.fastestlap, results_1.number, results_1.points
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    qualifying_1.date), 
  min(
    qualifying_1.date)
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.statusid
from 
  results as results_1
where results_1.grid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.milliseconds
from 
  results as results_1
where results_1.position is not NULL
limit 1;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.position, 
  drivers_1.driverid, 
  drivers_1.surname, 
  qualifying_1.qualifyid, 
  drivers_1.driverref, 
  count(
    qualifying_1.number), 
  qualifying_1.raceid
from 
  drivers as drivers_1
      inner join qualifying as qualifying_1
      on (qualifying_1.driverid = drivers_1.driverid )
    inner join qualifying as qualifying_2
    on (qualifying_2.driverid = drivers_1.driverid )
where drivers_1.driverref is not NULL
group by drivers_1.driverid, drivers_1.driverref, drivers_1.surname, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 3;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  sum(
    qualifying_3.constructorid), 
  constructor_results_1.constructorid, 
  qualifying_3.position, 
  qualifying_3.raceid, 
  qualifying_1.position, 
  qualifying_2.driverid, 
  qualifying_1.qualifyid, 
  races_1.name
from 
  constructor_results as constructor_results_1
    inner join qualifying as qualifying_1
        inner join qualifying as qualifying_2
        on (qualifying_1.qualifyid = qualifying_2.qualifyid )
      inner join races as races_1
        inner join qualifying as qualifying_3
        on (qualifying_3.raceid = races_1.raceid )
      on (qualifying_2.qualifyid = qualifying_3.qualifyid )
    on (constructor_results_1.constructorresultsid = qualifying_2.qualifyid )
where qualifying_2.raceid is not NULL
group by constructor_results_1.constructorid, qualifying_1.date, qualifying_1.position, qualifying_1.qualifyid, qualifying_2.driverid, qualifying_3.position, qualifying_3.raceid, races_1.name
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  drivers_1.driverid, 
  constructors_1.constructorref
from 
  drivers as drivers_1
    inner join constructors as constructors_1
    on (drivers_1.driverid = constructors_1.constructorid )
where drivers_1.dob <= drivers_1.dob
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructors_1.constructorid), 
  constructors_1.name, 
  constructors_1.nationality, 
  max(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.name, constructors_1.nationality
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.raceid
from 
  results as results_1
    inner join constructors as constructors_1
    on (results_1.constructorid = constructors_1.constructorid )
where constructors_1.constructorid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points > constructor_standings_1.points
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    drivers_1.dob)
from 
  circuits as circuits_1
    inner join drivers as drivers_1
    on (circuits_1.circuitid = drivers_1.driverid )
where circuits_1.lat >= circuits_1.alt
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  standings_1.wins
from 
  standings as standings_1
where standings_1.driverstandingsid >= standings_1.wins
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year, 
  min(
    races_1.date), 
  races_1.circuitid, 
  races_1.time
from 
  races as races_1
where races_1.time is not NULL
group by races_1.circuitid, races_1.time, races_1.year
limit 1;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.constructorid, 
  constructors_1.name, 
  qualifying_1.date, 
  drivers_1.code
from 
  drivers as drivers_1
          inner join qualifying as qualifying_1
          on (qualifying_1.driverid = drivers_1.driverid )
        inner join constructors as constructors_1
        on (qualifying_1.constructorid = constructors_1.constructorid )
      inner join results as results_1
      on (qualifying_1.qualifyid = results_1.resultid )
    inner join circuits as circuits_1
    on (constructors_1.constructorid = circuits_1.circuitid )
where results_1.number > results_1.fastestlap
limit 3;
-- meta {"num_joins":2,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_standings_2.date), 
  avg(
    qualifying_1.position), 
  qualifying_1.driverid, 
  count(
    qualifying_1.date), 
  constructor_standings_1.date, 
  max(
    constructor_standings_2.date), 
  qualifying_1.raceid, 
  constructor_standings_2.position, 
  qualifying_1.constructorid, 
  constructor_standings_2.date, 
  constructor_standings_2.constructorstandingsid, 
  constructor_standings_1.constructorid, 
  constructor_standings_2.wins
from 
  constructor_standings as constructor_standings_1
      inner join constructor_standings as constructor_standings_2
      on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
    inner join qualifying as qualifying_1
    on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_2.constructorstandingsid, constructor_standings_2.date, constructor_standings_2.position, constructor_standings_2.wins, qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.raceid
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid, 
  races_1.name, 
  races_1.round, 
  races_1.time, 
  min(
    races_1.date)
from 
  races as races_1
where races_1.raceid is not NULL
group by races_1.circuitid, races_1.name, races_1.round, races_1.time
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.name, 
  races_1.circuitid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
    inner join races as races_1
    on (constructor_results_1.raceid = races_1.raceid )
where races_1.year <= constructor_results_1.constructorid
limit 1;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    constructor_standings_1.constructorstandingsid), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  avg(
    constructor_standings_1.constructorstandingsid), 
  constructor_standings_1.position, 
  min(
    constructor_standings_1.points)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 1;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins, 
  min(
    constructor_results_1.constructorresultsid), 
  constructor_results_1.points, 
  constructor_standings_1.date, 
  constructor_results_1.date, 
  constructor_standings_1.position, 
  constructor_results_1.raceid
from 
  constructor_standings as constructor_standings_1
    inner join constructor_results as constructor_results_1
    on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
where constructor_standings_1.wins <= constructor_results_1.constructorid
group by constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.wins
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 4;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_2.points, 
  drivers_1.forename, 
  circuits_1.lat, 
  constructor_results_2.date, 
  drivers_1.driverref
from 
  drivers as drivers_1
    inner join constructor_results as constructor_results_1
        inner join constructor_results as constructor_results_2
        on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
      inner join circuits as circuits_1
      on (constructor_results_2.constructorresultsid = circuits_1.circuitid )
    on (drivers_1.driverid = constructor_results_2.constructorresultsid )
where drivers_1.dob >= constructor_results_2.date
limit 3;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref, 
  races_1.year, 
  circuits_1.alt, 
  circuits_1.location, 
  races_1.circuitid, 
  races_1.raceid, 
  sum(
    circuits_1.alt), 
  circuits_1.circuitid, 
  max(
    races_1.circuitid), 
  races_1.date, 
  races_1.name
from 
  races as races_1
    inner join circuits as circuits_1
    on (races_1.circuitid = circuits_1.circuitid )
where races_1.circuitid = races_1.year
group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.location, races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.year
limit 4;
-- meta {"num_joins":5,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.raceid, 
  drivers_1.surname, 
  avg(
    standings_1.points), 
  races_1.round, 
  races_1.year
from 
  standings as standings_1
      inner join races as races_1
      on (standings_1.raceid = races_1.raceid )
    inner join drivers as drivers_1
      inner join qualifying as qualifying_1
          inner join standings as standings_2
          on (qualifying_1.qualifyid = standings_2.driverstandingsid )
        inner join constructors as constructors_1
        on (standings_2.driverstandingsid = constructors_1.constructorid )
      on (drivers_1.driverid = constructors_1.constructorid )
    on (qualifying_1.raceid = races_1.raceid )
where standings_1.date is not NULL
group by drivers_1.surname, races_1.raceid, races_1.round, races_1.year
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.milliseconds, 
  results_1.statusid, 
  results_1.fastestlap, 
  count(*), 
  results_1.grid, 
  results_1.position, 
  avg(
    results_1.constructorid)
from 
  results as results_1
where results_1.constructorid is not NULL
group by results_1.fastestlap, results_1.grid, results_1.milliseconds, results_1.position, results_1.statusid
limit 1;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    races_1.date), 
  constructor_results_1.points, 
  constructor_results_1.date, 
  races_1.round
from 
  constructor_results as constructor_results_1
    inner join races as races_1
    on (constructor_results_1.raceid = races_1.raceid )
where races_1.circuitid > constructor_results_1.constructorresultsid
group by constructor_results_1.date, constructor_results_1.points, races_1.round
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  avg(
    constructor_results_1.points), 
  max(
    constructor_results_1.points), 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.points, constructor_results_1.raceid
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
limit 1;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  count(
    circuits_2.lat)
from 
  circuits as circuits_1
    inner join circuits as circuits_2
    on (circuits_1.circuitid = circuits_2.circuitid )
where circuits_2.lat is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name, 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.alt is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.forename, 
  drivers_1.driverref, 
  drivers_1.nationality, 
  drivers_1.driverid, 
  sum(
    drivers_1.driverid), 
  drivers_1.code, 
  max(
    drivers_1.driverid)
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
group by drivers_1.code, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.points, 
  standings_1.position, 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.date is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverid, 
  drivers_1.forename, 
  drivers_1.surname, 
  drivers_1.dob, 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
limit 1;
-- meta {"num_joins":4,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.position, 
  races_1.year, 
  qualifying_1.qualifyid, 
  constructor_standings_1.date, 
  count(
    qualifying_1.date), 
  constructor_standings_1.position, 
  races_1.circuitid, 
  races_2.date, 
  qualifying_1.date, 
  standings_1.raceid, 
  races_2.year, 
  min(
    constructor_standings_1.constructorid), 
  max(
    standings_1.date), 
  constructor_standings_1.constructorid, 
  qualifying_1.raceid, 
  races_2.round, 
  races_1.round, 
  min(
    qualifying_1.date), 
  races_1.raceid, 
  races_2.raceid, 
  standings_1.points, 
  constructor_standings_1.raceid, 
  races_1.time, 
  avg(
    standings_1.wins)
from 
  constructor_standings as constructor_standings_1
        inner join races as races_1
          inner join qualifying as qualifying_1
          on (qualifying_1.raceid = races_1.raceid )
        on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
      inner join races as races_2
      on (qualifying_1.raceid = races_2.raceid )
    inner join standings as standings_1
    on (standings_1.raceid = races_1.raceid )
where standings_1.driverid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.raceid, qualifying_1.date, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid, races_1.circuitid, races_1.raceid, races_1.round, races_1.time, races_1.year, races_2.date, races_2.raceid, races_2.round, races_2.year, standings_1.points, standings_1.raceid
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date, 
  constructor_standings_1.constructorid, 
  count(*), 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.raceid
limit 2;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    drivers_1.driverid), 
  drivers_1.driverref, 
  max(
    qualifying_1.position), 
  qualifying_1.number, 
  qualifying_1.constructorid
from 
  drivers as drivers_1
    inner join qualifying as qualifying_1
    on (qualifying_1.driverid = drivers_1.driverid )
where drivers_1.driverid >= qualifying_1.raceid
group by drivers_1.driverref, qualifying_1.constructorid, qualifying_1.number
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number, 
  qualifying_1.driverid, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
limit 2;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.code, 
  max(
    drivers_1.dob), 
  drivers_1.driverid
from 
  standings as standings_1
    inner join drivers as drivers_1
      inner join races as races_1
      on (drivers_1.driverid = races_1.raceid )
    on (standings_1.raceid = races_1.raceid )
where standings_1.wins <= races_1.year
group by drivers_1.code, drivers_1.driverid
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.constructorid
from 
  constructors as constructors_1
    inner join results as results_1
    on (results_1.constructorid = constructors_1.constructorid )
where results_1.fastestlap < results_1.position
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    races_1.circuitid)
from 
  races as races_1
where races_1.raceid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructor_standings_1.date), 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.points, 
  min(
    constructor_standings_1.points)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid
limit 3;
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    races_1.time), 
  drivers_1.driverid, 
  max(
    drivers_1.dob), 
  constructors_1.name, 
  count(*), 
  races_1.year, 
  races_1.round, 
  drivers_1.nationality, 
  constructors_1.constructorid, 
  races_1.circuitid, 
  drivers_1.driverref, 
  constructors_1.nationality
from 
  constructors as constructors_1
    inner join drivers as drivers_1
      inner join races as races_1
      on (drivers_1.driverid = races_1.raceid )
    on (constructors_1.constructorid = drivers_1.driverid )
where constructors_1.constructorid > drivers_1.driverid
group by constructors_1.constructorid, constructors_1.name, constructors_1.nationality, drivers_1.driverid, drivers_1.driverref, drivers_1.nationality, races_1.circuitid, races_1.round, races_1.year
limit 4;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name, 
  races_1.date, 
  races_1.circuitid, 
  max(
    races_1.date)
from 
  circuits as circuits_1
    inner join races as races_1
    on (races_1.circuitid = circuits_1.circuitid )
where circuits_1.location is not NULL
group by circuits_1.name, races_1.circuitid, races_1.date
limit 1;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_2.raceid, 
  avg(
    constructor_standings_2.points), 
  constructor_standings_1.position, 
  constructor_standings_2.constructorstandingsid, 
  count(
    constructor_standings_2.points), 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
    inner join constructor_standings as constructor_standings_2
    on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
where constructor_standings_2.constructorstandingsid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.position, constructor_standings_2.constructorstandingsid, constructor_standings_2.raceid
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.position, 
  results_1.points
from 
  results as results_1
where results_1.grid is not NULL
limit 1;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    qualifying_1.raceid), 
  qualifying_1.date, 
  max(
    constructor_results_1.points), 
  constructor_results_1.constructorid, 
  constructor_standings_1.position, 
  constructor_results_1.date, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
      inner join constructor_results as constructor_results_1
      on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
    inner join constructor_standings as constructor_standings_1
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.date, constructor_standings_1.position, qualifying_1.constructorid, qualifying_1.date
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.fastestlap, 
  results_1.driverid, 
  results_1.number, 
  count(
    results_1.points)
from 
  results as results_1
where results_1.laps is not NULL
group by results_1.driverid, results_1.fastestlap, results_1.number
limit 4;
-- meta {"num_joins":0,"num_aggregates":7,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  count(
    constructors_1.nationality), 
  constructors_1.name, 
  max(
    constructors_1.constructorid), 
  constructors_1.nationality, 
  avg(
    constructors_1.constructorid), 
  avg(
    constructors_1.constructorid), 
  min(
    constructors_1.constructorid), 
  count(*), 
  max(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.points, 
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    drivers_1.code)
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt, 
  circuits_1.country, 
  races_1.round, 
  races_1.time, 
  circuits_1.lat, 
  circuits_1.circuitid
from 
  circuits as circuits_1
    inner join races as races_1
    on (races_1.circuitid = circuits_1.circuitid )
where races_1.date > races_1.date
limit 2;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.date, 
  count(*), 
  standings_1.driverid, 
  max(
    standings_1.points), 
  standings_1.wins, 
  min(
    standings_1.date), 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.position is not NULL
group by standings_1.date, standings_1.driverid, standings_1.raceid, standings_1.wins
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.country, 
  circuits_1.lat, 
  circuits_1.name, 
  circuits_1.circuitid, 
  circuits_1.circuitref, 
  min(
    circuits_1.lng)
from 
  circuits as circuits_1
where circuits_1.alt is not NULL
group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.name
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructors_1.nationality, 
  max(
    constructors_1.constructorid), 
  constructors_1.constructorid, 
  count(
    constructors_1.nationality)
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date, 
  avg(
    constructor_standings_1.points)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.date
limit 3;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverid, 
  circuits_1.country, 
  max(
    races_1.circuitid), 
  races_1.round, 
  circuits_1.name
from 
  circuits as circuits_1
    inner join drivers as drivers_1
      inner join races as races_1
      on (drivers_1.driverid = races_1.raceid )
    on (circuits_1.circuitid = drivers_1.driverid )
where circuits_1.lng is not NULL
group by circuits_1.country, circuits_1.name, drivers_1.driverid, races_1.round
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_standings_1.constructorid), 
  constructor_standings_1.position, 
  constructor_standings_1.points, 
  count(
    constructor_standings_1.constructorid)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.points, constructor_standings_1.position
limit 3;
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverstandingsid, 
  max(
    constructor_standings_1.date), 
  drivers_2.dob, 
  drivers_2.code, 
  standings_1.points, 
  sum(
    standings_1.points), 
  constructor_standings_1.position
from 
  standings as standings_1
      inner join drivers as drivers_1
      on (standings_1.driverid = drivers_1.driverid )
    inner join constructor_standings as constructor_standings_1
      inner join drivers as drivers_2
      on (constructor_standings_1.constructorstandingsid = drivers_2.driverid )
    on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
where standings_1.position is not NULL
group by constructor_standings_1.position, drivers_2.code, drivers_2.dob, standings_1.driverstandingsid, standings_1.points
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.position, 
  qualifying_1.number, 
  qualifying_1.date, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 1;
-- meta {"num_joins":5,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  min(
    constructor_results_1.date), 
  count(
    constructors_1.constructorref), 
  min(
    qualifying_1.position), 
  constructors_1.constructorid, 
  constructor_standings_1.constructorid, 
  max(
    circuits_1.lat)
from 
  constructors as constructors_1
      inner join qualifying as qualifying_1
        inner join circuits as circuits_1
        on (qualifying_1.qualifyid = circuits_1.circuitid )
      on (constructors_1.constructorid = circuits_1.circuitid )
    inner join constructor_standings as constructor_standings_1
        inner join constructor_results as constructor_results_1
        on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
      inner join constructor_standings as constructor_standings_2
      on (constructor_results_1.constructorresultsid = constructor_standings_2.constructorstandingsid )
    on (constructor_results_1.constructorid = constructors_1.constructorid )
where circuits_1.country is not NULL
group by constructor_standings_1.constructorid, constructors_1.constructorid, qualifying_1.date
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name, 
  max(
    constructors_1.constructorid), 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 1;
-- meta {"num_joins":4,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins, 
  races_1.name, 
  constructors_2.constructorid, 
  constructor_standings_1.constructorid, 
  constructors_1.constructorid, 
  min(
    races_1.date), 
  constructors_1.nationality, 
  races_1.year, 
  races_1.circuitid, 
  drivers_1.nationality, 
  constructor_standings_1.date, 
  drivers_1.driverref, 
  max(
    constructor_standings_1.points), 
  count(*)
from 
  constructor_standings as constructor_standings_1
    inner join drivers as drivers_1
      inner join constructors as constructors_1
        inner join constructors as constructors_2
          inner join races as races_1
          on (constructors_2.constructorid = races_1.raceid )
        on (constructors_1.constructorid = races_1.raceid )
      on (drivers_1.driverid = constructors_1.constructorid )
    on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
where drivers_1.code >= constructors_2.nationality
group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.wins, constructors_1.constructorid, constructors_1.nationality, constructors_2.constructorid, drivers_1.driverref, drivers_1.nationality, races_1.circuitid, races_1.name, races_1.year
limit 3;
-- meta {"num_joins":5,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.raceid, 
  min(
    results_1.fastestlap), 
  constructor_standings_2.wins, 
  constructors_1.name, 
  sum(
    results_1.points)
from 
  constructor_standings as constructor_standings_1
        inner join constructor_standings as constructor_standings_2
        on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
      inner join results as results_1
          inner join constructors as constructors_1
          on (results_1.constructorid = constructors_1.constructorid )
        inner join constructor_standings as constructor_standings_3
        on (constructor_standings_3.constructorid = constructors_1.constructorid )
      on (constructor_standings_1.constructorstandingsid = results_1.resultid )
    inner join circuits as circuits_1
    on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
where results_1.number = constructor_standings_2.points
group by constructor_standings_1.raceid, constructor_standings_2.wins, constructors_1.name
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  results_1.resultid
from 
  results as results_1
    inner join constructor_results as constructor_results_1
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where results_1.position is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid, 
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 3;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid
from 
  qualifying as qualifying_1
      inner join races as races_1
      on (qualifying_1.raceid = races_1.raceid )
    inner join drivers as drivers_1
        inner join drivers as drivers_2
        on (drivers_1.driverid = drivers_2.driverid )
      inner join qualifying as qualifying_2
      on (qualifying_2.driverid = drivers_1.driverid )
    on (qualifying_1.driverid = drivers_1.driverid )
where races_1.year is not NULL
limit 1;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    circuits_1.name)
from 
  qualifying as qualifying_1
      inner join constructors as constructors_1
        inner join circuits as circuits_1
        on (constructors_1.constructorid = circuits_1.circuitid )
      on (qualifying_1.constructorid = constructors_1.constructorid )
    inner join qualifying as qualifying_2
    on (circuits_1.circuitid = qualifying_2.qualifyid )
where qualifying_1.position is not NULL
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.name
from 
  circuits as circuits_1
    inner join races as races_1
    on (races_1.circuitid = circuits_1.circuitid )
where races_1.raceid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructor_standings_1.points), 
  constructor_standings_1.raceid, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorid, 
  min(
    constructor_standings_1.date)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins = constructor_standings_1.raceid
group by constructor_standings_1.constructorid, constructor_standings_1.points, constructor_standings_1.raceid
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.name <= constructors_1.constructorref
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 3;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.dob, 
  drivers_1.forename, 
  drivers_1.surname, 
  results_1.constructorid
from 
  circuits as circuits_1
    inner join results as results_1
      inner join drivers as drivers_1
      on (results_1.driverid = drivers_1.driverid )
    on (circuits_1.circuitid = results_1.resultid )
where circuits_1.lng is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.points, 
  results_1.resultid
from 
  results as results_1
where results_1.points is not NULL
limit 1;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_2.wins, 
  constructor_standings_1.wins, 
  constructors_1.name, 
  constructor_results_1.date, 
  constructor_standings_2.position, 
  standings_1.points, 
  sum(
    constructor_results_1.constructorresultsid), 
  standings_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_results_1.constructorresultsid, 
  constructors_1.constructorref, 
  constructor_standings_1.date
from 
  constructor_results as constructor_results_1
      inner join standings as standings_1
        inner join constructors as constructors_1
          inner join constructor_standings as constructor_standings_1
          on (constructor_standings_1.constructorid = constructors_1.constructorid )
        on (standings_1.driverstandingsid = constructors_1.constructorid )
      on (constructor_results_1.constructorid = constructors_1.constructorid )
    inner join constructor_standings as constructor_standings_2
    on (constructor_results_1.constructorresultsid = constructor_standings_2.constructorstandingsid )
where standings_1.date < constructor_standings_1.date
group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.wins, constructor_standings_2.position, constructor_standings_2.wins, constructors_1.constructorref, constructors_1.name, standings_1.points, standings_1.raceid
limit 2;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  min(
    constructor_results_1.date)
from 
  constructor_results as constructor_results_1
    inner join constructors as constructors_1
    on (constructor_results_1.constructorid = constructors_1.constructorid )
where constructors_1.constructorref <= constructors_1.name
group by constructors_1.constructorid, constructors_1.constructorref
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    results_1.date)
from 
  results as results_1
where results_1.position is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid, 
  max(
    qualifying_1.date)
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.driverid
limit 3;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_2.constructorid, 
  qualifying_1.position, 
  qualifying_1.constructorid, 
  qualifying_1.driverid, 
  qualifying_1.raceid, 
  constructor_standings_2.constructorstandingsid, 
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  max(
    qualifying_1.date), 
  min(
    constructor_standings_1.date)
from 
  constructor_standings as constructor_standings_1
      inner join constructor_standings as constructor_standings_2
      on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
    inner join qualifying as qualifying_1
    on (constructor_standings_2.constructorstandingsid = qualifying_1.qualifyid )
where qualifying_1.driverid is not NULL
group by constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.wins, constructor_standings_2.constructorid, constructor_standings_2.constructorstandingsid, qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.position, qualifying_1.raceid
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.code, 
  drivers_1.forename, 
  drivers_1.driverid, 
  max(
    drivers_1.driverid)
from 
  drivers as drivers_1
where drivers_1.forename is not NULL
group by drivers_1.code, drivers_1.driverid, drivers_1.forename
limit 3;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.time, 
  standings_1.raceid
from 
  races as races_1
      inner join circuits as circuits_1
      on (races_1.circuitid = circuits_1.circuitid )
    inner join standings as standings_1
    on (standings_1.raceid = races_1.raceid )
where standings_1.wins is not NULL
limit 3;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  sum(
    standings_1.driverstandingsid), 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
    inner join results as results_1
      inner join standings as standings_1
      on (results_1.resultid = standings_1.driverstandingsid )
    on (qualifying_1.qualifyid = results_1.resultid )
where standings_1.position is not NULL
group by qualifying_1.date, qualifying_1.qualifyid
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.raceid
from 
  races as races_1
where races_1.round = races_1.year
limit 1;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lat, 
  circuits_1.circuitid, 
  count(
    circuits_1.lat), 
  avg(
    circuits_1.lat), 
  max(
    constructor_standings_1.date), 
  constructor_standings_1.points, 
  circuits_1.circuitref, 
  constructor_standings_1.wins, 
  circuits_1.country, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
    inner join circuits as circuits_1
    on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
where constructor_standings_1.constructorstandingsid is not NULL
group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lat, constructor_standings_1.constructorid, constructor_standings_1.points, constructor_standings_1.wins
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.date < constructor_results_1.date
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  avg(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.constructorid
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverid, 
  drivers_1.driverref, 
  min(
    drivers_1.dob), 
  drivers_1.forename, 
  drivers_1.surname, 
  min(
    drivers_1.dob), 
  count(
    drivers_1.code)
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
group by drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.surname
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.qualifyid, 
  count(
    qualifying_1.constructorid), 
  sum(
    qualifying_1.driverid), 
  qualifying_1.number, 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
group by qualifying_1.date, qualifying_1.number, qualifying_1.qualifyid
limit 4;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.surname, 
  races_1.date
from 
  drivers as drivers_1
      inner join constructor_results as constructor_results_1
      on (drivers_1.driverid = constructor_results_1.constructorresultsid )
    inner join constructor_results as constructor_results_2
      inner join races as races_1
      on (constructor_results_2.raceid = races_1.raceid )
    on (drivers_1.driverid = races_1.raceid )
where races_1.year = constructor_results_2.raceid
limit 3;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_2.raceid, 
  circuits_1.alt, 
  constructor_standings_2.constructorid, 
  max(
    constructor_standings_2.points), 
  constructor_standings_1.constructorid, 
  circuits_1.name, 
  constructor_standings_1.raceid, 
  circuits_1.circuitref
from 
  constructor_standings as constructor_standings_1
      inner join circuits as circuits_1
      on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
    inner join constructor_standings as constructor_standings_2
    on (circuits_1.circuitid = constructor_standings_2.constructorstandingsid )
where constructor_standings_1.position is not NULL
group by circuits_1.alt, circuits_1.circuitref, circuits_1.name, constructor_standings_1.constructorid, constructor_standings_1.raceid, constructor_standings_2.constructorid, constructor_standings_2.raceid
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_results_1.raceid), 
  sum(
    constructor_results_1.points), 
  constructor_results_1.points, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.date, constructor_results_1.points
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverstandingsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points
from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where standings_1.driverid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.name, 
  races_1.year, 
  max(
    races_1.raceid)
from 
  races as races_1
where races_1.name < races_1.time
group by races_1.name, races_1.year
limit 2;
-- meta {"num_joins":3,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    results_1.points), 
  results_1.fastestlap, 
  min(
    results_2.date), 
  races_1.round, 
  avg(
    results_1.rank)
from 
  results as results_1
    inner join constructor_standings as constructor_standings_1
        inner join races as races_1
        on (constructor_standings_1.raceid = races_1.raceid )
      inner join results as results_2
      on (constructor_standings_1.constructorstandingsid = results_2.resultid )
    on (results_1.resultid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.constructorid is not NULL
group by races_1.round, results_1.fastestlap
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.points, 
  standings_1.wins, 
  max(
    standings_1.date), 
  standings_1.raceid, 
  standings_1.driverid, 
  avg(
    standings_1.wins), 
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
group by standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.raceid, standings_1.wins
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins
from 
  standings as standings_1
where standings_1.date <= standings_1.date
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 2;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select distinct 
  max(
    results_1.date), 
  min(
    results_1.date)
from 
  standings as standings_1
    inner join results as results_1
    on (standings_1.driverstandingsid = results_1.resultid )
where results_1.grid is not NULL
limit 2;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.constructorid, 
  standings_1.driverstandingsid, 
  standings_1.date, 
  sum(
    qualifying_1.driverid), 
  constructors_1.constructorref, 
  standings_1.driverid
from 
  standings as standings_1
    inner join constructors as constructors_1
      inner join qualifying as qualifying_1
      on (qualifying_1.constructorid = constructors_1.constructorid )
    on (standings_1.driverstandingsid = constructors_1.constructorid )
where qualifying_1.qualifyid is not NULL
group by constructors_1.constructorref, qualifying_1.constructorid, standings_1.date, standings_1.driverid, standings_1.driverstandingsid
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
    inner join races as races_1
    on (constructor_results_1.raceid = races_1.raceid )
where races_1.time is not NULL
limit 4;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_2.points, 
  races_1.circuitid, 
  constructor_results_1.constructorresultsid
from 
  races as races_1
      inner join constructor_standings as constructor_standings_1
        inner join constructor_results as constructor_results_1
        on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
      on (constructor_standings_1.raceid = races_1.raceid )
    inner join constructor_results as constructor_results_2
    on (constructor_results_2.raceid = races_1.raceid )
where constructor_standings_1.wins is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name, 
  circuits_1.lat, 
  avg(
    circuits_1.lng)
from 
  circuits as circuits_1
where circuits_1.name is not NULL
group by circuits_1.lat, circuits_1.name
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year
from 
  races as races_1
where races_1.round is not NULL
limit 3;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select distinct 
  circuits_1.lat, 
  results_1.date
from 
  qualifying as qualifying_1
    inner join constructor_standings as constructor_standings_1
        inner join results as results_1
        on (constructor_standings_1.constructorstandingsid = results_1.resultid )
      inner join circuits as circuits_1
      on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
    on (qualifying_1.qualifyid = results_1.resultid )
where circuits_1.circuitid <= qualifying_1.number
limit 4;
-- meta {"num_joins":4,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  results_1.constructorid, 
  min(
    races_1.date), 
  results_1.resultid, 
  drivers_1.code, 
  drivers_1.dob, 
  avg(
    results_1.raceid), 
  min(
    results_1.date), 
  standings_1.points, 
  sum(
    races_1.year), 
  results_1.points, 
  standings_1.position, 
  standings_1.raceid, 
  drivers_1.forename, 
  constructor_results_1.constructorresultsid
from 
  races as races_1
    inner join drivers as drivers_1
      inner join constructor_results as constructor_results_1
          inner join results as results_1
          on (constructor_results_1.constructorresultsid = results_1.resultid )
        inner join standings as standings_1
        on (results_1.resultid = standings_1.driverstandingsid )
      on (drivers_1.driverid = constructor_results_1.constructorresultsid )
    on (constructor_results_1.raceid = races_1.raceid )
where races_1.raceid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, drivers_1.code, drivers_1.dob, drivers_1.forename, results_1.constructorid, results_1.points, results_1.resultid, standings_1.points, standings_1.position, standings_1.raceid
limit 4;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_2.raceid
from 
  qualifying as qualifying_1
    inner join constructor_standings as constructor_standings_1
      inner join circuits as circuits_1
        inner join constructor_standings as constructor_standings_2
          inner join results as results_1
          on (constructor_standings_2.constructorstandingsid = results_1.resultid )
        on (circuits_1.circuitid = constructor_standings_2.constructorstandingsid )
      on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
    on (qualifying_1.qualifyid = results_1.resultid )
where constructor_standings_1.position is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.rank, 
  results_1.driverid, 
  results_1.resultid, 
  min(
    results_1.date), 
  results_1.milliseconds, 
  results_1.constructorid, 
  max(
    results_1.driverid), 
  results_1.points
from 
  results as results_1
where results_1.constructorid is not NULL
group by results_1.constructorid, results_1.driverid, results_1.milliseconds, results_1.points, results_1.rank, results_1.resultid
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.round, 
  races_1.name, 
  races_1.date, 
  qualifying_1.number, 
  qualifying_1.position, 
  races_1.circuitid, 
  qualifying_1.raceid, 
  races_1.year, 
  races_1.raceid
from 
  races as races_1
    inner join qualifying as qualifying_1
    on (qualifying_1.raceid = races_1.raceid )
where races_1.date is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    constructor_standings_1.points)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    races_1.date), 
  min(
    races_1.date), 
  count(
    races_1.date), 
  count(
    races_1.name)
from 
  races as races_1
where races_1.date is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location, 
  circuits_1.alt, 
  circuits_1.lat, 
  count(
    circuits_1.lat), 
  circuits_1.lng, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
group by circuits_1.alt, circuits_1.lat, circuits_1.lng, circuits_1.location, circuits_1.name
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref, 
  drivers_1.dob, 
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.name, 
  races_1.year, 
  races_1.date, 
  races_1.time, 
  min(
    races_1.round), 
  races_1.raceid
from 
  races as races_1
where races_1.time > races_1.name
group by races_1.date, races_1.name, races_1.raceid, races_1.time, races_1.year
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.date, 
  results_1.grid, 
  sum(
    results_1.position), 
  min(
    results_1.raceid), 
  results_1.raceid, 
  results_1.driverid
from 
  results as results_1
where results_1.date = results_1.date
group by results_1.date, results_1.driverid, results_1.grid, results_1.raceid
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid
from 
  races as races_1
where races_1.round is not NULL
limit 3;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructor_standings_1.date), 
  races_1.round, 
  races_1.year
from 
  constructor_standings as constructor_standings_1
    inner join races as races_1
      inner join circuits as circuits_1
      on (races_1.circuitid = circuits_1.circuitid )
    on (constructor_standings_1.raceid = races_1.raceid )
where constructor_standings_1.points is not NULL
group by races_1.round, races_1.year
limit 1;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  races_1.round, 
  max(
    races_1.date), 
  max(
    races_1.date), 
  races_1.date, 
  races_1.circuitid
from 
  drivers as drivers_1
      inner join races as races_1
      on (drivers_1.driverid = races_1.raceid )
    inner join constructors as constructors_1
    on (drivers_1.driverid = constructors_1.constructorid )
where races_1.name is not NULL
group by constructors_1.nationality, races_1.circuitid, races_1.date, races_1.round
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.time, 
  races_1.raceid
from 
  races as races_1
where races_1.name is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    standings_1.date), 
  standings_1.date, 
  races_1.time, 
  races_1.circuitid, 
  standings_1.driverid, 
  min(
    standings_1.points), 
  races_1.date, 
  standings_1.position, 
  max(
    standings_1.date)
from 
  races as races_1
    inner join standings as standings_1
    on (standings_1.raceid = races_1.raceid )
where standings_1.points >= standings_1.points
group by races_1.circuitid, races_1.date, races_1.time, standings_1.date, standings_1.driverid, standings_1.position
limit 2;
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructor_results_2.date), 
  constructor_results_1.points, 
  constructor_results_2.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  count(
    results_1.date), 
  constructor_results_2.date, 
  max(
    constructor_results_2.constructorresultsid)
from 
  results as results_1
      inner join constructor_results as constructor_results_1
      on (results_1.resultid = constructor_results_1.constructorresultsid )
    inner join constructor_results as constructor_results_2
    on (results_1.resultid = constructor_results_2.constructorresultsid )
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_2.constructorresultsid, constructor_results_2.date
limit 1;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    races_1.round), 
  count(*), 
  races_1.date, 
  races_1.year, 
  count(
    races_1.date)
from 
  races as races_1
where races_1.name > races_1.time
group by races_1.date, races_1.year
limit 3;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  qualifying_1.qualifyid, 
  constructor_results_2.constructorid, 
  constructor_results_2.constructorresultsid
from 
  qualifying as qualifying_1
        inner join standings as standings_1
          inner join constructor_results as constructor_results_1
          on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
        on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
      inner join constructors as constructors_1
      on (constructor_results_1.constructorid = constructors_1.constructorid )
    inner join constructor_results as constructor_results_2
    on (standings_1.driverstandingsid = constructor_results_2.constructorresultsid )
where constructors_1.constructorref is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
limit 4;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_2.dob, 
  drivers_1.forename
from 
  constructor_standings as constructor_standings_1
          inner join results as results_1
          on (constructor_standings_1.constructorstandingsid = results_1.resultid )
        inner join races as races_1
        on (constructor_standings_1.raceid = races_1.raceid )
      inner join drivers as drivers_1
        inner join drivers as drivers_2
        on (drivers_1.driverid = drivers_2.driverid )
      on (races_1.raceid = drivers_2.driverid )
    inner join races as races_2
    on (drivers_2.driverid = races_2.raceid )
where drivers_2.dob >= constructor_standings_1.date
limit 1;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  drivers_2.forename
from 
  drivers as drivers_1
    inner join drivers as drivers_2
      inner join constructor_results as constructor_results_1
      on (drivers_2.driverid = constructor_results_1.constructorresultsid )
    on (drivers_1.driverid = drivers_2.driverid )
where constructor_results_1.constructorid = drivers_2.driverid
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.surname, 
  drivers_1.dob, 
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  qualifying_1.driverid, 
  results_1.fastestlap
from 
  results as results_1
    inner join qualifying as qualifying_1
    on (results_1.resultid = qualifying_1.qualifyid )
where results_1.laps = results_1.grid
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.name, 
  races_1.round, 
  races_1.circuitid, 
  races_1.raceid, 
  races_1.year, 
  races_1.date, 
  max(
    races_1.date)
from 
  races as races_1
where races_1.time < races_1.name
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.year
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins, 
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.country, 
  circuits_1.circuitref, 
  circuits_1.circuitid, 
  min(
    circuits_1.circuitid), 
  circuits_1.lat, 
  circuits_1.name, 
  min(
    circuits_1.circuitid), 
  circuits_1.lng, 
  circuits_1.alt, 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.location, circuits_1.name
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.country, 
  circuits_1.lat, 
  circuits_1.circuitid, 
  circuits_1.alt, 
  circuits_1.name, 
  min(
    circuits_1.alt), 
  circuits_1.circuitref, 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.alt is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.name
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    results_1.date)
from 
  results as results_1
where results_1.rank is not NULL
limit 1;
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    races_2.round), 
  races_1.time, 
  drivers_1.driverref, 
  max(
    races_2.year), 
  races_1.date, 
  constructors_1.name, 
  drivers_1.forename, 
  races_2.raceid, 
  races_2.circuitid
from 
  races as races_1
        inner join drivers as drivers_1
        on (races_1.raceid = drivers_1.driverid )
      inner join constructors as constructors_1
      on (drivers_1.driverid = constructors_1.constructorid )
    inner join races as races_2
    on (constructors_1.constructorid = races_2.raceid )
where races_2.date is not NULL
group by constructors_1.name, drivers_1.driverref, drivers_1.forename, races_1.date, races_1.time, races_2.circuitid, races_2.raceid
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  results_1.positionorder, 
  count(*), 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  results_1.points, 
  results_1.statusid, 
  constructors_1.name, 
  results_1.grid, 
  results_1.raceid, 
  avg(
    results_1.constructorid)
from 
  results as results_1
    inner join constructors as constructors_1
    on (results_1.constructorid = constructors_1.constructorid )
where results_1.number is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality, results_1.grid, results_1.points, results_1.positionorder, results_1.raceid, results_1.statusid
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  standings_1.driverid, 
  standings_1.date
from 
  standings as standings_1
where standings_1.points is not NULL
limit 2;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.points, 
  constructor_standings_1.position
from 
  results as results_1
      inner join constructor_results as constructor_results_1
      on (results_1.resultid = constructor_results_1.constructorresultsid )
    inner join constructor_standings as constructor_standings_1
      inner join standings as standings_1
      on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
    on (results_1.resultid = standings_1.driverstandingsid )
where standings_1.points is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.points, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins, 
  count(*), 
  constructor_standings_1.position, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  sum(
    constructor_standings_1.raceid), 
  max(
    constructor_standings_1.date)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.wins
limit 1;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_standings_1.date), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.points, 
  constructor_standings_1.position, 
  constructor_standings_1.date, 
  max(
    constructor_standings_1.date), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins, 
  min(
    constructor_standings_1.wins)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.wins
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name, 
  standings_1.date
from 
  standings as standings_1
    inner join circuits as circuits_1
    on (standings_1.driverstandingsid = circuits_1.circuitid )
where standings_1.driverid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.fastestlap, 
  results_1.rank, 
  results_1.raceid
from 
  results as results_1
where results_1.laps > results_1.positionorder
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select distinct 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.points < constructor_results_1.points
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.date, 
  standings_1.raceid, 
  standings_1.points, 
  standings_1.wins
from 
  standings as standings_1
where standings_1.points > standings_1.points
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
limit 1;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  constructor_results_1.constructorid, 
  races_1.time
from 
  drivers as drivers_1
      inner join standings as standings_1
      on (standings_1.driverid = drivers_1.driverid )
    inner join races as races_1
      inner join constructor_results as constructor_results_1
      on (constructor_results_1.raceid = races_1.raceid )
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where races_1.name is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref, 
  max(
    drivers_1.driverid), 
  drivers_1.forename, 
  count(*), 
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.forename >= drivers_1.driverref
group by drivers_1.dob, drivers_1.driverref, drivers_1.forename
limit 3;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  max(
    constructors_1.constructorid), 
  circuits_1.circuitref
from 
  circuits as circuits_1
    inner join constructors as constructors_1
    on (circuits_1.circuitid = constructors_1.constructorid )
where circuits_1.lat is not NULL
group by circuits_1.circuitref, constructors_1.constructorref
limit 3;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.points, 
  qualifying_1.date, 
  circuits_1.alt
from 
  qualifying as qualifying_1
      inner join constructor_standings as constructor_standings_1
        inner join constructor_results as constructor_results_1
        on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
      on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
    inner join circuits as circuits_1
    on (qualifying_1.qualifyid = circuits_1.circuitid )
where circuits_1.lng is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid, 
  standings_1.raceid, 
  max(
    standings_1.date), 
  standings_1.date, 
  standings_1.driverstandingsid, 
  standings_1.points
from 
  standings as standings_1
where standings_1.position is not NULL
group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.raceid
limit 1;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_2.driverid, 
  standings_2.points, 
  min(
    standings_2.driverid), 
  circuits_1.circuitid
from 
  circuits as circuits_1
      inner join standings as standings_1
      on (circuits_1.circuitid = standings_1.driverstandingsid )
    inner join standings as standings_2
    on (circuits_1.circuitid = standings_2.driverstandingsid )
where standings_2.points < circuits_1.lng
group by circuits_1.circuitid, standings_2.driverid, standings_2.points
limit 4;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.code
from 
  constructors as constructors_1
    inner join qualifying as qualifying_1
        inner join drivers as drivers_1
        on (qualifying_1.driverid = drivers_1.driverid )
      inner join constructor_results as constructor_results_1
      on (drivers_1.driverid = constructor_results_1.constructorresultsid )
    on (constructors_1.constructorid = drivers_1.driverid )
where drivers_1.nationality is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  min(
    constructor_results_1.points), 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.date
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  max(
    constructor_results_1.date), 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorid
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverstandingsid
from 
  standings as standings_1
    inner join drivers as drivers_1
    on (standings_1.driverid = drivers_1.driverid )
where standings_1.raceid is not NULL
limit 2;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructor_results_1.raceid), 
  circuits_1.location, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
    inner join circuits as circuits_1
    on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
where constructor_results_1.constructorresultsid is not NULL
group by circuits_1.location, constructor_results_1.points
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
limit 3;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.name, 
  count(*), 
  min(
    qualifying_1.date), 
  standings_1.date
from 
  qualifying as qualifying_1
      inner join standings as standings_1
      on (qualifying_1.qualifyid = standings_1.driverstandingsid )
    inner join races as races_1
    on (qualifying_1.raceid = races_1.raceid )
where qualifying_1.date is not NULL
group by races_1.name, standings_1.date
limit 1;
-- meta {"num_joins":4,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_2.laps, 
  results_2.grid, 
  results_1.statusid, 
  min(
    circuits_2.lat), 
  results_1.rank, 
  count(*), 
  results_2.constructorid, 
  min(
    results_2.milliseconds), 
  circuits_2.country, 
  sum(
    standings_1.points)
from 
  circuits as circuits_1
      inner join results as results_1
      on (circuits_1.circuitid = results_1.resultid )
    inner join circuits as circuits_2
        inner join standings as standings_1
        on (circuits_2.circuitid = standings_1.driverstandingsid )
      inner join results as results_2
      on (standings_1.driverstandingsid = results_2.resultid )
    on (circuits_1.circuitid = results_2.resultid )
where circuits_1.lat is not NULL
group by circuits_2.country, results_1.rank, results_1.statusid, results_2.constructorid, results_2.grid, results_2.laps
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  circuits_1.lat
from 
  circuits as circuits_1
    inner join constructor_standings as constructor_standings_1
    on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.points is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    standings_1.points), 
  min(
    standings_1.driverid), 
  standings_1.driverstandingsid, 
  standings_1.date, 
  standings_1.points
from 
  standings as standings_1
where standings_1.date is not NULL
group by standings_1.date, standings_1.driverstandingsid, standings_1.points
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.country, 
  circuits_1.lng, 
  circuits_1.location, 
  count(
    circuits_1.circuitid), 
  circuits_1.name, 
  count(
    circuits_1.alt), 
  circuits_1.lat
from 
  circuits as circuits_1
where circuits_1.alt is not NULL
group by circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.location, circuits_1.name
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  qualifying_1.driverid
from 
  constructor_standings as constructor_standings_1
    inner join qualifying as qualifying_1
    on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
where constructor_standings_1.constructorstandingsid is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.forename, 
  qualifying_1.constructorid
from 
  drivers as drivers_1
    inner join qualifying as qualifying_1
    on (qualifying_1.driverid = drivers_1.driverid )
where qualifying_1.number is not NULL
limit 1;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    qualifying_1.date), 
  circuits_1.lng
from 
  circuits as circuits_1
    inner join qualifying as qualifying_1
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where circuits_1.lat is not NULL
group by circuits_1.lng
limit 2;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  races_1.raceid, 
  qualifying_1.driverid, 
  constructor_standings_1.raceid
from 
  qualifying as qualifying_1
      inner join races as races_1
      on (qualifying_1.raceid = races_1.raceid )
    inner join constructor_standings as constructor_standings_1
    on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
where qualifying_1.date < constructor_standings_1.date
limit 1;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lat, 
  circuits_1.circuitref, 
  circuits_1.lng, 
  qualifying_1.constructorid, 
  max(
    qualifying_1.date), 
  qualifying_1.date, 
  min(
    qualifying_1.date), 
  sum(
    circuits_1.alt)
from 
  circuits as circuits_1
    inner join qualifying as qualifying_1
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where circuits_1.circuitref is not NULL
group by circuits_1.circuitref, circuits_1.lat, circuits_1.lng, qualifying_1.constructorid, qualifying_1.date
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.country < circuits_1.location
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.date, 
  results_1.statusid, 
  results_1.raceid, 
  results_1.resultid, 
  max(
    results_1.positionorder), 
  results_1.driverid, 
  results_1.positionorder, 
  results_1.constructorid, 
  avg(
    results_1.positionorder), 
  results_1.number, 
  results_1.laps, 
  results_1.grid
from 
  results as results_1
where results_1.driverid is not NULL
group by results_1.constructorid, results_1.date, results_1.driverid, results_1.grid, results_1.laps, results_1.number, results_1.positionorder, results_1.raceid, results_1.resultid, results_1.statusid
limit 2;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position, 
  standings_1.raceid, 
  standings_1.driverstandingsid, 
  standings_1.points, 
  max(
    standings_1.driverstandingsid), 
  standings_1.driverid, 
  standings_1.date, 
  max(
    standings_1.driverstandingsid), 
  standings_1.wins, 
  min(
    standings_1.points), 
  min(
    standings_1.date), 
  avg(
    standings_1.raceid)
from 
  standings as standings_1
where standings_1.date is not NULL
group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
limit 1;
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.position, 
  constructors_1.nationality, 
  constructor_standings_1.date, 
  max(
    constructor_standings_1.points), 
  constructor_standings_1.raceid, 
  constructors_1.constructorid, 
  avg(
    constructors_1.constructorid), 
  constructor_standings_1.constructorid, 
  min(
    constructor_standings_1.raceid), 
  min(
    constructor_standings_1.date), 
  constructors_1.constructorref, 
  constructors_1.name
from 
  constructor_standings as constructor_standings_1
    inner join constructors as constructors_1
    on (constructor_standings_1.constructorid = constructors_1.constructorid )
where constructors_1.constructorid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.raceid, constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.forename, 
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 2;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.time, 
  qualifying_1.constructorid, 
  races_1.name, 
  min(
    qualifying_1.constructorid), 
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
    inner join races as races_1
      inner join qualifying as qualifying_1
      on (qualifying_1.raceid = races_1.raceid )
    on (constructor_results_1.raceid = races_1.raceid )
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorid, qualifying_1.constructorid, qualifying_1.position, qualifying_1.qualifyid, races_1.name, races_1.time
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    constructor_results_1.points)
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
limit 3;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    standings_1.date)
from 
  standings as standings_1
    inner join constructors as constructors_1
      inner join drivers as drivers_1
          inner join constructor_results as constructor_results_1
          on (drivers_1.driverid = constructor_results_1.constructorresultsid )
        inner join constructor_standings as constructor_standings_1
        on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
      on (constructor_standings_1.constructorid = constructors_1.constructorid )
    on (standings_1.driverid = drivers_1.driverid )
where standings_1.points = constructor_standings_1.points
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  standings_1.points
from 
  standings as standings_1
where standings_1.points <= standings_1.points
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.raceid, 
  races_1.name, 
  races_1.circuitid, 
  races_1.date, 
  races_1.round, 
  sum(
    races_1.circuitid), 
  races_1.year, 
  max(
    races_1.date), 
  races_1.time
from 
  races as races_1
where races_1.date is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 2;
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  drivers_1.nationality, 
  constructors_1.constructorid, 
  drivers_1.surname, 
  max(
    drivers_1.dob), 
  min(
    races_1.year), 
  drivers_1.code, 
  drivers_1.driverid, 
  constructors_1.nationality, 
  drivers_1.forename, 
  min(
    drivers_1.dob), 
  races_1.time, 
  races_1.raceid, 
  races_1.circuitid
from 
  races as races_1
    inner join constructors as constructors_1
      inner join drivers as drivers_1
      on (constructors_1.constructorid = drivers_1.driverid )
    on (races_1.raceid = constructors_1.constructorid )
where constructors_1.constructorid >= races_1.raceid
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality, drivers_1.code, drivers_1.driverid, drivers_1.forename, drivers_1.nationality, drivers_1.surname, races_1.circuitid, races_1.raceid, races_1.time
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.name, 
  races_1.year, 
  races_1.time, 
  races_1.date
from 
  races as races_1
where races_1.time is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
    inner join constructor_results as constructor_results_1
    on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
where constructor_standings_1.raceid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.points, 
  constructor_standings_1.position, 
  sum(
    constructor_standings_1.wins), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  sum(
    constructor_standings_1.constructorstandingsid), 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverstandingsid, 
  circuits_1.alt, 
  standings_1.driverid, 
  standings_1.position
from 
  circuits as circuits_1
    inner join standings as standings_1
    on (circuits_1.circuitid = standings_1.driverstandingsid )
where circuits_1.location is not NULL
limit 2;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.laps, 
  races_1.round, 
  results_1.position, 
  results_2.position, 
  drivers_1.code, 
  results_1.points, 
  results_2.positionorder
from 
  drivers as drivers_1
    inner join results as results_1
        inner join races as races_1
        on (results_1.raceid = races_1.raceid )
      inner join results as results_2
      on (results_2.raceid = races_1.raceid )
    on (results_1.driverid = drivers_1.driverid )
where races_1.time is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    drivers_1.driverid), 
  drivers_1.forename, 
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
group by drivers_1.dob, drivers_1.forename
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 1;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.raceid, 
  min(
    qualifying_1.qualifyid), 
  drivers_1.nationality, 
  drivers_1.driverid
from 
  qualifying as qualifying_1
    inner join drivers as drivers_1
    on (qualifying_1.driverid = drivers_1.driverid )
where qualifying_1.raceid is not NULL
group by drivers_1.driverid, drivers_1.nationality, qualifying_1.raceid
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.name, 
  circuits_1.country, 
  races_1.round, 
  circuits_1.circuitref, 
  circuits_1.lat
from 
  circuits as circuits_1
    inner join races as races_1
    on (races_1.circuitid = circuits_1.circuitid )
where circuits_1.name is not NULL
limit 4;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  constructors_1.constructorid, 
  circuits_1.lng, 
  circuits_1.circuitid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid
from 
  constructors as constructors_1
      inner join constructor_results as constructor_results_1
      on (constructor_results_1.constructorid = constructors_1.constructorid )
    inner join circuits as circuits_1
    on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
where constructors_1.constructorref is not NULL
limit 1;
-- meta {"num_joins":5,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    results_1.number)
from 
  qualifying as qualifying_1
      inner join constructor_results as constructor_results_1
      on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
    inner join results as results_1
        inner join constructor_results as constructor_results_2
        on (results_1.resultid = constructor_results_2.constructorresultsid )
      inner join drivers as drivers_1
        inner join results as results_2
        on (results_2.driverid = drivers_1.driverid )
      on (results_1.driverid = drivers_1.driverid )
    on (qualifying_1.qualifyid = results_1.resultid )
where constructor_results_1.points is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name, 
  count(
    constructors_1.constructorid), 
  count(*), 
  constructors_1.constructorref, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorid >= constructors_1.constructorid
group by constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name, 
  circuits_1.circuitref, 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.location is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.constructorid, 
  min(
    qualifying_1.date), 
  max(
    qualifying_1.date), 
  max(
    qualifying_1.date), 
  sum(
    qualifying_1.position), 
  qualifying_1.date, 
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.position
limit 4;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    standings_1.wins), 
  standings_1.raceid
from 
  constructors as constructors_1
          inner join constructor_standings as constructor_standings_1
          on (constructor_standings_1.constructorid = constructors_1.constructorid )
        inner join results as results_1
        on (constructor_standings_1.constructorstandingsid = results_1.resultid )
      inner join standings as standings_1
      on (results_1.resultid = standings_1.driverstandingsid )
    inner join races as races_1
    on (results_1.raceid = races_1.raceid )
where constructor_standings_1.position is not NULL
group by standings_1.raceid
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.fastestlap, 
  results_1.raceid, 
  results_1.resultid
from 
  results as results_1
where results_1.raceid >= results_1.driverid
limit 2;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    standings_1.position), 
  drivers_1.code, 
  drivers_1.nationality, 
  drivers_1.surname, 
  drivers_1.driverref
from 
  drivers as drivers_1
    inner join standings as standings_1
    on (standings_1.driverid = drivers_1.driverid )
where drivers_1.code is not NULL
group by drivers_1.code, drivers_1.driverref, drivers_1.nationality, drivers_1.surname
limit 3;
-- meta {"num_joins":5,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_results_1.date), 
  standings_1.date, 
  avg(
    standings_1.points)
from 
  constructor_results as constructor_results_1
      inner join constructor_standings as constructor_standings_1
        inner join constructor_results as constructor_results_2
        on (constructor_standings_1.constructorstandingsid = constructor_results_2.constructorresultsid )
      on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
    inner join circuits as circuits_1
        inner join standings as standings_1
        on (circuits_1.circuitid = standings_1.driverstandingsid )
      inner join constructors as constructors_1
      on (standings_1.driverstandingsid = constructors_1.constructorid )
    on (constructor_results_2.constructorresultsid = standings_1.driverstandingsid )
where constructor_results_1.date = standings_1.date
group by standings_1.date
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.driverid = drivers_1.driverid
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
limit 2;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  results_1.positionorder
from 
  results as results_1
      inner join constructors as constructors_1
      on (results_1.constructorid = constructors_1.constructorid )
    inner join results as results_2
      inner join qualifying as qualifying_1
        inner join constructors as constructors_2
        on (qualifying_1.constructorid = constructors_2.constructorid )
      on (results_2.resultid = qualifying_1.qualifyid )
    on (results_2.constructorid = constructors_1.constructorid )
where constructors_2.constructorref is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  constructors_1.name, 
  results_1.points, 
  results_1.driverid, 
  min(
    results_1.date), 
  constructors_1.constructorref, 
  results_1.resultid, 
  results_1.statusid
from 
  results as results_1
    inner join constructors as constructors_1
    on (results_1.constructorid = constructors_1.constructorid )
where constructors_1.constructorid is not NULL
group by constructors_1.constructorref, constructors_1.name, constructors_1.nationality, results_1.driverid, results_1.points, results_1.resultid, results_1.statusid
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructors_1.constructorid), 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 1;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  circuits_1.lat, 
  sum(
    circuits_1.circuitid), 
  constructor_results_1.constructorid, 
  circuits_1.circuitref, 
  circuits_1.name, 
  sum(
    circuits_1.lng)
from 
  constructor_results as constructor_results_1
    inner join circuits as circuits_1
    on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
where constructor_results_1.raceid <= constructor_results_1.constructorid
group by circuits_1.alt, circuits_1.circuitref, circuits_1.lat, circuits_1.name, constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.raceid
limit 3;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.laps, 
  qualifying_1.constructorid, 
  drivers_1.nationality, 
  max(
    results_1.date), 
  results_1.position, 
  drivers_1.driverid, 
  results_1.grid
from 
  drivers as drivers_1
    inner join qualifying as qualifying_1
      inner join results as results_1
      on (qualifying_1.qualifyid = results_1.resultid )
    on (qualifying_1.driverid = drivers_1.driverid )
where results_1.points is not NULL
group by drivers_1.driverid, drivers_1.nationality, qualifying_1.constructorid, results_1.grid, results_1.laps, results_1.position
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.date <= constructor_results_1.date
limit 2;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_2.nationality, 
  max(
    constructors_2.constructorid), 
  max(
    constructors_3.constructorid)
from 
  constructors as constructors_1
    inner join constructors as constructors_2
      inner join constructors as constructors_3
      on (constructors_2.constructorid = constructors_3.constructorid )
    on (constructors_1.constructorid = constructors_2.constructorid )
where constructors_2.constructorref is not NULL
group by constructors_2.nationality
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    races_1.date), 
  races_1.time, 
  races_1.raceid, 
  races_1.year, 
  races_1.date, 
  races_1.name
from 
  races as races_1
where races_1.year is not NULL
group by races_1.date, races_1.name, races_1.raceid, races_1.time, races_1.year
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year, 
  races_1.round, 
  races_1.time
from 
  races as races_1
    inner join circuits as circuits_1
    on (races_1.circuitid = circuits_1.circuitid )
where circuits_1.location < races_1.name
limit 3;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.milliseconds, 
  results_1.rank, 
  count(
    results_1.rank), 
  results_1.position, 
  standings_1.position, 
  standings_1.driverstandingsid, 
  races_1.time
from 
  results as results_1
      inner join standings as standings_1
      on (results_1.resultid = standings_1.driverstandingsid )
    inner join races as races_1
    on (standings_1.raceid = races_1.raceid )
where races_1.round is not NULL
group by races_1.time, results_1.milliseconds, results_1.position, results_1.rank, standings_1.driverstandingsid, standings_1.position
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.number, 
  results_1.date, 
  results_1.driverid
from 
  results as results_1
where results_1.grid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year, 
  races_1.date
from 
  races as races_1
where races_1.time is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
limit 4;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    standings_1.wins), 
  standings_1.driverstandingsid
from 
  standings as standings_1
    inner join results as results_1
      inner join constructor_standings as constructor_standings_1
      on (results_1.resultid = constructor_standings_1.constructorstandingsid )
    on (standings_1.driverstandingsid = results_1.resultid )
where results_1.points is not NULL
group by standings_1.driverstandingsid
limit 4;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid, 
  races_1.name, 
  circuits_1.lng, 
  circuits_1.lat, 
  circuits_1.circuitref, 
  races_1.time, 
  min(
    races_1.circuitid), 
  races_1.round, 
  races_1.raceid, 
  max(
    races_1.date)
from 
  circuits as circuits_1
    inner join races as races_1
    on (races_1.circuitid = circuits_1.circuitid )
where races_1.date is not NULL
group by circuits_1.circuitref, circuits_1.lat, circuits_1.lng, races_1.circuitid, races_1.name, races_1.raceid, races_1.round, races_1.time
limit 3;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.laps
from 
  results as results_1
    inner join circuits as circuits_1
      inner join drivers as drivers_1
      on (circuits_1.circuitid = drivers_1.driverid )
    on (results_1.driverid = drivers_1.driverid )
where results_1.fastestlap <= results_1.milliseconds
limit 2;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  races_2.date, 
  constructor_results_1.points, 
  races_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  races_2.name, 
  constructor_standings_1.points
from 
  races as races_1
      inner join races as races_2
      on (races_1.raceid = races_2.raceid )
    inner join constructor_results as constructor_results_1
        inner join constructor_results as constructor_results_2
        on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
      inner join constructor_standings as constructor_standings_1
      on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
    on (constructor_results_2.raceid = races_1.raceid )
where constructor_results_2.points is not NULL
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_2.points
from 
  standings as standings_1
    inner join standings as standings_2
    on (standings_1.driverstandingsid = standings_2.driverstandingsid )
where standings_2.raceid is not NULL
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  constructor_results_1.date
from 
  constructors as constructors_1
    inner join constructor_results as constructor_results_1
    on (constructor_results_1.constructorid = constructors_1.constructorid )
where constructors_1.name is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.dob, 
  drivers_1.code, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.driverid < drivers_1.driverid
limit 1;
-- meta {"num_joins":7,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    results_1.date), 
  constructor_standings_1.constructorstandingsid, 
  constructors_1.name, 
  results_1.resultid, 
  results_1.points, 
  min(
    constructor_standings_1.date), 
  results_1.raceid
from 
  drivers as drivers_1
      inner join constructor_standings as constructor_standings_1
        inner join constructors as constructors_1
          inner join results as results_1
            inner join constructor_standings as constructor_standings_2
            on (results_1.resultid = constructor_standings_2.constructorstandingsid )
          on (results_1.constructorid = constructors_1.constructorid )
        on (constructor_standings_1.constructorstandingsid = results_1.resultid )
      on (drivers_1.driverid = constructor_standings_2.constructorstandingsid )
    inner join drivers as drivers_2
      inner join circuits as circuits_1
        inner join drivers as drivers_3
        on (circuits_1.circuitid = drivers_3.driverid )
      on (drivers_2.driverid = drivers_3.driverid )
    on (constructor_standings_2.constructorstandingsid = drivers_2.driverid )
where constructors_1.constructorid < constructor_standings_1.wins
group by constructor_standings_1.constructorstandingsid, constructors_1.name, results_1.points, results_1.raceid, results_1.resultid
limit 1;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.name
from 
  circuits as circuits_1
      inner join drivers as drivers_1
      on (circuits_1.circuitid = drivers_1.driverid )
    inner join races as races_1
        inner join qualifying as qualifying_1
          inner join races as races_2
          on (qualifying_1.raceid = races_2.raceid )
        on (qualifying_1.raceid = races_1.raceid )
      inner join circuits as circuits_2
      on (races_1.circuitid = circuits_2.circuitid )
    on (circuits_1.circuitid = circuits_2.circuitid )
where qualifying_1.position is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year, 
  races_1.name, 
  max(
    races_1.date), 
  count(*), 
  races_1.time, 
  races_1.date
from 
  races as races_1
where races_1.raceid is not NULL
group by races_1.date, races_1.name, races_1.time, races_1.year
limit 1;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid
from 
  qualifying as qualifying_1
    inner join constructors as constructors_1
      inner join constructor_results as constructor_results_1
      on (constructor_results_1.constructorid = constructors_1.constructorid )
    on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
where constructor_results_1.raceid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt, 
  circuits_1.circuitid, 
  circuits_1.circuitref, 
  circuits_1.country, 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
limit 2;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    results_1.date)
from 
  drivers as drivers_1
      inner join results as results_1
      on (results_1.driverid = drivers_1.driverid )
    inner join constructor_standings as constructor_standings_1
    on (results_1.resultid = constructor_standings_1.constructorstandingsid )
where results_1.fastestlap = results_1.position
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location, 
  circuits_1.name, 
  circuits_1.country, 
  circuits_1.circuitid, 
  max(
    circuits_1.lat)
from 
  circuits as circuits_1
where circuits_1.alt is not NULL
group by circuits_1.circuitid, circuits_1.country, circuits_1.location, circuits_1.name
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.rank, 
  count(*), 
  results_1.grid, 
  results_1.statusid, 
  results_1.driverid, 
  results_1.points, 
  results_1.positionorder, 
  results_1.raceid
from 
  results as results_1
where results_1.statusid is not NULL
group by results_1.driverid, results_1.grid, results_1.points, results_1.positionorder, results_1.raceid, results_1.rank, results_1.statusid
limit 1;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.raceid
from 
  constructor_standings as constructor_standings_1
        inner join circuits as circuits_1
        on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
      inner join constructor_standings as constructor_standings_2
      on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
    inner join races as races_1
    on (constructor_standings_2.raceid = races_1.raceid )
where circuits_1.name >= races_1.name
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  avg(
    constructors_1.constructorid), 
  min(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.constructorid, constructors_1.constructorref
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.date, 
  results_1.resultid, 
  results_1.rank, 
  results_1.statusid, 
  results_1.raceid, 
  results_1.milliseconds, 
  standings_1.driverid, 
  standings_1.position, 
  results_1.position, 
  results_1.number
from 
  standings as standings_1
    inner join results as results_1
    on (standings_1.driverstandingsid = results_1.resultid )
where standings_1.driverstandingsid is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid
from 
  constructors as constructors_1
    inner join constructor_results as constructor_results_1
    on (constructor_results_1.constructorid = constructors_1.constructorid )
where constructors_1.nationality is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.qualifyid, 
  min(
    qualifying_1.date)
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
group by qualifying_1.qualifyid
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid < constructor_results_1.raceid
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref, 
  circuits_1.alt, 
  circuits_1.country, 
  circuits_1.location, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.lat > circuits_1.lng
limit 4;
-- meta {"num_joins":6,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  qualifying_1.constructorid, 
  results_1.grid, 
  qualifying_1.raceid, 
  count(*), 
  qualifying_1.qualifyid
from 
  constructor_standings as constructor_standings_1
      inner join qualifying as qualifying_1
        inner join constructor_results as constructor_results_1
        on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
      on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
    inner join results as results_1
        inner join qualifying as qualifying_2
        on (results_1.resultid = qualifying_2.qualifyid )
      inner join results as results_2
        inner join qualifying as qualifying_3
        on (results_2.resultid = qualifying_3.qualifyid )
      on (results_1.resultid = qualifying_3.qualifyid )
    on (constructor_standings_1.constructorstandingsid = results_2.resultid )
where constructor_results_1.date < constructor_standings_1.date
group by constructor_results_1.constructorid, qualifying_1.constructorid, qualifying_1.qualifyid, qualifying_1.raceid, results_1.grid
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    races_1.circuitid)
from 
  races as races_1
where races_1.date is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  count(*), 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 2;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructor_standings_1.date)
from 
  circuits as circuits_1
      inner join constructor_standings as constructor_standings_1
      on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
    inner join qualifying as qualifying_1
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where qualifying_1.date < constructor_standings_1.date
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 3;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number, 
  constructor_standings_1.date, 
  qualifying_2.driverid, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
    inner join qualifying as qualifying_1
      inner join qualifying as qualifying_2
      on (qualifying_1.qualifyid = qualifying_2.qualifyid )
    on (constructor_standings_1.constructorstandingsid = qualifying_2.qualifyid )
where qualifying_1.date is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.number
from 
  results as results_1
where results_1.milliseconds < results_1.rank
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  constructor_standings_2.date
from 
  constructor_standings as constructor_standings_1
    inner join constructor_standings as constructor_standings_2
    on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
where constructor_standings_2.date > constructor_standings_1.date
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  drivers_1.nationality, 
  drivers_1.driverref, 
  drivers_1.dob, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
group by drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.nationality
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref
from 
  drivers as drivers_1
    inner join constructor_standings as constructor_standings_1
    on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
where drivers_1.forename is not NULL
limit 1;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  min(
    standings_1.driverstandingsid), 
  standings_1.driverid, 
  drivers_1.code, 
  standings_1.position, 
  max(
    constructor_results_1.points), 
  drivers_1.surname
from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
      inner join drivers as drivers_1
      on (constructor_results_1.constructorresultsid = drivers_1.driverid )
    on (standings_1.driverid = drivers_1.driverid )
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorresultsid, drivers_1.code, drivers_1.surname, standings_1.driverid, standings_1.position
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid
from 
  races as races_1
    inner join results as results_1
    on (results_1.raceid = races_1.raceid )
where results_1.grid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
limit 3;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name, 
  results_1.statusid, 
  qualifying_1.number
from 
  races as races_1
      inner join qualifying as qualifying_1
          inner join circuits as circuits_1
          on (qualifying_1.qualifyid = circuits_1.circuitid )
        inner join standings as standings_1
        on (qualifying_1.qualifyid = standings_1.driverstandingsid )
      on (qualifying_1.raceid = races_1.raceid )
    inner join results as results_1
    on (standings_1.driverstandingsid = results_1.resultid )
where results_1.milliseconds is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.forename, 
  drivers_1.driverid, 
  drivers_1.nationality, 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.position, 
  constructor_standings_1.date, 
  max(
    constructor_standings_1.points), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points <= constructor_standings_1.points
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 3;
-- meta {"num_joins":3,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  max(
    results_1.points), 
  circuits_1.alt, 
  constructor_standings_1.date, 
  sum(
    results_1.driverid), 
  max(
    constructor_results_1.date), 
  results_1.grid, 
  count(*)
from 
  constructor_results as constructor_results_1
    inner join constructor_standings as constructor_standings_1
        inner join results as results_1
        on (constructor_standings_1.constructorstandingsid = results_1.resultid )
      inner join circuits as circuits_1
      on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
    on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
where constructor_standings_1.points is not NULL
group by circuits_1.alt, constructor_results_1.points, constructor_standings_1.date, results_1.grid
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.constructorid
from 
  drivers as drivers_1
    inner join qualifying as qualifying_1
    on (qualifying_1.driverid = drivers_1.driverid )
where qualifying_1.number is not NULL
limit 2;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    drivers_1.dob), 
  drivers_1.driverref, 
  qualifying_1.date, 
  qualifying_2.date
from 
  drivers as drivers_1
      inner join drivers as drivers_2
        inner join qualifying as qualifying_1
        on (qualifying_1.driverid = drivers_2.driverid )
      on (qualifying_1.driverid = drivers_1.driverid )
    inner join qualifying as qualifying_2
    on (qualifying_1.qualifyid = qualifying_2.qualifyid )
where qualifying_1.position is not NULL
group by drivers_1.driverref, qualifying_1.date, qualifying_2.date
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.forename, 
  circuits_1.lng, 
  circuits_1.country, 
  circuits_1.circuitref, 
  circuits_1.alt, 
  drivers_1.surname, 
  circuits_1.name
from 
  circuits as circuits_1
    inner join drivers as drivers_1
    on (circuits_1.circuitid = drivers_1.driverid )
where drivers_1.surname is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref, 
  min(
    circuits_1.circuitid), 
  circuits_1.location, 
  max(
    circuits_1.circuitid), 
  circuits_1.lat, 
  circuits_1.country, 
  circuits_1.lng, 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.location
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.resultid
from 
  results as results_1
where results_1.milliseconds is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.date, 
  results_1.points, 
  results_1.positionorder, 
  results_1.constructorid, 
  results_1.driverid, 
  results_1.rank, 
  results_1.statusid, 
  results_1.position, 
  results_1.grid, 
  results_1.raceid, 
  results_1.number
from 
  results as results_1
where results_1.positionorder is not NULL
limit 1;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.grid, 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
    inner join results as results_1
      inner join circuits as circuits_1
      on (results_1.resultid = circuits_1.circuitid )
    on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
where results_1.date is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt, 
  count(*), 
  avg(
    circuits_1.alt), 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
group by circuits_1.alt, circuits_1.circuitid
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.positionorder, 
  sum(
    results_1.laps)
from 
  results as results_1
where results_1.date is not NULL
group by results_1.positionorder
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.name, 
  max(
    constructors_1.constructorid), 
  count(*), 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorid <= constructors_1.constructorid
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 1;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    circuits_1.lng), 
  circuits_1.circuitid, 
  circuits_1.country, 
  sum(
    circuits_1.circuitid), 
  circuits_1.circuitref, 
  circuits_1.lat, 
  max(
    circuits_1.lat)
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lat
limit 1;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.code, 
  constructor_standings_1.raceid, 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
      inner join constructor_standings as constructor_standings_1
      on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
    inner join drivers as drivers_1
    on (qualifying_1.driverid = drivers_1.driverid )
where constructor_standings_1.position is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid, 
  standings_1.wins, 
  standings_1.position, 
  standings_1.date, 
  standings_1.raceid, 
  standings_1.points
from 
  standings as standings_1
where standings_1.raceid >= standings_1.position
limit 3;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.nationality, 
  results_2.fastestlap, 
  results_1.milliseconds, 
  circuits_1.lat, 
  circuits_1.lng, 
  circuits_1.circuitid, 
  results_2.points
from 
  drivers as drivers_1
        inner join constructors as constructors_1
        on (drivers_1.driverid = constructors_1.constructorid )
      inner join circuits as circuits_1
      on (drivers_1.driverid = circuits_1.circuitid )
    inner join results as results_1
      inner join results as results_2
        inner join standings as standings_1
        on (results_2.resultid = standings_1.driverstandingsid )
      on (results_1.resultid = standings_1.driverstandingsid )
    on (circuits_1.circuitid = results_1.resultid )
where drivers_1.driverid is not NULL
limit 2;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date
from 
  constructors as constructors_1
      inner join constructor_results as constructor_results_1
      on (constructor_results_1.constructorid = constructors_1.constructorid )
    inner join constructors as constructors_2
    on (constructor_results_1.constructorid = constructors_2.constructorid )
where constructors_1.constructorid is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins, 
  count(*), 
  standings_1.raceid, 
  constructor_results_1.raceid
from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where standings_1.raceid > standings_1.wins
group by constructor_results_1.raceid, standings_1.raceid, standings_1.wins
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.number <= qualifying_1.position
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.driverid < drivers_1.driverid
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.country, 
  circuits_1.location, 
  circuits_1.alt, 
  circuits_1.lat, 
  circuits_1.circuitref, 
  circuits_1.name, 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.circuitid >= circuits_1.circuitid
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  count(
    constructor_results_1.raceid)
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.raceid
limit 3;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitid, 
  circuits_1.lng, 
  max(
    circuits_1.circuitid), 
  circuits_1.country, 
  circuits_1.name, 
  circuits_1.lat, 
  max(
    circuits_1.circuitid), 
  sum(
    circuits_1.alt)
from 
  circuits as circuits_1
where circuits_1.alt <= circuits_1.lng
group by circuits_1.circuitid, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.name
limit 2;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.country, 
  sum(
    circuits_1.circuitid), 
  circuits_1.lng, 
  avg(
    circuits_1.alt), 
  circuits_1.circuitid, 
  circuits_1.name, 
  max(
    circuits_1.lat), 
  circuits_1.circuitref, 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.alt >= circuits_1.lng
group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lng, circuits_1.location, circuits_1.name
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.nationality
from 
  qualifying as qualifying_1
    inner join drivers as drivers_1
    on (qualifying_1.driverid = drivers_1.driverid )
where qualifying_1.qualifyid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid, 
  standings_1.date, 
  standings_1.points, 
  standings_1.wins
from 
  standings as standings_1
where standings_1.position is not NULL
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  drivers_1.code, 
  drivers_1.driverref, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
    inner join drivers as drivers_1
    on (constructor_results_1.constructorresultsid = drivers_1.driverid )
where drivers_1.driverid is not NULL
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid
from 
  results as results_1
    inner join constructors as constructors_1
    on (results_1.constructorid = constructors_1.constructorid )
where results_1.constructorid is not NULL
limit 1;
-- meta {"num_joins":5,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.driverid, 
  count(
    results_1.raceid)
from 
  constructor_standings as constructor_standings_1
          inner join standings as standings_1
            inner join results as results_1
            on (standings_1.driverstandingsid = results_1.resultid )
          on (constructor_standings_1.constructorstandingsid = results_1.resultid )
        inner join constructors as constructors_1
        on (standings_1.driverstandingsid = constructors_1.constructorid )
      inner join constructors as constructors_2
      on (standings_1.driverstandingsid = constructors_2.constructorid )
    inner join constructors as constructors_3
    on (constructors_2.constructorid = constructors_3.constructorid )
where constructors_2.constructorref is not NULL
group by results_1.driverid
limit 4;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lat, 
  min(
    standings_1.date), 
  results_1.position
from 
  circuits as circuits_1
    inner join results as results_1
      inner join standings as standings_1
      on (results_1.resultid = standings_1.driverstandingsid )
    on (circuits_1.circuitid = results_1.resultid )
where circuits_1.country is not NULL
group by circuits_1.lat, results_1.position
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position, 
  standings_1.points, 
  max(
    standings_1.date), 
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  sum(
    standings_1.raceid)
from 
  standings as standings_1
where standings_1.wins is not NULL
group by standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.nationality
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.position, 
  qualifying_1.date, 
  qualifying_1.constructorid, 
  qualifying_1.driverid, 
  max(
    qualifying_1.date), 
  qualifying_1.number, 
  qualifying_1.raceid, 
  min(
    qualifying_1.raceid)
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.raceid
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
limit 4;
-- meta {"num_joins":4,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_2.nationality, 
  constructor_standings_1.position, 
  qualifying_1.qualifyid, 
  min(
    qualifying_1.date), 
  min(
    standings_1.position), 
  standings_1.raceid, 
  drivers_2.driverref, 
  drivers_2.code
from 
  constructor_standings as constructor_standings_1
    inner join drivers as drivers_1
        inner join standings as standings_1
          inner join qualifying as qualifying_1
          on (standings_1.driverstandingsid = qualifying_1.qualifyid )
        on (standings_1.driverid = drivers_1.driverid )
      inner join drivers as drivers_2
      on (standings_1.driverid = drivers_2.driverid )
    on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
where standings_1.position < standings_1.raceid
group by constructor_standings_1.position, drivers_2.code, drivers_2.driverref, drivers_2.nationality, qualifying_1.qualifyid, standings_1.raceid
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverstandingsid, 
  min(
    standings_1.points)
from 
  standings as standings_1
where standings_1.position is not NULL
group by standings_1.driverstandingsid
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number, 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 2;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.rank, 
  results_1.laps, 
  qualifying_1.driverid, 
  results_1.positionorder
from 
  results as results_1
    inner join qualifying as qualifying_1
      inner join drivers as drivers_1
      on (qualifying_1.driverid = drivers_1.driverid )
    on (results_1.driverid = drivers_1.driverid )
where qualifying_1.number is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  min(
    constructor_results_1.date), 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  min(
    constructor_results_1.points), 
  max(
    constructor_results_1.points), 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid < constructor_results_1.constructorid
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  max(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.nationality
limit 1;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.milliseconds, 
  circuits_1.circuitref, 
  results_1.fastestlap, 
  results_1.resultid, 
  drivers_1.surname
from 
  drivers as drivers_1
      inner join results as results_1
      on (results_1.driverid = drivers_1.driverid )
    inner join circuits as circuits_1
    on (results_1.resultid = circuits_1.circuitid )
where results_1.positionorder >= results_1.driverid
limit 2;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid
from 
  constructors as constructors_1
      inner join standings as standings_1
      on (constructors_1.constructorid = standings_1.driverstandingsid )
    inner join constructor_results as constructor_results_1
    on (constructor_results_1.constructorid = constructors_1.constructorid )
where constructor_results_1.raceid is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  constructor_results_1.constructorid, 
  standings_1.position
from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where constructor_results_1.constructorid is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  circuits_1.circuitref, 
  circuits_1.country, 
  circuits_1.name, 
  races_1.time, 
  races_1.raceid, 
  circuits_1.alt, 
  max(
    races_1.year), 
  races_1.name
from 
  circuits as circuits_1
    inner join races as races_1
    on (races_1.circuitid = circuits_1.circuitid )
where races_1.circuitid <= races_1.raceid
group by circuits_1.alt, circuits_1.circuitref, circuits_1.country, circuits_1.name, races_1.name, races_1.raceid, races_1.time
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  min(
    standings_1.points)
from 
  standings as standings_1
where standings_1.points is not NULL
group by standings_1.raceid
limit 1;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  min(
    constructor_results_1.date), 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
      inner join results as results_1
      on (constructor_results_1.constructorresultsid = results_1.resultid )
    inner join constructor_standings as constructor_standings_1
    on (results_1.resultid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.date < constructor_results_1.date
group by constructor_results_1.points, constructor_results_1.raceid
limit 1;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref
from 
  qualifying as qualifying_1
    inner join circuits as circuits_1
        inner join constructors as constructors_1
          inner join standings as standings_1
          on (constructors_1.constructorid = standings_1.driverstandingsid )
        on (circuits_1.circuitid = constructors_1.constructorid )
      inner join qualifying as qualifying_2
        inner join standings as standings_2
        on (qualifying_2.qualifyid = standings_2.driverstandingsid )
      on (standings_1.driverstandingsid = standings_2.driverstandingsid )
    on (qualifying_1.qualifyid = standings_2.driverstandingsid )
where qualifying_1.qualifyid = qualifying_2.number
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  max(
    constructor_standings_1.date)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.wins
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.surname >= drivers_1.code
limit 1;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.country, 
  constructors_1.name
from 
  circuits as circuits_1
      inner join constructors as constructors_1
      on (circuits_1.circuitid = constructors_1.constructorid )
    inner join qualifying as qualifying_1
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where qualifying_1.driverid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.dob, 
  max(
    drivers_1.dob), 
  drivers_1.nationality, 
  drivers_1.driverid, 
  drivers_1.driverref, 
  count(*), 
  drivers_1.forename, 
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 1;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  constructor_standings_2.wins, 
  qualifying_1.driverid, 
  constructor_results_1.constructorid, 
  constructor_standings_1.wins, 
  max(
    constructor_standings_1.constructorid)
from 
  constructor_standings as constructor_standings_1
        inner join constructor_results as constructor_results_1
        on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
      inner join constructor_standings as constructor_standings_2
      on (constructor_results_1.constructorresultsid = constructor_standings_2.constructorstandingsid )
    inner join races as races_1
      inner join qualifying as qualifying_1
      on (qualifying_1.raceid = races_1.raceid )
    on (constructor_standings_1.raceid = races_1.raceid )
where constructor_standings_2.constructorstandingsid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.points, constructor_standings_1.wins, constructor_standings_2.wins, qualifying_1.driverid
limit 3;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.points, 
  constructors_1.name, 
  constructors_1.nationality, 
  standings_1.driverstandingsid, 
  constructors_1.constructorref, 
  results_1.resultid
from 
  standings as standings_1
        inner join qualifying as qualifying_1
        on (standings_1.driverstandingsid = qualifying_1.qualifyid )
      inner join results as results_1
      on (qualifying_1.qualifyid = results_1.resultid )
    inner join constructors as constructors_1
    on (qualifying_1.constructorid = constructors_1.constructorid )
where standings_1.raceid is not NULL
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location, 
  standings_1.wins
from 
  standings as standings_1
    inner join circuits as circuits_1
    on (standings_1.driverstandingsid = circuits_1.circuitid )
where standings_1.driverstandingsid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.circuitid >= circuits_1.circuitid
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.positionorder, 
  results_1.points, 
  results_1.resultid, 
  results_1.position, 
  results_1.fastestlap, 
  results_1.constructorid
from 
  results as results_1
where results_1.number is not NULL
limit 1;
-- meta {"num_joins":4,"num_aggregates":6,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  drivers_1.surname, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.position, 
  constructor_standings_1.points, 
  min(
    results_1.date), 
  constructors_2.constructorid, 
  constructors_1.constructorid, 
  min(
    drivers_1.dob), 
  results_1.grid, 
  constructors_2.name, 
  results_1.milliseconds, 
  max(
    constructor_standings_1.wins), 
  max(
    results_1.statusid), 
  constructors_1.nationality, 
  drivers_1.driverid, 
  constructor_standings_1.date, 
  min(
    results_1.date), 
  max(
    drivers_1.dob)
from 
  results as results_1
    inner join constructor_standings as constructor_standings_1
        inner join drivers as drivers_1
          inner join constructors as constructors_1
          on (drivers_1.driverid = constructors_1.constructorid )
        on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
      inner join constructors as constructors_2
      on (drivers_1.driverid = constructors_2.constructorid )
    on (results_1.resultid = constructor_standings_1.constructorstandingsid )
where results_1.constructorid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality, constructors_2.constructorid, constructors_2.name, drivers_1.driverid, drivers_1.surname, results_1.grid, results_1.milliseconds
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  count(*)
from 
  constructors as constructors_1
where constructors_1.constructorid < constructors_1.constructorid
group by constructors_1.constructorref
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lat, 
  drivers_1.code, 
  circuits_1.location, 
  drivers_1.driverid, 
  drivers_1.nationality, 
  drivers_1.dob, 
  drivers_1.forename, 
  circuits_1.circuitref, 
  circuits_1.country, 
  circuits_1.name, 
  circuits_1.alt
from 
  drivers as drivers_1
    inner join circuits as circuits_1
    on (drivers_1.driverid = circuits_1.circuitid )
where drivers_1.dob <= drivers_1.dob
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    qualifying_1.date), 
  qualifying_1.date, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
group by qualifying_1.date, qualifying_1.qualifyid
limit 1;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitid
from 
  races as races_1
    inner join circuits as circuits_1
      inner join constructors as constructors_1
      on (circuits_1.circuitid = constructors_1.constructorid )
    on (races_1.raceid = constructors_1.constructorid )
where circuits_1.location is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  max(
    constructor_results_1.date), 
  constructor_results_1.date, 
  max(
    constructor_results_1.date), 
  sum(
    constructor_results_1.points), 
  max(
    constructor_results_1.date), 
  sum(
    constructor_results_1.constructorresultsid)
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid = constructor_results_1.constructorid
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 1;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    circuits_1.alt), 
  constructors_1.constructorid, 
  circuits_1.lng
from 
  circuits as circuits_1
    inner join constructors as constructors_1
    on (circuits_1.circuitid = constructors_1.constructorid )
where circuits_1.circuitref is not NULL
group by circuits_1.lng, constructors_1.constructorid
limit 4;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitid, 
  count(*), 
  sum(
    circuits_1.circuitid), 
  circuits_1.country, 
  min(
    circuits_1.circuitid)
from 
  circuits as circuits_1
where circuits_1.lat < circuits_1.alt
group by circuits_1.circuitid, circuits_1.country
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  avg(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid, 
  standings_1.points
from 
  standings as standings_1
    inner join standings as standings_2
    on (standings_1.driverstandingsid = standings_2.driverstandingsid )
where standings_1.driverstandingsid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.code, 
  min(
    drivers_1.dob), 
  avg(
    drivers_1.driverid), 
  drivers_1.dob, 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.code is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.nationality
limit 2;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  results_2.laps
from 
  results as results_1
    inner join qualifying as qualifying_1
        inner join constructors as constructors_1
        on (qualifying_1.constructorid = constructors_1.constructorid )
      inner join results as results_2
      on (results_2.constructorid = constructors_1.constructorid )
    on (results_1.constructorid = constructors_1.constructorid )
where constructors_1.constructorid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.date
from 
  races as races_1
where races_1.name is not NULL
limit 2;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid
from 
  qualifying as qualifying_1
    inner join constructors as constructors_1
      inner join constructor_results as constructor_results_1
      on (constructor_results_1.constructorid = constructors_1.constructorid )
    on (qualifying_1.constructorid = constructors_1.constructorid )
where constructor_results_1.raceid is not NULL
limit 2;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number, 
  qualifying_1.driverid, 
  qualifying_1.raceid, 
  results_1.number, 
  count(*)
from 
  qualifying as qualifying_1
    inner join results as results_1
    on (qualifying_1.qualifyid = results_1.resultid )
where results_1.positionorder < qualifying_1.number
group by qualifying_1.driverid, qualifying_1.number, qualifying_1.raceid, results_1.number
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverid, 
  drivers_1.nationality, 
  drivers_1.forename, 
  drivers_1.surname, 
  min(
    drivers_1.dob), 
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
group by drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.position, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins, 
  max(
    constructor_standings_1.position), 
  constructor_standings_1.constructorid, 
  max(
    constructor_standings_1.points)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid <= constructor_standings_1.wins
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.wins
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.rank, 
  results_1.resultid, 
  results_1.number
from 
  results as results_1
where results_1.positionorder is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.raceid, 
  races_1.year, 
  races_1.circuitid, 
  max(
    races_1.date)
from 
  races as races_1
where races_1.time >= races_1.name
group by races_1.circuitid, races_1.raceid, races_1.year
limit 4;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  constructor_results_1.raceid, 
  max(
    constructor_results_1.constructorid), 
  constructor_results_1.date, 
  standings_1.points, 
  standings_1.wins, 
  constructor_results_1.constructorresultsid, 
  standings_1.date
from 
  constructor_results as constructor_results_1
    inner join standings as standings_1
    on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
where standings_1.position is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.raceid, standings_1.date, standings_1.points, standings_1.raceid, standings_1.wins
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.qualifyid, 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverid, 
  drivers_1.code, 
  drivers_1.dob, 
  drivers_1.forename, 
  drivers_1.driverref, 
  count(*), 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.forename is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.surname
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    qualifying_1.date), 
  sum(
    qualifying_1.number), 
  qualifying_1.raceid, 
  qualifying_1.date, 
  qualifying_1.number, 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
group by qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.raceid
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.date, 
  results_1.constructorid
from 
  results as results_1
where results_1.laps is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins, 
  standings_1.date, 
  standings_1.points, 
  standings_1.position
from 
  standings as standings_1
where standings_1.date is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location, 
  count(*)
from 
  circuits as circuits_1
where circuits_1.location is not NULL
group by circuits_1.location
limit 1;
-- meta {"num_joins":2,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    standings_1.driverid), 
  races_1.date, 
  standings_1.wins, 
  sum(
    standings_1.points), 
  standings_1.driverid, 
  races_1.time, 
  standings_1.date, 
  races_1.raceid, 
  circuits_1.name, 
  races_1.name, 
  sum(
    circuits_1.alt), 
  min(
    races_1.date), 
  standings_1.driverstandingsid
from 
  races as races_1
      inner join standings as standings_1
      on (standings_1.raceid = races_1.raceid )
    inner join circuits as circuits_1
    on (races_1.circuitid = circuits_1.circuitid )
where standings_1.date > races_1.date
group by circuits_1.name, races_1.date, races_1.name, races_1.raceid, races_1.time, standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.wins
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref, 
  circuits_1.alt, 
  circuits_1.name, 
  max(
    circuits_1.circuitid), 
  circuits_1.circuitid, 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.lng, circuits_1.name
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.raceid, 
  max(
    constructor_standings_1.points), 
  avg(
    constructor_standings_1.constructorstandingsid), 
  constructor_standings_1.points, 
  min(
    constructor_standings_1.date), 
  avg(
    constructor_standings_1.points), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  min(
    constructor_standings_1.date)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.raceid
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name, 
  circuits_1.country, 
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  max(
    constructor_results_1.date)
from 
  constructor_results as constructor_results_1
where constructor_results_1.date = constructor_results_1.date
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.raceid, 
  races_1.circuitid
from 
  races as races_1
where races_1.date is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins
from 
  standings as standings_1
    inner join drivers as drivers_1
    on (standings_1.driverid = drivers_1.driverid )
where drivers_1.driverid is not NULL
limit 4;
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    qualifying_1.constructorid), 
  avg(
    qualifying_2.position), 
  qualifying_2.date, 
  qualifying_3.qualifyid, 
  qualifying_2.driverid, 
  qualifying_3.number, 
  races_1.name
from 
  qualifying as qualifying_1
    inner join races as races_1
      inner join qualifying as qualifying_2
        inner join qualifying as qualifying_3
        on (qualifying_2.qualifyid = qualifying_3.qualifyid )
      on (qualifying_2.raceid = races_1.raceid )
    on (qualifying_1.raceid = races_1.raceid )
where qualifying_2.date < qualifying_1.date
group by qualifying_2.date, qualifying_2.driverid, qualifying_3.number, qualifying_3.qualifyid, races_1.name
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.constructorid, 
  qualifying_1.number, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
limit 1;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    circuits_1.lat)
from 
  drivers as drivers_1
    inner join qualifying as qualifying_1
      inner join races as races_1
          inner join circuits as circuits_1
          on (races_1.circuitid = circuits_1.circuitid )
        inner join constructors as constructors_1
        on (circuits_1.circuitid = constructors_1.constructorid )
      on (qualifying_1.qualifyid = circuits_1.circuitid )
    on (drivers_1.driverid = constructors_1.constructorid )
where qualifying_1.constructorid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.statusid, 
  results_1.laps, 
  max(
    results_1.laps), 
  results_1.raceid, 
  results_1.rank, 
  results_1.points, 
  results_1.positionorder, 
  avg(
    results_1.statusid), 
  min(
    results_1.date)
from 
  results as results_1
where results_1.positionorder > results_1.constructorid
group by results_1.laps, results_1.points, results_1.positionorder, results_1.raceid, results_1.rank, results_1.statusid
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.position, 
  results_1.date, 
  results_1.fastestlap, 
  sum(
    results_1.resultid), 
  results_1.raceid, 
  results_1.constructorid
from 
  results as results_1
where results_1.date <= results_1.date
group by results_1.constructorid, results_1.date, results_1.fastestlap, results_1.position, results_1.raceid
limit 1;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid, 
  standings_1.wins, 
  qualifying_1.position, 
  min(
    standings_1.points)
from 
  qualifying as qualifying_1
    inner join standings as standings_1
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where standings_1.points is not NULL
group by qualifying_1.driverid, qualifying_1.position, standings_1.wins
limit 3;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location, 
  circuits_1.lng, 
  count(
    circuits_1.lng), 
  qualifying_1.position, 
  qualifying_1.driverid, 
  circuits_1.circuitid, 
  circuits_1.country, 
  qualifying_1.qualifyid, 
  sum(
    circuits_1.alt), 
  max(
    circuits_1.alt)
from 
  circuits as circuits_1
    inner join qualifying as qualifying_1
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where qualifying_1.date is not NULL
group by circuits_1.circuitid, circuits_1.country, circuits_1.lng, circuits_1.location, qualifying_1.driverid, qualifying_1.position, qualifying_1.qualifyid
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.name, 
  count(*), 
  count(*)
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 4;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    constructor_results_1.points), 
  constructor_results_1.points, 
  constructor_results_1.constructorid
from 
  qualifying as qualifying_1
    inner join constructor_results as constructor_results_1
    on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
where qualifying_1.constructorid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.points
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.position
from 
  constructor_results as constructor_results_1
    inner join qualifying as qualifying_1
    on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
where constructor_results_1.constructorresultsid is not NULL
limit 2;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    drivers_1.dob)
from 
  drivers as drivers_1
    inner join constructors as constructors_1
    on (drivers_1.driverid = constructors_1.constructorid )
where constructors_1.name is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.statusid, 
  sum(
    results_1.position), 
  results_1.position, 
  results_1.milliseconds, 
  results_1.grid, 
  min(
    results_1.raceid), 
  results_1.laps, 
  min(
    results_1.date), 
  sum(
    results_1.statusid)
from 
  results as results_1
where results_1.positionorder is not NULL
group by results_1.grid, results_1.laps, results_1.milliseconds, results_1.position, results_1.statusid
limit 1;
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  max(
    constructor_results_1.points), 
  constructor_results_1.points, 
  standings_1.driverstandingsid, 
  max(
    drivers_1.dob), 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  standings_1.driverid, 
  drivers_1.driverref, 
  standings_1.position, 
  drivers_1.code, 
  max(
    standings_1.points)
from 
  standings as standings_1
    inner join drivers as drivers_1
      inner join constructor_results as constructor_results_1
      on (drivers_1.driverid = constructor_results_1.constructorresultsid )
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where drivers_1.dob is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid, drivers_1.code, drivers_1.driverref, standings_1.driverid, standings_1.driverstandingsid, standings_1.position
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.constructorid, 
  qualifying_1.driverid, 
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  sum(
    qualifying_1.qualifyid), 
  sum(
    qualifying_1.position)
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid <= qualifying_1.number
group by qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.qualifyid, qualifying_1.raceid
limit 2;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.date
from 
  drivers as drivers_1
    inner join constructor_results as constructor_results_1
      inner join races as races_1
      on (constructor_results_1.raceid = races_1.raceid )
    on (drivers_1.driverid = races_1.raceid )
where races_1.year is not NULL
limit 3;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_2.points, 
  drivers_1.surname, 
  results_1.date, 
  results_1.resultid, 
  results_1.rank, 
  results_2.position, 
  drivers_1.driverref, 
  races_1.date, 
  drivers_1.nationality, 
  races_1.time, 
  drivers_2.surname, 
  races_1.round, 
  drivers_2.forename, 
  drivers_2.nationality
from 
  drivers as drivers_1
      inner join results as results_1
      on (results_1.driverid = drivers_1.driverid )
    inner join races as races_1
      inner join drivers as drivers_2
        inner join results as results_2
        on (results_2.driverid = drivers_2.driverid )
      on (races_1.raceid = drivers_2.driverid )
    on (results_1.resultid = results_2.resultid )
where races_1.date is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.raceid, 
  max(
    qualifying_1.date), 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
group by qualifying_1.date, qualifying_1.raceid
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    races_1.date), 
  races_1.circuitid, 
  min(
    races_1.date)
from 
  races as races_1
where races_1.date is not NULL
group by races_1.circuitid
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.milliseconds
from 
  results as results_1
    inner join circuits as circuits_1
    on (results_1.resultid = circuits_1.circuitid )
where circuits_1.country is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.code, 
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_2.position, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorid, 
  constructor_standings_2.wins, 
  constructor_standings_1.wins, 
  constructor_standings_2.constructorstandingsid, 
  constructor_standings_2.constructorid, 
  constructor_standings_1.raceid, 
  constructor_standings_2.date, 
  constructor_standings_1.date, 
  constructor_standings_2.raceid
from 
  constructor_standings as constructor_standings_1
    inner join constructor_standings as constructor_standings_2
    on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
where constructor_standings_2.points is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  min(
    constructors_1.constructorid), 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.constructorid, constructors_1.constructorref
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.fastestlap, 
  max(
    results_1.resultid), 
  min(
    results_1.date), 
  results_1.points, 
  results_1.grid
from 
  results as results_1
where results_1.fastestlap is not NULL
group by results_1.fastestlap, results_1.grid, results_1.points
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  min(
    constructors_1.constructorid), 
  avg(
    constructors_1.constructorid), 
  constructors_1.constructorref, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.date, 
  standings_1.wins, 
  count(
    standings_1.points), 
  standings_1.raceid, 
  standings_1.position, 
  standings_1.points, 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.date is not NULL
group by standings_1.date, standings_1.driverid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
limit 4;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins, 
  results_1.raceid, 
  constructor_standings_1.raceid, 
  results_1.grid, 
  sum(
    results_1.constructorid), 
  circuits_1.circuitref, 
  constructor_standings_1.constructorid, 
  circuits_1.circuitid, 
  circuits_1.name
from 
  results as results_1
    inner join constructor_standings as constructor_standings_1
      inner join circuits as circuits_1
      on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
    on (results_1.resultid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.raceid is not NULL
group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.name, constructor_standings_1.constructorid, constructor_standings_1.raceid, constructor_standings_1.wins, results_1.grid, results_1.raceid
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt, 
  circuits_1.location, 
  circuits_1.country, 
  circuits_1.lng, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.circuitid = circuits_1.circuitid
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year, 
  constructors_1.constructorid
from 
  races as races_1
    inner join constructors as constructors_1
    on (races_1.raceid = constructors_1.constructorid )
where constructors_1.constructorref is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.date, 
  races_1.circuitid, 
  races_1.round, 
  races_1.name, 
  races_1.year
from 
  races as races_1
where races_1.name is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location, 
  circuits_1.country, 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.circuitid <= circuits_1.circuitid
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    qualifying_1.number), 
  qualifying_1.date, 
  sum(
    qualifying_1.qualifyid)
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
group by qualifying_1.date
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid, 
  races_1.time, 
  count(
    races_1.date)
from 
  races as races_1
where races_1.round is not NULL
group by races_1.circuitid, races_1.time
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.resultid, 
  results_1.fastestlap, 
  results_1.laps, 
  results_2.constructorid
from 
  results as results_1
    inner join results as results_2
    on (results_1.resultid = results_2.resultid )
where results_2.number is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.fastestlap
from 
  results as results_1
where results_1.raceid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    races_1.raceid), 
  races_1.round, 
  races_1.time, 
  races_1.name, 
  races_1.raceid, 
  races_1.date, 
  races_1.year
from 
  races as races_1
where races_1.raceid is not NULL
group by races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 4;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  circuits_1.lat
from 
  constructor_results as constructor_results_1
          inner join circuits as circuits_1
            inner join races as races_1
            on (races_1.circuitid = circuits_1.circuitid )
          on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
        inner join circuits as circuits_2
        on (circuits_1.circuitid = circuits_2.circuitid )
      inner join qualifying as qualifying_1
      on (circuits_1.circuitid = qualifying_1.qualifyid )
    inner join standings as standings_1
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where races_1.date < standings_1.date
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins, 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_results_1.date), 
  min(
    constructor_results_1.constructorresultsid), 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  sum(
    constructor_results_1.raceid), 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  min(
    constructor_results_1.date), 
  avg(
    constructor_results_1.points)
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 4;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.resultid, 
  results_1.raceid, 
  results_1.rank, 
  qualifying_1.driverid, 
  max(
    results_1.points), 
  results_1.statusid, 
  min(
    results_1.fastestlap)
from 
  qualifying as qualifying_1
    inner join results as results_1
    on (qualifying_1.qualifyid = results_1.resultid )
where results_1.milliseconds is not NULL
group by qualifying_1.driverid, results_1.raceid, results_1.rank, results_1.resultid, results_1.statusid
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.date
from 
  standings as standings_1
where standings_1.driverid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_standings_1.date), 
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  min(
    constructor_standings_1.points)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position = constructor_standings_1.constructorid
group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.raceid
limit 4;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.code, 
  avg(
    drivers_1.driverid), 
  drivers_2.code
from 
  drivers as drivers_1
    inner join drivers as drivers_2
    on (drivers_1.driverid = drivers_2.driverid )
where drivers_2.driverid >= drivers_1.driverid
group by drivers_1.code, drivers_2.code
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.fastestlap, 
  results_1.statusid, 
  results_1.points, 
  results_1.constructorid, 
  results_1.date, 
  results_1.raceid, 
  results_1.laps
from 
  results as results_1
where results_1.milliseconds < results_1.points
limit 4;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    races_1.date), 
  races_1.date, 
  count(*), 
  races_1.year, 
  min(
    races_1.date), 
  races_1.raceid
from 
  races as races_1
where races_1.circuitid < races_1.year
group by races_1.date, races_1.raceid, races_1.year
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
limit 4;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name, 
  circuits_1.country
from 
  drivers as drivers_1
      inner join constructors as constructors_1
      on (drivers_1.driverid = constructors_1.constructorid )
    inner join circuits as circuits_1
    on (drivers_1.driverid = circuits_1.circuitid )
where circuits_1.circuitref >= circuits_1.location
limit 2;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.points, 
  min(
    results_1.date), 
  max(
    results_1.driverid), 
  min(
    results_1.date), 
  results_1.rank, 
  results_1.laps, 
  avg(
    results_1.grid), 
  results_1.milliseconds, 
  results_1.driverid, 
  results_1.grid, 
  max(
    results_1.date), 
  results_1.constructorid
from 
  results as results_1
where results_1.date = results_1.date
group by results_1.constructorid, results_1.driverid, results_1.grid, results_1.laps, results_1.milliseconds, results_1.points, results_1.rank
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.code, 
  drivers_1.driverref, 
  drivers_1.dob, 
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.driverid > drivers_1.driverid
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.raceid, 
  races_1.circuitid, 
  races_1.round, 
  races_1.time, 
  races_1.date
from 
  races as races_1
where races_1.name is not NULL
limit 2;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.forename, 
  circuits_2.country, 
  circuits_2.lat, 
  circuits_3.country
from 
  circuits as circuits_1
        inner join circuits as circuits_2
        on (circuits_1.circuitid = circuits_2.circuitid )
      inner join circuits as circuits_3
      on (circuits_2.circuitid = circuits_3.circuitid )
    inner join drivers as drivers_1
    on (circuits_3.circuitid = drivers_1.driverid )
where drivers_1.surname is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    races_1.circuitid), 
  min(
    races_1.year), 
  races_1.time, 
  races_1.circuitid, 
  races_1.date, 
  max(
    races_1.date), 
  races_1.name, 
  min(
    races_1.date), 
  races_1.year, 
  min(
    races_1.date)
from 
  races as races_1
where races_1.year is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.time, races_1.year
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position
from 
  standings as standings_1
    inner join standings as standings_2
    on (standings_1.driverstandingsid = standings_2.driverstandingsid )
where standings_1.points >= standings_2.points
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref, 
  sum(
    drivers_1.driverid), 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
group by drivers_1.driverref, drivers_1.surname
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.raceid
from 
  results as results_1
where results_1.date > results_1.date
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number, 
  qualifying_1.constructorid, 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
    inner join results as results_1
    on (qualifying_1.qualifyid = results_1.resultid )
where results_1.date = qualifying_1.date
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  qualifying_1.raceid, 
  qualifying_1.qualifyid, 
  qualifying_1.number, 
  qualifying_1.position, 
  qualifying_1.constructorid, 
  count(*)
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 3;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid, 
  drivers_1.forename, 
  races_1.time, 
  standings_1.date, 
  min(
    standings_1.date), 
  standings_1.driverstandingsid, 
  standings_1.position, 
  races_1.year
from 
  races as races_1
    inner join standings as standings_1
      inner join circuits as circuits_1
        inner join drivers as drivers_1
        on (circuits_1.circuitid = drivers_1.driverid )
      on (standings_1.driverid = drivers_1.driverid )
    on (races_1.raceid = drivers_1.driverid )
where circuits_1.lat is not NULL
group by drivers_1.forename, races_1.time, races_1.year, standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.position
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid
from 
  standings as standings_1
where standings_1.date < standings_1.date
limit 2;
-- meta {"num_joins":4,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location, 
  min(
    drivers_2.dob), 
  qualifying_1.raceid, 
  drivers_1.code, 
  qualifying_1.number, 
  avg(
    qualifying_1.constructorid), 
  qualifying_1.driverid, 
  circuits_2.lng, 
  circuits_1.lng
from 
  circuits as circuits_1
    inner join drivers as drivers_1
        inner join circuits as circuits_2
        on (drivers_1.driverid = circuits_2.circuitid )
      inner join qualifying as qualifying_1
        inner join drivers as drivers_2
        on (qualifying_1.driverid = drivers_2.driverid )
      on (drivers_1.driverid = drivers_2.driverid )
    on (circuits_1.circuitid = drivers_1.driverid )
where qualifying_1.position is not NULL
group by circuits_1.lng, circuits_1.location, circuits_2.lng, drivers_1.code, qualifying_1.driverid, qualifying_1.number, qualifying_1.raceid
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    standings_1.driverstandingsid)
from 
  standings as standings_1
where standings_1.points < standings_1.points
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 3;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.raceid, 
  qualifying_1.position, 
  results_1.date
from 
  drivers as drivers_1
      inner join qualifying as qualifying_1
      on (qualifying_1.driverid = drivers_1.driverid )
    inner join qualifying as qualifying_2
        inner join results as results_1
        on (qualifying_2.qualifyid = results_1.resultid )
      inner join constructor_results as constructor_results_1
      on (results_1.resultid = constructor_results_1.constructorresultsid )
    on (qualifying_1.qualifyid = results_1.resultid )
where drivers_1.driverid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
limit 4;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.date, 
  circuits_1.alt, 
  circuits_1.name, 
  results_1.points, 
  results_1.position
from 
  circuits as circuits_1
      inner join drivers as drivers_1
      on (circuits_1.circuitid = drivers_1.driverid )
    inner join results as results_1
    on (results_1.driverid = drivers_1.driverid )
where circuits_1.name is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_standings_1.points), 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid
limit 2;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    standings_1.position), 
  qualifying_1.number, 
  standings_1.points, 
  standings_1.driverstandingsid, 
  standings_1.position
from 
  qualifying as qualifying_1
    inner join standings as standings_1
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where qualifying_1.constructorid is not NULL
group by qualifying_1.number, standings_1.driverstandingsid, standings_1.points, standings_1.position
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.forename
from 
  constructor_standings as constructor_standings_1
    inner join drivers as drivers_1
    on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
where constructor_standings_1.constructorstandingsid <= constructor_standings_1.constructorid
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.raceid
from 
  standings as standings_1
    inner join races as races_1
    on (standings_1.raceid = races_1.raceid )
where standings_1.date > races_1.date
limit 2;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  qualifying_1.driverid, 
  min(
    constructor_standings_1.constructorid), 
  constructor_standings_1.date, 
  max(
    qualifying_1.date)
from 
  constructor_standings as constructor_standings_1
    inner join qualifying as qualifying_1
    on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
where qualifying_1.qualifyid is not NULL
group by constructor_standings_1.date, qualifying_1.driverid
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 3;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.constructorid, 
  results_1.position, 
  results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  max(
    circuits_1.lng)
from 
  results as results_1
    inner join circuits as circuits_1
      inner join constructor_results as constructor_results_1
      on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where circuits_1.name is not NULL
group by constructor_results_1.constructorresultsid, results_1.constructorid, results_1.position, results_1.raceid
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number
from 
  drivers as drivers_1
    inner join qualifying as qualifying_1
    on (qualifying_1.driverid = drivers_1.driverid )
where drivers_1.dob is not NULL
limit 2;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.number, 
  races_1.name, 
  races_1.circuitid, 
  races_1.year, 
  races_1.round, 
  results_1.driverid, 
  results_1.position, 
  races_1.date, 
  results_1.positionorder, 
  max(
    results_1.date), 
  results_1.fastestlap, 
  sum(
    races_1.raceid), 
  min(
    results_1.statusid), 
  races_1.time
from 
  races as races_1
    inner join results as results_1
    on (results_1.raceid = races_1.raceid )
where results_1.position is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.round, races_1.time, races_1.year, results_1.driverid, results_1.fastestlap, results_1.number, results_1.position, results_1.positionorder
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.position, 
  qualifying_1.date, 
  constructors_1.nationality
from 
  constructors as constructors_1
    inner join qualifying as qualifying_1
    on (qualifying_1.constructorid = constructors_1.constructorid )
where constructors_1.nationality is not NULL
limit 2;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name, 
  count(
    constructor_results_1.constructorresultsid)
from 
  constructor_results as constructor_results_1
      inner join drivers as drivers_1
      on (constructor_results_1.constructorresultsid = drivers_1.driverid )
    inner join circuits as circuits_1
    on (drivers_1.driverid = circuits_1.circuitid )
where constructor_results_1.date >= drivers_1.dob
group by circuits_1.name
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    results_1.points)
from 
  results as results_1
where results_1.constructorid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.round, 
  races_1.raceid
from 
  races as races_1
where races_1.year is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.forename, 
  drivers_1.dob, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.dob <= drivers_1.dob
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.constructorid, 
  qualifying_1.driverid, 
  qualifying_1.number, 
  qualifying_1.date, 
  max(
    qualifying_1.number)
from 
  qualifying as qualifying_1
where qualifying_1.date < qualifying_1.date
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    circuits_1.lng), 
  circuits_1.circuitid, 
  circuits_1.alt, 
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref
limit 3;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.raceid, 
  max(
    qualifying_1.date), 
  min(
    qualifying_1.date), 
  count(
    qualifying_1.position)
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
group by qualifying_1.raceid
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid >= constructor_results_1.constructorresultsid
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins, 
  standings_1.driverstandingsid, 
  avg(
    standings_1.points), 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.wins is not NULL
group by standings_1.driverstandingsid, standings_1.raceid, standings_1.wins
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select distinct 
  constructors_1.constructorref, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorid = constructors_1.constructorid
limit 3;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.forename, 
  qualifying_1.number, 
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  drivers_1.nationality, 
  constructor_results_1.constructorresultsid, 
  drivers_1.surname, 
  qualifying_1.constructorid, 
  constructor_results_1.raceid
from 
  constructor_standings as constructor_standings_1
      inner join constructor_results as constructor_results_1
        inner join drivers as drivers_1
        on (constructor_results_1.constructorresultsid = drivers_1.driverid )
      on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
    inner join qualifying as qualifying_1
    on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
where qualifying_1.raceid <= qualifying_1.driverid
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.constructorref = constructors_1.nationality
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.time, 
  races_1.date, 
  races_1.name, 
  min(
    races_1.date), 
  races_1.round, 
  races_1.raceid
from 
  races as races_1
where races_1.name is not NULL
group by races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    drivers_1.dob), 
  min(
    drivers_1.dob), 
  drivers_1.forename, 
  drivers_1.driverref, 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
group by drivers_1.driverref, drivers_1.forename, drivers_1.nationality
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.round
from 
  races as races_1
where races_1.year = races_1.raceid
limit 1;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  max(
    results_1.laps), 
  constructors_1.name, 
  results_1.date, 
  results_1.statusid
from 
  constructors as constructors_1
    inner join results as results_1
    on (results_1.constructorid = constructors_1.constructorid )
where constructors_1.name is not NULL
group by constructors_1.name, constructors_1.nationality, results_1.date, results_1.statusid
limit 2;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    results_1.driverid), 
  max(
    results_1.raceid), 
  results_1.rank, 
  max(
    results_1.points), 
  results_1.positionorder, 
  results_1.constructorid
from 
  results as results_1
where results_1.statusid is not NULL
group by results_1.constructorid, results_1.positionorder, results_1.rank
limit 3;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorstandingsid, 
  drivers_1.nationality, 
  drivers_2.nationality
from 
  results as results_1
      inner join drivers as drivers_1
      on (results_1.driverid = drivers_1.driverid )
    inner join constructor_standings as constructor_standings_1
      inner join drivers as drivers_2
      on (constructor_standings_1.constructorstandingsid = drivers_2.driverid )
    on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
where results_1.position < results_1.number
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  races_1.date, 
  races_1.year, 
  max(
    races_1.date), 
  races_1.round
from 
  races as races_1
where races_1.raceid is not NULL
group by races_1.date, races_1.round, races_1.year
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  avg(
    constructors_1.constructorid), 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.constructorid, constructors_1.nationality
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lat, 
  circuits_1.location, 
  circuits_1.name, 
  count(
    circuits_1.lat), 
  count(*)
from 
  circuits as circuits_1
where circuits_1.lat >= circuits_1.alt
group by circuits_1.lat, circuits_1.location, circuits_1.name
limit 1;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location
from 
  constructors as constructors_1
      inner join constructor_results as constructor_results_1
      on (constructor_results_1.constructorid = constructors_1.constructorid )
    inner join circuits as circuits_1
    on (constructors_1.constructorid = circuits_1.circuitid )
where constructor_results_1.points is not NULL
limit 3;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  constructors_1.constructorid, 
  max(
    constructor_results_1.points), 
  constructor_results_1.raceid, 
  constructors_1.nationality, 
  constructor_results_1.constructorid, 
  count(*)
from 
  constructors as constructors_1
    inner join constructor_results as constructor_results_1
    on (constructor_results_1.constructorid = constructors_1.constructorid )
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructors_1.constructorid, constructors_1.nationality
limit 3;
-- meta {"num_joins":4,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.position, 
  results_1.constructorid, 
  min(
    constructor_standings_1.date), 
  min(
    circuits_1.lng), 
  min(
    qualifying_1.date), 
  circuits_1.lng, 
  constructor_standings_1.points, 
  circuits_1.circuitref, 
  max(
    qualifying_1.date), 
  constructors_1.constructorid
from 
  constructor_standings as constructor_standings_1
    inner join circuits as circuits_1
      inner join results as results_1
          inner join qualifying as qualifying_1
          on (results_1.resultid = qualifying_1.qualifyid )
        inner join constructors as constructors_1
        on (qualifying_1.constructorid = constructors_1.constructorid )
      on (circuits_1.circuitid = results_1.resultid )
    on (constructor_standings_1.constructorstandingsid = results_1.resultid )
where results_1.rank is not NULL
group by circuits_1.circuitref, circuits_1.lng, constructor_standings_1.points, constructors_1.constructorid, qualifying_1.position, results_1.constructorid
limit 3;
-- meta {"num_joins":3,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.position, 
  max(
    drivers_1.dob), 
  min(
    constructor_standings_2.date), 
  min(
    constructor_standings_1.points), 
  qualifying_1.position, 
  constructor_standings_2.date
from 
  constructor_standings as constructor_standings_1
      inner join drivers as drivers_1
      on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
    inner join constructor_standings as constructor_standings_2
      inner join qualifying as qualifying_1
      on (constructor_standings_2.constructorstandingsid = qualifying_1.qualifyid )
    on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
where qualifying_1.date is not NULL
group by constructor_standings_1.position, constructor_standings_2.date, qualifying_1.position
limit 4;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position, 
  max(
    standings_1.date)
from 
  constructors as constructors_1
    inner join standings as standings_1
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where standings_1.date <= standings_1.date
group by standings_1.position
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref, 
  max(
    circuits_1.circuitid), 
  circuits_1.name, 
  circuits_1.lat
from 
  circuits as circuits_1
where circuits_1.location is not NULL
group by circuits_1.circuitref, circuits_1.lat, circuits_1.name
limit 3;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  constructor_standings_1.date
from 
  races as races_1
      inner join results as results_1
      on (results_1.raceid = races_1.raceid )
    inner join constructor_standings as constructor_standings_1
      inner join constructor_results as constructor_results_1
      on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
    on (constructor_standings_1.raceid = races_1.raceid )
where constructor_results_1.date is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverid, 
  drivers_1.nationality, 
  drivers_1.driverref, 
  drivers_1.forename, 
  drivers_1.surname, 
  count(
    drivers_1.surname), 
  min(
    drivers_1.dob), 
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
group by drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 1;
-- meta {"num_joins":6,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_2.constructorref, 
  constructor_results_1.points
from 
  constructors as constructors_1
    inner join constructors as constructors_2
        inner join drivers as drivers_1
          inner join constructor_results as constructor_results_1
          on (drivers_1.driverid = constructor_results_1.constructorresultsid )
        on (constructors_2.constructorid = drivers_1.driverid )
      inner join races as races_1
          inner join circuits as circuits_1
          on (races_1.circuitid = circuits_1.circuitid )
        inner join races as races_2
        on (races_1.raceid = races_2.raceid )
      on (constructor_results_1.raceid = races_1.raceid )
    on (constructor_results_1.constructorid = constructors_1.constructorid )
where constructor_results_1.date is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position, 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.driverid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.points, 
  sum(
    results_1.rank), 
  results_1.positionorder, 
  results_1.rank, 
  results_1.driverid, 
  results_1.constructorid, 
  results_1.fastestlap, 
  results_1.number, 
  results_1.date, 
  results_1.laps, 
  results_1.grid, 
  results_1.position, 
  max(
    results_1.statusid), 
  results_1.raceid, 
  max(
    results_1.rank)
from 
  results as results_1
where results_1.position is not NULL
group by results_1.constructorid, results_1.date, results_1.driverid, results_1.fastestlap, results_1.grid, results_1.laps, results_1.number, results_1.points, results_1.position, results_1.positionorder, results_1.raceid, results_1.rank
limit 2;
-- meta {"num_joins":4,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  max(
    constructor_results_2.date), 
  min(
    constructor_results_1.points)
from 
  results as results_1
    inner join constructor_standings as constructor_standings_1
          inner join constructor_results as constructor_results_1
          on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
        inner join drivers as drivers_1
        on (constructor_results_1.constructorresultsid = drivers_1.driverid )
      inner join constructor_results as constructor_results_2
      on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
    on (results_1.driverid = drivers_1.driverid )
where results_1.milliseconds > results_1.rank
group by constructor_results_1.constructorid
limit 4;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  races_1.round, 
  min(
    constructor_standings_1.date), 
  min(
    constructor_standings_1.date)
from 
  races as races_1
    inner join constructors as constructors_1
      inner join constructor_standings as constructor_standings_1
      on (constructor_standings_1.constructorid = constructors_1.constructorid )
    on (races_1.raceid = constructors_1.constructorid )
where races_1.circuitid > races_1.year
group by constructor_standings_1.position, constructor_standings_1.wins, constructors_1.nationality, races_1.round
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.raceid, 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  qualifying_1.date, 
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.fastestlap, 
  count(*)
from 
  results as results_1
where results_1.milliseconds is not NULL
group by results_1.fastestlap
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name
from 
  constructors as constructors_1
    inner join constructors as constructors_2
    on (constructors_1.constructorid = constructors_2.constructorid )
where constructors_1.constructorid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lat, 
  circuits_1.country, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.country is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.raceid, 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.constructorstandingsid, 
  min(
    constructor_standings_1.points), 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  max(
    constructors_1.constructorid), 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.qualifyid, 
  qualifying_1.date, 
  results_1.statusid, 
  results_1.fastestlap, 
  qualifying_1.raceid
from 
  results as results_1
    inner join qualifying as qualifying_1
    on (results_1.resultid = qualifying_1.qualifyid )
where results_1.number > results_1.milliseconds
limit 2;
-- meta {"num_joins":3,"num_aggregates":6,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  results_1.fastestlap, 
  constructor_results_1.points, 
  constructor_results_2.raceid, 
  min(
    results_1.rank), 
  constructor_results_2.points, 
  drivers_1.forename, 
  max(
    constructor_results_1.date), 
  drivers_1.driverref, 
  results_1.rank, 
  avg(
    results_1.points), 
  min(
    results_1.laps), 
  min(
    constructor_results_2.date), 
  constructor_results_2.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_2.date, 
  results_1.driverid, 
  max(
    constructor_results_2.date)
from 
  constructor_results as constructor_results_1
    inner join results as results_1
      inner join drivers as drivers_1
        inner join constructor_results as constructor_results_2
        on (drivers_1.driverid = constructor_results_2.constructorresultsid )
      on (results_1.resultid = constructor_results_2.constructorresultsid )
    on (constructor_results_1.constructorresultsid = drivers_1.driverid )
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_2.constructorid, constructor_results_2.date, constructor_results_2.points, constructor_results_2.raceid, drivers_1.driverref, drivers_1.forename, results_1.driverid, results_1.fastestlap, results_1.rank
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year, 
  races_1.circuitid
from 
  races as races_1
where races_1.year is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    circuits_1.alt), 
  circuits_1.name, 
  circuits_1.alt, 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.location is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.name
limit 1;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  drivers_1.driverref, 
  constructors_1.constructorid, 
  min(
    drivers_1.dob), 
  constructors_1.nationality
from 
  drivers as drivers_1
    inner join constructors as constructors_1
    on (drivers_1.driverid = constructors_1.constructorid )
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality, drivers_1.driverref
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.raceid, 
  qualifying_1.date, 
  qualifying_1.driverid, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  qualifying_1.number, 
  constructor_results_1.constructorresultsid, 
  qualifying_1.qualifyid
from 
  constructor_results as constructor_results_1
    inner join qualifying as qualifying_1
    on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
where constructor_results_1.date is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    standings_1.points), 
  standings_1.points, 
  max(
    standings_1.date)
from 
  standings as standings_1
where standings_1.wins is not NULL
group by standings_1.points
limit 3;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.country, 
  count(*), 
  max(
    circuits_1.circuitid), 
  circuits_1.circuitref, 
  circuits_1.name, 
  sum(
    circuits_1.alt), 
  circuits_1.lat
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
group by circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.name
limit 2;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.raceid, 
  constructor_standings_2.constructorstandingsid, 
  standings_1.driverid, 
  constructor_standings_1.constructorid
from 
  standings as standings_1
      inner join constructor_standings as constructor_standings_1
        inner join circuits as circuits_1
        on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
      on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
    inner join constructor_standings as constructor_standings_2
    on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
where standings_1.raceid < constructor_standings_2.wins
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year, 
  races_1.circuitid, 
  races_1.round, 
  races_1.raceid
from 
  races as races_1
where races_1.raceid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  avg(
    constructor_results_1.points)
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 4;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.grid
from 
  constructor_standings as constructor_standings_1
    inner join drivers as drivers_1
      inner join results as results_1
        inner join races as races_1
        on (results_1.raceid = races_1.raceid )
      on (results_1.driverid = drivers_1.driverid )
    on (constructor_standings_1.constructorstandingsid = results_1.resultid )
where constructor_standings_1.wins is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    drivers_1.dob), 
  drivers_1.nationality, 
  drivers_1.surname, 
  max(
    drivers_1.driverid)
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
group by drivers_1.nationality, drivers_1.surname
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 1;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.constructorid, 
  max(
    qualifying_1.date)
from 
  standings as standings_1
    inner join qualifying as qualifying_1
    on (standings_1.driverstandingsid = qualifying_1.qualifyid )
where qualifying_1.date = standings_1.date
group by qualifying_1.constructorid
limit 3;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    drivers_1.driverid), 
  drivers_1.forename, 
  drivers_1.surname, 
  drivers_1.dob, 
  min(
    drivers_1.driverid), 
  drivers_1.nationality, 
  min(
    drivers_1.dob), 
  avg(
    drivers_1.driverid), 
  drivers_1.driverid, 
  drivers_1.code, 
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.driverid = drivers_1.driverid
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 4;
-- meta {"num_joins":3,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructor_standings_1.date), 
  circuits_1.country, 
  avg(
    constructor_standings_1.points), 
  constructors_2.constructorid, 
  count(*), 
  circuits_1.location
from 
  constructors as constructors_1
        inner join circuits as circuits_1
        on (constructors_1.constructorid = circuits_1.circuitid )
      inner join constructors as constructors_2
      on (constructors_1.constructorid = constructors_2.constructorid )
    inner join constructor_standings as constructor_standings_1
    on (constructor_standings_1.constructorid = constructors_2.constructorid )
where constructors_1.name is not NULL
group by circuits_1.country, circuits_1.location, constructors_2.constructorid
limit 4;
-- meta {"num_joins":7,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  constructor_standings_2.points, 
  constructor_standings_2.position, 
  max(
    races_2.date), 
  qualifying_2.constructorid, 
  qualifying_2.raceid, 
  constructor_standings_2.date, 
  qualifying_1.position, 
  qualifying_1.raceid, 
  constructor_standings_3.points
from 
  qualifying as qualifying_1
      inner join races as races_1
        inner join races as races_2
        on (races_1.raceid = races_2.raceid )
      on (qualifying_1.raceid = races_2.raceid )
    inner join qualifying as qualifying_2
        inner join constructor_standings as constructor_standings_1
          inner join constructor_standings as constructor_standings_2
          on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
        on (qualifying_2.qualifyid = constructor_standings_1.constructorstandingsid )
      inner join constructor_standings as constructor_standings_3
        inner join races as races_3
        on (constructor_standings_3.raceid = races_3.raceid )
      on (constructor_standings_1.raceid = races_3.raceid )
    on (qualifying_1.qualifyid = constructor_standings_3.constructorstandingsid )
where qualifying_2.date > qualifying_1.date
group by constructor_standings_2.date, constructor_standings_2.points, constructor_standings_2.position, constructor_standings_3.points, qualifying_1.date, qualifying_1.position, qualifying_1.raceid, qualifying_2.constructorid, qualifying_2.raceid
limit 2;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.round, 
  results_1.number, 
  min(
    results_1.raceid)
from 
  constructor_results as constructor_results_1
      inner join races as races_1
      on (constructor_results_1.raceid = races_1.raceid )
    inner join results as results_1
      inner join races as races_2
        inner join constructors as constructors_1
        on (races_2.raceid = constructors_1.constructorid )
      on (results_1.constructorid = constructors_1.constructorid )
    on (constructor_results_1.constructorid = constructors_1.constructorid )
where results_1.points is not NULL
group by races_1.round, results_1.number
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverstandingsid, 
  sum(
    standings_1.raceid), 
  standings_1.driverid, 
  min(
    standings_1.position), 
  standings_1.date, 
  standings_1.points
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.points
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.date
from 
  races as races_1
where races_1.raceid = races_1.round
limit 4;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    drivers_1.dob), 
  drivers_1.surname, 
  min(
    drivers_1.driverid), 
  drivers_1.forename, 
  drivers_1.driverid, 
  drivers_1.nationality, 
  max(
    drivers_1.driverid), 
  sum(
    drivers_1.driverid)
from 
  drivers as drivers_1
where drivers_1.forename is not NULL
group by drivers_1.driverid, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 2;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.round, 
  min(
    races_1.date), 
  races_1.date, 
  races_1.circuitid, 
  races_1.name, 
  min(
    races_1.round), 
  races_1.time, 
  races_1.raceid, 
  min(
    races_1.date), 
  count(*)
from 
  races as races_1
where races_1.round is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.round, 
  races_1.date, 
  races_1.circuitid, 
  max(
    races_1.date), 
  races_1.year, 
  races_1.name
from 
  races as races_1
where races_1.circuitid > races_1.raceid
group by races_1.circuitid, races_1.date, races_1.name, races_1.round, races_1.year
limit 2;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
    inner join circuits as circuits_1
      inner join constructor_standings as constructor_standings_2
      on (circuits_1.circuitid = constructor_standings_2.constructorstandingsid )
    on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
where constructor_standings_1.points is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.constructorid, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number, 
  qualifying_1.date, 
  qualifying_1.qualifyid, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid > qualifying_1.number
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.position, 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
limit 4;
-- meta {"num_joins":3,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    circuits_1.alt), 
  circuits_1.location, 
  avg(
    circuits_1.alt), 
  circuits_1.alt, 
  circuits_2.alt, 
  standings_1.position, 
  standings_1.driverid, 
  min(
    standings_2.date), 
  circuits_1.circuitid, 
  circuits_2.location, 
  standings_2.raceid, 
  standings_2.driverstandingsid, 
  standings_1.driverstandingsid, 
  min(
    circuits_1.circuitid), 
  standings_1.date, 
  min(
    standings_1.date), 
  standings_1.points
from 
  circuits as circuits_1
        inner join standings as standings_1
        on (circuits_1.circuitid = standings_1.driverstandingsid )
      inner join circuits as circuits_2
      on (standings_1.driverstandingsid = circuits_2.circuitid )
    inner join standings as standings_2
    on (circuits_1.circuitid = standings_2.driverstandingsid )
where standings_1.date is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.location, circuits_2.alt, circuits_2.location, standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_2.driverstandingsid, standings_2.raceid
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.milliseconds, 
  sum(
    results_1.points)
from 
  results as results_1
where results_1.constructorid is not NULL
group by results_1.milliseconds
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.country, 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.lat > circuits_1.lng
limit 2;
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  max(
    standings_2.position), 
  results_1.statusid, 
  max(
    results_1.rank), 
  standings_1.driverid
from 
  standings as standings_1
    inner join qualifying as qualifying_1
      inner join results as results_1
        inner join standings as standings_2
        on (results_1.resultid = standings_2.driverstandingsid )
      on (qualifying_1.qualifyid = results_1.resultid )
    on (standings_1.driverstandingsid = standings_2.driverstandingsid )
where results_1.rank = results_1.number
group by results_1.statusid, standings_1.driverid, standings_1.raceid
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.date, 
  min(
    standings_1.points)
from 
  standings as standings_1
where standings_1.date is not NULL
group by standings_1.date
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.resultid, 
  results_1.milliseconds
from 
  results as results_1
where results_1.position is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  sum(
    constructor_standings_1.points), 
  max(
    constructor_standings_1.wins), 
  max(
    constructor_standings_1.points), 
  constructor_standings_1.points, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points < constructor_standings_1.points
group by constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.name, 
  races_1.round, 
  standings_1.wins, 
  avg(
    standings_1.points), 
  standings_1.date, 
  standings_1.raceid, 
  standings_1.driverstandingsid
from 
  standings as standings_1
    inner join races as races_1
    on (standings_1.raceid = races_1.raceid )
where standings_1.raceid is not NULL
group by races_1.name, races_1.round, standings_1.date, standings_1.driverstandingsid, standings_1.raceid, standings_1.wins
limit 3;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructor_standings_1.points), 
  circuits_1.lng, 
  max(
    constructor_standings_1.wins), 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
    inner join circuits as circuits_1
    on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
where constructor_standings_1.raceid >= constructor_standings_1.position
group by circuits_1.lng, constructor_standings_1.wins
limit 2;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    results_1.number), 
  results_1.date, 
  min(
    results_1.raceid), 
  results_1.raceid, 
  results_1.grid, 
  min(
    results_1.date), 
  results_1.position
from 
  results as results_1
where results_1.constructorid is not NULL
group by results_1.date, results_1.grid, results_1.position, results_1.raceid
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  min(
    constructor_results_1.constructorid)
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid < constructor_results_1.constructorresultsid
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points
limit 2;
-- meta {"num_joins":5,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_2.resultid, 
  results_2.statusid, 
  count(
    results_1.date), 
  standings_1.wins, 
  results_2.rank, 
  results_2.position, 
  standings_1.driverid, 
  results_2.laps, 
  results_2.raceid
from 
  constructors as constructors_1
        inner join constructors as constructors_2
        on (constructors_1.constructorid = constructors_2.constructorid )
      inner join results as results_1
        inner join standings as standings_1
          inner join results as results_2
          on (standings_1.driverstandingsid = results_2.resultid )
        on (results_1.resultid = standings_1.driverstandingsid )
      on (results_2.constructorid = constructors_2.constructorid )
    inner join constructor_results as constructor_results_1
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where standings_1.raceid = results_1.constructorid
group by results_2.laps, results_2.position, results_2.raceid, results_2.rank, results_2.resultid, results_2.statusid, standings_1.driverid, standings_1.wins
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.fastestlap, 
  results_1.points, 
  results_1.laps, 
  results_1.milliseconds, 
  results_1.resultid, 
  results_1.number
from 
  results as results_1
where results_1.milliseconds is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.raceid, 
  qualifying_1.date, 
  qualifying_1.constructorid, 
  qualifying_1.position, 
  qualifying_1.driverid, 
  qualifying_1.qualifyid, 
  max(
    qualifying_1.number), 
  min(
    qualifying_1.date), 
  min(
    qualifying_1.date), 
  qualifying_1.number, 
  sum(
    qualifying_1.qualifyid)
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.circuitid >= circuits_1.circuitid
limit 1;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    circuits_1.lat), 
  circuits_2.circuitid, 
  circuits_2.country, 
  circuits_1.name, 
  circuits_2.alt, 
  circuits_1.circuitref, 
  circuits_2.lng, 
  circuits_1.lat, 
  circuits_2.name, 
  circuits_1.location, 
  circuits_1.lng
from 
  circuits as circuits_1
    inner join circuits as circuits_2
    on (circuits_1.circuitid = circuits_2.circuitid )
where circuits_2.alt > circuits_1.lng
group by circuits_1.circuitref, circuits_1.lat, circuits_1.lng, circuits_1.location, circuits_1.name, circuits_2.alt, circuits_2.circuitid, circuits_2.country, circuits_2.lng, circuits_2.name
limit 2;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name, 
  constructor_results_1.constructorid
from 
  circuits as circuits_1
      inner join constructors as constructors_1
      on (circuits_1.circuitid = constructors_1.constructorid )
    inner join results as results_1
      inner join constructor_results as constructor_results_1
      on (results_1.resultid = constructor_results_1.constructorresultsid )
    on (constructor_results_1.constructorid = constructors_1.constructorid )
where constructor_results_1.constructorresultsid = constructors_1.constructorid
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name, 
  circuits_1.lat, 
  circuits_1.country, 
  circuits_2.circuitref, 
  circuits_1.circuitid, 
  circuits_2.alt, 
  circuits_2.name, 
  circuits_2.location, 
  circuits_1.lng, 
  circuits_1.location
from 
  circuits as circuits_1
    inner join circuits as circuits_2
    on (circuits_1.circuitid = circuits_2.circuitid )
where circuits_1.lat is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.grid, 
  results_1.points, 
  results_1.laps, 
  results_1.positionorder, 
  results_1.date, 
  results_1.rank
from 
  results as results_1
where results_1.positionorder is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    results_1.date), 
  count(*), 
  results_1.raceid, 
  avg(
    results_1.fastestlap), 
  results_1.fastestlap, 
  results_1.grid, 
  min(
    results_1.rank), 
  results_1.number, 
  results_1.positionorder, 
  max(
    results_1.date)
from 
  results as results_1
where results_1.number is not NULL
group by results_1.fastestlap, results_1.grid, results_1.number, results_1.positionorder, results_1.raceid
limit 3;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  drivers_1.forename, 
  min(
    constructor_results_1.points)
from 
  races as races_1
    inner join constructor_results as constructor_results_1
      inner join drivers as drivers_1
      on (constructor_results_1.constructorresultsid = drivers_1.driverid )
    on (races_1.raceid = drivers_1.driverid )
where constructor_results_1.raceid is not NULL
group by constructor_results_1.date, drivers_1.forename
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref, 
  drivers_1.surname, 
  avg(
    drivers_1.driverid), 
  drivers_1.dob, 
  drivers_1.forename, 
  sum(
    drivers_1.driverid), 
  drivers_1.code, 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref, 
  circuits_1.circuitid, 
  count(
    circuits_1.location)
from 
  circuits as circuits_1
where circuits_1.country is not NULL
group by circuits_1.circuitid, circuits_1.circuitref
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  max(
    constructor_results_1.date), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorstandingsid, 
  avg(
    constructor_standings_1.points), 
  constructor_standings_1.position, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position
limit 4;
-- meta {"num_joins":0,"num_aggregates":6,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.round, 
  races_1.year, 
  races_1.time, 
  races_1.date, 
  count(
    races_1.name), 
  sum(
    races_1.raceid), 
  races_1.circuitid, 
  max(
    races_1.date), 
  races_1.name, 
  avg(
    races_1.year), 
  min(
    races_1.date), 
  races_1.raceid, 
  max(
    races_1.date)
from 
  races as races_1
where races_1.time is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.statusid, 
  results_1.laps
from 
  drivers as drivers_1
    inner join results as results_1
    on (results_1.driverid = drivers_1.driverid )
where drivers_1.code is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.code, 
  drivers_1.driverid, 
  drivers_1.surname, 
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
limit 1;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    qualifying_1.raceid)
from 
  qualifying as qualifying_1
    inner join constructor_results as constructor_results_1
    on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
where constructor_results_1.date is not NULL
limit 2;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  constructors_1.constructorref
from 
  constructor_results as constructor_results_1
      inner join constructors as constructors_1
      on (constructor_results_1.constructorid = constructors_1.constructorid )
    inner join constructor_results as constructor_results_2
    on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
where constructor_results_1.constructorresultsid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins, 
  standings_1.driverid, 
  standings_1.points
from 
  standings as standings_1
where standings_1.driverid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid, 
  races_1.name, 
  races_1.round
from 
  races as races_1
where races_1.round is not NULL
limit 3;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_results_1.constructorresultsid, 
  qualifying_1.position, 
  qualifying_1.raceid, 
  races_1.date
from 
  races as races_1
        inner join results as results_1
        on (results_1.raceid = races_1.raceid )
      inner join qualifying as qualifying_1
        inner join constructor_standings as constructor_standings_1
        on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
      on (results_1.resultid = constructor_standings_1.constructorstandingsid )
    inner join results as results_2
      inner join constructor_results as constructor_results_1
      on (results_2.resultid = constructor_results_1.constructorresultsid )
    on (constructor_results_1.raceid = races_1.raceid )
where qualifying_1.raceid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    circuits_1.lat), 
  circuits_1.lat, 
  circuits_1.circuitref, 
  circuits_1.country, 
  circuits_1.alt, 
  circuits_1.location, 
  count(*), 
  circuits_1.lng, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
group by circuits_1.alt, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.location, circuits_1.name
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  avg(
    constructor_results_1.constructorid), 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  max(
    constructor_results_1.date)
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.raceid
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lng, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid
from 
  circuits as circuits_1
    inner join constructor_results as constructor_results_1
    on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
where constructor_results_1.raceid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid, 
  max(
    constructor_standings_1.date), 
  constructor_standings_1.position, 
  constructor_standings_1.points, 
  min(
    constructor_standings_1.points)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.date, 
  races_1.raceid, 
  races_1.round, 
  races_1.name, 
  sum(
    races_1.round), 
  races_1.year
from 
  races as races_1
where races_1.name is not NULL
group by races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.year
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    circuits_1.circuitid), 
  min(
    circuits_1.circuitid), 
  circuits_1.name, 
  circuits_1.country
from 
  circuits as circuits_1
where circuits_1.name is not NULL
group by circuits_1.country, circuits_1.name
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.points, 
  standings_1.driverid, 
  sum(
    standings_1.points), 
  standings_1.date, 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.raceid is not NULL
group by standings_1.date, standings_1.driverid, standings_1.points, standings_1.raceid
limit 2;
-- meta {"num_joins":3,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  qualifying_1.driverid, 
  standings_1.driverstandingsid, 
  qualifying_1.position, 
  circuits_2.location, 
  circuits_1.circuitid, 
  standings_1.driverid, 
  standings_1.points, 
  circuits_1.lng, 
  circuits_2.circuitid, 
  circuits_1.country, 
  qualifying_1.qualifyid, 
  circuits_1.lat, 
  standings_1.wins, 
  circuits_1.name, 
  circuits_2.circuitref, 
  qualifying_1.number, 
  sum(
    qualifying_1.constructorid), 
  standings_1.position, 
  sum(
    circuits_2.lng), 
  circuits_2.name, 
  qualifying_1.date, 
  min(
    standings_1.date), 
  circuits_2.lat, 
  circuits_1.alt
from 
  qualifying as qualifying_1
    inner join circuits as circuits_1
        inner join standings as standings_1
        on (circuits_1.circuitid = standings_1.driverstandingsid )
      inner join circuits as circuits_2
      on (circuits_1.circuitid = circuits_2.circuitid )
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where circuits_1.location is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.name, circuits_2.circuitid, circuits_2.circuitref, circuits_2.lat, circuits_2.location, circuits_2.name, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
limit 2;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    drivers_1.driverid)
from 
  drivers as drivers_1
    inner join races as races_1
    on (drivers_1.driverid = races_1.raceid )
where drivers_1.driverid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.surname, 
  drivers_1.nationality, 
  drivers_1.driverid, 
  drivers_1.code, 
  drivers_1.forename, 
  drivers_1.dob, 
  min(
    drivers_1.dob)
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 3;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref, 
  qualifying_1.number, 
  qualifying_2.date
from 
  qualifying as qualifying_1
    inner join drivers as drivers_1
      inner join qualifying as qualifying_2
      on (qualifying_2.driverid = drivers_1.driverid )
    on (qualifying_1.qualifyid = qualifying_2.qualifyid )
where qualifying_2.driverid is not NULL
limit 2;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.number, 
  results_1.driverid, 
  circuits_1.circuitref, 
  circuits_1.country, 
  circuits_1.circuitid
from 
  circuits as circuits_1
    inner join standings as standings_1
      inner join standings as standings_2
        inner join results as results_1
        on (standings_2.driverstandingsid = results_1.resultid )
      on (standings_1.driverstandingsid = standings_2.driverstandingsid )
    on (circuits_1.circuitid = results_1.resultid )
where standings_2.driverstandingsid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.country, 
  max(
    circuits_1.circuitid), 
  circuits_1.circuitid, 
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.name <= circuits_1.location
group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.country
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid, 
  standings_1.position, 
  sum(
    standings_1.points), 
  standings_1.date
from 
  standings as standings_1
where standings_1.driverid is not NULL
group by standings_1.date, standings_1.driverid, standings_1.position
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.number, 
  results_1.rank
from 
  results as results_1
where results_1.statusid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.points, 
  results_1.resultid, 
  results_1.position
from 
  results as results_1
where results_1.points is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.country is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid, 
  races_1.raceid, 
  races_1.name
from 
  races as races_1
where races_1.date > races_1.date
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid, 
  standings_1.date, 
  standings_1.points, 
  standings_1.driverstandingsid, 
  min(
    standings_1.date)
from 
  standings as standings_1
where standings_1.raceid is not NULL
group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.points
limit 3;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref, 
  results_1.grid, 
  sum(
    results_1.raceid), 
  results_1.position, 
  drivers_1.code, 
  results_1.driverid, 
  results_1.positionorder, 
  results_1.laps, 
  drivers_1.driverid, 
  results_1.rank, 
  min(
    results_1.date), 
  drivers_1.nationality
from 
  drivers as drivers_1
    inner join results as results_1
    on (results_1.driverid = drivers_1.driverid )
where results_1.driverid is not NULL
group by drivers_1.code, drivers_1.driverid, drivers_1.driverref, drivers_1.nationality, results_1.driverid, results_1.grid, results_1.laps, results_1.position, results_1.positionorder, results_1.rank
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number, 
  constructors_1.constructorref, 
  constructors_1.name, 
  qualifying_1.raceid, 
  qualifying_1.qualifyid, 
  constructors_1.constructorid, 
  qualifying_1.position
from 
  qualifying as qualifying_1
    inner join constructors as constructors_1
    on (qualifying_1.constructorid = constructors_1.constructorid )
where constructors_1.name is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
    inner join constructors as constructors_1
    on (constructor_standings_1.constructorid = constructors_1.constructorid )
where constructor_standings_1.date is not NULL
limit 1;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.constructorid, 
  races_2.raceid
from 
  races as races_1
        inner join constructor_results as constructor_results_1
        on (constructor_results_1.raceid = races_1.raceid )
      inner join standings as standings_1
        inner join qualifying as qualifying_1
        on (standings_1.driverstandingsid = qualifying_1.qualifyid )
      on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
    inner join races as races_2
    on (races_1.raceid = races_2.raceid )
where constructor_results_1.raceid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  avg(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 2;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_standings_1.date), 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  standings_1.wins, 
  standings_1.points, 
  count(*), 
  max(
    standings_1.driverstandingsid), 
  standings_1.raceid, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
    inner join standings as standings_1
    on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, standings_1.points, standings_1.raceid, standings_1.wins
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  qualifying_1.qualifyid, 
  sum(
    qualifying_1.raceid)
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.date, qualifying_1.qualifyid
limit 2;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.code
from 
  qualifying as qualifying_1
    inner join constructors as constructors_1
      inner join drivers as drivers_1
      on (constructors_1.constructorid = drivers_1.driverid )
    on (qualifying_1.driverid = drivers_1.driverid )
where drivers_1.surname is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.nationality, 
  drivers_1.code, 
  drivers_1.driverid
from 
  qualifying as qualifying_1
    inner join drivers as drivers_1
    on (qualifying_1.driverid = drivers_1.driverid )
where qualifying_1.date = drivers_1.dob
limit 4;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  drivers_1.dob, 
  drivers_1.driverref, 
  drivers_1.driverid, 
  min(
    standings_1.date), 
  drivers_1.forename, 
  drivers_1.surname, 
  standings_1.points, 
  max(
    drivers_1.dob), 
  standings_1.driverid, 
  drivers_1.code, 
  min(
    standings_1.date)
from 
  standings as standings_1
    inner join drivers as drivers_1
    on (standings_1.driverid = drivers_1.driverid )
where standings_1.raceid = drivers_1.driverid
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.surname, standings_1.driverid, standings_1.points, standings_1.raceid
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.forename is not NULL
limit 1;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  qualifying_1.constructorid, 
  constructor_standings_1.raceid
from 
  qualifying as qualifying_1
      inner join standings as standings_1
      on (qualifying_1.qualifyid = standings_1.driverstandingsid )
    inner join constructors as constructors_1
      inner join races as races_1
        inner join constructor_results as constructor_results_1
          inner join constructor_standings as constructor_standings_1
          on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
        on (constructor_results_1.raceid = races_1.raceid )
      on (constructor_results_1.constructorid = constructors_1.constructorid )
    on (standings_1.driverstandingsid = constructors_1.constructorid )
where qualifying_1.date < constructor_standings_1.date
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.country, 
  circuits_1.circuitid, 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.lat < circuits_1.lng
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  min(
    constructor_results_1.date), 
  constructor_results_1.raceid, 
  min(
    constructor_results_1.date), 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.raceid
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.position, 
  results_1.resultid, 
  results_1.statusid, 
  results_1.number, 
  results_1.constructorid, 
  results_1.fastestlap, 
  results_1.laps
from 
  results as results_1
where results_1.milliseconds < results_1.rank
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.nationality, 
  sum(
    constructors_1.constructorid), 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.constructorid, constructors_1.name, constructors_1.nationality
limit 2;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverid
from 
  circuits as circuits_1
      inner join constructors as constructors_1
      on (circuits_1.circuitid = constructors_1.constructorid )
    inner join drivers as drivers_1
    on (constructors_1.constructorid = drivers_1.driverid )
where circuits_1.location = drivers_1.forename
limit 4;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.time, 
  races_1.year, 
  races_1.round, 
  avg(
    races_1.round), 
  races_1.raceid, 
  races_1.date, 
  count(
    races_1.year), 
  races_1.name, 
  avg(
    races_1.year), 
  races_1.circuitid
from 
  races as races_1
where races_1.time is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    constructor_results_1.points), 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  max(
    constructor_results_1.points)
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.raceid
limit 2;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  results_1.grid, 
  min(
    constructor_standings_1.points), 
  constructor_standings_1.position
from 
  results as results_1
    inner join constructor_standings as constructor_standings_1
      inner join constructor_standings as constructor_standings_2
      on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
    on (results_1.resultid = constructor_standings_1.constructorstandingsid )
where constructor_standings_2.position >= results_1.raceid
group by constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, results_1.grid
limit 4;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.position, 
  results_1.driverid, 
  max(
    constructor_standings_1.date), 
  sum(
    constructor_standings_1.points), 
  constructor_standings_1.wins, 
  results_1.statusid, 
  standings_1.driverid, 
  standings_1.points, 
  standings_1.position, 
  standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.raceid, 
  standings_1.date
from 
  standings as standings_1
      inner join constructor_standings as constructor_standings_1
      on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
    inner join results as results_1
    on (standings_1.driverstandingsid = results_1.resultid )
where results_1.grid is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins, results_1.driverid, results_1.statusid, standings_1.date, standings_1.driverid, standings_1.points, standings_1.position, standings_1.wins
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitid, 
  circuits_1.circuitref, 
  circuits_1.lng, 
  sum(
    circuits_1.lng), 
  circuits_1.name, 
  circuits_1.lat
from 
  circuits as circuits_1
where circuits_1.location is not NULL
group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.lat, circuits_1.lng, circuits_1.name
limit 1;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  circuits_1.location, 
  circuits_1.alt, 
  constructor_results_1.constructorresultsid, 
  constructor_standings_1.constructorid, 
  max(
    circuits_1.lat)
from 
  circuits as circuits_1
    inner join constructor_standings as constructor_standings_1
      inner join constructor_results as constructor_results_1
      on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
    on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.raceid is not NULL
group by circuits_1.alt, circuits_1.location, constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_standings_1.constructorid
limit 1;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.constructorid, 
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  count(*), 
  max(
    qualifying_1.date), 
  qualifying_1.date, 
  qualifying_1.number, 
  qualifying_1.driverid, 
  min(
    qualifying_1.date)
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date, 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.raceid, 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
    inner join circuits as circuits_1
    on (qualifying_1.qualifyid = circuits_1.circuitid )
where qualifying_1.date is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid, 
  standings_1.position
from 
  standings as standings_1
where standings_1.position is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructor_standings_1.wins), 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
group by constructor_standings_1.date
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.driverid, 
  results_1.rank, 
  results_1.points, 
  results_1.milliseconds
from 
  results as results_1
where results_1.milliseconds is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.fastestlap, 
  results_1.statusid, 
  results_1.positionorder
from 
  results as results_1
where results_1.rank is not NULL
limit 2;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    standings_1.driverstandingsid), 
  standings_1.wins, 
  avg(
    constructor_results_1.constructorresultsid), 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  standings_1.raceid, 
  standings_1.driverid, 
  constructor_results_1.raceid, 
  constructor_results_1.date
from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where standings_1.date < constructor_results_1.date
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.raceid, standings_1.driverid, standings_1.raceid, standings_1.wins
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.constructorid, 
  min(
    qualifying_1.qualifyid), 
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
group by qualifying_1.constructorid, qualifying_1.position
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.number, 
  results_1.constructorid
from 
  results as results_1
where results_1.raceid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.points, 
  standings_1.driverid, 
  max(
    standings_1.points), 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.driverid is not NULL
group by standings_1.driverid, standings_1.points, standings_1.raceid
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref, 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.driverid = drivers_1.driverid
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    standings_1.wins), 
  standings_1.date
from 
  standings as standings_1
where standings_1.driverid < standings_1.driverstandingsid
group by standings_1.date
limit 4;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  sum(
    results_1.points)
from 
  constructors as constructors_1
    inner join results as results_1
    on (results_1.constructorid = constructors_1.constructorid )
where results_1.position is not NULL
group by constructors_1.nationality
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.resultid, 
  results_1.rank, 
  results_1.number, 
  results_1.raceid, 
  results_1.points, 
  count(
    results_1.fastestlap)
from 
  results as results_1
where results_1.statusid is not NULL
group by results_1.number, results_1.points, results_1.raceid, results_1.rank, results_1.resultid
limit 1;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  standings_1.points, 
  constructor_results_1.constructorresultsid, 
  standings_1.raceid, 
  constructor_results_1.constructorid, 
  max(
    constructor_results_1.date), 
  standings_1.driverstandingsid
from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where standings_1.points is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.raceid, standings_1.driverstandingsid, standings_1.points, standings_1.raceid, standings_1.wins
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.date > constructor_results_1.date
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.position, 
  avg(
    constructor_standings_1.wins)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.position
limit 2;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructors_3.nationality, 
  standings_2.wins
from 
  constructors as constructors_1
      inner join standings as standings_1
      on (constructors_1.constructorid = standings_1.driverstandingsid )
    inner join constructors as constructors_2
      inner join drivers as drivers_1
        inner join standings as standings_2
          inner join constructors as constructors_3
          on (standings_2.driverstandingsid = constructors_3.constructorid )
        on (standings_2.driverid = drivers_1.driverid )
      on (constructors_2.constructorid = drivers_1.driverid )
    on (constructors_1.constructorid = standings_2.driverstandingsid )
where standings_2.raceid is not NULL
limit 4;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name, 
  circuits_1.country
from 
  races as races_1
      inner join circuits as circuits_1
      on (races_1.circuitid = circuits_1.circuitid )
    inner join constructor_standings as constructor_standings_1
    on (constructor_standings_1.raceid = races_1.raceid )
where races_1.date >= constructor_standings_1.date
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_standings_1.date)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.points, 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  max(
    constructor_standings_1.date), 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.wins
limit 1;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.position, 
  drivers_1.nationality, 
  standings_1.points, 
  qualifying_1.qualifyid, 
  drivers_1.code, 
  avg(
    standings_1.raceid), 
  drivers_1.driverid
from 
  drivers as drivers_1
      inner join qualifying as qualifying_1
      on (qualifying_1.driverid = drivers_1.driverid )
    inner join standings as standings_1
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where standings_1.points is not NULL
group by drivers_1.code, drivers_1.driverid, drivers_1.nationality, qualifying_1.position, qualifying_1.qualifyid, standings_1.points
limit 4;
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  sum(
    results_1.points), 
  results_1.points, 
  constructor_results_1.date
from 
  results as results_1
        inner join constructors as constructors_1
        on (results_1.constructorid = constructors_1.constructorid )
      inner join circuits as circuits_1
      on (constructors_1.constructorid = circuits_1.circuitid )
    inner join constructor_results as constructor_results_1
    on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
where results_1.milliseconds >= results_1.points
group by constructor_results_1.date, results_1.points
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points = constructor_standings_1.points
group by constructor_standings_1.wins
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.fastestlap, 
  results_1.position, 
  avg(
    results_1.position)
from 
  results as results_1
where results_1.laps is not NULL
group by results_1.fastestlap, results_1.position
limit 1;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.points, 
  min(
    results_1.date), 
  results_1.raceid, 
  min(
    standings_1.wins)
from 
  results as results_1
    inner join races as races_1
      inner join standings as standings_1
      on (standings_1.raceid = races_1.raceid )
    on (results_1.resultid = standings_1.driverstandingsid )
where standings_1.date = races_1.date
group by results_1.raceid, standings_1.points
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    drivers_1.dob)
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    circuits_1.lng), 
  circuits_1.country, 
  circuits_1.name, 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.name is not NULL
group by circuits_1.country, circuits_1.lng, circuits_1.name
limit 1;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.positionorder, 
  results_1.statusid, 
  results_1.milliseconds, 
  results_1.number, 
  results_1.raceid, 
  results_1.laps, 
  min(
    results_1.date), 
  sum(
    results_1.resultid), 
  max(
    results_1.date), 
  results_1.position, 
  results_1.fastestlap, 
  max(
    results_1.points)
from 
  results as results_1
where results_1.fastestlap is not NULL
group by results_1.fastestlap, results_1.laps, results_1.milliseconds, results_1.number, results_1.position, results_1.positionorder, results_1.raceid, results_1.statusid
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  constructor_standings_1.points, 
  sum(
    constructor_standings_1.constructorid), 
  max(
    constructor_standings_1.date)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 2;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year
from 
  races as races_1
      inner join constructor_standings as constructor_standings_1
      on (constructor_standings_1.raceid = races_1.raceid )
    inner join results as results_1
      inner join constructor_results as constructor_results_1
      on (results_1.resultid = constructor_results_1.constructorresultsid )
    on (results_1.raceid = races_1.raceid )
where constructor_results_1.date is not NULL
limit 4;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.raceid, 
  races_2.time, 
  races_3.round
from 
  races as races_1
      inner join races as races_2
        inner join races as races_3
        on (races_2.raceid = races_3.raceid )
      on (races_1.raceid = races_3.raceid )
    inner join qualifying as qualifying_1
    on (qualifying_1.raceid = races_2.raceid )
where races_3.date >= races_1.date
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  constructors_1.name, 
  constructors_1.constructorid, 
  avg(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.name
limit 4;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location, 
  standings_1.raceid, 
  circuits_1.lat
from 
  circuits as circuits_1
      inner join constructor_standings as constructor_standings_1
      on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
    inner join standings as standings_1
    on (circuits_1.circuitid = standings_1.driverstandingsid )
where constructor_standings_1.wins < constructor_standings_1.constructorstandingsid
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.date, 
  drivers_1.surname, 
  drivers_1.driverid, 
  results_1.grid, 
  drivers_1.code
from 
  results as results_1
    inner join drivers as drivers_1
    on (results_1.driverid = drivers_1.driverid )
where results_1.positionorder is not NULL
limit 2;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_standings_2.date), 
  qualifying_1.qualifyid, 
  constructor_standings_2.position, 
  qualifying_1.constructorid, 
  constructor_standings_1.raceid, 
  qualifying_1.driverid, 
  constructor_standings_2.wins, 
  qualifying_1.number, 
  constructor_standings_1.constructorid, 
  constructor_standings_2.date, 
  constructor_standings_2.constructorid, 
  min(
    constructor_standings_2.points)
from 
  qualifying as qualifying_1
    inner join constructor_standings as constructor_standings_1
      inner join constructor_standings as constructor_standings_2
      on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
    on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.raceid, constructor_standings_2.constructorid, constructor_standings_2.date, constructor_standings_2.position, constructor_standings_2.wins, qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.number, qualifying_1.qualifyid
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  sum(
    constructor_results_1.points)
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.position, 
  qualifying_1.date, 
  qualifying_1.number, 
  qualifying_1.qualifyid, 
  max(
    qualifying_1.qualifyid), 
  sum(
    qualifying_1.number), 
  min(
    qualifying_1.date), 
  qualifying_1.driverid, 
  min(
    qualifying_1.date), 
  qualifying_1.constructorid, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  min(
    constructor_results_1.points)
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.points
limit 2;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality
from 
  constructors as constructors_1
        inner join qualifying as qualifying_1
        on (qualifying_1.constructorid = constructors_1.constructorid )
      inner join qualifying as qualifying_2
      on (qualifying_1.qualifyid = qualifying_2.qualifyid )
    inner join results as results_1
    on (qualifying_1.qualifyid = results_1.resultid )
where constructors_1.nationality is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.round, 
  races_1.circuitid, 
  max(
    races_2.date), 
  races_1.time
from 
  races as races_1
    inner join races as races_2
    on (races_1.raceid = races_2.raceid )
where races_2.time is not NULL
group by races_1.circuitid, races_1.round, races_1.time
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    circuits_1.alt), 
  circuits_1.location, 
  count(*)
from 
  circuits as circuits_1
where circuits_1.circuitref = circuits_1.name
group by circuits_1.location
limit 3;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_3.circuitid
from 
  standings as standings_1
        inner join qualifying as qualifying_1
        on (standings_1.driverstandingsid = qualifying_1.qualifyid )
      inner join circuits as circuits_1
        inner join circuits as circuits_2
        on (circuits_1.circuitid = circuits_2.circuitid )
      on (standings_1.driverstandingsid = circuits_2.circuitid )
    inner join constructors as constructors_1
      inner join circuits as circuits_3
      on (constructors_1.constructorid = circuits_3.circuitid )
    on (standings_1.driverstandingsid = circuits_3.circuitid )
where qualifying_1.date > standings_1.date
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.date, 
  races_1.round
from 
  constructor_results as constructor_results_1
    inner join races as races_1
    on (constructor_results_1.raceid = races_1.raceid )
where races_1.circuitid is not NULL
limit 1;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.number, 
  qualifying_1.driverid, 
  qualifying_1.number
from 
  constructor_standings as constructor_standings_1
      inner join qualifying as qualifying_1
      on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
    inner join circuits as circuits_1
      inner join results as results_1
      on (circuits_1.circuitid = results_1.resultid )
    on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
where results_1.rank >= results_1.fastestlap
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitid, 
  circuits_1.name, 
  circuits_1.country, 
  circuits_1.alt, 
  max(
    circuits_1.circuitid), 
  circuits_1.lat, 
  circuits_1.circuitref, 
  count(*)
from 
  circuits as circuits_1
where circuits_1.name is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.name
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
limit 3;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number, 
  circuits_1.circuitid, 
  qualifying_1.constructorid, 
  races_1.raceid, 
  results_1.grid, 
  races_1.circuitid, 
  races_1.time, 
  count(*)
from 
  results as results_1
        inner join qualifying as qualifying_1
        on (results_1.resultid = qualifying_1.qualifyid )
      inner join races as races_1
      on (qualifying_1.raceid = races_1.raceid )
    inner join circuits as circuits_1
    on (races_1.circuitid = circuits_1.circuitid )
where results_1.grid is not NULL
group by circuits_1.circuitid, qualifying_1.constructorid, qualifying_1.number, races_1.circuitid, races_1.raceid, races_1.time, results_1.grid
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    results_1.milliseconds), 
  results_1.date, 
  results_1.grid
from 
  results as results_1
where results_1.driverid is not NULL
group by results_1.date, results_1.grid
limit 4;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_2.points, 
  count(*), 
  constructor_standings_2.position, 
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
    inner join constructor_standings as constructor_standings_2
    on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.points, constructor_standings_2.points, constructor_standings_2.position
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.dob, 
  qualifying_1.position
from 
  qualifying as qualifying_1
    inner join drivers as drivers_1
    on (qualifying_1.driverid = drivers_1.driverid )
where drivers_1.surname >= drivers_1.nationality
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.nationality > constructors_1.name
limit 4;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitid
from 
  standings as standings_1
    inner join circuits as circuits_1
      inner join races as races_1
        inner join constructor_standings as constructor_standings_1
        on (constructor_standings_1.raceid = races_1.raceid )
      on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
    on (standings_1.raceid = races_1.raceid )
where circuits_1.lat < circuits_1.lng
limit 4;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.number, 
  results_2.raceid, 
  min(
    results_1.date), 
  results_1.statusid
from 
  results as results_1
    inner join results as results_2
    on (results_1.resultid = results_2.resultid )
where results_2.date is not NULL
group by results_1.number, results_1.statusid, results_2.raceid
limit 3;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.nationality, 
  races_1.round, 
  drivers_1.dob, 
  count(*)
from 
  races as races_1
    inner join drivers as drivers_1
    on (races_1.raceid = drivers_1.driverid )
where races_1.time is not NULL
group by drivers_1.dob, drivers_1.nationality, races_1.round
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
limit 4;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.time, 
  sum(
    standings_1.points), 
  drivers_1.nationality, 
  drivers_1.driverid
from 
  races as races_1
    inner join drivers as drivers_1
      inner join standings as standings_1
      on (standings_1.driverid = drivers_1.driverid )
    on (races_1.raceid = drivers_1.driverid )
where standings_1.points is not NULL
group by drivers_1.driverid, drivers_1.nationality, races_1.time
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.date, 
  results_1.statusid, 
  results_1.grid, 
  results_1.rank
from 
  results as results_1
where results_1.points is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.constructorref, 
  avg(
    constructors_1.constructorid), 
  max(
    constructors_1.constructorid), 
  max(
    constructors_1.constructorid), 
  constructors_1.nationality, 
  count(
    constructors_1.name), 
  sum(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    results_1.date), 
  results_1.constructorid, 
  results_1.statusid, 
  results_1.position, 
  results_1.points, 
  results_1.number
from 
  results as results_1
where results_1.milliseconds is not NULL
group by results_1.constructorid, results_1.number, results_1.points, results_1.position, results_1.statusid
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.points, 
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points, 
  constructor_standings_1.wins, 
  max(
    constructor_standings_1.date), 
  min(
    constructor_standings_1.points)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.wins
limit 3;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_2.points, 
  standings_2.driverstandingsid
from 
  standings as standings_1
    inner join standings as standings_2
      inner join drivers as drivers_1
      on (standings_2.driverid = drivers_1.driverid )
    on (standings_1.driverid = drivers_1.driverid )
where drivers_1.forename > drivers_1.code
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.time, 
  max(
    races_1.date), 
  races_1.year
from 
  races as races_1
where races_1.round is not NULL
group by races_1.time, races_1.year
limit 2;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  results_1.milliseconds, 
  min(
    results_1.laps), 
  max(
    results_1.date)
from 
  constructor_results as constructor_results_1
    inner join results as results_1
    on (constructor_results_1.constructorresultsid = results_1.resultid )
where results_1.constructorid is not NULL
group by constructor_results_1.raceid, results_1.milliseconds
limit 2;
-- meta {"num_joins":5,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.constructorid, 
  standings_1.position, 
  circuits_1.name, 
  sum(
    circuits_1.alt), 
  drivers_1.driverref
from 
  circuits as circuits_1
      inner join qualifying as qualifying_1
        inner join constructors as constructors_1
        on (qualifying_1.constructorid = constructors_1.constructorid )
      on (circuits_1.circuitid = qualifying_1.qualifyid )
    inner join drivers as drivers_1
        inner join results as results_1
        on (results_1.driverid = drivers_1.driverid )
      inner join standings as standings_1
      on (results_1.resultid = standings_1.driverstandingsid )
    on (circuits_1.circuitid = drivers_1.driverid )
where standings_1.driverid is not NULL
group by circuits_1.name, drivers_1.driverref, qualifying_1.constructorid, standings_1.position
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  sum(
    constructor_results_1.constructorresultsid), 
  min(
    constructor_results_1.points)
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.points
limit 4;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.milliseconds, 
  standings_1.driverid, 
  results_1.position, 
  standings_1.driverstandingsid, 
  standings_1.wins, 
  min(
    results_1.date), 
  min(
    results_1.date)
from 
  results as results_1
    inner join standings as standings_1
    on (results_1.resultid = standings_1.driverstandingsid )
where standings_1.date < results_1.date
group by results_1.milliseconds, results_1.position, standings_1.driverid, standings_1.driverstandingsid, standings_1.wins
limit 3;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  results_1.driverid, 
  results_1.constructorid, 
  max(
    results_1.fastestlap), 
  results_1.rank, 
  results_1.positionorder, 
  constructor_results_1.points
from 
  results as results_1
      inner join qualifying as qualifying_1
      on (results_1.resultid = qualifying_1.qualifyid )
    inner join constructor_results as constructor_results_1
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where results_1.fastestlap < results_1.milliseconds
group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, results_1.constructorid, results_1.driverid, results_1.positionorder, results_1.rank
limit 2;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  avg(
    constructor_standings_1.wins), 
  drivers_1.nationality, 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
      inner join drivers as drivers_1
      on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
    inner join races as races_1
      inner join standings as standings_1
      on (standings_1.raceid = races_1.raceid )
    on (constructor_standings_1.raceid = races_1.raceid )
where standings_1.position > races_1.circuitid
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.raceid, drivers_1.nationality, standings_1.points
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid < qualifying_1.raceid
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    constructor_standings_1.position)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points = constructor_standings_1.points
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_results_1.date)
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    standings_1.date), 
  standings_1.wins, 
  standings_1.driverstandingsid, 
  min(
    standings_1.date)
from 
  standings as standings_1
where standings_1.driverid = standings_1.driverstandingsid
group by standings_1.driverstandingsid, standings_1.wins
limit 3;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructor_standings_1.constructorid), 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
          inner join constructor_standings as constructor_standings_1
          on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
        inner join qualifying as qualifying_2
        on (constructor_standings_1.constructorstandingsid = qualifying_2.qualifyid )
      inner join results as results_1
      on (qualifying_1.qualifyid = results_1.resultid )
    inner join circuits as circuits_1
    on (qualifying_1.qualifyid = circuits_1.circuitid )
where qualifying_1.date = results_1.date
group by qualifying_1.raceid
limit 4;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    races_1.round), 
  races_1.raceid, 
  races_1.time, 
  max(
    races_1.date), 
  max(
    races_1.date), 
  races_1.circuitid, 
  races_1.date, 
  races_1.year, 
  max(
    races_1.raceid), 
  min(
    races_1.date)
from 
  races as races_1
where races_1.name > races_1.time
group by races_1.circuitid, races_1.date, races_1.raceid, races_1.time, races_1.year
limit 3;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.points, 
  max(
    results_1.rank), 
  results_1.position, 
  avg(
    results_1.positionorder), 
  max(
    results_1.date)
from 
  results as results_1
where results_1.constructorid is not NULL
group by results_1.points, results_1.position
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points, 
  constructor_standings_1.date, 
  max(
    constructor_standings_1.date)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 2;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.laps, 
  results_1.positionorder, 
  results_1.rank, 
  constructor_results_1.raceid, 
  results_1.grid, 
  constructor_results_1.points, 
  sum(
    results_1.statusid)
from 
  results as results_1
    inner join constructor_results as constructor_results_1
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where results_1.date is not NULL
group by constructor_results_1.points, constructor_results_1.raceid, results_1.grid, results_1.laps, results_1.positionorder, results_1.rank
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.driverid, 
  results_1.rank, 
  results_1.statusid
from 
  results as results_1
where results_1.fastestlap is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverstandingsid, 
  standings_1.date
from 
  standings as standings_1
where standings_1.points is not NULL
limit 3;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.raceid
from 
  constructors as constructors_1
      inner join qualifying as qualifying_1
      on (qualifying_1.constructorid = constructors_1.constructorid )
    inner join circuits as circuits_1
      inner join standings as standings_1
      on (circuits_1.circuitid = standings_1.driverstandingsid )
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where standings_1.points is not NULL
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.constructorid
from 
  constructors as constructors_1
    inner join qualifying as qualifying_1
    on (qualifying_1.constructorid = constructors_1.constructorid )
where constructors_1.nationality is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.points < constructor_results_1.points
limit 4;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  qualifying_1.constructorid, 
  min(
    standings_1.position), 
  qualifying_1.date
from 
  qualifying as qualifying_1
      inner join standings as standings_1
      on (qualifying_1.qualifyid = standings_1.driverstandingsid )
    inner join constructor_results as constructor_results_1
    on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
where constructor_results_1.date is not NULL
group by constructor_results_1.date, qualifying_1.constructorid, qualifying_1.date
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.position, 
  sum(
    constructor_standings_1.constructorstandingsid), 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.position, constructor_standings_1.wins
limit 4;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    constructor_results_2.points), 
  constructor_results_1.raceid, 
  constructor_results_2.raceid
from 
  constructors as constructors_1
      inner join constructor_results as constructor_results_1
        inner join constructor_results as constructor_results_2
        on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
      on (constructor_results_1.constructorid = constructors_1.constructorid )
    inner join constructor_standings as constructor_standings_1
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.position is not NULL
group by constructor_results_1.raceid, constructor_results_2.raceid
limit 4;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  drivers_1.surname, 
  drivers_1.dob, 
  drivers_1.code
from 
  qualifying as qualifying_1
    inner join drivers as drivers_1
      inner join standings as standings_1
        inner join constructor_results as constructor_results_1
        on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
      on (standings_1.driverid = drivers_1.driverid )
    on (qualifying_1.driverid = drivers_1.driverid )
where qualifying_1.date > constructor_results_1.date
limit 2;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.raceid, 
  races_1.year, 
  circuits_2.country, 
  circuits_1.location, 
  count(*), 
  circuits_2.lat, 
  circuits_1.alt, 
  circuits_2.lng
from 
  circuits as circuits_1
      inner join circuits as circuits_2
      on (circuits_1.circuitid = circuits_2.circuitid )
    inner join races as races_1
    on (races_1.circuitid = circuits_2.circuitid )
where races_1.date is not NULL
group by circuits_1.alt, circuits_1.location, circuits_2.country, circuits_2.lat, circuits_2.lng, races_1.raceid, races_1.year
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location, 
  circuits_1.country, 
  circuits_1.circuitid, 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.location is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    standings_1.position)
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.resultid, 
  results_1.driverid, 
  results_1.points
from 
  results as results_1
where results_1.points is not NULL
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date
from 
  results as results_1
    inner join constructor_results as constructor_results_1
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where constructor_results_1.points is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date, 
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  avg(
    constructor_standings_1.points)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverstandingsid, 
  standings_1.driverid, 
  avg(
    standings_1.wins), 
  standings_1.wins, 
  standings_1.position, 
  standings_1.points, 
  min(
    standings_1.date), 
  standings_1.date
from 
  standings as standings_1
where standings_1.date is not NULL
group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.wins
limit 1;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref, 
  min(
    circuits_1.lng)
from 
  circuits as circuits_1
    inner join constructors as constructors_1
    on (circuits_1.circuitid = constructors_1.constructorid )
where constructors_1.constructorref is not NULL
group by circuits_1.circuitref
limit 3;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.points, 
  races_1.raceid
from 
  races as races_1
        inner join drivers as drivers_1
          inner join constructors as constructors_1
          on (drivers_1.driverid = constructors_1.constructorid )
        on (races_1.raceid = drivers_1.driverid )
      inner join constructor_standings as constructor_standings_1
      on (constructor_standings_1.raceid = races_1.raceid )
    inner join constructor_standings as constructor_standings_2
    on (constructor_standings_2.raceid = races_1.raceid )
where constructor_standings_2.points is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name, 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.name is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.resultid, 
  results_1.grid, 
  results_1.positionorder, 
  results_1.position, 
  results_1.constructorid, 
  results_1.rank, 
  results_1.laps, 
  results_1.statusid
from 
  results as results_1
where results_1.milliseconds > results_1.position
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year
from 
  races as races_1
    inner join drivers as drivers_1
    on (races_1.raceid = drivers_1.driverid )
where races_1.date >= drivers_1.dob
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position
from 
  standings as standings_1
where standings_1.raceid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    constructor_results_1.constructorresultsid), 
  count(
    constructor_results_1.constructorresultsid), 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points
limit 1;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    drivers_1.driverid), 
  races_1.date, 
  drivers_1.dob, 
  drivers_1.forename, 
  races_1.circuitid
from 
  races as races_1
      inner join drivers as drivers_1
      on (races_1.raceid = drivers_1.driverid )
    inner join drivers as drivers_2
    on (races_1.raceid = drivers_2.driverid )
where drivers_2.driverid is not NULL
group by drivers_1.dob, drivers_1.forename, races_1.circuitid, races_1.date
limit 2;
-- meta {"num_joins":6,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location, 
  races_1.raceid, 
  circuits_1.circuitid, 
  constructor_standings_1.raceid, 
  avg(
    constructor_standings_2.points), 
  drivers_1.driverref, 
  constructor_standings_1.constructorstandingsid, 
  drivers_1.code, 
  races_1.time, 
  constructor_standings_1.constructorid, 
  qualifying_1.date, 
  drivers_1.forename, 
  circuits_1.alt, 
  drivers_2.forename, 
  min(
    drivers_1.dob), 
  max(
    drivers_1.dob), 
  constructor_standings_2.position, 
  drivers_2.nationality, 
  min(
    qualifying_1.number), 
  constructor_standings_1.points, 
  min(
    constructor_standings_1.date)
from 
  drivers as drivers_1
    inner join circuits as circuits_1
        inner join constructor_standings as constructor_standings_1
          inner join qualifying as qualifying_1
          on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
        on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
      inner join constructor_standings as constructor_standings_2
        inner join races as races_1
          inner join drivers as drivers_2
          on (races_1.raceid = drivers_2.driverid )
        on (constructor_standings_2.constructorstandingsid = drivers_2.driverid )
      on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
    on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.wins is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.location, constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_2.position, drivers_1.code, drivers_1.driverref, drivers_1.forename, drivers_2.forename, drivers_2.nationality, qualifying_1.date, races_1.raceid, races_1.time
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverid, 
  min(
    drivers_1.dob)
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
group by drivers_1.driverid
limit 4;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  constructor_results_1.date, 
  constructors_1.name, 
  results_1.constructorid, 
  constructor_results_1.raceid
from 
  results as results_1
      inner join constructor_results as constructor_results_1
      on (results_1.resultid = constructor_results_1.constructorresultsid )
    inner join constructors as constructors_1
    on (constructor_results_1.constructorid = constructors_1.constructorid )
where constructors_1.nationality is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.constructorref, 
  count(*), 
  constructors_1.nationality, 
  max(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name, 
  constructors_1.constructorref, 
  drivers_1.nationality, 
  drivers_1.code, 
  drivers_1.driverid
from 
  drivers as drivers_1
    inner join constructors as constructors_1
    on (drivers_1.driverid = constructors_1.constructorid )
where drivers_1.code is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    results_1.position), 
  results_1.laps, 
  min(
    results_1.date)
from 
  results as results_1
where results_1.laps = results_1.raceid
group by results_1.laps
limit 2;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid, 
  races_1.raceid, 
  min(
    races_1.date), 
  races_1.round, 
  min(
    qualifying_1.driverid)
from 
  races as races_1
    inner join qualifying as qualifying_1
    on (qualifying_1.raceid = races_1.raceid )
where races_1.round is not NULL
group by races_1.circuitid, races_1.raceid, races_1.round
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
    inner join qualifying as qualifying_1
    on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
where qualifying_1.qualifyid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.resultid, 
  results_1.laps
from 
  results as results_1
where results_1.raceid < results_1.grid
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.surname, 
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.code is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  count(*), 
  constructor_standings_1.position, 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.raceid
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    constructors_1.constructorid), 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.nationality
limit 1;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref, 
  constructor_standings_1.wins, 
  circuits_1.location, 
  constructor_standings_1.constructorid
from 
  circuits as circuits_1
      inner join constructor_standings as constructor_standings_1
      on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
    inner join drivers as drivers_1
    on (circuits_1.circuitid = drivers_1.driverid )
where drivers_1.driverid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    drivers_1.dob), 
  avg(
    drivers_1.driverid), 
  drivers_1.code, 
  count(
    drivers_1.driverid), 
  drivers_1.driverref, 
  drivers_1.driverid, 
  drivers_1.dob, 
  avg(
    drivers_1.driverid), 
  drivers_1.forename, 
  drivers_1.nationality, 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.driverid > drivers_1.driverid
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 1;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverstandingsid, 
  constructor_standings_1.raceid
from 
  standings as standings_1
    inner join constructor_standings as constructor_standings_1
      inner join races as races_1
      on (constructor_standings_1.raceid = races_1.raceid )
    on (standings_1.raceid = races_1.raceid )
where standings_1.points = constructor_standings_1.points
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    races_1.date), 
  races_1.date, 
  races_1.year, 
  races_1.raceid, 
  races_1.round, 
  races_1.time, 
  races_1.circuitid, 
  max(
    races_1.date), 
  races_1.name
from 
  races as races_1
where races_1.round is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 4;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.name, 
  results_1.position
from 
  races as races_1
    inner join results as results_1
      inner join results as results_2
      on (results_1.resultid = results_2.resultid )
    on (results_2.raceid = races_1.raceid )
where races_1.year is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.points, 
  standings_1.date, 
  avg(
    standings_1.driverstandingsid), 
  standings_1.driverid, 
  standings_1.position, 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.points >= standings_1.points
group by standings_1.date, standings_1.driverid, standings_1.points, standings_1.position, standings_1.raceid
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
limit 2;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.date, 
  races_1.raceid
from 
  circuits as circuits_1
      inner join standings as standings_1
      on (circuits_1.circuitid = standings_1.driverstandingsid )
    inner join races as races_1
    on (standings_1.raceid = races_1.raceid )
where standings_1.driverid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 2;
-- meta {"num_joins":6,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.forename
from 
  constructor_standings as constructor_standings_1
          inner join qualifying as qualifying_1
          on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
        inner join races as races_1
        on (qualifying_1.raceid = races_1.raceid )
      inner join constructor_standings as constructor_standings_2
        inner join drivers as drivers_1
        on (constructor_standings_2.constructorstandingsid = drivers_1.driverid )
      on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
    inner join constructors as constructors_1
      inner join standings as standings_1
      on (constructors_1.constructorid = standings_1.driverstandingsid )
    on (constructor_standings_1.constructorid = constructors_1.constructorid )
where constructors_1.nationality is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.raceid, 
  avg(
    constructor_standings_1.points), 
  max(
    constructor_standings_1.constructorid)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
group by constructor_standings_1.raceid
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  standings_1.driverid, 
  standings_1.wins
from 
  standings as standings_1
where standings_1.points is not NULL
limit 1;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.position, 
  qualifying_1.number, 
  count(*), 
  races_1.time
from 
  circuits as circuits_1
        inner join qualifying as qualifying_1
        on (circuits_1.circuitid = qualifying_1.qualifyid )
      inner join constructors as constructors_1
      on (qualifying_1.constructorid = constructors_1.constructorid )
    inner join races as races_1
    on (constructors_1.constructorid = races_1.raceid )
where circuits_1.alt <= circuits_1.lng
group by qualifying_1.number, qualifying_1.position, races_1.time
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.country, 
  circuits_1.circuitref, 
  circuits_1.lat
from 
  circuits as circuits_1
where circuits_1.location is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.milliseconds, 
  sum(
    results_1.resultid), 
  results_1.grid, 
  max(
    results_1.constructorid), 
  results_1.fastestlap, 
  sum(
    results_1.milliseconds), 
  results_1.driverid
from 
  results as results_1
where results_1.position <= results_1.number
group by results_1.driverid, results_1.fastestlap, results_1.grid, results_1.milliseconds
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  standings_1.driverstandingsid, 
  standings_1.date, 
  standings_1.driverid, 
  standings_1.points
from 
  standings as standings_1
where standings_1.points < standings_1.points
limit 3;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.date, 
  standings_1.wins, 
  min(
    standings_1.date), 
  avg(
    standings_1.points), 
  max(
    standings_1.date), 
  min(
    standings_1.date), 
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.driverid is not NULL
group by standings_1.date, standings_1.driverstandingsid, standings_1.wins
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.date
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverstandingsid, 
  min(
    standings_1.date), 
  standings_1.position, 
  max(
    standings_1.date), 
  standings_1.date
from 
  standings as standings_1
where standings_1.raceid is not NULL
group by standings_1.date, standings_1.driverstandingsid, standings_1.position
limit 4;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.round, 
  races_1.circuitid, 
  min(
    races_1.date), 
  circuits_1.location, 
  count(*), 
  circuits_1.country
from 
  races as races_1
    inner join circuits as circuits_1
      inner join races as races_2
      on (races_2.circuitid = circuits_1.circuitid )
    on (races_1.raceid = races_2.raceid )
where races_2.name is not NULL
group by circuits_1.country, circuits_1.location, races_1.circuitid, races_1.round
limit 2;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    constructor_results_1.points), 
  count(
    qualifying_1.position), 
  constructor_results_1.constructorresultsid, 
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  qualifying_1.date
from 
  constructor_results as constructor_results_1
    inner join qualifying as qualifying_1
    on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
where constructor_results_1.points >= constructor_results_1.points
group by constructor_results_1.constructorresultsid, qualifying_1.date, qualifying_1.qualifyid, qualifying_1.raceid
limit 4;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  qualifying_1.qualifyid, 
  min(
    constructor_results_2.points), 
  constructor_results_1.constructorresultsid, 
  standings_1.position
from 
  qualifying as qualifying_1
        inner join standings as standings_1
        on (qualifying_1.qualifyid = standings_1.driverstandingsid )
      inner join constructor_results as constructor_results_1
      on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
    inner join constructor_results as constructor_results_2
    on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorresultsid, qualifying_1.date, qualifying_1.qualifyid, standings_1.position
limit 4;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_2.name, 
  circuits_2.circuitref, 
  circuits_2.location, 
  circuits_2.lng, 
  constructors_1.name, 
  constructors_2.name, 
  circuits_2.alt, 
  min(
    circuits_1.lng), 
  results_1.milliseconds, 
  results_1.fastestlap
from 
  circuits as circuits_1
      inner join constructors as constructors_1
        inner join circuits as circuits_2
          inner join results as results_1
          on (circuits_2.circuitid = results_1.resultid )
        on (constructors_1.constructorid = circuits_2.circuitid )
      on (circuits_1.circuitid = circuits_2.circuitid )
    inner join constructors as constructors_2
    on (circuits_1.circuitid = constructors_2.constructorid )
where circuits_1.lng is not NULL
group by circuits_2.alt, circuits_2.circuitref, circuits_2.lng, circuits_2.location, circuits_2.name, constructors_1.name, constructors_2.name, results_1.fastestlap, results_1.milliseconds
limit 4;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitid, 
  drivers_1.code, 
  circuits_1.location, 
  drivers_1.dob, 
  min(
    drivers_1.dob), 
  drivers_1.surname, 
  standings_1.wins, 
  drivers_1.driverid, 
  min(
    standings_1.date), 
  standings_1.raceid
from 
  standings as standings_1
      inner join circuits as circuits_1
      on (standings_1.driverstandingsid = circuits_1.circuitid )
    inner join drivers as drivers_1
    on (standings_1.driverid = drivers_1.driverid )
where drivers_1.forename is not NULL
group by circuits_1.circuitid, circuits_1.location, drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.surname, standings_1.raceid, standings_1.wins
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  avg(
    constructor_results_1.constructorresultsid), 
  constructor_results_1.points, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorid, constructor_results_1.points, constructor_results_1.raceid
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructors_1.constructorid
from 
  qualifying as qualifying_1
    inner join constructors as constructors_1
    on (qualifying_1.constructorid = constructors_1.constructorid )
where qualifying_1.constructorid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins, 
  standings_1.position
from 
  standings as standings_1
where standings_1.date is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt, 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.location is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  max(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.constructorref
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.date, 
  races_1.year, 
  races_1.name, 
  races_1.round, 
  races_1.time, 
  max(
    races_1.date), 
  races_1.circuitid, 
  races_1.raceid, 
  count(*)
from 
  races as races_1
where races_1.name = races_1.time
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 4;
-- meta {"num_joins":1,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  circuits_1.lat, 
  constructor_results_1.date, 
  circuits_1.location, 
  constructor_results_1.constructorresultsid, 
  min(
    circuits_1.alt), 
  max(
    constructor_results_1.date), 
  circuits_1.country, 
  max(
    circuits_1.lng), 
  constructor_results_1.points, 
  avg(
    circuits_1.lat), 
  circuits_1.name, 
  circuits_1.circuitid, 
  circuits_1.circuitref, 
  circuits_1.alt, 
  sum(
    circuits_1.lng)
from 
  circuits as circuits_1
    inner join constructor_results as constructor_results_1
    on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
where constructor_results_1.constructorid > circuits_1.circuitid
group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.location, circuits_1.name, constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 4;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref, 
  drivers_1.dob, 
  count(*), 
  count(
    drivers_1.nationality), 
  drivers_1.nationality, 
  drivers_1.driverid, 
  min(
    drivers_1.dob)
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
group by drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.nationality
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.driverid is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid, 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
    inner join standings as standings_1
    on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
where standings_1.raceid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 1;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.points, 
  races_1.year, 
  max(
    standings_1.date), 
  standings_1.position, 
  races_1.date, 
  races_1.time
from 
  races as races_1
    inner join standings as standings_1
    on (standings_1.raceid = races_1.raceid )
where standings_1.position is not NULL
group by races_1.date, races_1.time, races_1.year, standings_1.points, standings_1.position
limit 3;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.raceid, 
  races_1.time, 
  races_1.date, 
  races_1.circuitid, 
  races_1.round, 
  count(
    races_1.year), 
  max(
    races_1.date), 
  min(
    races_1.year)
from 
  races as races_1
where races_1.raceid <= races_1.round
group by races_1.circuitid, races_1.date, races_1.raceid, races_1.round, races_1.time
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.raceid, 
  qualifying_1.qualifyid, 
  qualifying_1.date, 
  races_1.round
from 
  qualifying as qualifying_1
    inner join races as races_1
    on (qualifying_1.raceid = races_1.raceid )
where qualifying_1.raceid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.date, 
  races_1.time, 
  races_1.circuitid, 
  races_1.name, 
  races_1.raceid
from 
  races as races_1
where races_1.year is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.nationality, 
  drivers_1.driverid, 
  drivers_1.code, 
  min(
    drivers_1.driverid), 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.code is not NULL
group by drivers_1.code, drivers_1.driverid, drivers_1.nationality, drivers_1.surname
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.raceid = qualifying_1.number
limit 3;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorstandingsid
from 
  races as races_1
      inner join constructor_standings as constructor_standings_1
      on (constructor_standings_1.raceid = races_1.raceid )
    inner join drivers as drivers_1
    on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
where races_1.round is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.date, 
  results_1.resultid, 
  results_1.raceid, 
  results_1.positionorder, 
  results_1.grid
from 
  results as results_1
where results_1.laps is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  constructors_1.name, 
  results_1.points, 
  results_1.number, 
  results_1.rank
from 
  constructors as constructors_1
    inner join results as results_1
    on (results_1.constructorid = constructors_1.constructorid )
where results_1.date < results_1.date
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number, 
  qualifying_1.constructorid, 
  qualifying_1.raceid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.date
from 
  qualifying as qualifying_1
    inner join constructor_standings as constructor_standings_1
    on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
where qualifying_1.number is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  max(
    constructor_results_1.date)
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid >= constructor_results_1.raceid
group by constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    standings_1.points), 
  standings_1.points, 
  standings_1.date, 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.raceid < standings_1.position
group by standings_1.date, standings_1.points, standings_1.raceid
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  count(*), 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorid, constructor_results_1.points
limit 3;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  min(
    constructor_standings_1.date)
from 
  constructor_standings as constructor_standings_1
    inner join constructor_results as constructor_results_1
    on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
where constructor_standings_1.position <= constructor_standings_1.constructorstandingsid
group by constructor_results_1.points
limit 1;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins, 
  standings_1.driverstandingsid, 
  standings_1.driverid, 
  standings_1.raceid, 
  standings_1.position, 
  standings_1.date, 
  min(
    standings_1.points), 
  count(
    standings_1.driverstandingsid), 
  avg(
    standings_1.position)
from 
  standings as standings_1
where standings_1.position > standings_1.wins
group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.position, standings_1.raceid, standings_1.wins
limit 3;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position
from 
  constructors as constructors_1
    inner join constructor_results as constructor_results_1
      inner join standings as standings_1
      on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where standings_1.driverstandingsid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.country, 
  circuits_1.circuitid, 
  circuits_1.name, 
  max(
    circuits_1.circuitid), 
  sum(
    circuits_1.lat), 
  circuits_1.lat
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
group by circuits_1.circuitid, circuits_1.country, circuits_1.lat, circuits_1.name
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 3;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.date
from 
  results as results_1
      inner join standings as standings_1
        inner join constructor_results as constructor_results_1
        on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
      on (results_1.resultid = constructor_results_1.constructorresultsid )
    inner join drivers as drivers_1
    on (standings_1.driverid = drivers_1.driverid )
where results_1.number is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.raceid, 
  results_1.positionorder, 
  results_1.date
from 
  results as results_1
where results_1.points <= results_1.position
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  max(
    constructor_standings_1.date), 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.raceid
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  constructor_standings_1.position, 
  constructor_results_1.raceid, 
  constructor_standings_1.date, 
  constructor_standings_1.raceid
from 
  constructor_results as constructor_results_1
    inner join constructor_standings as constructor_standings_1
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where constructor_results_1.constructorid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  max(
    constructor_results_1.date), 
  constructor_results_1.date, 
  max(
    constructor_results_1.raceid)
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  standings_1.date, 
  drivers_1.driverid, 
  min(
    drivers_1.driverid), 
  standings_1.position, 
  standings_1.wins, 
  standings_1.driverstandingsid, 
  min(
    standings_1.points), 
  min(
    standings_1.points)
from 
  standings as standings_1
    inner join drivers as drivers_1
    on (standings_1.driverid = drivers_1.driverid )
where drivers_1.driverref is not NULL
group by drivers_1.driverid, standings_1.date, standings_1.driverstandingsid, standings_1.position, standings_1.raceid, standings_1.wins
limit 4;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.position, 
  qualifying_1.raceid, 
  qualifying_1.date, 
  max(
    qualifying_1.qualifyid), 
  qualifying_1.number, 
  qualifying_1.qualifyid, 
  qualifying_1.driverid, 
  min(
    qualifying_1.date), 
  avg(
    qualifying_1.qualifyid)
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
group by qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 4;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  standings_1.points, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
    inner join drivers as drivers_1
      inner join standings as standings_1
      on (standings_1.driverid = drivers_1.driverid )
    on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
where constructor_standings_1.constructorstandingsid > standings_1.driverid
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.time, 
  races_1.circuitid, 
  races_1.raceid
from 
  races as races_1
where races_1.name > races_1.time
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.driverid, 
  results_1.statusid, 
  results_1.positionorder, 
  results_1.position
from 
  results as results_1
where results_1.date = results_1.date
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  sum(
    constructor_results_1.constructorresultsid), 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  min(
    constructor_results_1.date)
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.points < constructor_results_1.points
limit 1;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.position, 
  max(
    results_1.rank), 
  results_1.date, 
  constructors_1.nationality, 
  results_1.constructorid, 
  results_1.grid
from 
  results as results_1
    inner join constructors as constructors_1
    on (results_1.constructorid = constructors_1.constructorid )
where constructors_1.constructorref is not NULL
group by constructors_1.nationality, results_1.constructorid, results_1.date, results_1.grid, results_1.position
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.laps, 
  results_1.number, 
  results_1.date, 
  results_1.fastestlap, 
  sum(
    results_1.points), 
  results_1.positionorder, 
  results_1.milliseconds, 
  results_1.constructorid, 
  results_1.resultid, 
  results_1.points, 
  results_1.driverid, 
  avg(
    results_1.milliseconds)
from 
  results as results_1
where results_1.rank is not NULL
group by results_1.constructorid, results_1.date, results_1.driverid, results_1.fastestlap, results_1.laps, results_1.milliseconds, results_1.number, results_1.points, results_1.positionorder, results_1.resultid
limit 2;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid
from 
  circuits as circuits_1
        inner join standings as standings_1
        on (circuits_1.circuitid = standings_1.driverstandingsid )
      inner join qualifying as qualifying_1
      on (standings_1.driverstandingsid = qualifying_1.qualifyid )
    inner join constructor_standings as constructor_standings_1
      inner join results as results_1
      on (constructor_standings_1.constructorstandingsid = results_1.resultid )
    on (circuits_1.circuitid = results_1.resultid )
where circuits_1.name = circuits_1.location
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date >= constructor_results_1.date
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref, 
  races_1.date, 
  circuits_1.alt
from 
  circuits as circuits_1
    inner join races as races_1
    on (races_1.circuitid = circuits_1.circuitid )
where circuits_1.alt is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  standings_1.wins, 
  constructors_1.nationality
from 
  standings as standings_1
    inner join constructors as constructors_1
    on (standings_1.driverstandingsid = constructors_1.constructorid )
where standings_1.wins is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.points, 
  standings_1.wins, 
  avg(
    standings_1.wins), 
  avg(
    standings_1.raceid), 
  standings_1.driverid, 
  avg(
    standings_1.position), 
  standings_1.date, 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.points is not NULL
group by standings_1.date, standings_1.driverid, standings_1.points, standings_1.raceid, standings_1.wins
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.raceid, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    races_1.round), 
  races_1.year, 
  races_1.round, 
  races_1.circuitid, 
  count(
    races_1.round)
from 
  races as races_1
where races_1.date is not NULL
group by races_1.circuitid, races_1.round, races_1.year
limit 4;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_2.raceid, 
  qualifying_1.constructorid, 
  qualifying_1.number, 
  constructors_1.constructorid, 
  min(
    standings_1.date), 
  races_1.date, 
  constructors_1.constructorref, 
  qualifying_2.date
from 
  standings as standings_1
      inner join qualifying as qualifying_1
        inner join qualifying as qualifying_2
        on (qualifying_1.qualifyid = qualifying_2.qualifyid )
      on (standings_1.driverstandingsid = qualifying_1.qualifyid )
    inner join constructors as constructors_1
      inner join races as races_1
      on (constructors_1.constructorid = races_1.raceid )
    on (qualifying_1.raceid = races_1.raceid )
where qualifying_1.date < standings_1.date
group by constructors_1.constructorid, constructors_1.constructorref, qualifying_1.constructorid, qualifying_1.number, qualifying_2.date, qualifying_2.raceid, races_1.date
limit 1;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.rank, 
  circuits_1.alt, 
  standings_1.position
from 
  circuits as circuits_1
      inner join standings as standings_1
      on (circuits_1.circuitid = standings_1.driverstandingsid )
    inner join results as results_1
    on (circuits_1.circuitid = results_1.resultid )
where standings_1.position is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lat, 
  circuits_1.alt, 
  circuits_1.name, 
  circuits_1.circuitid, 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    races_1.date), 
  races_1.round, 
  races_1.circuitid, 
  races_1.raceid, 
  races_1.name, 
  max(
    races_1.date), 
  races_1.year, 
  races_1.time, 
  races_1.date
from 
  races as races_1
where races_1.circuitid is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 1;
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorstandingsid, 
  max(
    circuits_1.circuitid), 
  circuits_1.circuitid, 
  constructor_standings_1.position, 
  min(
    results_1.driverid), 
  races_1.date
from 
  constructor_standings as constructor_standings_1
      inner join races as races_1
      on (constructor_standings_1.raceid = races_1.raceid )
    inner join circuits as circuits_1
      inner join results as results_1
      on (circuits_1.circuitid = results_1.resultid )
    on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
where results_1.raceid is not NULL
group by circuits_1.circuitid, constructor_standings_1.constructorstandingsid, constructor_standings_1.position, races_1.date
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverid, 
  drivers_1.nationality, 
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
limit 4;
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_results_1.points), 
  sum(
    constructor_results_1.points), 
  races_1.circuitid, 
  races_1.round, 
  constructor_standings_1.wins, 
  races_1.name, 
  constructor_standings_1.raceid, 
  min(
    constructor_standings_1.points), 
  constructor_standings_1.constructorstandingsid, 
  constructor_results_1.constructorresultsid, 
  races_1.date, 
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
      inner join races as races_1
      on (constructor_standings_1.raceid = races_1.raceid )
    inner join constructor_results as constructor_results_1
    on (constructor_results_1.raceid = races_1.raceid )
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorresultsid, constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.wins, races_1.circuitid, races_1.date, races_1.name, races_1.round
limit 1;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.points, 
  constructor_standings_1.raceid
from 
  constructor_results as constructor_results_1
    inner join constructor_standings as constructor_standings_1
      inner join constructors as constructors_1
      on (constructor_standings_1.constructorid = constructors_1.constructorid )
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where constructors_1.name is not NULL
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  races_1.circuitid
from 
  races as races_1
    inner join constructor_results as constructor_results_1
    on (constructor_results_1.raceid = races_1.raceid )
where races_1.round is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.time, 
  races_1.year
from 
  races as races_1
where races_1.date is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    races_1.date), 
  races_1.round, 
  races_1.date
from 
  races as races_1
where races_1.raceid is not NULL
group by races_1.date, races_1.round
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.nationality, 
  races_1.date, 
  drivers_1.code, 
  drivers_1.dob
from 
  races as races_1
    inner join drivers as drivers_1
    on (races_1.raceid = drivers_1.driverid )
where races_1.year < races_1.round
limit 3;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    constructor_results_1.raceid), 
  constructors_1.nationality, 
  constructor_results_1.points, 
  constructor_results_1.date
from 
  constructors as constructors_1
        inner join races as races_1
        on (constructors_1.constructorid = races_1.raceid )
      inner join constructor_results as constructor_results_1
      on (constructor_results_1.raceid = races_1.raceid )
    inner join constructors as constructors_2
    on (constructor_results_1.constructorid = constructors_2.constructorid )
where races_1.date is not NULL
group by constructor_results_1.date, constructor_results_1.points, constructors_1.nationality
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins, 
  standings_1.raceid, 
  standings_1.points, 
  max(
    standings_1.date), 
  standings_1.driverid, 
  min(
    standings_1.points), 
  standings_1.date
from 
  standings as standings_1
where standings_1.date = standings_1.date
group by standings_1.date, standings_1.driverid, standings_1.points, standings_1.raceid, standings_1.wins
limit 4;
-- meta {"num_joins":3,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.time, 
  drivers_1.dob, 
  constructor_results_1.date, 
  races_1.year, 
  races_1.round, 
  drivers_1.forename, 
  max(
    qualifying_1.qualifyid), 
  max(
    constructor_results_1.date), 
  constructor_results_1.raceid, 
  count(
    races_1.time), 
  drivers_1.driverref, 
  races_1.date
from 
  constructor_results as constructor_results_1
        inner join races as races_1
        on (constructor_results_1.raceid = races_1.raceid )
      inner join qualifying as qualifying_1
      on (qualifying_1.raceid = races_1.raceid )
    inner join drivers as drivers_1
    on (qualifying_1.driverid = drivers_1.driverid )
where drivers_1.forename is not NULL
group by constructor_results_1.date, constructor_results_1.raceid, drivers_1.dob, drivers_1.driverref, drivers_1.forename, races_1.date, races_1.round, races_1.time, races_1.year
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.country, 
  qualifying_1.position, 
  qualifying_1.constructorid, 
  qualifying_1.raceid, 
  qualifying_1.qualifyid, 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
    inner join circuits as circuits_1
    on (qualifying_1.qualifyid = circuits_1.circuitid )
where qualifying_1.number is not NULL
limit 3;
-- meta {"num_joins":5,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  constructors_2.constructorref, 
  count(*), 
  count(*), 
  constructors_1.constructorid, 
  constructors_2.nationality, 
  avg(
    results_1.raceid), 
  constructors_1.nationality, 
  results_1.constructorid
from 
  results as results_1
      inner join qualifying as qualifying_1
      on (results_1.resultid = qualifying_1.qualifyid )
    inner join standings as standings_1
        inner join circuits as circuits_1
          inner join constructors as constructors_1
          on (circuits_1.circuitid = constructors_1.constructorid )
        on (standings_1.driverstandingsid = constructors_1.constructorid )
      inner join constructors as constructors_2
      on (standings_1.driverstandingsid = constructors_2.constructorid )
    on (qualifying_1.constructorid = constructors_1.constructorid )
where standings_1.date is not NULL
group by constructors_1.constructorid, constructors_1.nationality, constructors_2.constructorref, constructors_2.nationality, results_1.constructorid
limit 1;
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref, 
  results_1.milliseconds, 
  min(
    results_1.date), 
  max(
    results_1.resultid), 
  qualifying_1.date, 
  qualifying_1.number, 
  qualifying_1.qualifyid, 
  sum(
    results_1.position), 
  qualifying_1.raceid
from 
  results as results_1
      inner join circuits as circuits_1
      on (results_1.resultid = circuits_1.circuitid )
    inner join qualifying as qualifying_1
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where circuits_1.country > circuits_1.name
group by circuits_1.circuitref, qualifying_1.date, qualifying_1.number, qualifying_1.qualifyid, qualifying_1.raceid, results_1.milliseconds
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  qualifying_1.constructorid, 
  min(
    qualifying_1.qualifyid)
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
group by qualifying_1.constructorid, qualifying_1.date
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitid, 
  min(
    circuits_1.lng)
from 
  circuits as circuits_1
where circuits_1.alt > circuits_1.lng
group by circuits_1.circuitid
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitid, 
  circuits_1.circuitref, 
  circuits_1.location, 
  circuits_1.lat, 
  count(*), 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.alt is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.lat, circuits_1.location
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name, 
  circuits_1.circuitref, 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.country > circuits_1.name
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid, 
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.driverid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.qualifyid, 
  qualifying_1.driverid, 
  min(
    drivers_1.dob), 
  qualifying_1.constructorid, 
  max(
    qualifying_1.number), 
  qualifying_1.date
from 
  drivers as drivers_1
    inner join qualifying as qualifying_1
    on (qualifying_1.driverid = drivers_1.driverid )
where qualifying_1.number is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.qualifyid
limit 3;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year
from 
  races as races_1
    inner join qualifying as qualifying_1
      inner join results as results_1
      on (qualifying_1.qualifyid = results_1.resultid )
    on (qualifying_1.raceid = races_1.raceid )
where qualifying_1.position is not NULL
limit 4;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position, 
  standings_1.raceid
from 
  standings as standings_1
      inner join races as races_1
      on (standings_1.raceid = races_1.raceid )
    inner join races as races_2
        inner join circuits as circuits_1
        on (races_2.circuitid = circuits_1.circuitid )
      inner join standings as standings_2
      on (circuits_1.circuitid = standings_2.driverstandingsid )
    on (standings_2.raceid = races_1.raceid )
where races_1.date <= races_2.date
limit 1;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  qualifying_1.raceid, 
  max(
    constructor_standings_1.points)
from 
  constructor_standings as constructor_standings_1
        inner join qualifying as qualifying_1
        on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
      inner join constructors as constructors_1
      on (constructor_standings_1.constructorid = constructors_1.constructorid )
    inner join constructor_results as constructor_results_1
    on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
where constructors_1.name is not NULL
group by constructor_standings_1.constructorid, constructors_1.constructorid, constructors_1.nationality, qualifying_1.raceid
limit 2;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid, 
  races_1.raceid, 
  min(
    races_1.round), 
  min(
    races_1.date), 
  races_1.year, 
  races_1.time, 
  races_1.date, 
  races_1.name, 
  sum(
    races_1.year), 
  count(
    races_1.time), 
  races_1.round
from 
  races as races_1
where races_1.time is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.constructorid, 
  min(
    results_1.date), 
  results_1.date, 
  results_1.statusid, 
  results_1.positionorder, 
  min(
    results_1.date)
from 
  results as results_1
where results_1.positionorder <= results_1.driverid
group by results_1.constructorid, results_1.date, results_1.positionorder, results_1.statusid
limit 3;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    results_1.positionorder), 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  results_1.points, 
  max(
    results_1.date)
from 
  results as results_1
    inner join constructors as constructors_1
    on (results_1.constructorid = constructors_1.constructorid )
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.nationality, results_1.points
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.driverid, 
  results_1.position, 
  results_1.fastestlap, 
  results_1.points, 
  results_1.resultid, 
  min(
    results_1.milliseconds), 
  max(
    results_1.date), 
  results_1.positionorder, 
  results_1.grid
from 
  results as results_1
where results_1.position is not NULL
group by results_1.driverid, results_1.fastestlap, results_1.grid, results_1.points, results_1.position, results_1.positionorder, results_1.resultid
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  min(
    races_1.date), 
  constructor_results_1.points
from 
  races as races_1
    inner join constructor_results as constructor_results_1
    on (constructor_results_1.raceid = races_1.raceid )
where races_1.time = races_1.name
group by constructor_results_1.constructorid, constructor_results_1.points
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  max(
    constructors_1.constructorid), 
  count(*)
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.constructorref
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.raceid, 
  results_1.number
from 
  results as results_1
where results_1.constructorid is not NULL
limit 3;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.round
from 
  constructor_results as constructor_results_1
      inner join drivers as drivers_1
        inner join races as races_1
        on (drivers_1.driverid = races_1.raceid )
      on (constructor_results_1.raceid = races_1.raceid )
    inner join races as races_2
    on (constructor_results_1.raceid = races_2.raceid )
where constructor_results_1.constructorid is not NULL
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number, 
  races_1.circuitid, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
    inner join races as races_1
    on (qualifying_1.raceid = races_1.raceid )
where races_1.year is not NULL
limit 2;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.points, 
  min(
    standings_1.points)
from 
  standings as standings_1
      inner join constructor_standings as constructor_standings_1
        inner join constructor_standings as constructor_standings_2
        on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
      on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
    inner join qualifying as qualifying_1
    on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
where standings_1.position is not NULL
group by constructor_standings_1.points
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  drivers_1.forename
from 
  drivers as drivers_1
    inner join constructor_results as constructor_results_1
    on (drivers_1.driverid = constructor_results_1.constructorresultsid )
where constructor_results_1.points is not NULL
limit 4;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date, 
  sum(
    results_1.position), 
  results_1.fastestlap
from 
  results as results_1
      inner join constructor_standings as constructor_standings_1
      on (results_1.resultid = constructor_standings_1.constructorstandingsid )
    inner join drivers as drivers_1
    on (results_1.driverid = drivers_1.driverid )
where results_1.date is not NULL
group by constructor_standings_1.date, results_1.fastestlap
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    qualifying_1.qualifyid), 
  qualifying_1.number, 
  qualifying_1.raceid, 
  qualifying_1.date, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.number, qualifying_1.raceid
limit 2;
-- meta {"num_joins":1,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid, 
  max(
    constructor_results_1.date), 
  constructor_results_1.constructorresultsid, 
  max(
    standings_1.date), 
  constructor_results_1.raceid, 
  standings_1.raceid, 
  standings_1.wins, 
  max(
    constructor_results_1.points), 
  sum(
    standings_1.driverid), 
  count(*)
from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.raceid, standings_1.driverid, standings_1.raceid, standings_1.wins
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    races_1.year)
from 
  races as races_1
where races_1.year is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  qualifying_1.qualifyid, 
  qualifying_1.position, 
  min(
    qualifying_1.date)
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
group by qualifying_1.date, qualifying_1.position, qualifying_1.qualifyid
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorref, 
  max(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.nationality = constructors_1.name
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 2;
-- meta {"num_joins":6,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lng, 
  constructors_2.name, 
  standings_1.date, 
  drivers_1.dob, 
  constructors_1.name, 
  circuits_2.name, 
  results_1.positionorder, 
  circuits_2.location, 
  min(
    standings_1.date)
from 
  results as results_1
    inner join circuits as circuits_1
      inner join drivers as drivers_1
          inner join circuits as circuits_2
          on (drivers_1.driverid = circuits_2.circuitid )
        inner join constructors as constructors_1
            inner join constructors as constructors_2
            on (constructors_1.constructorid = constructors_2.constructorid )
          inner join standings as standings_1
          on (constructors_1.constructorid = standings_1.driverstandingsid )
        on (drivers_1.driverid = constructors_2.constructorid )
      on (circuits_1.circuitid = circuits_2.circuitid )
    on (results_1.constructorid = constructors_2.constructorid )
where drivers_1.dob > results_1.date
group by circuits_1.lng, circuits_2.location, circuits_2.name, constructors_1.name, constructors_2.name, drivers_1.dob, results_1.positionorder, standings_1.date
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.rank, 
  results_1.date, 
  results_1.driverid, 
  results_1.laps, 
  results_1.grid
from 
  results as results_1
where results_1.resultid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  qualifying_1.number, 
  qualifying_1.driverid, 
  count(*), 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.qualifyid, qualifying_1.raceid
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lng, 
  circuits_1.alt, 
  circuits_1.country, 
  circuits_1.circuitid, 
  circuits_1.name, 
  circuits_1.circuitref, 
  circuits_1.location, 
  circuits_1.lat
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location, 
  circuits_1.country, 
  circuits_1.lat, 
  circuits_1.name, 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.name is not NULL
limit 1;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_2.location, 
  circuits_1.name, 
  count(
    circuits_1.alt), 
  circuits_1.location, 
  circuits_1.country, 
  standings_1.driverid, 
  standings_1.raceid, 
  circuits_1.lng, 
  circuits_2.circuitref, 
  standings_1.wins, 
  max(
    standings_1.date), 
  circuits_2.alt
from 
  circuits as circuits_1
    inner join standings as standings_1
      inner join circuits as circuits_2
      on (standings_1.driverstandingsid = circuits_2.circuitid )
    on (circuits_1.circuitid = circuits_2.circuitid )
where standings_1.points is not NULL
group by circuits_1.country, circuits_1.lng, circuits_1.location, circuits_1.name, circuits_2.alt, circuits_2.circuitref, circuits_2.location, standings_1.driverid, standings_1.raceid, standings_1.wins
limit 2;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  constructor_results_1.constructorid, 
  constructors_1.nationality, 
  constructors_2.constructorref, 
  races_1.name, 
  races_1.raceid, 
  constructors_1.constructorref
from 
  constructor_results as constructor_results_1
      inner join constructors as constructors_1
          inner join races as races_1
          on (constructors_1.constructorid = races_1.raceid )
        inner join constructors as constructors_2
        on (races_1.raceid = constructors_2.constructorid )
      on (constructor_results_1.raceid = races_1.raceid )
    inner join standings as standings_1
    on (constructors_2.constructorid = standings_1.driverstandingsid )
where constructors_2.constructorref is not NULL
group by constructor_results_1.constructorid, constructors_1.constructorref, constructors_1.nationality, constructors_2.constructorref, races_1.name, races_1.raceid
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name, 
  constructors_1.constructorid, 
  count(
    constructors_1.nationality)
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.constructorid, constructors_1.name
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  qualifying_1.constructorid, 
  max(
    qualifying_1.constructorid), 
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  qualifying_1.number, 
  max(
    qualifying_1.date)
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number, 
  results_1.resultid, 
  results_1.milliseconds, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
    inner join results as results_1
    on (qualifying_1.qualifyid = results_1.resultid )
where qualifying_1.position is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.raceid, 
  max(
    constructor_standings_1.date), 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.raceid, constructor_standings_1.wins
limit 1;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    results_1.position), 
  circuits_1.lat, 
  circuits_1.alt, 
  circuits_1.lng, 
  results_1.milliseconds, 
  results_1.points, 
  min(
    circuits_1.lat), 
  circuits_1.circuitid, 
  results_1.resultid, 
  results_1.raceid
from 
  results as results_1
    inner join circuits as circuits_1
    on (results_1.resultid = circuits_1.circuitid )
where circuits_1.circuitid is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.lat, circuits_1.lng, results_1.milliseconds, results_1.points, results_1.raceid, results_1.resultid
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.raceid, 
  avg(
    constructor_standings_1.points), 
  constructor_standings_1.position, 
  constructor_standings_1.points, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid
limit 2;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  qualifying_1.qualifyid, 
  max(
    qualifying_2.position), 
  qualifying_2.date, 
  qualifying_2.raceid
from 
  qualifying as qualifying_1
    inner join qualifying as qualifying_2
    on (qualifying_1.qualifyid = qualifying_2.qualifyid )
where qualifying_1.number is not NULL
group by qualifying_1.date, qualifying_1.qualifyid, qualifying_2.date, qualifying_2.raceid
limit 4;
-- meta {"num_joins":2,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverstandingsid, 
  max(
    standings_1.points), 
  standings_1.driverid, 
  standings_1.raceid, 
  circuits_1.location, 
  count(*), 
  max(
    standings_1.date), 
  circuits_1.name, 
  standings_1.wins, 
  drivers_1.dob, 
  drivers_1.code, 
  standings_1.date, 
  max(
    standings_1.points)
from 
  circuits as circuits_1
      inner join standings as standings_1
      on (circuits_1.circuitid = standings_1.driverstandingsid )
    inner join drivers as drivers_1
    on (standings_1.driverid = drivers_1.driverid )
where drivers_1.surname is not NULL
group by circuits_1.location, circuits_1.name, drivers_1.code, drivers_1.dob, standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.raceid, standings_1.wins
limit 4;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructor_results_1.date, 
  avg(
    constructor_results_1.points)
from 
  constructors as constructors_1
    inner join constructor_results as constructor_results_1
      inner join circuits as circuits_1
      on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
    on (constructor_results_1.constructorid = constructors_1.constructorid )
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.date, constructors_1.constructorid, constructors_1.nationality
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_results_1.raceid), 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.points
limit 2;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    constructor_results_1.points), 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  max(
    qualifying_1.raceid), 
  qualifying_1.driverid, 
  qualifying_1.position, 
  qualifying_1.number, 
  qualifying_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  qualifying_1.qualifyid, 
  avg(
    constructor_results_1.points)
from 
  qualifying as qualifying_1
    inner join constructor_results as constructor_results_1
    on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
where qualifying_1.number is not NULL
group by constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.date, 
  results_1.position, 
  results_1.points
from 
  results as results_1
where results_1.positionorder is not NULL
limit 1;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position
from 
  standings as standings_1
    inner join results as results_1
      inner join results as results_2
      on (results_1.resultid = results_2.resultid )
    on (standings_1.driverstandingsid = results_1.resultid )
where standings_1.driverid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.dob <= drivers_1.dob
limit 1;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select distinct 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
    inner join races as races_1
      inner join results as results_1
      on (results_1.raceid = races_1.raceid )
    on (constructor_results_1.constructorresultsid = results_1.resultid )
where results_1.position < results_1.fastestlap
limit 4;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_results_1.date)
from 
  constructor_standings as constructor_standings_1
      inner join constructor_results as constructor_results_1
      on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
    inner join constructors as constructors_1
    on (constructor_results_1.constructorid = constructors_1.constructorid )
where constructors_1.constructorid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitid, 
  circuits_1.lng, 
  circuits_1.name, 
  max(
    circuits_1.circuitid), 
  circuits_1.circuitref, 
  max(
    circuits_1.circuitid), 
  circuits_1.country, 
  circuits_1.location, 
  circuits_1.lat, 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.name > circuits_1.circuitref
group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.location, circuits_1.name
limit 2;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.points, 
  drivers_1.surname, 
  qualifying_1.driverid, 
  avg(
    standings_1.points), 
  drivers_1.code, 
  standings_1.points
from 
  drivers as drivers_1
      inner join constructor_standings as constructor_standings_1
        inner join standings as standings_1
          inner join qualifying as qualifying_1
          on (standings_1.driverstandingsid = qualifying_1.qualifyid )
        on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
      on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
    inner join drivers as drivers_2
    on (constructor_standings_1.constructorstandingsid = drivers_2.driverid )
where constructor_standings_1.date = standings_1.date
group by constructor_standings_1.points, drivers_1.code, drivers_1.surname, qualifying_1.driverid, standings_1.points
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    circuits_1.lat), 
  sum(
    circuits_1.lat), 
  circuits_1.circuitref, 
  circuits_1.lat, 
  circuits_1.location, 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.name is not NULL
group by circuits_1.circuitref, circuits_1.lat, circuits_1.lng, circuits_1.location
limit 4;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.forename, 
  drivers_1.nationality, 
  drivers_1.driverref, 
  drivers_1.code, 
  drivers_1.driverid, 
  drivers_1.dob, 
  sum(
    drivers_1.driverid), 
  drivers_1.surname, 
  count(*), 
  min(
    drivers_1.dob)
from 
  drivers as drivers_1
where drivers_1.driverid = drivers_1.driverid
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 1;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location, 
  results_1.positionorder, 
  qualifying_1.driverid
from 
  results as results_1
    inner join qualifying as qualifying_1
      inner join circuits as circuits_1
        inner join qualifying as qualifying_2
        on (circuits_1.circuitid = qualifying_2.qualifyid )
      on (qualifying_1.qualifyid = qualifying_2.qualifyid )
    on (results_1.resultid = circuits_1.circuitid )
where circuits_1.alt is not NULL
limit 1;
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    drivers_1.driverid), 
  min(
    qualifying_1.qualifyid), 
  max(
    drivers_1.dob), 
  qualifying_1.raceid, 
  drivers_1.forename, 
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  drivers_1.surname, 
  qualifying_1.number, 
  drivers_1.driverid, 
  drivers_1.driverref, 
  drivers_1.code, 
  drivers_1.nationality, 
  qualifying_1.date, 
  count(
    qualifying_1.raceid)
from 
  qualifying as qualifying_1
    inner join drivers as drivers_1
    on (qualifying_1.driverid = drivers_1.driverid )
where qualifying_1.position is not NULL
group by drivers_1.code, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname, qualifying_1.date, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 3;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  drivers_1.driverref, 
  drivers_1.code, 
  drivers_1.driverid, 
  drivers_1.forename, 
  drivers_1.nationality, 
  count(*), 
  drivers_1.surname, 
  max(
    drivers_1.driverid)
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
group by drivers_1.code, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.milliseconds, 
  results_1.position, 
  results_1.constructorid
from 
  results as results_1
where results_1.fastestlap is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.constructorref, 
  sum(
    constructors_1.constructorid), 
  count(
    constructors_1.nationality), 
  sum(
    constructors_1.constructorid), 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number, 
  qualifying_1.position, 
  qualifying_1.date, 
  qualifying_1.driverid, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
limit 2;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructor_results_1.date), 
  qualifying_1.driverid, 
  constructors_1.constructorref, 
  min(
    constructor_results_1.date)
from 
  constructors as constructors_1
    inner join constructor_results as constructor_results_1
      inner join qualifying as qualifying_1
      on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
    on (constructor_results_1.constructorid = constructors_1.constructorid )
where constructors_1.name > constructors_1.constructorref
group by constructors_1.constructorref, qualifying_1.driverid
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":6,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  sum(
    qualifying_1.number), 
  qualifying_1.number, 
  count(
    qualifying_1.position), 
  qualifying_1.raceid, 
  avg(
    qualifying_1.constructorid), 
  max(
    qualifying_1.date), 
  count(*), 
  qualifying_1.position, 
  min(
    qualifying_1.date), 
  qualifying_1.driverid, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.raceid
limit 1;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.country, 
  max(
    circuits_1.alt), 
  min(
    circuits_1.alt), 
  circuits_1.circuitid, 
  circuits_1.circuitref, 
  circuits_1.lng, 
  count(*), 
  circuits_1.location, 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lng, circuits_1.location
limit 1;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructors_1.nationality, 
  count(*), 
  constructors_1.constructorid, 
  constructors_2.constructorid
from 
  constructors as constructors_1
    inner join constructors as constructors_2
    on (constructors_1.constructorid = constructors_2.constructorid )
where constructors_1.constructorref is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality, constructors_2.constructorid
limit 1;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.points, 
  max(
    standings_1.date), 
  count(*), 
  sum(
    standings_1.driverid), 
  standings_1.date
from 
  standings as standings_1
where standings_1.date is not NULL
group by standings_1.date, standings_1.points
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location, 
  circuits_1.alt, 
  circuits_1.name, 
  max(
    circuits_1.lng), 
  circuits_1.lng, 
  circuits_1.circuitid, 
  max(
    circuits_1.alt)
from 
  circuits as circuits_1
where circuits_1.name is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.lng, circuits_1.location, circuits_1.name
limit 4;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  count(
    constructors_2.constructorid), 
  constructors_2.nationality
from 
  constructors as constructors_1
    inner join constructors as constructors_2
    on (constructors_1.constructorid = constructors_2.constructorid )
where constructors_1.nationality is not NULL
group by constructors_1.constructorref, constructors_2.nationality
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
limit 4;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name
from 
  constructor_standings as constructor_standings_1
      inner join results as results_1
      on (constructor_standings_1.constructorstandingsid = results_1.resultid )
    inner join constructors as constructors_1
    on (constructor_standings_1.constructorid = constructors_1.constructorid )
where constructors_1.nationality is not NULL
limit 3;
-- meta {"num_joins":2,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    drivers_1.dob), 
  min(
    drivers_2.driverid), 
  sum(
    constructor_results_1.points), 
  constructor_results_1.constructorid, 
  drivers_1.forename, 
  min(
    drivers_2.dob), 
  drivers_2.dob, 
  max(
    drivers_2.dob)
from 
  constructor_results as constructor_results_1
    inner join drivers as drivers_1
      inner join drivers as drivers_2
      on (drivers_1.driverid = drivers_2.driverid )
    on (constructor_results_1.constructorresultsid = drivers_1.driverid )
where drivers_1.driverid is not NULL
group by constructor_results_1.constructorid, drivers_1.forename, drivers_2.dob
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid
from 
  qualifying as qualifying_1
    inner join results as results_1
    on (qualifying_1.qualifyid = results_1.resultid )
where results_1.milliseconds = results_1.fastestlap
limit 3;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.surname, 
  drivers_1.driverref
from 
  drivers as drivers_1
    inner join qualifying as qualifying_1
      inner join constructor_results as constructor_results_1
      on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
    on (drivers_1.driverid = constructor_results_1.constructorresultsid )
where drivers_1.dob < constructor_results_1.date
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  constructors_1.constructorid
from 
  standings as standings_1
    inner join constructors as constructors_1
    on (standings_1.driverstandingsid = constructors_1.constructorid )
where standings_1.date >= standings_1.date
limit 2;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  constructor_results_1.date, 
  avg(
    constructor_results_1.points), 
  constructor_results_1.constructorid, 
  avg(
    constructor_results_1.points), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  max(
    constructor_results_1.date), 
  min(
    constructor_results_1.date)
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.position, 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorid < constructors_1.constructorid
limit 3;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  qualifying_1.constructorid, 
  qualifying_1.position, 
  max(
    qualifying_1.raceid)
from 
  races as races_1
    inner join constructor_results as constructor_results_1
      inner join qualifying as qualifying_1
      on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
    on (constructor_results_1.raceid = races_1.raceid )
where qualifying_1.date is not NULL
group by constructor_results_1.constructorresultsid, qualifying_1.constructorid, qualifying_1.position
limit 3;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.date, 
  max(
    standings_1.points), 
  standings_1.points, 
  standings_1.driverid, 
  constructors_1.nationality
from 
  standings as standings_1
    inner join constructors as constructors_1
    on (standings_1.driverstandingsid = constructors_1.constructorid )
where standings_1.points is not NULL
group by constructors_1.nationality, standings_1.date, standings_1.driverid, standings_1.points
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins, 
  standings_1.position
from 
  standings as standings_1
where standings_1.wins > standings_1.driverstandingsid
limit 3;
-- meta {"num_joins":4,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    standings_1.date), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date, 
  min(
    constructor_standings_2.date), 
  constructor_standings_2.points, 
  max(
    qualifying_1.date), 
  standings_1.driverid
from 
  standings as standings_1
        inner join constructor_standings as constructor_standings_1
        on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
      inner join constructor_standings as constructor_standings_2
      on (standings_1.driverstandingsid = constructor_standings_2.constructorstandingsid )
    inner join qualifying as qualifying_1
      inner join races as races_1
      on (qualifying_1.raceid = races_1.raceid )
    on (constructor_standings_2.raceid = races_1.raceid )
where constructor_standings_1.points >= constructor_standings_2.points
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_2.points, standings_1.driverid
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  standings_1.position, 
  standings_1.raceid, 
  min(
    standings_1.wins), 
  standings_1.points
from 
  standings as standings_1
where standings_1.driverstandingsid = standings_1.driverid
group by standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid, 
  races_1.time, 
  races_1.raceid, 
  count(*), 
  races_1.year
from 
  races as races_1
where races_1.round is not NULL
group by races_1.circuitid, races_1.raceid, races_1.time, races_1.year
limit 3;
-- meta {"num_joins":5,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverstandingsid, 
  standings_1.points, 
  min(
    standings_2.date), 
  constructors_1.constructorref, 
  constructors_1.name, 
  circuits_2.country, 
  circuits_1.alt, 
  constructors_2.nationality, 
  constructors_1.constructorid, 
  circuits_2.alt, 
  standings_1.date, 
  circuits_1.lat, 
  constructors_2.name, 
  max(
    constructors_2.constructorid)
from 
  standings as standings_1
        inner join constructors as constructors_1
        on (standings_1.driverstandingsid = constructors_1.constructorid )
      inner join standings as standings_2
      on (constructors_1.constructorid = standings_2.driverstandingsid )
    inner join constructors as constructors_2
      inner join circuits as circuits_1
        inner join circuits as circuits_2
        on (circuits_1.circuitid = circuits_2.circuitid )
      on (constructors_2.constructorid = circuits_2.circuitid )
    on (standings_1.driverstandingsid = constructors_2.constructorid )
where standings_2.date < standings_1.date
group by circuits_1.alt, circuits_1.lat, circuits_2.alt, circuits_2.country, constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_2.name, constructors_2.nationality, standings_1.date, standings_1.driverstandingsid, standings_1.points
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.date, 
  standings_1.driverid, 
  standings_1.position, 
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  standings_1.wins, 
  sum(
    standings_1.wins)
from 
  standings as standings_1
where standings_1.points > standings_1.points
group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.position, standings_1.raceid, standings_1.wins
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  min(
    constructor_results_1.date), 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorid, constructor_results_1.raceid
limit 3;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.grid, 
  results_1.milliseconds, 
  results_1.positionorder, 
  min(
    results_1.date), 
  results_1.statusid, 
  results_1.number, 
  avg(
    results_1.position), 
  min(
    results_1.grid)
from 
  results as results_1
where results_1.raceid is not NULL
group by results_1.grid, results_1.milliseconds, results_1.number, results_1.positionorder, results_1.statusid
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
limit 4;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.points
from 
  drivers as drivers_1
        inner join results as results_1
        on (results_1.driverid = drivers_1.driverid )
      inner join constructor_standings as constructor_standings_1
      on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
    inner join constructor_standings as constructor_standings_2
    on (results_1.resultid = constructor_standings_2.constructorstandingsid )
where results_1.points < results_1.position
limit 4;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructor_standings_1.position, 
  drivers_1.driverid, 
  constructor_standings_2.constructorid, 
  constructor_standings_1.constructorid
from 
  drivers as drivers_1
    inner join constructors as constructors_1
        inner join constructor_standings as constructor_standings_1
        on (constructor_standings_1.constructorid = constructors_1.constructorid )
      inner join constructor_standings as constructor_standings_2
      on (constructor_standings_2.constructorid = constructors_1.constructorid )
    on (drivers_1.driverid = constructors_1.constructorid )
where constructor_standings_2.wins < constructor_standings_2.raceid
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    results_1.date), 
  results_1.driverid
from 
  results as results_1
where results_1.points is not NULL
group by results_1.driverid
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.driverid > drivers_1.driverid
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select distinct 
  constructors_1.constructorref, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 1;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name
from 
  results as results_1
      inner join standings as standings_1
      on (results_1.resultid = standings_1.driverstandingsid )
    inner join circuits as circuits_1
    on (results_1.resultid = circuits_1.circuitid )
where standings_1.wins is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.position, 
  results_1.raceid
from 
  results as results_1
where results_1.date > results_1.date
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year, 
  races_1.circuitid
from 
  races as races_1
where races_1.time > races_1.name
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.position, 
  races_1.date
from 
  results as results_1
    inner join races as races_1
    on (results_1.raceid = races_1.raceid )
where races_1.round is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt, 
  circuits_1.circuitref, 
  avg(
    circuits_1.circuitid), 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.circuitref > circuits_1.location
group by circuits_1.alt, circuits_1.circuitref, circuits_1.name
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.time, 
  races_1.circuitid, 
  races_1.round, 
  races_1.year, 
  races_1.date, 
  max(
    races_1.raceid)
from 
  races as races_1
where races_1.time < races_1.name
group by races_1.circuitid, races_1.date, races_1.round, races_1.time, races_1.year
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverstandingsid, 
  qualifying_1.driverid, 
  qualifying_1.position
from 
  qualifying as qualifying_1
    inner join standings as standings_1
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where qualifying_1.qualifyid is not NULL
limit 3;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_2.laps, 
  results_1.driverid, 
  results_1.raceid, 
  results_2.resultid, 
  results_1.milliseconds, 
  results_2.fastestlap, 
  min(
    results_1.milliseconds), 
  results_1.constructorid, 
  results_2.statusid
from 
  results as results_1
    inner join results as results_2
    on (results_1.resultid = results_2.resultid )
where results_1.rank = results_2.rank
group by results_1.constructorid, results_1.driverid, results_1.milliseconds, results_1.raceid, results_2.fastestlap, results_2.laps, results_2.resultid, results_2.statusid
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.round
from 
  results as results_1
    inner join races as races_1
    on (results_1.raceid = races_1.raceid )
where races_1.name < races_1.time
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.driverid, 
  results_1.position, 
  results_1.laps, 
  sum(
    results_1.positionorder), 
  results_1.milliseconds, 
  avg(
    results_1.raceid), 
  results_1.date, 
  results_1.grid
from 
  results as results_1
where results_1.raceid is not NULL
group by results_1.date, results_1.driverid, results_1.grid, results_1.laps, results_1.milliseconds, results_1.position
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location, 
  circuits_1.country, 
  circuits_1.name, 
  min(
    circuits_1.circuitid), 
  circuits_1.lng, 
  circuits_1.circuitid, 
  circuits_1.lat
from 
  circuits as circuits_1
where circuits_1.alt < circuits_1.lng
group by circuits_1.circuitid, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.location, circuits_1.name
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref, 
  circuits_1.country, 
  circuits_1.name, 
  avg(
    circuits_1.lng), 
  circuits_1.circuitid, 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.country is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.name
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  max(
    constructor_results_1.constructorid)
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt, 
  circuits_1.location, 
  circuits_1.circuitid, 
  circuits_1.lat
from 
  circuits as circuits_1
where circuits_1.name is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.name, 
  min(
    constructors_1.constructorid), 
  constructors_1.constructorref, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    standings_1.driverstandingsid)
from 
  standings as standings_1
where standings_1.date > standings_1.date
limit 4;
-- meta {"num_joins":5,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_2.name, 
  constructors_1.name, 
  qualifying_2.qualifyid, 
  circuits_1.alt, 
  drivers_1.nationality, 
  constructors_1.nationality, 
  qualifying_2.driverid, 
  qualifying_2.date, 
  min(
    qualifying_1.position)
from 
  constructors as constructors_1
        inner join constructors as constructors_2
        on (constructors_1.constructorid = constructors_2.constructorid )
      inner join qualifying as qualifying_1
      on (qualifying_1.constructorid = constructors_1.constructorid )
    inner join drivers as drivers_1
      inner join qualifying as qualifying_2
        inner join circuits as circuits_1
        on (qualifying_2.qualifyid = circuits_1.circuitid )
      on (drivers_1.driverid = circuits_1.circuitid )
    on (constructors_2.constructorid = circuits_1.circuitid )
where constructors_2.constructorref is not NULL
group by circuits_1.alt, constructors_1.name, constructors_1.nationality, constructors_2.name, drivers_1.nationality, qualifying_2.date, qualifying_2.driverid, qualifying_2.qualifyid
limit 1;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  constructor_standings_1.points
from 
  circuits as circuits_1
    inner join constructor_results as constructor_results_1
      inner join constructor_standings as constructor_standings_1
      on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
    on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.points <= circuits_1.alt
limit 1;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  circuits_1.circuitid, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
      inner join races as races_1
      on (constructor_results_1.raceid = races_1.raceid )
    inner join circuits as circuits_1
      inner join constructor_results as constructor_results_2
      on (circuits_1.circuitid = constructor_results_2.constructorresultsid )
    on (races_1.circuitid = circuits_1.circuitid )
where races_1.circuitid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number, 
  qualifying_1.qualifyid, 
  min(
    qualifying_1.date), 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.date <= qualifying_1.date
group by qualifying_1.number, qualifying_1.qualifyid, qualifying_1.raceid
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.driverid, 
  constructor_results_1.date, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
    inner join results as results_1
    on (constructor_results_1.constructorresultsid = results_1.resultid )
where results_1.fastestlap is not NULL
limit 2;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    circuits_1.lat), 
  qualifying_1.raceid, 
  max(
    qualifying_1.number), 
  qualifying_1.date, 
  circuits_1.location
from 
  circuits as circuits_1
    inner join constructor_results as constructor_results_1
      inner join qualifying as qualifying_1
      on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
    on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
where circuits_1.location is not NULL
group by circuits_1.location, qualifying_1.date, qualifying_1.raceid
limit 3;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.raceid, 
  drivers_1.driverid, 
  constructors_1.constructorref, 
  drivers_1.code, 
  races_1.circuitid, 
  races_1.name, 
  min(
    races_1.date), 
  races_1.date, 
  constructors_1.name, 
  drivers_1.nationality
from 
  drivers as drivers_1
      inner join constructors as constructors_1
      on (drivers_1.driverid = constructors_1.constructorid )
    inner join races as races_1
    on (drivers_1.driverid = races_1.raceid )
where drivers_1.driverref is not NULL
group by constructors_1.constructorref, constructors_1.name, drivers_1.code, drivers_1.driverid, drivers_1.nationality, races_1.circuitid, races_1.date, races_1.name, races_1.raceid
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number, 
  qualifying_1.date, 
  qualifying_1.driverid, 
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
limit 1;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.position, 
  drivers_1.driverref, 
  max(
    qualifying_1.date), 
  qualifying_1.constructorid, 
  qualifying_1.driverid, 
  qualifying_1.number
from 
  qualifying as qualifying_1
    inner join drivers as drivers_1
    on (qualifying_1.driverid = drivers_1.driverid )
where qualifying_1.constructorid is not NULL
group by drivers_1.driverref, qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.number, qualifying_1.position
limit 3;
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location, 
  constructors_1.constructorref, 
  max(
    circuits_1.lat), 
  min(
    circuits_1.circuitid), 
  constructors_1.constructorid, 
  count(*), 
  constructors_1.nationality, 
  circuits_1.lat, 
  circuits_1.lng, 
  circuits_1.country, 
  circuits_1.circuitid, 
  count(
    circuits_1.lng)
from 
  constructors as constructors_1
    inner join circuits as circuits_1
    on (constructors_1.constructorid = circuits_1.circuitid )
where constructors_1.nationality = circuits_1.location
group by circuits_1.circuitid, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.location, constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality
limit 3;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.constructorid, 
  constructor_standings_1.constructorid, 
  constructors_1.constructorid, 
  results_1.statusid
from 
  results as results_1
    inner join constructors as constructors_1
      inner join constructor_standings as constructor_standings_1
      on (constructor_standings_1.constructorid = constructors_1.constructorid )
    on (results_1.resultid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.constructorstandingsid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid, 
  min(
    standings_1.points), 
  standings_1.position, 
  standings_1.date, 
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.driverid is not NULL
group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.position
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points = constructor_standings_1.points
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt, 
  circuits_1.lng, 
  count(*), 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.name is not NULL
group by circuits_1.alt, circuits_1.lng, circuits_1.name
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.points, 
  standings_1.driverid, 
  standings_1.wins, 
  avg(
    standings_1.wins), 
  standings_1.date
from 
  standings as standings_1
where standings_1.position < standings_1.driverstandingsid
group by standings_1.date, standings_1.driverid, standings_1.points, standings_1.wins
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  avg(
    constructor_standings_1.points)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date <= constructor_standings_1.date
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.raceid
limit 2;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt, 
  qualifying_1.constructorid, 
  constructors_1.constructorid, 
  qualifying_2.date, 
  circuits_1.circuitref, 
  qualifying_2.number, 
  drivers_1.forename
from 
  circuits as circuits_1
      inner join drivers as drivers_1
        inner join constructors as constructors_1
        on (drivers_1.driverid = constructors_1.constructorid )
      on (circuits_1.circuitid = constructors_1.constructorid )
    inner join qualifying as qualifying_1
      inner join qualifying as qualifying_2
      on (qualifying_1.qualifyid = qualifying_2.qualifyid )
    on (qualifying_1.driverid = drivers_1.driverid )
where qualifying_2.raceid is not NULL
limit 3;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name, 
  qualifying_1.position
from 
  constructors as constructors_1
      inner join constructor_results as constructor_results_1
      on (constructor_results_1.constructorid = constructors_1.constructorid )
    inner join qualifying as qualifying_1
    on (qualifying_1.constructorid = constructors_1.constructorid )
where constructor_results_1.points = constructor_results_1.points
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
    inner join drivers as drivers_1
    on (constructor_results_1.constructorresultsid = drivers_1.driverid )
where constructor_results_1.constructorresultsid is not NULL
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref, 
  circuits_1.lat, 
  circuits_1.lng, 
  circuits_1.circuitid
from 
  constructor_results as constructor_results_1
    inner join circuits as circuits_1
    on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
where circuits_1.circuitid is not NULL
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitid
from 
  circuits as circuits_1
    inner join races as races_1
    on (races_1.circuitid = circuits_1.circuitid )
where races_1.date < races_1.date
limit 4;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  max(
    constructor_results_1.points)
from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorid
limit 3;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year, 
  max(
    races_1.date), 
  races_1.round, 
  races_1.date, 
  races_1.name, 
  races_1.time, 
  count(
    races_1.raceid), 
  races_1.circuitid, 
  max(
    races_1.date)
from 
  races as races_1
where races_1.name is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.round, races_1.time, races_1.year
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date > constructor_standings_1.date
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number, 
  qualifying_1.qualifyid, 
  sum(
    qualifying_1.driverid), 
  count(
    qualifying_1.constructorid)
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
group by qualifying_1.number, qualifying_1.qualifyid
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  circuits_1.circuitref, 
  standings_1.date, 
  standings_1.wins, 
  standings_1.driverid, 
  circuits_1.alt, 
  circuits_1.country
from 
  standings as standings_1
    inner join circuits as circuits_1
    on (standings_1.driverstandingsid = circuits_1.circuitid )
where standings_1.raceid is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
    inner join circuits as circuits_1
    on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
where circuits_1.name is not NULL
limit 2;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_2.fastestlap, 
  results_2.positionorder
from 
  results as results_1
      inner join standings as standings_1
      on (results_1.resultid = standings_1.driverstandingsid )
    inner join results as results_2
    on (standings_1.driverstandingsid = results_2.resultid )
where results_1.driverid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  standings_1.driverstandingsid, 
  standings_1.wins
from 
  standings as standings_1
where standings_1.date is not NULL
limit 1;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverid, 
  count(*), 
  drivers_1.driverref, 
  races_1.name, 
  constructor_results_1.raceid, 
  drivers_1.code
from 
  constructor_results as constructor_results_1
        inner join constructors as constructors_1
          inner join constructor_results as constructor_results_2
          on (constructor_results_2.constructorid = constructors_1.constructorid )
        on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
      inner join drivers as drivers_1
      on (constructor_results_1.constructorresultsid = drivers_1.driverid )
    inner join races as races_1
    on (constructor_results_1.raceid = races_1.raceid )
where constructors_1.constructorid is not NULL
group by constructor_results_1.raceid, drivers_1.code, drivers_1.driverid, drivers_1.driverref, races_1.name
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    qualifying_1.date), 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
group by qualifying_1.date
limit 2;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year, 
  races_1.round, 
  min(
    races_1.date), 
  count(*), 
  min(
    races_1.date), 
  races_1.circuitid, 
  races_1.date, 
  races_1.time, 
  min(
    races_1.date), 
  races_1.raceid, 
  races_1.name, 
  max(
    races_1.circuitid)
from 
  races as races_1
where races_1.round is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 3;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    drivers_1.dob)
from 
  circuits as circuits_1
    inner join drivers as drivers_1
    on (circuits_1.circuitid = drivers_1.driverid )
where circuits_1.country is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.forename is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid, 
  races_1.date, 
  min(
    races_1.circuitid), 
  max(
    races_1.date), 
  races_1.raceid, 
  races_1.name, 
  races_1.year, 
  races_1.time
from 
  races as races_1
where races_1.date is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.time, races_1.year
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.position, 
  constructor_standings_1.constructorid, 
  drivers_1.code, 
  drivers_1.driverref
from 
  drivers as drivers_1
    inner join constructor_standings as constructor_standings_1
    on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
where drivers_1.forename is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.date, 
  results_1.rank, 
  results_1.statusid, 
  max(
    results_1.date), 
  results_1.position, 
  results_1.positionorder, 
  results_1.grid, 
  results_1.number, 
  min(
    results_1.points), 
  min(
    results_1.grid)
from 
  results as results_1
where results_1.positionorder is not NULL
group by results_1.date, results_1.grid, results_1.number, results_1.position, results_1.positionorder, results_1.rank, results_1.statusid
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
limit 3;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    standings_1.points), 
  constructors_1.constructorref, 
  max(
    standings_1.date), 
  standings_1.driverstandingsid, 
  constructors_1.constructorid
from 
  constructors as constructors_1
    inner join standings as standings_1
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where constructors_1.constructorid is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, standings_1.driverstandingsid
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.points, 
  standings_1.raceid, 
  min(
    standings_1.date), 
  standings_1.position
from 
  standings as standings_1
where standings_1.raceid >= standings_1.position
group by standings_1.points, standings_1.position, standings_1.raceid
limit 2;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  standings_1.driverid, 
  qualifying_1.constructorid
from 
  constructor_results as constructor_results_1
    inner join qualifying as qualifying_1
      inner join standings as standings_1
      on (qualifying_1.qualifyid = standings_1.driverstandingsid )
    on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
where standings_1.date is not NULL
limit 1;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    standings_1.points), 
  constructor_standings_1.raceid, 
  min(
    standings_1.points), 
  standings_1.wins
from 
  constructor_standings as constructor_standings_1
    inner join standings as standings_1
    on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
where constructor_standings_1.raceid is not NULL
group by constructor_standings_1.raceid, standings_1.wins
limit 4;
-- meta {"num_joins":4,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    qualifying_1.number), 
  qualifying_1.date, 
  results_1.rank, 
  circuits_1.name, 
  qualifying_1.number, 
  results_3.grid, 
  results_1.milliseconds, 
  circuits_1.circuitid, 
  qualifying_1.raceid, 
  circuits_1.lat, 
  avg(
    results_3.rank), 
  results_2.laps, 
  circuits_1.circuitref, 
  results_3.constructorid, 
  results_3.statusid, 
  results_2.number, 
  qualifying_1.driverid, 
  qualifying_1.position, 
  avg(
    results_2.points)
from 
  results as results_1
    inner join circuits as circuits_1
      inner join qualifying as qualifying_1
        inner join results as results_2
          inner join results as results_3
          on (results_2.resultid = results_3.resultid )
        on (qualifying_1.qualifyid = results_2.resultid )
      on (circuits_1.circuitid = results_3.resultid )
    on (results_1.resultid = results_2.resultid )
where circuits_1.circuitref >= circuits_1.country
group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.lat, circuits_1.name, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.raceid, results_1.milliseconds, results_1.rank, results_2.laps, results_2.number, results_3.constructorid, results_3.grid, results_3.statusid
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.points, 
  standings_1.driverstandingsid, 
  max(
    standings_1.raceid), 
  standings_1.position, 
  standings_1.driverid, 
  sum(
    standings_1.wins)
from 
  standings as standings_1
where standings_1.wins is not NULL
group by standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins, 
  standings_1.position, 
  standings_1.date, 
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.date <= standings_1.date
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt, 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
limit 1;
-- meta {"num_joins":3,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_2.laps, 
  constructor_standings_1.position, 
  results_2.grid, 
  count(
    results_1.points), 
  count(
    constructor_standings_2.points), 
  constructor_standings_2.date, 
  constructor_standings_2.wins, 
  count(
    results_1.rank), 
  constructor_standings_1.constructorstandingsid, 
  results_1.statusid, 
  results_2.raceid, 
  constructor_standings_2.raceid
from 
  results as results_1
      inner join results as results_2
        inner join constructor_standings as constructor_standings_1
        on (results_2.resultid = constructor_standings_1.constructorstandingsid )
      on (results_1.resultid = constructor_standings_1.constructorstandingsid )
    inner join constructor_standings as constructor_standings_2
    on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
where constructor_standings_1.position is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.position, constructor_standings_2.date, constructor_standings_2.raceid, constructor_standings_2.wins, results_1.statusid, results_2.grid, results_2.laps, results_2.raceid
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.time
from 
  races as races_1
where races_1.date is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  avg(
    constructor_results_1.points), 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    qualifying_1.number), 
  qualifying_1.driverid, 
  qualifying_1.number, 
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
group by qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    standings_1.points), 
  standings_1.driverstandingsid, 
  standings_1.points, 
  standings_1.date, 
  standings_1.wins
from 
  standings as standings_1
where standings_1.wins is not NULL
group by standings_1.date, standings_1.driverstandingsid, standings_1.points, standings_1.wins
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  min(
    constructor_results_1.date), 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  max(
    constructor_results_1.date)
from 
  constructor_results as constructor_results_1
where constructor_results_1.points <= constructor_results_1.points
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.raceid
limit 4;
-- meta {"num_joins":4,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    qualifying_1.date), 
  avg(
    circuits_1.alt), 
  qualifying_1.qualifyid, 
  races_2.round, 
  races_2.date, 
  qualifying_1.position
from 
  races as races_1
          inner join circuits as circuits_1
          on (races_1.circuitid = circuits_1.circuitid )
        inner join constructor_results as constructor_results_1
        on (constructor_results_1.raceid = races_1.raceid )
      inner join races as races_2
      on (constructor_results_1.raceid = races_2.raceid )
    inner join qualifying as qualifying_1
    on (qualifying_1.raceid = races_1.raceid )
where constructor_results_1.date is not NULL
group by qualifying_1.position, qualifying_1.qualifyid, races_2.date, races_2.round
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.date
from 
  standings as standings_1
    inner join drivers as drivers_1
    on (standings_1.driverid = drivers_1.driverid )
where drivers_1.nationality is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.positionorder, 
  results_1.resultid
from 
  results as results_1
where results_1.positionorder is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins
from 
  standings as standings_1
where standings_1.points is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    results_1.date), 
  results_1.raceid, 
  circuits_1.lat, 
  results_1.milliseconds
from 
  results as results_1
    inner join circuits as circuits_1
    on (results_1.resultid = circuits_1.circuitid )
where circuits_1.circuitref is not NULL
group by circuits_1.lat, results_1.milliseconds, results_1.raceid
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    constructor_results_1.constructorid), 
  min(
    constructor_results_1.constructorid), 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 1;
-- meta {"num_joins":6,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    circuits_3.circuitid), 
  constructor_results_1.raceid, 
  circuits_1.location, 
  results_1.date
from 
  circuits as circuits_1
        inner join races as races_1
        on (races_1.circuitid = circuits_1.circuitid )
      inner join constructor_results as constructor_results_1
      on (constructor_results_1.raceid = races_1.raceid )
    inner join constructor_standings as constructor_standings_1
        inner join results as results_1
        on (constructor_standings_1.constructorstandingsid = results_1.resultid )
      inner join circuits as circuits_2
        inner join circuits as circuits_3
        on (circuits_2.circuitid = circuits_3.circuitid )
      on (results_1.resultid = circuits_3.circuitid )
    on (results_1.raceid = races_1.raceid )
where circuits_2.alt is not NULL
group by circuits_1.location, constructor_results_1.raceid, results_1.date
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.points, 
  standings_1.position, 
  standings_1.wins, 
  standings_1.raceid, 
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  max(
    standings_1.date)
from 
  standings as standings_1
where standings_1.driverid < standings_1.wins
group by standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
limit 2;
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name, 
  circuits_1.location, 
  constructors_1.constructorref, 
  max(
    constructors_1.constructorid), 
  max(
    circuits_1.lng), 
  avg(
    circuits_1.alt), 
  sum(
    circuits_1.lng)
from 
  constructors as constructors_1
    inner join circuits as circuits_1
    on (constructors_1.constructorid = circuits_1.circuitid )
where circuits_1.lat > circuits_1.lng
group by circuits_1.location, circuits_1.name, constructors_1.constructorref
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lng, 
  circuits_1.lat
from 
  circuits as circuits_1
where circuits_1.name is not NULL
limit 3;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.rank, 
  drivers_1.nationality, 
  drivers_1.driverref, 
  drivers_1.dob, 
  results_2.fastestlap, 
  results_2.number
from 
  results as results_1
      inner join results as results_2
      on (results_1.resultid = results_2.resultid )
    inner join drivers as drivers_1
    on (results_2.driverid = drivers_1.driverid )
where drivers_1.code > drivers_1.forename
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  qualifying_1.raceid, 
  qualifying_1.number, 
  min(
    qualifying_1.date), 
  qualifying_1.qualifyid, 
  qualifying_1.position, 
  qualifying_1.constructorid, 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.date < qualifying_1.date
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 1;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  count(
    constructor_standings_1.points), 
  avg(
    constructor_standings_1.points), 
  constructor_standings_1.points, 
  max(
    constructor_standings_1.date), 
  constructors_1.constructorid, 
  constructor_standings_1.date, 
  constructors_1.constructorref, 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
    inner join constructors as constructors_1
    on (constructor_standings_1.constructorid = constructors_1.constructorid )
where constructor_standings_1.date = constructor_standings_1.date
group by constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.wins, constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.position, 
  min(
    qualifying_1.date), 
  qualifying_1.raceid, 
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
group by qualifying_1.number, qualifying_1.position, qualifying_1.raceid
limit 4;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.raceid
from 
  standings as standings_1
    inner join constructor_standings as constructor_standings_1
      inner join qualifying as qualifying_1
      on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
    on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
where standings_1.wins is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.constructorid, 
  qualifying_1.date, 
  qualifying_1.raceid, 
  min(
    qualifying_1.date)
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.raceid
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  qualifying_1.driverid, 
  max(
    qualifying_1.date)
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.qualifyid
limit 1;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins, 
  constructor_standings_2.constructorstandingsid, 
  constructor_standings_2.constructorid, 
  max(
    standings_1.date), 
  constructor_standings_1.wins, 
  constructor_standings_2.date, 
  min(
    constructor_standings_2.date)
from 
  constructor_standings as constructor_standings_1
    inner join standings as standings_1
      inner join constructor_standings as constructor_standings_2
      on (standings_1.driverstandingsid = constructor_standings_2.constructorstandingsid )
    on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
where constructor_standings_1.date is not NULL
group by constructor_standings_1.wins, constructor_standings_2.constructorid, constructor_standings_2.constructorstandingsid, constructor_standings_2.date, standings_1.wins
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.raceid is not NULL
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name
from 
  constructors as constructors_1
    inner join circuits as circuits_1
    on (constructors_1.constructorid = circuits_1.circuitid )
where constructors_1.name is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.raceid, 
  races_1.round, 
  max(
    races_1.date), 
  races_1.time, 
  races_1.name
from 
  races as races_1
where races_1.date >= races_1.date
group by races_1.name, races_1.raceid, races_1.round, races_1.time
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name
from 
  drivers as drivers_1
    inner join circuits as circuits_1
    on (drivers_1.driverid = circuits_1.circuitid )
where drivers_1.nationality is not NULL
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  constructor_standings_1.constructorid, 
  constructor_results_1.date, 
  constructor_standings_1.raceid
from 
  constructor_results as constructor_results_1
    inner join constructor_standings as constructor_standings_1
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where constructor_results_1.points is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.date, 
  races_1.year
from 
  races as races_1
where races_1.round is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitid, 
  circuits_1.country, 
  circuits_1.lng, 
  circuits_1.lat, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
limit 1;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    drivers_1.dob), 
  qualifying_1.position
from 
  constructor_standings as constructor_standings_1
        inner join qualifying as qualifying_1
        on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
      inner join results as results_1
      on (constructor_standings_1.constructorstandingsid = results_1.resultid )
    inner join drivers as drivers_1
    on (results_1.driverid = drivers_1.driverid )
where drivers_1.code >= drivers_1.surname
group by qualifying_1.position
limit 3;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.date
from 
  constructors as constructors_1
    inner join standings as standings_1
      inner join constructor_standings as constructor_standings_1
      on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where constructor_standings_1.constructorid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  min(
    constructor_results_1.date), 
  max(
    constructor_results_1.constructorid)
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    qualifying_1.qualifyid), 
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  min(
    qualifying_1.number)
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
group by qualifying_1.position, qualifying_1.qualifyid
limit 1;
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location, 
  qualifying_1.constructorid, 
  circuits_1.country, 
  circuits_1.circuitref, 
  qualifying_1.number, 
  count(*), 
  circuits_1.alt, 
  min(
    circuits_1.lat), 
  circuits_1.circuitid, 
  circuits_1.lat, 
  qualifying_1.raceid, 
  max(
    circuits_1.alt), 
  qualifying_1.date, 
  circuits_1.name, 
  min(
    qualifying_1.driverid), 
  qualifying_1.driverid, 
  qualifying_1.position
from 
  circuits as circuits_1
    inner join qualifying as qualifying_1
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where circuits_1.country is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.location, circuits_1.name, qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.raceid
limit 4;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    results_1.fastestlap), 
  constructors_1.constructorid
from 
  constructors as constructors_1
    inner join results as results_1
    on (results_1.constructorid = constructors_1.constructorid )
where results_1.milliseconds is not NULL
group by constructors_1.constructorid
limit 1;
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.raceid, 
  avg(
    results_1.milliseconds), 
  results_1.raceid, 
  constructor_standings_1.position, 
  max(
    results_1.date), 
  constructor_standings_1.constructorid, 
  min(
    results_1.fastestlap), 
  results_1.date, 
  constructor_standings_1.date, 
  constructor_standings_1.points, 
  results_1.fastestlap, 
  results_1.milliseconds, 
  results_1.position, 
  constructor_standings_1.constructorstandingsid, 
  results_1.driverid, 
  constructor_standings_1.wins, 
  results_1.resultid, 
  results_1.grid, 
  count(*), 
  results_1.positionorder
from 
  results as results_1
    inner join constructor_standings as constructor_standings_1
    on (results_1.resultid = constructor_standings_1.constructorstandingsid )
where results_1.position is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins, results_1.date, results_1.driverid, results_1.fastestlap, results_1.grid, results_1.milliseconds, results_1.position, results_1.positionorder, results_1.raceid, results_1.resultid
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.dob, 
  count(
    drivers_1.forename), 
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
group by drivers_1.dob, drivers_1.forename
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    qualifying_1.date), 
  qualifying_1.constructorid, 
  qualifying_1.date, 
  qualifying_1.position, 
  min(
    qualifying_1.qualifyid)
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.position
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.date, 
  races_1.name
from 
  races as races_1
where races_1.year < races_1.raceid
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  avg(
    constructor_results_1.points), 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  max(
    constructor_results_1.raceid)
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 3;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date
from 
  constructor_standings as constructor_standings_1
      inner join qualifying as qualifying_1
      on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
    inner join constructor_results as constructor_results_1
    on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
where constructor_standings_1.points = constructor_results_1.points
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.position, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date <= constructor_standings_1.date
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  max(
    constructor_results_1.constructorresultsid), 
  max(
    constructor_results_1.date), 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid = constructor_results_1.constructorresultsid
group by constructor_results_1.constructorresultsid, constructor_results_1.date
limit 1;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref
from 
  results as results_1
      inner join constructor_standings as constructor_standings_1
      on (results_1.resultid = constructor_standings_1.constructorstandingsid )
    inner join drivers as drivers_1
    on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
where drivers_1.nationality is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lat, 
  circuits_1.alt, 
  circuits_1.circuitref, 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.forename, 
  drivers_1.driverref, 
  drivers_1.dob, 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructors_1.constructorid), 
  constructors_1.nationality, 
  constructors_1.name, 
  avg(
    constructors_1.constructorid), 
  max(
    constructors_1.constructorid), 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 2;
-- meta {"num_joins":1,"num_aggregates":7,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructor_results_1.date), 
  constructor_results_1.constructorresultsid, 
  standings_1.points, 
  count(
    standings_1.driverstandingsid), 
  min(
    constructor_results_1.date), 
  standings_1.driverid, 
  standings_1.position, 
  max(
    constructor_results_1.points), 
  min(
    constructor_results_1.date), 
  min(
    constructor_results_1.date), 
  max(
    standings_1.date), 
  standings_1.wins
from 
  constructor_results as constructor_results_1
    inner join standings as standings_1
    on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorresultsid, standings_1.driverid, standings_1.points, standings_1.position, standings_1.wins
limit 1;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.date, 
  constructor_results_1.points, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  max(
    constructor_results_1.points), 
  races_1.round
from 
  constructor_results as constructor_results_1
    inner join races as races_1
    on (constructor_results_1.raceid = races_1.raceid )
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.points, races_1.date, races_1.round
limit 3;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid
from 
  races as races_1
        inner join drivers as drivers_1
          inner join races as races_2
          on (drivers_1.driverid = races_2.raceid )
        on (races_1.raceid = races_2.raceid )
      inner join results as results_1
      on (results_1.raceid = races_1.raceid )
    inner join circuits as circuits_1
    on (races_1.circuitid = circuits_1.circuitid )
where drivers_1.dob is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lat, 
  avg(
    circuits_1.circuitid), 
  count(
    circuits_1.circuitref), 
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.name is not NULL
group by circuits_1.circuitref, circuits_1.lat
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year, 
  races_1.raceid, 
  max(
    races_1.date), 
  races_1.time, 
  races_1.date, 
  races_1.name, 
  sum(
    races_1.year), 
  races_1.circuitid, 
  count(
    races_1.year), 
  races_1.round
from 
  races as races_1
where races_1.year is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 4;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  races_1.date, 
  constructors_1.name
from 
  constructor_results as constructor_results_1
    inner join constructors as constructors_1
      inner join races as races_1
      on (constructors_1.constructorid = races_1.raceid )
    on (constructor_results_1.raceid = races_1.raceid )
where constructor_results_1.date = races_1.date
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.rank, 
  results_1.resultid, 
  results_1.points, 
  results_1.driverid
from 
  results as results_1
where results_1.points is not NULL
limit 4;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.dob
from 
  standings as standings_1
      inner join qualifying as qualifying_1
        inner join constructor_results as constructor_results_1
        on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
      on (standings_1.driverstandingsid = qualifying_1.qualifyid )
    inner join drivers as drivers_1
    on (standings_1.driverid = drivers_1.driverid )
where drivers_1.driverid <= standings_1.raceid
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins, 
  qualifying_1.date, 
  standings_1.driverstandingsid, 
  standings_1.position, 
  standings_1.raceid, 
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  qualifying_1.driverid, 
  standings_1.driverid, 
  standings_1.points
from 
  standings as standings_1
    inner join qualifying as qualifying_1
    on (standings_1.driverstandingsid = qualifying_1.qualifyid )
where standings_1.wins is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.code, 
  max(
    drivers_1.driverid), 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
group by drivers_1.code, drivers_1.surname
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  avg(
    constructor_results_1.constructorresultsid), 
  constructor_results_1.date, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.raceid
limit 1;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_2.date, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
      inner join circuits as circuits_1
        inner join constructor_results as constructor_results_2
        on (circuits_1.circuitid = constructor_results_2.constructorresultsid )
      on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
    inner join qualifying as qualifying_1
    on (constructor_results_2.constructorresultsid = qualifying_1.qualifyid )
where qualifying_1.constructorid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.raceid > qualifying_1.constructorid
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid, 
  standings_1.date, 
  standings_1.raceid, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
    inner join standings as standings_1
    on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
where constructor_results_1.constructorresultsid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.resultid, 
  results_1.statusid, 
  results_1.rank, 
  results_1.constructorid, 
  results_1.number, 
  results_1.grid, 
  avg(
    results_1.rank)
from 
  results as results_1
where results_1.rank is not NULL
group by results_1.constructorid, results_1.grid, results_1.number, results_1.rank, results_1.resultid, results_1.statusid
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    qualifying_1.date)
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.points, 
  standings_1.wins, 
  standings_1.raceid, 
  standings_1.driverstandingsid, 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.raceid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.points, 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points > constructor_standings_1.points
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.points
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location, 
  min(
    circuits_1.lng), 
  sum(
    circuits_1.circuitid), 
  circuits_1.lat, 
  circuits_1.circuitid, 
  circuits_1.country, 
  circuits_1.name, 
  circuits_1.circuitref, 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.location, circuits_1.name
limit 2;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    qualifying_1.date), 
  qualifying_1.number, 
  qualifying_1.driverid, 
  min(
    qualifying_1.date), 
  qualifying_1.constructorid, 
  min(
    qualifying_1.date), 
  count(
    qualifying_1.qualifyid), 
  qualifying_1.position, 
  count(*), 
  qualifying_1.date, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid, 
  avg(
    standings_1.wins), 
  standings_1.points, 
  standings_1.date
from 
  standings as standings_1
where standings_1.date = standings_1.date
group by standings_1.date, standings_1.driverid, standings_1.points
limit 4;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid, 
  max(
    races_1.round), 
  races_1.time
from 
  qualifying as qualifying_1
    inner join races as races_1
    on (qualifying_1.raceid = races_1.raceid )
where races_1.time >= races_1.name
group by qualifying_1.driverid, races_1.time
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.fastestlap, 
  results_1.rank, 
  results_1.grid, 
  sum(
    results_1.fastestlap), 
  results_1.positionorder, 
  min(
    results_1.laps), 
  results_1.laps
from 
  results as results_1
where results_1.milliseconds is not NULL
group by results_1.fastestlap, results_1.grid, results_1.laps, results_1.positionorder, results_1.rank
limit 3;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
    inner join circuits as circuits_1
      inner join results as results_1
        inner join standings as standings_1
        on (results_1.resultid = standings_1.driverstandingsid )
      on (circuits_1.circuitid = standings_1.driverstandingsid )
    on (constructor_results_1.constructorresultsid = results_1.resultid )
where circuits_1.alt is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.nationality, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.code is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.qualifyid, 
  qualifying_1.date, 
  min(
    qualifying_1.date)
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.date, qualifying_1.qualifyid
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number, 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.positionorder
from 
  results as results_1
where results_1.number is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  qualifying_1.raceid, 
  qualifying_1.number, 
  sum(
    qualifying_1.position), 
  qualifying_1.qualifyid, 
  constructors_1.constructorid, 
  constructors_1.name, 
  qualifying_1.driverid, 
  max(
    qualifying_1.date), 
  min(
    qualifying_1.date), 
  qualifying_1.constructorid, 
  count(
    qualifying_1.constructorid)
from 
  constructors as constructors_1
    inner join qualifying as qualifying_1
    on (qualifying_1.constructorid = constructors_1.constructorid )
where qualifying_1.date is not NULL
group by constructors_1.constructorid, constructors_1.name, qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.qualifyid, qualifying_1.raceid
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.points, 
  qualifying_1.number, 
  qualifying_1.driverid, 
  qualifying_1.position, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
    inner join constructor_standings as constructor_standings_1
    on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.position > qualifying_1.raceid
limit 2;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year, 
  races_1.name, 
  circuits_1.circuitid, 
  circuits_1.lng, 
  min(
    races_1.date)
from 
  circuits as circuits_1
    inner join races as races_1
    on (races_1.circuitid = circuits_1.circuitid )
where races_1.date > races_1.date
group by circuits_1.circuitid, circuits_1.lng, races_1.name, races_1.year
limit 3;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number, 
  qualifying_1.constructorid, 
  constructor_results_2.constructorid, 
  constructor_results_1.raceid, 
  qualifying_1.position, 
  constructor_results_2.date
from 
  qualifying as qualifying_1
    inner join constructor_results as constructor_results_1
      inner join constructor_results as constructor_results_2
        inner join constructor_standings as constructor_standings_1
        on (constructor_results_2.constructorresultsid = constructor_standings_1.constructorstandingsid )
      on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
    on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
where constructor_results_2.constructorid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins, 
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.date is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    standings_1.points), 
  standings_1.driverid, 
  count(
    standings_1.wins), 
  standings_1.driverstandingsid, 
  count(*), 
  standings_1.date, 
  standings_1.points, 
  standings_1.wins
from 
  standings as standings_1
where standings_1.points = standings_1.points
group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.wins
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid
from 
  circuits as circuits_1
    inner join constructor_results as constructor_results_1
    on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
where circuits_1.country is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  standings_1.driverid, 
  standings_1.position, 
  standings_1.driverstandingsid, 
  standings_1.points
from 
  standings as standings_1
where standings_1.points <= standings_1.points
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.dob, 
  drivers_1.code, 
  drivers_1.forename, 
  drivers_1.nationality, 
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.driverid = drivers_1.driverid
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.code, 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.forename is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.round, 
  races_1.time, 
  races_1.circuitid
from 
  races as races_1
where races_1.name > races_1.time
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.qualifyid, 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
limit 2;
-- meta {"num_joins":4,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.time, 
  qualifying_1.constructorid, 
  sum(
    constructor_standings_2.points), 
  qualifying_1.qualifyid, 
  qualifying_1.position, 
  max(
    constructor_standings_2.wins), 
  constructor_standings_2.constructorid, 
  races_1.raceid
from 
  constructor_standings as constructor_standings_1
        inner join qualifying as qualifying_1
        on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
      inner join races as races_1
      on (constructor_standings_1.raceid = races_1.raceid )
    inner join constructor_standings as constructor_standings_2
      inner join qualifying as qualifying_2
      on (constructor_standings_2.constructorstandingsid = qualifying_2.qualifyid )
    on (qualifying_1.qualifyid = constructor_standings_2.constructorstandingsid )
where races_1.name is not NULL
group by constructor_standings_2.constructorid, qualifying_1.constructorid, qualifying_1.position, qualifying_1.qualifyid, races_1.raceid, races_1.time
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*)
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid
from 
  races as races_1
where races_1.round is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.raceid, 
  qualifying_1.number, 
  qualifying_1.date, 
  qualifying_1.position, 
  min(
    qualifying_1.driverid)
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
group by qualifying_1.date, qualifying_1.number, qualifying_1.position, qualifying_1.raceid
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  standings_1.wins
from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where standings_1.raceid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  sum(
    constructor_standings_1.constructorstandingsid)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.raceid
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  max(
    constructor_results_1.points), 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid >= constructor_results_1.raceid
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  avg(
    constructor_results_1.constructorresultsid), 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.raceid
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref, 
  circuits_1.circuitid, 
  circuits_1.location, 
  circuits_1.alt, 
  circuits_1.lng, 
  circuits_1.country
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorid >= constructors_1.constructorid
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.raceid, 
  results_1.rank
from 
  results as results_1
where results_1.fastestlap is not NULL
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid
from 
  standings as standings_1
    inner join races as races_1
    on (standings_1.raceid = races_1.raceid )
where standings_1.position >= races_1.year
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.date, 
  races_1.name, 
  races_1.circuitid, 
  races_1.year, 
  races_1.round, 
  max(
    races_1.raceid), 
  min(
    races_1.date)
from 
  races as races_1
where races_1.time is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.round, races_1.year
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    results_1.date), 
  results_1.laps
from 
  results as results_1
where results_1.laps is not NULL
group by results_1.laps
limit 4;
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    results_1.positionorder), 
  results_1.number, 
  results_1.resultid, 
  races_1.round, 
  races_1.time, 
  min(
    races_1.date), 
  min(
    results_1.rank), 
  max(
    results_1.date)
from 
  results as results_1
    inner join races as races_1
    on (results_1.raceid = races_1.raceid )
where results_1.driverid is not NULL
group by races_1.round, races_1.time, results_1.number, results_1.resultid
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.round, 
  races_1.name, 
  max(
    races_1.raceid)
from 
  races as races_1
where races_1.name is not NULL
group by races_1.name, races_1.round
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 4;
-- meta {"num_joins":2,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.date, 
  circuits_1.lat, 
  count(
    races_1.raceid), 
  standings_1.points, 
  circuits_1.circuitid, 
  min(
    standings_1.date), 
  circuits_1.location, 
  standings_1.driverid, 
  min(
    standings_1.points), 
  avg(
    circuits_1.lng)
from 
  circuits as circuits_1
      inner join standings as standings_1
      on (circuits_1.circuitid = standings_1.driverstandingsid )
    inner join races as races_1
    on (standings_1.raceid = races_1.raceid )
where circuits_1.lng < standings_1.points
group by circuits_1.circuitid, circuits_1.lat, circuits_1.location, races_1.date, standings_1.driverid, standings_1.points
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.date, 
  results_1.statusid, 
  results_1.driverid, 
  count(*), 
  results_1.number, 
  results_1.rank, 
  results_1.grid, 
  avg(
    results_1.raceid), 
  results_1.laps, 
  results_1.milliseconds, 
  results_1.points
from 
  results as results_1
where results_1.grid is not NULL
group by results_1.date, results_1.driverid, results_1.grid, results_1.laps, results_1.milliseconds, results_1.number, results_1.points, results_1.rank, results_1.statusid
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position
from 
  standings as standings_1
where standings_1.driverstandingsid < standings_1.driverid
limit 4;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    circuits_2.lat), 
  circuits_2.name
from 
  standings as standings_1
      inner join circuits as circuits_1
      on (standings_1.driverstandingsid = circuits_1.circuitid )
    inner join circuits as circuits_2
    on (standings_1.driverstandingsid = circuits_2.circuitid )
where circuits_2.name is not NULL
group by circuits_2.name
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.raceid, 
  results_1.grid, 
  results_1.positionorder
from 
  results as results_1
where results_1.driverid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.name is not NULL
group by circuits_1.location
limit 4;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date
from 
  standings as standings_1
      inner join qualifying as qualifying_1
      on (standings_1.driverstandingsid = qualifying_1.qualifyid )
    inner join drivers as drivers_1
    on (standings_1.driverid = drivers_1.driverid )
where drivers_1.forename is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.positionorder, 
  results_1.number, 
  results_1.laps, 
  count(
    results_1.rank), 
  results_1.grid, 
  max(
    results_1.fastestlap), 
  avg(
    results_1.resultid)
from 
  results as results_1
where results_1.constructorid is not NULL
group by results_1.grid, results_1.laps, results_1.number, results_1.positionorder
limit 3;
-- meta {"num_joins":5,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  results_1.grid, 
  constructor_results_1.raceid, 
  constructor_results_3.raceid, 
  results_1.statusid, 
  results_1.constructorid, 
  constructor_results_2.points, 
  constructor_results_2.constructorid, 
  standings_1.raceid, 
  count(
    constructor_results_4.points), 
  sum(
    constructor_results_4.points), 
  constructor_results_3.date, 
  constructor_results_2.raceid, 
  count(*)
from 
  standings as standings_1
      inner join constructor_results as constructor_results_1
          inner join constructor_results as constructor_results_2
          on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
        inner join constructor_results as constructor_results_3
        on (constructor_results_1.constructorresultsid = constructor_results_3.constructorresultsid )
      on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
    inner join results as results_1
      inner join constructor_results as constructor_results_4
      on (results_1.resultid = constructor_results_4.constructorresultsid )
    on (constructor_results_1.constructorresultsid = results_1.resultid )
where standings_1.points is not NULL
group by constructor_results_1.points, constructor_results_1.raceid, constructor_results_2.constructorid, constructor_results_2.points, constructor_results_2.raceid, constructor_results_3.date, constructor_results_3.raceid, results_1.constructorid, results_1.grid, results_1.statusid, standings_1.raceid
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.date, 
  races_1.year, 
  races_1.name, 
  races_1.raceid
from 
  races as races_1
where races_1.name is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  min(
    constructors_1.constructorid), 
  sum(
    constructors_1.constructorid), 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.constructorid, constructors_1.constructorref
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number, 
  qualifying_1.position, 
  qualifying_1.raceid, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid, 
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.raceid, 
  races_1.round, 
  min(
    races_1.date), 
  races_1.year, 
  races_1.date, 
  races_1.time, 
  races_1.name, 
  races_1.circuitid
from 
  races as races_1
where races_1.round is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 1;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.country, 
  drivers_1.code, 
  avg(
    standings_2.points)
from 
  standings as standings_1
      inner join drivers as drivers_1
        inner join standings as standings_2
        on (standings_2.driverid = drivers_1.driverid )
      on (standings_1.driverstandingsid = standings_2.driverstandingsid )
    inner join circuits as circuits_1
    on (drivers_1.driverid = circuits_1.circuitid )
where drivers_1.forename is not NULL
group by circuits_1.country, drivers_1.code
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid < constructor_standings_1.wins
group by constructor_standings_1.constructorid
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  max(
    constructors_1.constructorid), 
  constructors_1.name, 
  constructors_1.constructorref, 
  count(*), 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 2;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt, 
  qualifying_1.driverid, 
  circuits_1.circuitid, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  circuits_1.lat, 
  qualifying_1.position
from 
  constructor_results as constructor_results_1
      inner join circuits as circuits_1
      on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
    inner join qualifying as qualifying_1
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where circuits_1.name <= circuits_1.circuitref
limit 3;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    results_1.position), 
  results_1.milliseconds, 
  constructors_1.nationality
from 
  races as races_1
    inner join results as results_1
      inner join constructors as constructors_1
        inner join circuits as circuits_1
        on (constructors_1.constructorid = circuits_1.circuitid )
      on (results_1.constructorid = constructors_1.constructorid )
    on (results_1.raceid = races_1.raceid )
where results_1.positionorder is not NULL
group by constructors_1.nationality, results_1.milliseconds
limit 4;
-- meta {"num_joins":3,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref, 
  circuits_1.location, 
  constructors_2.constructorid, 
  count(
    constructors_1.nationality), 
  constructors_1.nationality, 
  min(
    races_1.date), 
  races_1.date, 
  constructors_1.constructorref, 
  races_1.time, 
  min(
    races_1.date), 
  count(
    constructors_2.name), 
  constructors_1.name, 
  races_1.round
from 
  circuits as circuits_1
      inner join constructors as constructors_1
      on (circuits_1.circuitid = constructors_1.constructorid )
    inner join constructors as constructors_2
      inner join races as races_1
      on (constructors_2.constructorid = races_1.raceid )
    on (constructors_1.constructorid = constructors_2.constructorid )
where constructors_1.constructorid is not NULL
group by circuits_1.circuitref, circuits_1.location, constructors_1.constructorref, constructors_1.name, constructors_1.nationality, constructors_2.constructorid, races_1.date, races_1.round, races_1.time
limit 1;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_2.name, 
  circuits_1.circuitid, 
  avg(
    constructor_results_1.constructorid), 
  circuits_1.circuitref
from 
  circuits as circuits_1
    inner join constructor_results as constructor_results_1
      inner join circuits as circuits_2
      on (constructor_results_1.constructorresultsid = circuits_2.circuitid )
    on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
where circuits_1.country < circuits_1.circuitref
group by circuits_1.circuitid, circuits_1.circuitref, circuits_2.name
limit 2;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_3.surname, 
  drivers_3.forename, 
  max(
    drivers_2.driverid)
from 
  drivers as drivers_1
    inner join standings as standings_1
      inner join drivers as drivers_2
          inner join results as results_1
          on (results_1.driverid = drivers_2.driverid )
        inner join drivers as drivers_3
        on (drivers_2.driverid = drivers_3.driverid )
      on (standings_1.driverid = drivers_2.driverid )
    on (drivers_1.driverid = drivers_2.driverid )
where drivers_2.code is not NULL
group by drivers_3.forename, drivers_3.surname
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date, 
  constructor_standings_2.constructorstandingsid, 
  constructor_standings_1.points, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
    inner join constructor_standings as constructor_standings_2
    on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
where constructor_standings_1.points is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    results_1.date), 
  results_1.statusid
from 
  results as results_1
where results_1.raceid is not NULL
group by results_1.statusid
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverstandingsid, 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position, 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.points = standings_1.points
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.code, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.dob, 
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.raceid, 
  races_1.time, 
  races_1.date, 
  races_1.year, 
  max(
    races_1.circuitid)
from 
  races as races_1
where races_1.raceid is not NULL
group by races_1.date, races_1.raceid, races_1.time, races_1.year
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name, 
  circuits_1.location, 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    races_1.circuitid), 
  races_1.circuitid, 
  races_1.name, 
  count(*), 
  races_1.round, 
  max(
    races_1.date), 
  races_1.time
from 
  races as races_1
where races_1.date = races_1.date
group by races_1.circuitid, races_1.name, races_1.round, races_1.time
limit 4;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref, 
  drivers_1.nationality, 
  max(
    results_1.date), 
  races_1.name, 
  drivers_1.dob, 
  results_1.resultid
from 
  races as races_1
    inner join drivers as drivers_1
      inner join results as results_1
      on (results_1.driverid = drivers_1.driverid )
    on (races_1.raceid = drivers_1.driverid )
where results_1.constructorid is not NULL
group by drivers_1.dob, drivers_1.driverref, drivers_1.nationality, races_1.name, results_1.resultid
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.forename, 
  drivers_1.surname, 
  drivers_1.nationality, 
  min(
    drivers_1.dob), 
  drivers_1.dob, 
  count(*), 
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.surname <= drivers_1.nationality
group by drivers_1.code, drivers_1.dob, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 2;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.date, 
  races_1.circuitid, 
  max(
    races_1.date), 
  standings_1.position, 
  races_1.raceid, 
  standings_1.points, 
  standings_1.raceid
from 
  standings as standings_1
    inner join races as races_1
    on (standings_1.raceid = races_1.raceid )
where races_1.name is not NULL
group by races_1.circuitid, races_1.raceid, standings_1.date, standings_1.points, standings_1.position, standings_1.raceid
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points
from 
  races as races_1
    inner join constructor_results as constructor_results_1
    on (constructor_results_1.raceid = races_1.raceid )
where races_1.circuitid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  max(
    constructor_results_1.raceid), 
  min(
    constructor_results_1.date), 
  constructor_results_1.raceid, 
  count(
    constructor_results_1.constructorid)
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 3;
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lng, 
  max(
    results_1.fastestlap), 
  max(
    drivers_1.dob), 
  results_1.positionorder, 
  drivers_1.surname, 
  circuits_1.lat, 
  circuits_1.alt, 
  results_1.fastestlap, 
  results_1.resultid, 
  results_1.number
from 
  circuits as circuits_1
    inner join drivers as drivers_1
        inner join results as results_1
        on (results_1.driverid = drivers_1.driverid )
      inner join constructors as constructors_1
      on (results_1.constructorid = constructors_1.constructorid )
    on (circuits_1.circuitid = constructors_1.constructorid )
where constructors_1.constructorid is not NULL
group by circuits_1.alt, circuits_1.lat, circuits_1.lng, drivers_1.surname, results_1.fastestlap, results_1.number, results_1.positionorder, results_1.resultid
limit 4;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructors_1.name, 
  count(
    constructors_1.constructorref), 
  avg(
    constructors_1.constructorid), 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  sum(
    constructors_1.constructorid), 
  min(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 3;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverstandingsid
from 
  standings as standings_1
      inner join constructor_standings as constructor_standings_1
      on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
    inner join circuits as circuits_1
    on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
where constructor_standings_1.points < standings_1.points
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.driverid = drivers_1.driverid
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.fastestlap, 
  results_1.laps, 
  results_1.number, 
  results_1.constructorid
from 
  results as results_1
where results_1.statusid is not NULL
limit 2;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid, 
  qualifying_1.qualifyid, 
  min(
    qualifying_1.date), 
  results_1.fastestlap, 
  results_1.statusid, 
  qualifying_1.number, 
  qualifying_1.constructorid, 
  avg(
    results_1.number), 
  results_1.position
from 
  qualifying as qualifying_1
    inner join results as results_1
    on (qualifying_1.qualifyid = results_1.resultid )
where qualifying_1.position is not NULL
group by qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.number, qualifying_1.qualifyid, results_1.fastestlap, results_1.position, results_1.statusid
limit 1;
-- meta {"num_joins":6,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorstandingsid
from 
  drivers as drivers_1
        inner join constructor_standings as constructor_standings_1
        on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
      inner join circuits as circuits_1
        inner join standings as standings_1
          inner join constructors as constructors_1
            inner join constructor_results as constructor_results_1
            on (constructor_results_1.constructorid = constructors_1.constructorid )
          on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
        on (circuits_1.circuitid = constructors_1.constructorid )
      on (drivers_1.driverid = circuits_1.circuitid )
    inner join races as races_1
    on (drivers_1.driverid = races_1.raceid )
where races_1.time is not NULL
limit 1;
-- meta {"num_joins":3,"num_aggregates":6,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.date, 
  races_1.time, 
  races_1.year, 
  results_1.raceid, 
  results_1.constructorid, 
  max(
    results_2.milliseconds), 
  min(
    results_2.positionorder), 
  qualifying_1.constructorid, 
  avg(
    results_2.statusid), 
  count(
    results_1.number), 
  results_2.resultid, 
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  results_2.grid, 
  results_2.date, 
  results_2.milliseconds, 
  races_1.circuitid, 
  max(
    results_2.fastestlap), 
  qualifying_1.date, 
  races_1.name, 
  sum(
    results_2.rank), 
  results_2.constructorid, 
  qualifying_1.driverid, 
  races_1.round
from 
  races as races_1
    inner join qualifying as qualifying_1
        inner join results as results_1
        on (qualifying_1.qualifyid = results_1.resultid )
      inner join results as results_2
      on (qualifying_1.qualifyid = results_2.resultid )
    on (results_2.raceid = races_1.raceid )
where races_1.time <= races_1.name
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.position, qualifying_1.qualifyid, races_1.circuitid, races_1.date, races_1.name, races_1.round, races_1.time, races_1.year, results_1.constructorid, results_1.raceid, results_2.constructorid, results_2.date, results_2.grid, results_2.milliseconds, results_2.resultid
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt, 
  circuits_1.lng, 
  circuits_1.country, 
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position, 
  max(
    standings_1.date), 
  standings_1.points
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
group by standings_1.points, standings_1.position
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  min(
    constructor_standings_1.date)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.raceid, constructor_standings_1.wins
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverstandingsid, 
  standings_1.date
from 
  standings as standings_1
where standings_1.points is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt, 
  circuits_1.lat, 
  count(*), 
  circuits_1.location, 
  circuits_1.lng, 
  count(*)
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
group by circuits_1.alt, circuits_1.lat, circuits_1.lng, circuits_1.location
limit 3;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_results_1.date), 
  drivers_1.forename, 
  drivers_1.surname, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
    inner join drivers as drivers_1
    on (constructor_results_1.constructorresultsid = drivers_1.driverid )
where constructor_results_1.raceid is not NULL
group by constructor_results_1.date, drivers_1.forename, drivers_1.surname
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  results_1.positionorder
from 
  results as results_1
    inner join constructor_results as constructor_results_1
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where results_1.constructorid is not NULL
limit 2;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.name
from 
  races as races_1
    inner join constructor_results as constructor_results_1
        inner join results as results_1
        on (constructor_results_1.constructorresultsid = results_1.resultid )
      inner join results as results_2
      on (results_1.resultid = results_2.resultid )
    on (constructor_results_1.raceid = races_1.raceid )
where results_2.date is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.round, 
  races_1.circuitid
from 
  races as races_1
where races_1.circuitid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    constructors_1.constructorid), 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.constructorid
limit 1;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.country, 
  races_1.round, 
  circuits_1.alt, 
  constructor_results_1.points, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
    inner join circuits as circuits_1
      inner join races as races_1
      on (races_1.circuitid = circuits_1.circuitid )
    on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
where circuits_1.lat is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt, 
  count(*), 
  circuits_1.lat, 
  circuits_1.circuitid, 
  circuits_1.country, 
  circuits_1.lng, 
  max(
    circuits_1.alt), 
  circuits_1.name, 
  circuits_1.circuitref, 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.lat <= circuits_1.alt
group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.location, circuits_1.name
limit 4;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    constructor_results_1.points), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  min(
    constructor_results_1.date), 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  min(
    constructor_results_1.points), 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid = constructor_results_1.constructorresultsid
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 2;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt, 
  circuits_1.circuitid, 
  circuits_1.location, 
  circuits_1.country, 
  avg(
    circuits_1.circuitid), 
  circuits_1.lng, 
  max(
    circuits_1.circuitid), 
  avg(
    circuits_1.lat), 
  circuits_1.lat, 
  circuits_1.name, 
  min(
    circuits_1.alt)
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.location, circuits_1.name
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  min(
    qualifying_1.date), 
  qualifying_1.raceid, 
  qualifying_1.number, 
  count(*)
from 
  qualifying as qualifying_1
where qualifying_1.date = qualifying_1.date
group by qualifying_1.date, qualifying_1.number, qualifying_1.raceid
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins, 
  standings_1.points, 
  standings_1.driverstandingsid, 
  count(
    standings_1.raceid), 
  standings_1.position
from 
  standings as standings_1
where standings_1.driverid > standings_1.raceid
group by standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.wins
limit 1;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.country, 
  min(
    constructor_results_1.date), 
  constructor_results_1.points
from 
  circuits as circuits_1
    inner join constructor_results as constructor_results_1
    on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
where constructor_results_1.points is not NULL
group by circuits_1.country, constructor_results_1.points
limit 3;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    circuits_1.alt), 
  max(
    circuits_1.lat), 
  max(
    circuits_1.lng)
from 
  circuits as circuits_1
    inner join constructor_standings as constructor_standings_1
    on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.constructorstandingsid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.raceid
from 
  results as results_1
where results_1.laps > results_1.driverid
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid, 
  races_1.name
from 
  standings as standings_1
    inner join races as races_1
    on (standings_1.raceid = races_1.raceid )
where standings_1.position is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.position, 
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  max(
    constructor_standings_1.position), 
  min(
    constructor_standings_1.points), 
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  max(
    constructor_standings_1.constructorstandingsid)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lat, 
  circuits_1.circuitref, 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
limit 1;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select distinct 
  results_1.date
from 
  races as races_1
        inner join constructors as constructors_1
        on (races_1.raceid = constructors_1.constructorid )
      inner join results as results_1
      on (results_1.raceid = races_1.raceid )
    inner join qualifying as qualifying_1
    on (qualifying_1.constructorid = constructors_1.constructorid )
where qualifying_1.driverid is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref
from 
  qualifying as qualifying_1
    inner join drivers as drivers_1
    on (qualifying_1.driverid = drivers_1.driverid )
where qualifying_1.qualifyid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  avg(
    standings_1.driverstandingsid)
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
group by standings_1.raceid
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_results_1.points)
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.positionorder
from 
  results as results_1
where results_1.statusid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.nationality, 
  sum(
    constructors_1.constructorid), 
  count(*)
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 2;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.raceid, 
  races_1.round, 
  max(
    races_1.round), 
  races_1.circuitid, 
  drivers_1.driverref, 
  drivers_1.code
from 
  races as races_1
    inner join drivers as drivers_1
    on (races_1.raceid = drivers_1.driverid )
where races_1.time is not NULL
group by drivers_1.code, drivers_1.driverref, races_1.circuitid, races_1.raceid, races_1.round
limit 4;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position, 
  sum(
    constructor_standings_1.points)
from 
  qualifying as qualifying_1
    inner join constructor_standings as constructor_standings_1
      inner join standings as standings_1
      on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where standings_1.date is not NULL
group by standings_1.position
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location, 
  circuits_1.alt, 
  circuits_1.name, 
  count(
    circuits_1.country), 
  circuits_1.lat, 
  circuits_1.circuitref, 
  max(
    circuits_1.circuitid)
from 
  circuits as circuits_1
where circuits_1.name is not NULL
group by circuits_1.alt, circuits_1.circuitref, circuits_1.lat, circuits_1.location, circuits_1.name
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  count(
    constructors_1.constructorref), 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    drivers_1.dob), 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.code is not NULL
group by drivers_1.nationality
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.date, 
  races_1.time
from 
  races as races_1
where races_1.time is not NULL
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.round, 
  races_1.raceid
from 
  races as races_1
    inner join races as races_2
    on (races_1.raceid = races_2.raceid )
where races_2.circuitid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.statusid, 
  results_1.points, 
  results_1.resultid, 
  results_1.positionorder, 
  min(
    results_1.points), 
  min(
    results_1.date), 
  results_1.position, 
  results_1.rank, 
  results_1.laps, 
  count(*), 
  results_1.milliseconds, 
  sum(
    results_1.number), 
  results_1.grid, 
  results_1.number, 
  min(
    results_1.statusid)
from 
  results as results_1
where results_1.date is not NULL
group by results_1.grid, results_1.laps, results_1.milliseconds, results_1.number, results_1.points, results_1.position, results_1.positionorder, results_1.rank, results_1.resultid, results_1.statusid
limit 3;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points, 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.position, 
  constructor_standings_1.date, 
  min(
    constructor_standings_1.points), 
  min(
    constructor_standings_1.raceid)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date < constructor_standings_1.date
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitid, 
  circuits_1.lng, 
  circuits_1.lat, 
  circuits_1.country, 
  circuits_1.alt, 
  max(
    circuits_1.circuitid), 
  min(
    circuits_1.circuitid)
from 
  circuits as circuits_1
where circuits_1.location is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.country, circuits_1.lat, circuits_1.lng
limit 4;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins, 
  sum(
    constructor_standings_1.points), 
  circuits_1.alt
from 
  constructor_standings as constructor_standings_1
    inner join circuits as circuits_1
    on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
where constructor_standings_1.points is not NULL
group by circuits_1.alt, constructor_standings_1.wins
limit 2;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_standings_1.position), 
  min(
    constructor_standings_1.date), 
  max(
    constructor_standings_1.date), 
  constructor_standings_1.date, 
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
group by constructor_standings_1.date, constructor_standings_1.points
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.resultid
from 
  results as results_1
where results_1.grid >= results_1.laps
limit 3;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  races_2.round, 
  races_2.name
from 
  races as races_1
      inner join constructor_results as constructor_results_1
      on (constructor_results_1.raceid = races_1.raceid )
    inner join races as races_2
    on (constructor_results_1.raceid = races_2.raceid )
where constructor_results_1.constructorid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.country
from 
  circuits as circuits_1
where circuits_1.circuitref > circuits_1.country
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  constructor_standings_1.points, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
    inner join constructor_results as constructor_results_1
    on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
where constructor_standings_1.points <= constructor_results_1.points
limit 1;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    results_1.driverid), 
  results_1.grid, 
  results_1.resultid, 
  constructors_1.constructorid, 
  results_1.rank
from 
  results as results_1
    inner join constructors as constructors_1
    on (results_1.constructorid = constructors_1.constructorid )
where constructors_1.nationality > constructors_1.constructorref
group by constructors_1.constructorid, results_1.grid, results_1.rank, results_1.resultid
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverstandingsid, 
  standings_1.driverid, 
  standings_1.date, 
  standings_1.position
from 
  standings as standings_1
where standings_1.wins is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  min(
    constructor_results_1.points)
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  max(
    constructor_results_1.points), 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  min(
    constructor_results_1.points), 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.rank, 
  results_1.date, 
  results_1.positionorder, 
  results_1.number
from 
  results as results_1
where results_1.driverid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number, 
  min(
    qualifying_1.constructorid)
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
group by qualifying_1.number
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.nationality, 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.dob <= drivers_1.dob
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref, 
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.driverid >= drivers_1.driverid
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.statusid
from 
  results as results_1
where results_1.fastestlap > results_1.number
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.driverid = standings_1.wins
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    standings_1.raceid), 
  standings_1.raceid, 
  standings_1.wins, 
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
group by standings_1.driverstandingsid, standings_1.raceid, standings_1.wins
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.code, 
  drivers_1.driverid, 
  max(
    drivers_1.dob), 
  drivers_1.dob, 
  drivers_1.nationality, 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.driverid > drivers_1.driverid
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.nationality, drivers_1.surname
limit 3;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  standings_1.date
from 
  constructor_results as constructor_results_1
          inner join constructor_standings as constructor_standings_1
          on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
        inner join constructor_results as constructor_results_2
        on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
      inner join constructors as constructors_1
        inner join standings as standings_1
        on (constructors_1.constructorid = standings_1.driverstandingsid )
      on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
    inner join constructor_results as constructor_results_3
    on (constructor_results_1.constructorresultsid = constructor_results_3.constructorresultsid )
where constructor_results_1.points >= constructor_results_2.points
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.date, 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location, 
  sum(
    circuits_1.lng), 
  min(
    circuits_1.circuitid), 
  min(
    circuits_1.circuitid), 
  max(
    circuits_1.circuitid)
from 
  circuits as circuits_1
where circuits_1.location is not NULL
group by circuits_1.location
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.nationality, 
  drivers_1.surname, 
  count(*), 
  drivers_1.driverid, 
  avg(
    drivers_1.driverid), 
  drivers_1.forename, 
  drivers_1.driverref, 
  drivers_1.dob, 
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.dob > drivers_1.dob
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 3;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    constructor_standings_2.position), 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid, 
  avg(
    standings_1.raceid), 
  standings_1.raceid
from 
  standings as standings_1
      inner join constructor_standings as constructor_standings_1
      on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
    inner join constructor_standings as constructor_standings_2
    on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
where constructor_standings_1.points is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.date, standings_1.raceid
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  qualifying_1.qualifyid, 
  qualifying_1.constructorid, 
  qualifying_1.number, 
  count(
    qualifying_1.raceid), 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.number, qualifying_1.qualifyid, qualifying_1.raceid
limit 3;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid
from 
  results as results_1
    inner join constructor_results as constructor_results_1
      inner join results as results_2
        inner join constructor_results as constructor_results_2
          inner join circuits as circuits_1
          on (constructor_results_2.constructorresultsid = circuits_1.circuitid )
        on (results_2.resultid = circuits_1.circuitid )
      on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
    on (results_1.resultid = constructor_results_2.constructorresultsid )
where constructor_results_1.constructorresultsid > constructor_results_1.constructorid
limit 1;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    standings_1.driverstandingsid), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points, 
  constructor_standings_1.position, 
  standings_1.position, 
  constructor_standings_1.wins, 
  standings_1.driverid
from 
  constructor_standings as constructor_standings_1
    inner join standings as standings_1
    on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
where constructor_standings_1.points is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.wins, standings_1.driverid, standings_1.position
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref, 
  circuits_1.country, 
  circuits_1.alt, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.location is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid, 
  max(
    races_1.raceid), 
  races_1.date, 
  races_1.time, 
  races_1.round
from 
  races as races_1
where races_1.circuitid is not NULL
group by races_1.circuitid, races_1.date, races_1.round, races_1.time
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid
from 
  constructors as constructors_1
    inner join constructors as constructors_2
    on (constructors_1.constructorid = constructors_2.constructorid )
where constructors_2.nationality is not NULL
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref, 
  qualifying_1.raceid, 
  drivers_1.nationality
from 
  drivers as drivers_1
    inner join qualifying as qualifying_1
    on (qualifying_1.driverid = drivers_1.driverid )
where drivers_1.nationality is not NULL
limit 2;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    constructor_standings_1.position), 
  max(
    qualifying_1.date), 
  constructor_standings_1.points, 
  qualifying_1.raceid, 
  qualifying_1.date, 
  qualifying_1.number
from 
  qualifying as qualifying_1
    inner join constructor_standings as constructor_standings_1
    on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.constructorid >= qualifying_1.constructorid
group by constructor_standings_1.points, qualifying_1.date, qualifying_1.number, qualifying_1.raceid
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    races_1.date)
from 
  races as races_1
where races_1.circuitid is not NULL
limit 1;
-- meta {"num_joins":4,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_2.constructorid, 
  max(
    constructor_results_1.points), 
  constructor_results_1.date, 
  constructors_1.name, 
  constructor_standings_1.constructorstandingsid, 
  constructors_1.constructorid, 
  min(
    standings_1.points), 
  constructor_results_2.points
from 
  constructor_results as constructor_results_1
        inner join standings as standings_1
        on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
      inner join constructor_standings as constructor_standings_1
        inner join constructor_results as constructor_results_2
        on (constructor_standings_1.constructorstandingsid = constructor_results_2.constructorresultsid )
      on (standings_1.driverstandingsid = constructor_results_2.constructorresultsid )
    inner join constructors as constructors_1
    on (constructor_standings_1.constructorid = constructors_1.constructorid )
where constructor_results_2.constructorresultsid is not NULL
group by constructor_results_1.date, constructor_results_2.constructorid, constructor_results_2.points, constructor_standings_1.constructorstandingsid, constructors_1.constructorid, constructors_1.name
limit 2;
-- meta {"num_joins":3,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructor_standings_1.raceid, 
  results_1.number, 
  max(
    results_1.date), 
  max(
    results_1.position), 
  min(
    results_1.date), 
  constructor_standings_1.constructorid, 
  races_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  races_1.circuitid, 
  races_1.time, 
  results_1.raceid, 
  constructor_standings_1.points
from 
  constructors as constructors_1
      inner join constructor_standings as constructor_standings_1
        inner join results as results_1
        on (constructor_standings_1.constructorstandingsid = results_1.resultid )
      on (results_1.constructorid = constructors_1.constructorid )
    inner join races as races_1
    on (constructor_standings_1.raceid = races_1.raceid )
where constructor_standings_1.position <= constructor_standings_1.wins
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.raceid, constructors_1.constructorid, constructors_1.nationality, races_1.circuitid, races_1.raceid, races_1.time, results_1.number, results_1.raceid
limit 3;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid, 
  qualifying_1.date
from 
  qualifying as qualifying_1
      inner join circuits as circuits_1
      on (qualifying_1.qualifyid = circuits_1.circuitid )
    inner join constructors as constructors_1
    on (qualifying_1.constructorid = constructors_1.constructorid )
where constructors_1.constructorref is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  qualifying_1.number, 
  qualifying_1.driverid, 
  qualifying_1.constructorid, 
  qualifying_1.raceid, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
limit 1;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    circuits_1.alt)
from 
  races as races_1
      inner join circuits as circuits_1
      on (races_1.circuitid = circuits_1.circuitid )
    inner join drivers as drivers_1
    on (circuits_1.circuitid = drivers_1.driverid )
where races_1.date >= drivers_1.dob
limit 3;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructor_standings_1.date), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins
from 
  constructor_results as constructor_results_1
    inner join constructor_standings as constructor_standings_1
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.raceid is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.wins
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position, 
  standings_1.driverid, 
  standings_1.raceid, 
  sum(
    standings_1.wins)
from 
  standings as standings_1
where standings_1.position > standings_1.wins
group by standings_1.driverid, standings_1.position, standings_1.raceid
limit 2;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  results_1.statusid, 
  results_1.positionorder, 
  constructors_1.constructorid, 
  count(
    constructor_results_1.constructorid)
from 
  constructor_results as constructor_results_1
    inner join results as results_1
      inner join constructors as constructors_1
        inner join races as races_1
        on (constructors_1.constructorid = races_1.raceid )
      on (results_1.raceid = races_1.raceid )
    on (constructor_results_1.constructorresultsid = results_1.resultid )
where constructor_results_1.constructorid is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, results_1.positionorder, results_1.statusid
limit 2;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  drivers_1.forename, 
  constructors_2.nationality, 
  constructors_2.constructorref, 
  count(
    drivers_1.surname), 
  constructors_1.constructorid
from 
  drivers as drivers_1
    inner join constructors as constructors_1
      inner join constructors as constructors_2
      on (constructors_1.constructorid = constructors_2.constructorid )
    on (drivers_1.driverid = constructors_1.constructorid )
where drivers_1.dob < drivers_1.dob
group by constructors_1.constructorid, constructors_1.constructorref, constructors_2.constructorref, constructors_2.nationality, drivers_1.forename
limit 4;
-- meta {"num_joins":4,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position, 
  results_1.number, 
  max(
    results_1.driverid), 
  drivers_1.code, 
  min(
    drivers_1.dob)
from 
  circuits as circuits_1
        inner join drivers as drivers_1
        on (circuits_1.circuitid = drivers_1.driverid )
      inner join standings as standings_1
      on (circuits_1.circuitid = standings_1.driverstandingsid )
    inner join races as races_1
      inner join results as results_1
      on (results_1.raceid = races_1.raceid )
    on (races_1.circuitid = circuits_1.circuitid )
where results_1.rank > standings_1.points
group by drivers_1.code, results_1.number, standings_1.position
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.points = constructor_results_1.points
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.name, 
  count(
    constructors_1.constructorid), 
  count(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.constructorref <= constructors_1.name
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.position, 
  results_1.raceid, 
  results_1.rank, 
  results_1.date
from 
  results as results_1
where results_1.position is not NULL
limit 3;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.qualifyid, 
  circuits_2.alt, 
  count(
    circuits_2.circuitid), 
  circuits_1.circuitref
from 
  qualifying as qualifying_1
        inner join circuits as circuits_1
        on (qualifying_1.qualifyid = circuits_1.circuitid )
      inner join races as races_1
        inner join circuits as circuits_2
        on (races_1.circuitid = circuits_2.circuitid )
      on (circuits_1.circuitid = circuits_2.circuitid )
    inner join races as races_2
    on (qualifying_1.raceid = races_2.raceid )
where races_1.time is not NULL
group by circuits_1.circuitref, circuits_2.alt, qualifying_1.qualifyid
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.alt >= circuits_1.lng
limit 4;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  drivers_1.dob, 
  min(
    constructor_standings_1.date), 
  drivers_1.driverref
from 
  constructor_standings as constructor_standings_1
    inner join drivers as drivers_1
    on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
where constructor_standings_1.points = constructor_standings_1.points
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.raceid, drivers_1.dob, drivers_1.driverref
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.position
from 
  results as results_1
where results_1.date is not NULL
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid, 
  qualifying_1.qualifyid
from 
  standings as standings_1
    inner join qualifying as qualifying_1
    on (standings_1.driverstandingsid = qualifying_1.qualifyid )
where standings_1.date is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  count(*), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid >= constructor_results_1.raceid
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.raceid
limit 4;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.points, 
  drivers_1.code, 
  min(
    results_1.date), 
  results_1.driverid
from 
  drivers as drivers_1
    inner join results as results_1
      inner join constructors as constructors_1
      on (results_1.constructorid = constructors_1.constructorid )
    on (results_1.driverid = drivers_1.driverid )
where constructors_1.name is not NULL
group by drivers_1.code, results_1.driverid, results_1.points
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location, 
  circuits_1.alt, 
  circuits_1.lat
from 
  circuits as circuits_1
where circuits_1.country is not NULL
limit 3;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lng, 
  sum(
    constructor_standings_1.points), 
  max(
    constructor_standings_1.constructorid), 
  constructor_standings_1.wins, 
  constructor_standings_1.raceid, 
  constructor_standings_1.date, 
  circuits_1.location, 
  avg(
    circuits_1.circuitid), 
  circuits_1.circuitref
from 
  constructor_standings as constructor_standings_1
    inner join circuits as circuits_1
    on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
where constructor_standings_1.date >= constructor_standings_1.date
group by circuits_1.circuitref, circuits_1.lng, circuits_1.location, constructor_standings_1.date, constructor_standings_1.raceid, constructor_standings_1.wins
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.position, 
  avg(
    constructor_standings_1.points), 
  avg(
    constructor_standings_1.constructorid), 
  constructor_standings_1.raceid, 
  avg(
    constructor_standings_1.wins), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins, 
  constructor_standings_1.date, 
  constructor_standings_1.points, 
  avg(
    constructor_standings_1.wins)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  circuits_1.circuitid, 
  circuits_1.location, 
  circuits_1.country, 
  avg(
    circuits_1.circuitid), 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.location is not NULL
group by circuits_1.circuitid, circuits_1.country, circuits_1.lng, circuits_1.location
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.resultid, 
  results_1.laps
from 
  results as results_1
where results_1.position <= results_1.rank
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.points > constructor_results_1.points
limit 4;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date, 
  min(
    results_1.date), 
  constructor_results_1.constructorresultsid, 
  results_1.number
from 
  races as races_1
    inner join results as results_1
          inner join constructor_results as constructor_results_1
          on (results_1.resultid = constructor_results_1.constructorresultsid )
        inner join constructor_standings as constructor_standings_1
        on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
      inner join drivers as drivers_1
      on (results_1.driverid = drivers_1.driverid )
    on (constructor_results_1.raceid = races_1.raceid )
where drivers_1.surname is not NULL
group by constructor_results_1.constructorresultsid, constructor_standings_1.date, results_1.number
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.nationality, 
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.forename < drivers_1.surname
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.positionorder
from 
  results as results_1
    inner join constructor_results as constructor_results_1
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where constructor_results_1.points is not NULL
limit 2;
-- meta {"num_joins":5,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  standings_1.driverstandingsid, 
  drivers_1.surname, 
  constructors_1.nationality, 
  count(
    circuits_1.country)
from 
  qualifying as qualifying_1
      inner join drivers as drivers_1
        inner join drivers as drivers_2
        on (drivers_1.driverid = drivers_2.driverid )
      on (qualifying_1.driverid = drivers_2.driverid )
    inner join circuits as circuits_1
        inner join constructors as constructors_1
        on (circuits_1.circuitid = constructors_1.constructorid )
      inner join standings as standings_1
      on (constructors_1.constructorid = standings_1.driverstandingsid )
    on (standings_1.driverid = drivers_1.driverid )
where circuits_1.lat is not NULL
group by constructors_1.nationality, drivers_1.surname, standings_1.driverstandingsid, standings_1.raceid
limit 2;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorid, 
  constructor_standings_2.raceid, 
  results_1.position
from 
  constructor_standings as constructor_standings_1
    inner join results as results_1
      inner join standings as standings_1
        inner join circuits as circuits_1
          inner join constructor_standings as constructor_standings_2
          on (circuits_1.circuitid = constructor_standings_2.constructorstandingsid )
        on (standings_1.driverstandingsid = circuits_1.circuitid )
      on (results_1.resultid = circuits_1.circuitid )
    on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
where results_1.fastestlap is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name, 
  circuits_1.location, 
  circuits_1.circuitref, 
  count(*), 
  circuits_1.country
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
group by circuits_1.circuitref, circuits_1.country, circuits_1.location, circuits_1.name
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins, 
  constructor_standings_1.date, 
  avg(
    constructor_standings_1.points)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.wins
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.location is not NULL
group by circuits_1.circuitref
limit 4;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location, 
  standings_1.driverid, 
  constructor_results_2.constructorresultsid, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
        inner join constructor_results as constructor_results_2
        on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
      inner join standings as standings_1
        inner join drivers as drivers_1
        on (standings_1.driverid = drivers_1.driverid )
      on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
    inner join circuits as circuits_1
    on (constructor_results_2.constructorresultsid = circuits_1.circuitid )
where constructor_results_2.raceid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date = constructor_standings_1.date
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  min(
    constructor_results_1.constructorid)
from 
  constructor_results as constructor_results_1
where constructor_results_1.points = constructor_results_1.points
group by constructor_results_1.constructorresultsid
limit 1;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_2.driverid, 
  results_1.points
from 
  standings as standings_1
    inner join results as results_1
      inner join standings as standings_2
      on (results_1.resultid = standings_2.driverstandingsid )
    on (standings_1.driverstandingsid = standings_2.driverstandingsid )
where results_1.date is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructors_1.constructorid), 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.name
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select distinct 
  races_1.time, 
  races_1.year
from 
  races as races_1
where races_1.date > races_1.date
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.raceid, 
  qualifying_1.number, 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.position, 
  results_1.fastestlap, 
  results_1.statusid, 
  results_1.milliseconds, 
  max(
    results_1.laps), 
  max(
    results_1.positionorder), 
  results_1.positionorder, 
  results_1.number, 
  results_1.rank, 
  max(
    results_1.date)
from 
  results as results_1
where results_1.fastestlap is not NULL
group by results_1.fastestlap, results_1.milliseconds, results_1.number, results_1.position, results_1.positionorder, results_1.rank, results_1.statusid
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lng, 
  circuits_1.location, 
  circuits_1.circuitref, 
  circuits_1.name, 
  circuits_1.alt, 
  circuits_1.country
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
limit 1;
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    results_1.statusid), 
  results_2.fastestlap, 
  results_1.constructorid, 
  min(
    results_1.date), 
  results_2.grid, 
  results_1.laps, 
  min(
    results_2.date), 
  max(
    results_2.grid), 
  results_2.milliseconds, 
  results_1.raceid, 
  results_1.position
from 
  results as results_1
    inner join results as results_2
    on (results_1.resultid = results_2.resultid )
where results_2.constructorid is not NULL
group by results_1.constructorid, results_1.laps, results_1.position, results_1.raceid, results_2.fastestlap, results_2.grid, results_2.milliseconds
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref, 
  drivers_1.surname, 
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt, 
  min(
    circuits_1.lng)
from 
  circuits as circuits_1
where circuits_1.name is not NULL
group by circuits_1.alt
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    qualifying_1.date)
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    constructor_standings_1.position), 
  max(
    constructor_standings_1.points), 
  constructor_standings_1.date, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  max(
    constructor_standings_1.points), 
  min(
    constructor_standings_1.date)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points > constructor_standings_1.points
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.position
limit 1;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location, 
  avg(
    circuits_1.alt), 
  constructors_1.nationality, 
  sum(
    circuits_1.lat)
from 
  constructors as constructors_1
    inner join circuits as circuits_1
    on (constructors_1.constructorid = circuits_1.circuitid )
where circuits_1.location is not NULL
group by circuits_1.location, constructors_1.nationality
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid, 
  races_1.time, 
  races_1.date, 
  qualifying_1.date, 
  races_1.year
from 
  qualifying as qualifying_1
    inner join races as races_1
    on (qualifying_1.raceid = races_1.raceid )
where races_1.year is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt, 
  avg(
    circuits_1.alt)
from 
  circuits as circuits_1
where circuits_1.country is not NULL
group by circuits_1.alt
limit 4;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.number, 
  max(
    results_1.laps), 
  results_1.driverid, 
  races_1.circuitid, 
  results_1.points
from 
  races as races_1
    inner join results as results_1
    on (results_1.raceid = races_1.raceid )
where races_1.year is not NULL
group by races_1.circuitid, results_1.driverid, results_1.number, results_1.points
limit 2;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position, 
  min(
    standings_1.position), 
  standings_1.driverid, 
  standings_1.wins, 
  standings_1.points, 
  standings_1.raceid, 
  standings_1.date, 
  count(*), 
  avg(
    standings_1.points)
from 
  standings as standings_1
where standings_1.driverid is not NULL
group by standings_1.date, standings_1.driverid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lng, 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.alt is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.round, 
  max(
    races_1.date), 
  races_1.date
from 
  races as races_1
where races_1.raceid > races_1.round
group by races_1.date, races_1.round
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.raceid, 
  results_1.date, 
  circuits_1.circuitref, 
  results_1.points
from 
  results as results_1
    inner join circuits as circuits_1
    on (results_1.resultid = circuits_1.circuitid )
where circuits_1.alt <= results_1.milliseconds
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.statusid, 
  results_1.points, 
  results_1.grid, 
  results_1.position, 
  results_1.fastestlap, 
  results_1.milliseconds, 
  results_1.positionorder, 
  results_1.date, 
  sum(
    results_1.points), 
  results_1.constructorid, 
  avg(
    results_1.number)
from 
  results as results_1
where results_1.constructorid is not NULL
group by results_1.constructorid, results_1.date, results_1.fastestlap, results_1.grid, results_1.milliseconds, results_1.points, results_1.position, results_1.positionorder, results_1.statusid
limit 4;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.number, 
  results_1.positionorder, 
  count(*), 
  results_1.points, 
  results_1.statusid, 
  results_1.constructorid, 
  max(
    results_1.points), 
  count(
    results_1.resultid), 
  results_1.date, 
  results_1.resultid, 
  results_1.driverid
from 
  results as results_1
where results_1.date <= results_1.date
group by results_1.constructorid, results_1.date, results_1.driverid, results_1.number, results_1.points, results_1.positionorder, results_1.resultid, results_1.statusid
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  standings_1.driverid, 
  standings_1.wins
from 
  standings as standings_1
where standings_1.date = standings_1.date
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.round, 
  races_1.date, 
  sum(
    races_1.circuitid), 
  sum(
    races_1.circuitid), 
  races_1.time, 
  races_1.raceid
from 
  races as races_1
where races_1.raceid = races_1.round
group by races_1.date, races_1.raceid, races_1.round, races_1.time
limit 3;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.nationality, 
  constructors_1.name, 
  max(
    drivers_1.dob), 
  constructors_1.nationality
from 
  constructor_standings as constructor_standings_1
      inner join drivers as drivers_1
        inner join circuits as circuits_1
        on (drivers_1.driverid = circuits_1.circuitid )
      on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
    inner join constructors as constructors_1
      inner join results as results_1
      on (results_1.constructorid = constructors_1.constructorid )
    on (constructor_standings_1.constructorstandingsid = results_1.resultid )
where constructor_standings_1.date <= drivers_1.dob
group by constructors_1.name, constructors_1.nationality, drivers_1.nationality
limit 4;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.nationality, 
  drivers_1.code, 
  drivers_1.dob, 
  drivers_1.forename, 
  max(
    drivers_1.dob), 
  drivers_1.driverid, 
  max(
    drivers_1.dob), 
  avg(
    drivers_1.driverid), 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 1;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name, 
  sum(
    circuits_1.lat), 
  circuits_1.alt, 
  min(
    circuits_1.circuitid), 
  circuits_1.country, 
  circuits_1.circuitid, 
  avg(
    circuits_1.alt), 
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.name is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.name
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name, 
  sum(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.name
limit 3;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid, 
  qualifying_1.position, 
  drivers_1.driverid, 
  qualifying_1.qualifyid
from 
  drivers as drivers_1
    inner join constructor_standings as constructor_standings_1
        inner join drivers as drivers_2
        on (constructor_standings_1.constructorstandingsid = drivers_2.driverid )
      inner join qualifying as qualifying_1
      on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
    on (qualifying_1.driverid = drivers_1.driverid )
where qualifying_1.raceid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.raceid, 
  races_1.date, 
  races_1.round, 
  races_1.year
from 
  races as races_1
where races_1.raceid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name, 
  max(
    constructors_1.constructorid), 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorid < constructors_1.constructorid
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref, 
  circuits_1.alt, 
  circuits_1.country, 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  min(
    constructor_results_1.points)
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.raceid
limit 1;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructor_standings_1.date), 
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.points, 
  min(
    constructor_standings_1.points), 
  avg(
    constructor_standings_1.position)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year, 
  races_1.raceid, 
  races_1.date
from 
  races as races_1
where races_1.raceid = races_1.round
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.position, 
  avg(
    results_1.position), 
  results_1.number, 
  results_1.fastestlap, 
  results_1.raceid
from 
  results as results_1
where results_1.raceid = results_1.driverid
group by results_1.fastestlap, results_1.number, results_1.position, results_1.raceid
limit 1;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitid, 
  results_1.grid, 
  max(
    results_1.number)
from 
  constructor_standings as constructor_standings_1
      inner join circuits as circuits_1
      on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
    inner join results as results_1
    on (constructor_standings_1.constructorstandingsid = results_1.resultid )
where circuits_1.location is not NULL
group by circuits_1.circuitid, results_1.grid
limit 1;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref, 
  circuits_1.location, 
  constructor_standings_1.wins, 
  avg(
    results_1.points)
from 
  drivers as drivers_1
      inner join circuits as circuits_1
          inner join results as results_1
          on (circuits_1.circuitid = results_1.resultid )
        inner join constructor_standings as constructor_standings_1
        on (results_1.resultid = constructor_standings_1.constructorstandingsid )
      on (drivers_1.driverid = circuits_1.circuitid )
    inner join drivers as drivers_2
    on (drivers_1.driverid = drivers_2.driverid )
where drivers_2.driverref is not NULL
group by circuits_1.circuitref, circuits_1.location, constructor_standings_1.wins
limit 2;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_2.name, 
  results_1.driverid
from 
  qualifying as qualifying_1
    inner join constructors as constructors_1
      inner join constructors as constructors_2
        inner join results as results_1
        on (results_1.constructorid = constructors_2.constructorid )
      on (results_1.constructorid = constructors_1.constructorid )
    on (qualifying_1.qualifyid = results_1.resultid )
where results_1.fastestlap > results_1.number
limit 1;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.country, 
  circuits_1.alt, 
  circuits_1.name, 
  results_1.milliseconds, 
  circuits_1.lat, 
  circuits_1.circuitid, 
  results_1.constructorid, 
  avg(
    results_1.statusid), 
  circuits_1.lng, 
  circuits_1.location, 
  max(
    results_1.number), 
  count(*)
from 
  circuits as circuits_1
    inner join results as results_1
    on (circuits_1.circuitid = results_1.resultid )
where circuits_1.circuitref is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.location, circuits_1.name, results_1.constructorid, results_1.milliseconds
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.position, 
  count(
    qualifying_1.position)
from 
  qualifying as qualifying_1
where qualifying_1.driverid > qualifying_1.number
group by qualifying_1.position
limit 3;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    constructor_standings_1.position), 
  constructor_standings_1.points, 
  results_1.driverid
from 
  results as results_1
      inner join constructor_standings as constructor_standings_1
      on (results_1.resultid = constructor_standings_1.constructorstandingsid )
    inner join drivers as drivers_1
    on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
where results_1.rank > results_1.fastestlap
group by constructor_standings_1.points, results_1.driverid
limit 3;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lng, 
  circuits_1.location
from 
  circuits as circuits_1
      inner join constructors as constructors_1
      on (circuits_1.circuitid = constructors_1.constructorid )
    inner join qualifying as qualifying_1
    on (qualifying_1.constructorid = constructors_1.constructorid )
where circuits_1.lng is not NULL
limit 3;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.position, 
  count(*), 
  qualifying_1.raceid, 
  min(
    qualifying_1.date)
from 
  circuits as circuits_1
    inner join qualifying as qualifying_1
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where circuits_1.lng = circuits_1.alt
group by qualifying_1.position, qualifying_1.raceid
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year, 
  races_1.date
from 
  standings as standings_1
    inner join races as races_1
    on (standings_1.raceid = races_1.raceid )
where standings_1.driverstandingsid is not NULL
limit 2;
-- meta {"num_joins":3,"num_aggregates":11,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name, 
  constructor_results_1.raceid, 
  count(*), 
  circuits_1.lat, 
  max(
    constructor_results_2.date), 
  circuits_1.alt, 
  races_1.date, 
  constructor_results_2.raceid, 
  constructor_results_2.constructorresultsid, 
  races_1.circuitid, 
  min(
    constructor_results_2.date), 
  min(
    constructor_results_1.date), 
  races_1.name, 
  constructor_results_1.constructorid, 
  count(*), 
  constructor_results_1.points, 
  count(
    circuits_1.location), 
  constructor_results_1.date, 
  min(
    constructor_results_1.raceid), 
  circuits_1.lng, 
  circuits_1.circuitref, 
  constructor_results_1.constructorresultsid, 
  races_1.round, 
  min(
    constructor_results_2.date), 
  sum(
    circuits_1.lat), 
  min(
    constructor_results_1.date), 
  max(
    constructor_results_1.date)
from 
  constructor_results as constructor_results_1
    inner join races as races_1
      inner join constructor_results as constructor_results_2
        inner join circuits as circuits_1
        on (constructor_results_2.constructorresultsid = circuits_1.circuitid )
      on (constructor_results_2.raceid = races_1.raceid )
    on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
where constructor_results_1.raceid = constructor_results_2.raceid
group by circuits_1.alt, circuits_1.circuitref, circuits_1.lat, circuits_1.lng, circuits_1.name, constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid, constructor_results_2.constructorresultsid, constructor_results_2.raceid, races_1.circuitid, races_1.date, races_1.name, races_1.round
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  max(
    constructor_standings_1.raceid)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position = constructor_standings_1.constructorid
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.wins
limit 3;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number, 
  results_1.statusid, 
  results_2.rank, 
  circuits_1.lat, 
  qualifying_1.constructorid
from 
  circuits as circuits_1
    inner join results as results_1
        inner join results as results_2
        on (results_1.resultid = results_2.resultid )
      inner join qualifying as qualifying_1
      on (results_1.resultid = qualifying_1.qualifyid )
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where qualifying_1.qualifyid is not NULL
limit 3;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_2.name, 
  constructors_1.nationality
from 
  constructors as constructors_1
        inner join circuits as circuits_1
        on (constructors_1.constructorid = circuits_1.circuitid )
      inner join constructors as constructors_2
      on (circuits_1.circuitid = constructors_2.constructorid )
    inner join constructor_standings as constructor_standings_1
    on (constructor_standings_1.constructorid = constructors_2.constructorid )
where constructors_1.name is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt, 
  circuits_1.location, 
  sum(
    circuits_1.circuitid), 
  circuits_1.circuitid, 
  avg(
    circuits_1.lat)
from 
  circuits as circuits_1
where circuits_1.location is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.location
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.date, 
  races_1.name, 
  races_1.time, 
  races_1.round, 
  races_1.raceid
from 
  races as races_1
where races_1.year is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.raceid, 
  qualifying_1.position, 
  qualifying_1.number, 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    races_1.date), 
  races_1.circuitid, 
  races_1.year, 
  races_1.date, 
  max(
    races_1.date), 
  races_1.raceid, 
  races_1.name, 
  min(
    races_1.date), 
  races_1.round
from 
  races as races_1
where races_1.round is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.year
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.date, 
  standings_1.driverid, 
  results_1.raceid, 
  avg(
    standings_1.driverstandingsid)
from 
  results as results_1
    inner join standings as standings_1
    on (results_1.resultid = standings_1.driverstandingsid )
where standings_1.driverid is not NULL
group by results_1.raceid, standings_1.date, standings_1.driverid
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.date
from 
  races as races_1
where races_1.time is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  min(
    constructor_standings_1.points)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date >= constructor_standings_1.date
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 2;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    results_1.positionorder), 
  results_1.positionorder, 
  results_1.rank, 
  max(
    results_1.date), 
  results_1.constructorid, 
  results_1.statusid, 
  count(
    results_1.date), 
  results_1.position, 
  results_1.driverid, 
  results_1.fastestlap, 
  results_1.number
from 
  results as results_1
where results_1.resultid is not NULL
group by results_1.constructorid, results_1.driverid, results_1.fastestlap, results_1.number, results_1.position, results_1.positionorder, results_1.rank, results_1.statusid
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  sum(
    standings_1.wins), 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.points is not NULL
group by standings_1.driverid
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year, 
  races_1.name
from 
  races as races_1
where races_1.round is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  standings_1.wins, 
  standings_1.date, 
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.date = standings_1.date
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.nationality, 
  drivers_1.dob, 
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.driverid >= drivers_1.driverid
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid < constructor_standings_1.raceid
limit 2;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    drivers_1.driverid), 
  max(
    circuits_1.lng), 
  circuits_1.country, 
  circuits_1.name, 
  circuits_1.alt, 
  drivers_1.surname
from 
  circuits as circuits_1
    inner join drivers as drivers_1
    on (circuits_1.circuitid = drivers_1.driverid )
where circuits_1.country is not NULL
group by circuits_1.alt, circuits_1.country, circuits_1.name, drivers_1.surname
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name, 
  circuits_1.alt, 
  circuits_1.location, 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.name is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.name, 
  constructor_results_1.constructorid, 
  races_1.raceid
from 
  races as races_1
    inner join constructor_results as constructor_results_1
    on (constructor_results_1.raceid = races_1.raceid )
where constructor_results_1.points >= constructor_results_1.points
limit 4;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    constructors_1.constructorid), 
  constructors_1.nationality, 
  races_1.date, 
  constructors_1.constructorref, 
  max(
    races_1.date), 
  races_1.time, 
  count(*), 
  constructors_1.constructorid, 
  races_1.circuitid
from 
  races as races_1
    inner join constructors as constructors_1
    on (races_1.raceid = constructors_1.constructorid )
where races_1.time > constructors_1.nationality
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality, races_1.circuitid, races_1.date, races_1.time
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.round
from 
  constructor_standings as constructor_standings_1
    inner join races as races_1
    on (constructor_standings_1.raceid = races_1.raceid )
where constructor_standings_1.constructorstandingsid is not NULL
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  results_1.statusid
from 
  results as results_1
    inner join constructor_results as constructor_results_1
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where results_1.number is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.positionorder, 
  results_1.statusid, 
  min(
    results_1.date), 
  results_1.fastestlap
from 
  results as results_1
where results_1.date < results_1.date
group by results_1.fastestlap, results_1.positionorder, results_1.statusid
limit 2;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  max(
    constructor_results_1.date)
from 
  constructor_results as constructor_results_1
    inner join constructors as constructors_1
    on (constructor_results_1.constructorid = constructors_1.constructorid )
where constructor_results_1.constructorid >= constructors_1.constructorid
group by constructor_results_1.raceid
limit 1;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_2.raceid, 
  constructor_results_1.constructorresultsid, 
  max(
    constructor_results_1.date), 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_2.constructorid, 
  constructor_results_2.constructorresultsid
from 
  constructor_results as constructor_results_1
    inner join constructor_results as constructor_results_2
    on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_2.constructorid, constructor_results_2.constructorresultsid, constructor_results_2.raceid
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*)
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position, 
  standings_1.driverstandingsid, 
  standings_1.date, 
  standings_1.driverid, 
  standings_1.wins, 
  max(
    standings_1.points)
from 
  standings as standings_1
where standings_1.wins is not NULL
group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.position, standings_1.wins
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.driverid, 
  results_1.statusid
from 
  results as results_1
where results_1.constructorid is not NULL
limit 2;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref, 
  drivers_1.forename, 
  drivers_1.dob, 
  standings_1.wins, 
  sum(
    standings_1.points), 
  max(
    qualifying_1.qualifyid)
from 
  qualifying as qualifying_1
    inner join standings as standings_1
      inner join drivers as drivers_1
      on (standings_1.driverid = drivers_1.driverid )
    on (qualifying_1.driverid = drivers_1.driverid )
where qualifying_1.date = drivers_1.dob
group by drivers_1.dob, drivers_1.driverref, drivers_1.forename, standings_1.wins
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.driverid
from 
  results as results_1
where results_1.fastestlap is not NULL
limit 3;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.date, 
  circuits_1.location, 
  constructor_results_1.constructorresultsid, 
  circuits_1.alt, 
  qualifying_1.driverid
from 
  constructor_results as constructor_results_1
        inner join results as results_1
        on (constructor_results_1.constructorresultsid = results_1.resultid )
      inner join constructors as constructors_1
        inner join qualifying as qualifying_1
        on (qualifying_1.constructorid = constructors_1.constructorid )
      on (constructor_results_1.constructorid = constructors_1.constructorid )
    inner join circuits as circuits_1
    on (results_1.resultid = circuits_1.circuitid )
where circuits_1.location is not NULL
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.points
from 
  qualifying as qualifying_1
    inner join standings as standings_1
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where qualifying_1.driverid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.name, 
  races_1.circuitid, 
  races_1.year
from 
  races as races_1
where races_1.time = races_1.name
limit 1;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_2.lat
from 
  constructor_results as constructor_results_1
      inner join circuits as circuits_1
      on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
    inner join circuits as circuits_2
        inner join constructor_standings as constructor_standings_1
        on (circuits_2.circuitid = constructor_standings_1.constructorstandingsid )
      inner join constructor_results as constructor_results_2
      on (constructor_standings_1.constructorstandingsid = constructor_results_2.constructorresultsid )
    on (circuits_1.circuitid = constructor_results_2.constructorresultsid )
where circuits_2.country is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_2.position
from 
  constructor_standings as constructor_standings_1
    inner join constructor_standings as constructor_standings_2
    on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
where constructor_standings_1.constructorstandingsid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.dob, 
  drivers_1.driverref
from 
  drivers as drivers_1
    inner join constructors as constructors_1
    on (drivers_1.driverid = constructors_1.constructorid )
where constructors_1.constructorid = drivers_1.driverid
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref, 
  circuits_1.alt, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.country is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.nationality, 
  drivers_1.driverref, 
  drivers_1.code, 
  max(
    drivers_1.dob), 
  drivers_1.driverid, 
  min(
    drivers_1.dob)
from 
  drivers as drivers_1
where drivers_1.driverid < drivers_1.driverid
group by drivers_1.code, drivers_1.driverid, drivers_1.driverref, drivers_1.nationality
limit 3;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name, 
  drivers_2.driverref, 
  drivers_1.dob, 
  drivers_1.driverid, 
  constructors_1.constructorid, 
  count(*), 
  drivers_2.dob, 
  drivers_1.forename
from 
  drivers as drivers_1
      inner join constructors as constructors_1
      on (drivers_1.driverid = constructors_1.constructorid )
    inner join drivers as drivers_2
    on (drivers_1.driverid = drivers_2.driverid )
where drivers_1.driverid >= drivers_2.driverid
group by constructors_1.constructorid, constructors_1.name, drivers_1.dob, drivers_1.driverid, drivers_1.forename, drivers_2.dob, drivers_2.driverref
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.positionorder, 
  results_1.milliseconds, 
  results_1.constructorid, 
  results_1.driverid, 
  max(
    results_1.positionorder)
from 
  results as results_1
where results_1.date < results_1.date
group by results_1.constructorid, results_1.driverid, results_1.milliseconds, results_1.positionorder
limit 1;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    races_1.round), 
  drivers_1.code, 
  races_1.circuitid
from 
  races as races_1
    inner join drivers as drivers_1
    on (races_1.raceid = drivers_1.driverid )
where drivers_1.driverid is not NULL
group by drivers_1.code, races_1.circuitid
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverid, 
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  count(*), 
  sum(
    constructors_1.constructorid), 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorid = constructors_1.constructorid
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid
from 
  constructor_standings as constructor_standings_1
    inner join standings as standings_1
    on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
where standings_1.raceid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.raceid, 
  qualifying_1.qualifyid, 
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid, 
  standings_1.position, 
  standings_1.wins, 
  standings_1.points
from 
  standings as standings_1
where standings_1.wins is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    results_1.rank), 
  results_1.fastestlap
from 
  results as results_1
where results_1.raceid is not NULL
group by results_1.fastestlap
limit 2;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_2.constructorid
from 
  standings as standings_1
        inner join drivers as drivers_1
        on (standings_1.driverid = drivers_1.driverid )
      inner join results as results_1
      on (results_1.driverid = drivers_1.driverid )
    inner join constructors as constructors_1
        inner join races as races_1
        on (constructors_1.constructorid = races_1.raceid )
      inner join constructors as constructors_2
      on (races_1.raceid = constructors_2.constructorid )
    on (results_1.constructorid = constructors_1.constructorid )
where standings_1.raceid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    constructors_1.constructorid), 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  min(
    constructors_1.constructorid), 
  count(
    constructors_1.nationality), 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.raceid, 
  min(
    qualifying_1.date), 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.date < qualifying_1.date
group by qualifying_1.qualifyid, qualifying_1.raceid
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.surname, 
  drivers_1.code, 
  drivers_1.forename, 
  drivers_1.driverref, 
  sum(
    drivers_1.driverid), 
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.driverid = drivers_1.driverid
group by drivers_1.code, drivers_1.dob, drivers_1.driverref, drivers_1.forename, drivers_1.surname
limit 2;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    results_1.position), 
  constructors_1.constructorid, 
  results_1.resultid, 
  results_1.date
from 
  constructors as constructors_1
    inner join results as results_1
    on (results_1.constructorid = constructors_1.constructorid )
where constructors_1.name is not NULL
group by constructors_1.constructorid, results_1.date, results_1.resultid
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select distinct 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins, 
  qualifying_1.raceid, 
  qualifying_1.position, 
  constructor_standings_1.raceid
from 
  qualifying as qualifying_1
    inner join constructor_standings as constructor_standings_1
    on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.position is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt, 
  circuits_1.lng, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.location = circuits_1.circuitref
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins, 
  sum(
    constructor_standings_1.raceid), 
  constructor_standings_1.position, 
  constructor_standings_1.date, 
  constructor_standings_1.raceid, 
  avg(
    constructor_standings_1.raceid)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  count(*)
from 
  constructor_results as constructor_results_1
where constructor_results_1.date >= constructor_results_1.date
group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.raceid
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
limit 1;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.nationality, 
  races_1.time, 
  constructor_standings_1.points
from 
  standings as standings_1
      inner join drivers as drivers_1
      on (standings_1.driverid = drivers_1.driverid )
    inner join constructor_standings as constructor_standings_1
      inner join races as races_1
      on (constructor_standings_1.raceid = races_1.raceid )
    on (standings_1.raceid = races_1.raceid )
where races_1.date is not NULL
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_2.points
from 
  constructor_standings as constructor_standings_1
    inner join constructor_standings as constructor_standings_2
    on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
where constructor_standings_2.date > constructor_standings_1.date
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name, 
  circuits_1.circuitref, 
  circuits_1.country
from 
  circuits as circuits_1
where circuits_1.name is not NULL
limit 1;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.raceid
from 
  results as results_1
    inner join qualifying as qualifying_1
      inner join constructor_standings as constructor_standings_1
      on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
    on (results_1.resultid = qualifying_1.qualifyid )
where constructor_standings_1.constructorid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":6,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.raceid, 
  qualifying_1.qualifyid, 
  max(
    qualifying_1.date), 
  qualifying_1.constructorid, 
  max(
    qualifying_1.date), 
  max(
    qualifying_1.date), 
  qualifying_1.number, 
  avg(
    qualifying_1.qualifyid), 
  max(
    qualifying_1.raceid), 
  qualifying_1.position, 
  qualifying_1.driverid, 
  qualifying_1.date, 
  min(
    qualifying_1.driverid)
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number, 
  max(
    qualifying_1.date), 
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.number, qualifying_1.position
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.points
from 
  standings as standings_1
where standings_1.date is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    standings_1.date), 
  standings_1.wins, 
  standings_1.points, 
  max(
    standings_1.points), 
  standings_1.driverid, 
  max(
    standings_1.date), 
  standings_1.position, 
  standings_1.driverstandingsid, 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.points = standings_1.points
group by standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  min(
    constructor_results_1.date)
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverstandingsid, 
  standings_1.position, 
  standings_1.points, 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.date is not NULL
limit 3;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.dob, 
  constructors_1.name, 
  constructors_1.constructorid, 
  drivers_1.surname, 
  avg(
    constructors_1.constructorid), 
  min(
    drivers_1.dob)
from 
  drivers as drivers_1
      inner join constructors as constructors_1
      on (drivers_1.driverid = constructors_1.constructorid )
    inner join constructors as constructors_2
    on (drivers_1.driverid = constructors_2.constructorid )
where constructors_1.nationality <= drivers_1.nationality
group by constructors_1.constructorid, constructors_1.name, drivers_1.dob, drivers_1.surname
limit 1;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_2.lng, 
  circuits_2.country
from 
  results as results_1
        inner join circuits as circuits_1
        on (results_1.resultid = circuits_1.circuitid )
      inner join standings as standings_1
      on (results_1.resultid = standings_1.driverstandingsid )
    inner join circuits as circuits_2
      inner join constructor_results as constructor_results_1
        inner join drivers as drivers_1
        on (constructor_results_1.constructorresultsid = drivers_1.driverid )
      on (circuits_2.circuitid = constructor_results_1.constructorresultsid )
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where circuits_1.name >= drivers_1.forename
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_2.forename, 
  drivers_2.dob
from 
  drivers as drivers_1
    inner join drivers as drivers_2
    on (drivers_1.driverid = drivers_2.driverid )
where drivers_2.driverid is not NULL
limit 1;
-- meta {"num_joins":3,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.position, 
  count(
    qualifying_1.position), 
  constructor_results_1.raceid, 
  avg(
    qualifying_1.number), 
  constructor_standings_1.wins, 
  standings_1.points, 
  constructor_results_1.constructorid, 
  standings_1.wins, 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  avg(
    constructor_results_1.points), 
  qualifying_1.raceid
from 
  constructor_results as constructor_results_1
    inner join constructor_standings as constructor_standings_1
        inner join standings as standings_1
        on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
      inner join qualifying as qualifying_1
      on (standings_1.driverstandingsid = qualifying_1.qualifyid )
    on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
where qualifying_1.position is not NULL
group by constructor_results_1.constructorid, constructor_results_1.raceid, constructor_standings_1.wins, qualifying_1.constructorid, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid, standings_1.points, standings_1.wins
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    drivers_1.driverid), 
  drivers_1.forename, 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.forename >= drivers_1.surname
group by drivers_1.forename, drivers_1.nationality
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.code, 
  races_1.name
from 
  drivers as drivers_1
    inner join races as races_1
    on (drivers_1.driverid = races_1.raceid )
where races_1.date >= drivers_1.dob
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  constructors_1.constructorref, 
  max(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.constructorref, constructors_1.nationality
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.name, 
  races_1.circuitid
from 
  races as races_1
where races_1.name = races_1.time
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins, 
  standings_1.position, 
  standings_1.driverid, 
  standings_1.points
from 
  standings as standings_1
where standings_1.position is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins, 
  constructor_standings_1.raceid, 
  constructor_standings_1.date, 
  constructor_standings_1.points, 
  max(
    constructor_standings_1.date)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
group by constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.wins
limit 1;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructors_1.constructorid), 
  count(
    constructors_1.constructorref), 
  constructors_1.constructorid, 
  count(
    constructors_1.nationality), 
  constructors_1.nationality, 
  sum(
    constructors_1.constructorid), 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorref >= constructors_1.name
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.positionorder, 
  results_1.laps, 
  results_1.milliseconds, 
  results_1.date, 
  results_1.number, 
  max(
    results_1.points), 
  results_1.position
from 
  results as results_1
where results_1.fastestlap >= results_1.rank
group by results_1.date, results_1.laps, results_1.milliseconds, results_1.number, results_1.position, results_1.positionorder
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    qualifying_1.date), 
  qualifying_1.number, 
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  qualifying_1.driverid, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.number, qualifying_1.qualifyid, qualifying_1.raceid
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins, 
  constructor_standings_1.date, 
  constructor_standings_1.raceid, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.constructorid, 
  sum(
    constructor_standings_1.raceid), 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 3;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_2.milliseconds, 
  results_1.positionorder, 
  min(
    drivers_1.dob)
from 
  results as results_1
      inner join qualifying as qualifying_1
        inner join results as results_2
        on (qualifying_1.qualifyid = results_2.resultid )
      on (results_1.resultid = results_2.resultid )
    inner join drivers as drivers_1
    on (results_1.driverid = drivers_1.driverid )
where results_1.date >= qualifying_1.date
group by results_1.positionorder, results_2.milliseconds
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.points
from 
  results as results_1
where results_1.date > results_1.date
limit 2;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructor_standings_2.date, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.position, 
  circuits_1.circuitid, 
  circuits_1.circuitref, 
  drivers_1.surname, 
  drivers_1.dob
from 
  constructor_standings as constructor_standings_1
        inner join drivers as drivers_1
        on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
      inner join constructor_standings as constructor_standings_2
        inner join circuits as circuits_1
        on (constructor_standings_2.constructorstandingsid = circuits_1.circuitid )
      on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
    inner join constructors as constructors_1
    on (circuits_1.circuitid = constructors_1.constructorid )
where constructors_1.constructorid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.grid, 
  results_1.resultid, 
  results_1.position, 
  results_1.laps, 
  max(
    results_1.date), 
  results_1.number
from 
  results as results_1
where results_1.date is not NULL
group by results_1.grid, results_1.laps, results_1.number, results_1.position, results_1.resultid
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_results_1.date), 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.constructorid, 
  qualifying_1.date, 
  qualifying_1.qualifyid, 
  qualifying_1.number, 
  qualifying_1.raceid, 
  qualifying_1.driverid, 
  min(
    qualifying_1.date)
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.qualifyid, qualifying_1.raceid
limit 1;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.points, 
  max(
    constructor_standings_1.points), 
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date, 
  avg(
    constructor_standings_1.points), 
  min(
    constructor_standings_1.date)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitid, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins, 
  standings_1.points, 
  standings_2.driverid, 
  standings_1.driverstandingsid, 
  standings_2.date
from 
  standings as standings_1
    inner join standings as standings_2
    on (standings_1.driverstandingsid = standings_2.driverstandingsid )
where standings_2.date is not NULL
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.dob, 
  constructors_1.constructorref, 
  drivers_1.code
from 
  drivers as drivers_1
    inner join constructors as constructors_1
    on (drivers_1.driverid = constructors_1.constructorid )
where drivers_1.dob >= drivers_1.dob
limit 3;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_2.time, 
  races_2.name, 
  races_2.year, 
  races_2.raceid, 
  races_1.time, 
  races_1.year, 
  races_2.circuitid, 
  races_1.raceid, 
  races_1.circuitid, 
  races_1.date, 
  races_2.date, 
  min(
    races_2.date), 
  races_1.round
from 
  races as races_1
    inner join races as races_2
    on (races_1.raceid = races_2.raceid )
where races_2.circuitid is not NULL
group by races_1.circuitid, races_1.date, races_1.raceid, races_1.round, races_1.time, races_1.year, races_2.circuitid, races_2.date, races_2.name, races_2.raceid, races_2.time, races_2.year
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.position <= standings_1.driverid
group by standings_1.raceid
limit 4;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_2.laps, 
  constructor_standings_1.position, 
  constructors_1.name, 
  count(
    results_1.resultid)
from 
  results as results_1
    inner join constructor_standings as constructor_standings_1
        inner join results as results_2
        on (constructor_standings_1.constructorstandingsid = results_2.resultid )
      inner join constructors as constructors_1
      on (constructor_standings_1.constructorid = constructors_1.constructorid )
    on (results_1.resultid = results_2.resultid )
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.position, constructors_1.name, results_2.laps
limit 2;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.raceid
from 
  constructor_standings as constructor_standings_1
      inner join qualifying as qualifying_1
          inner join drivers as drivers_1
          on (qualifying_1.driverid = drivers_1.driverid )
        inner join drivers as drivers_2
        on (drivers_1.driverid = drivers_2.driverid )
      on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
    inner join races as races_1
    on (constructor_standings_1.raceid = races_1.raceid )
where constructor_standings_1.points <= constructor_standings_1.points
limit 3;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.milliseconds, 
  drivers_1.code
from 
  drivers as drivers_1
        inner join drivers as drivers_2
        on (drivers_1.driverid = drivers_2.driverid )
      inner join races as races_1
      on (drivers_1.driverid = races_1.raceid )
    inner join results as results_1
        inner join constructor_results as constructor_results_1
        on (results_1.resultid = constructor_results_1.constructorresultsid )
      inner join qualifying as qualifying_1
      on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
    on (results_1.raceid = races_1.raceid )
where results_1.constructorid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.date, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    constructor_results_1.constructorresultsid), 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.date >= constructor_results_1.date
group by constructor_results_1.points
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.number, 
  results_1.raceid, 
  results_1.laps, 
  max(
    results_1.date), 
  results_1.constructorid
from 
  results as results_1
where results_1.constructorid is not NULL
group by results_1.constructorid, results_1.laps, results_1.number, results_1.raceid
limit 1;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    races_1.raceid), 
  circuits_1.location, 
  races_1.name
from 
  races as races_1
    inner join circuits as circuits_1
    on (races_1.circuitid = circuits_1.circuitid )
where circuits_1.name is not NULL
group by circuits_1.location, races_1.name
limit 1;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  avg(
    circuits_1.lat), 
  constructors_1.constructorid, 
  results_1.points, 
  min(
    results_1.date), 
  constructors_1.name, 
  results_1.number
from 
  results as results_1
      inner join constructors as constructors_1
      on (results_1.constructorid = constructors_1.constructorid )
    inner join circuits as circuits_1
    on (results_1.resultid = circuits_1.circuitid )
where circuits_1.circuitid is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, results_1.number, results_1.points
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    constructor_results_1.constructorresultsid), 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.date
limit 1;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.code, 
  qualifying_1.date, 
  drivers_1.forename, 
  constructor_results_1.points, 
  qualifying_1.position, 
  standings_1.points, 
  drivers_1.driverid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
        inner join drivers as drivers_1
        on (constructor_results_1.constructorresultsid = drivers_1.driverid )
      inner join standings as standings_1
      on (standings_1.driverid = drivers_1.driverid )
    inner join qualifying as qualifying_1
    on (qualifying_1.driverid = drivers_1.driverid )
where constructor_results_1.points is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year, 
  races_1.date, 
  races_1.round, 
  min(
    constructor_results_1.date), 
  min(
    races_1.date), 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  min(
    races_1.date), 
  races_1.raceid, 
  constructor_results_1.date, 
  races_1.circuitid, 
  max(
    constructor_results_1.points), 
  races_1.name, 
  min(
    constructor_results_1.points)
from 
  constructor_results as constructor_results_1
    inner join races as races_1
    on (constructor_results_1.raceid = races_1.raceid )
where races_1.time is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.raceid, races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.year
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.number, 
  results_1.milliseconds, 
  results_1.positionorder, 
  results_1.position, 
  results_1.constructorid, 
  results_1.date, 
  min(
    results_1.fastestlap), 
  results_1.laps, 
  results_1.points, 
  results_1.rank, 
  results_1.fastestlap, 
  results_1.grid
from 
  results as results_1
where results_1.statusid is not NULL
group by results_1.constructorid, results_1.date, results_1.fastestlap, results_1.grid, results_1.laps, results_1.milliseconds, results_1.number, results_1.points, results_1.position, results_1.positionorder, results_1.rank
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
limit 1;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructor_standings_1.raceid), 
  constructor_standings_1.constructorid, 
  races_1.name
from 
  constructor_standings as constructor_standings_1
    inner join races as races_1
    on (constructor_standings_1.raceid = races_1.raceid )
where constructor_standings_1.points = constructor_standings_1.points
group by constructor_standings_1.constructorid, races_1.name
limit 2;
-- meta {"num_joins":6,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_3.points
from 
  qualifying as qualifying_1
      inner join drivers as drivers_1
          inner join standings as standings_1
          on (standings_1.driverid = drivers_1.driverid )
        inner join constructor_results as constructor_results_1
        on (drivers_1.driverid = constructor_results_1.constructorresultsid )
      on (qualifying_1.driverid = drivers_1.driverid )
    inner join standings as standings_2
      inner join standings as standings_3
        inner join standings as standings_4
        on (standings_3.driverstandingsid = standings_4.driverstandingsid )
      on (standings_2.driverstandingsid = standings_4.driverstandingsid )
    on (standings_1.driverstandingsid = standings_2.driverstandingsid )
where drivers_1.nationality is not NULL
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.raceid
from 
  constructor_results as constructor_results_1
    inner join results as results_1
    on (constructor_results_1.constructorresultsid = results_1.resultid )
where results_1.resultid is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.raceid, 
  constructors_1.constructorref, 
  constructors_1.name, 
  qualifying_1.position, 
  constructors_1.constructorid, 
  avg(
    qualifying_1.qualifyid), 
  qualifying_1.constructorid, 
  qualifying_1.driverid, 
  constructors_1.nationality, 
  max(
    qualifying_1.date), 
  min(
    qualifying_1.date), 
  qualifying_1.qualifyid, 
  min(
    qualifying_1.qualifyid)
from 
  constructors as constructors_1
    inner join qualifying as qualifying_1
    on (qualifying_1.constructorid = constructors_1.constructorid )
where qualifying_1.qualifyid is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality, qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 2;
-- meta {"num_joins":5,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  constructor_standings_2.date, 
  qualifying_1.constructorid, 
  min(
    constructor_standings_2.date), 
  constructors_1.name, 
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  drivers_1.surname, 
  qualifying_1.qualifyid, 
  count(
    constructor_standings_2.points)
from 
  constructor_standings as constructor_standings_1
          inner join constructors as constructors_1
          on (constructor_standings_1.constructorid = constructors_1.constructorid )
        inner join qualifying as qualifying_1
        on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
      inner join constructor_standings as constructor_standings_2
      on (constructor_standings_2.constructorid = constructors_1.constructorid )
    inner join circuits as circuits_1
      inner join drivers as drivers_1
      on (circuits_1.circuitid = drivers_1.driverid )
    on (constructor_standings_2.constructorstandingsid = circuits_1.circuitid )
where constructor_standings_2.points = circuits_1.alt
group by constructor_standings_1.points, constructor_standings_1.wins, constructor_standings_2.date, constructors_1.name, drivers_1.surname, qualifying_1.constructorid, qualifying_1.date, qualifying_1.qualifyid
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorid = constructors_1.constructorid
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid < constructor_standings_1.raceid
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number, 
  races_1.year, 
  qualifying_1.qualifyid, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
    inner join races as races_1
    on (qualifying_1.raceid = races_1.raceid )
where qualifying_1.driverid is not NULL
limit 4;
-- meta {"num_joins":6,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.date, 
  circuits_1.circuitid, 
  constructors_1.name, 
  drivers_1.dob, 
  constructor_results_1.constructorid, 
  min(
    constructor_results_1.points), 
  races_1.time
from 
  circuits as circuits_1
      inner join constructors as constructors_1
          inner join constructor_results as constructor_results_1
          on (constructor_results_1.constructorid = constructors_1.constructorid )
        inner join races as races_1
          inner join qualifying as qualifying_1
          on (qualifying_1.raceid = races_1.raceid )
        on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
      on (circuits_1.circuitid = qualifying_1.qualifyid )
    inner join constructor_standings as constructor_standings_1
      inner join drivers as drivers_1
      on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
    on (races_1.raceid = drivers_1.driverid )
where drivers_1.nationality is not NULL
group by circuits_1.circuitid, constructor_results_1.constructorid, constructors_1.name, drivers_1.dob, races_1.date, races_1.time
limit 4;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructor_standings_1.raceid, 
  constructors_1.constructorref, 
  max(
    constructor_standings_1.date), 
  constructor_standings_1.wins, 
  max(
    constructor_standings_1.date), 
  max(
    constructor_standings_1.date), 
  constructor_standings_1.constructorstandingsid
from 
  constructors as constructors_1
    inner join constructor_standings as constructor_standings_1
    on (constructor_standings_1.constructorid = constructors_1.constructorid )
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.raceid, constructor_standings_1.wins, constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality
limit 4;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid, 
  avg(
    standings_1.position)
from 
  standings as standings_1
    inner join circuits as circuits_1
      inner join drivers as drivers_1
      on (circuits_1.circuitid = drivers_1.driverid )
    on (standings_1.driverstandingsid = circuits_1.circuitid )
where drivers_1.forename is not NULL
group by standings_1.driverid
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 4;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.time, 
  min(
    standings_1.points), 
  standings_2.driverid
from 
  races as races_1
    inner join standings as standings_1
      inner join standings as standings_2
      on (standings_1.driverstandingsid = standings_2.driverstandingsid )
    on (standings_1.raceid = races_1.raceid )
where standings_1.points >= standings_2.points
group by races_1.time, standings_2.driverid
limit 1;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  avg(
    constructor_results_1.constructorid)
from 
  constructor_results as constructor_results_1
    inner join constructor_results as constructor_results_2
    on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
where constructor_results_2.constructorresultsid is not NULL
group by constructor_results_1.raceid
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  min(
    constructors_1.constructorid), 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorid <= constructors_1.constructorid
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 3;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.code, 
  drivers_1.driverid, 
  drivers_1.dob, 
  drivers_1.driverref, 
  max(
    drivers_1.dob), 
  drivers_1.nationality, 
  drivers_1.surname, 
  drivers_1.forename, 
  avg(
    drivers_1.driverid), 
  count(
    drivers_1.driverref), 
  count(*), 
  count(
    drivers_1.surname)
from 
  drivers as drivers_1
where drivers_1.dob >= drivers_1.dob
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.surname, 
  standings_1.points, 
  standings_1.position, 
  standings_1.raceid
from 
  drivers as drivers_1
    inner join standings as standings_1
    on (standings_1.driverid = drivers_1.driverid )
where drivers_1.dob is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref, 
  count(
    drivers_1.forename), 
  drivers_1.code, 
  drivers_1.dob, 
  max(
    drivers_1.dob)
from 
  drivers as drivers_1
where drivers_1.code >= drivers_1.surname
group by drivers_1.code, drivers_1.dob, drivers_1.driverref
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.constructorref, 
  count(
    constructors_1.name), 
  constructors_1.nationality, 
  max(
    constructors_1.constructorid), 
  min(
    constructors_1.constructorid), 
  max(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  count(
    constructor_results_1.constructorresultsid)
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid > constructor_results_1.constructorresultsid
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.raceid
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.qualifyid, 
  qualifying_1.position, 
  min(
    qualifying_1.date), 
  min(
    qualifying_1.position), 
  qualifying_1.driverid, 
  qualifying_1.constructorid, 
  qualifying_1.number, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
group by qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 3;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.statusid, 
  results_1.raceid, 
  min(
    results_2.fastestlap)
from 
  results as results_1
      inner join results as results_2
        inner join constructor_standings as constructor_standings_1
        on (results_2.resultid = constructor_standings_1.constructorstandingsid )
      on (results_1.resultid = results_2.resultid )
    inner join results as results_3
    on (results_2.resultid = results_3.resultid )
where results_2.position is not NULL
group by results_1.raceid, results_1.statusid
limit 3;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location, 
  sum(
    circuits_1.lat), 
  circuits_1.circuitref, 
  circuits_1.country, 
  circuits_1.alt, 
  circuits_1.name, 
  avg(
    circuits_1.alt), 
  max(
    circuits_1.circuitid), 
  avg(
    circuits_1.circuitid), 
  count(*), 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.location is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.location, circuits_1.name
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.forename, 
  drivers_1.driverid, 
  drivers_1.nationality, 
  drivers_1.code, 
  drivers_1.dob, 
  min(
    drivers_1.dob), 
  avg(
    drivers_1.driverid)
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.forename, drivers_1.nationality
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  circuits_1.country, 
  circuits_1.lat
from 
  circuits as circuits_1
    inner join constructor_results as constructor_results_1
    on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
where constructor_results_1.constructorresultsid < circuits_1.circuitid
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  constructors_1.constructorid, 
  count(*), 
  min(
    constructors_1.constructorid), 
  constructors_1.constructorref, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 4;
-- meta {"num_joins":8,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.surname, 
  constructor_results_1.constructorresultsid, 
  results_2.resultid, 
  constructor_standings_1.wins, 
  results_1.milliseconds, 
  results_1.number
from 
  results as results_1
        inner join races as races_1
          inner join constructor_results as constructor_results_1
          on (constructor_results_1.raceid = races_1.raceid )
        on (results_1.resultid = constructor_results_1.constructorresultsid )
      inner join constructor_results as constructor_results_2
        inner join results as results_2
        on (constructor_results_2.constructorresultsid = results_2.resultid )
      on (results_1.resultid = results_2.resultid )
    inner join constructor_standings as constructor_standings_1
      inner join drivers as drivers_1
          inner join standings as standings_1
          on (standings_1.driverid = drivers_1.driverid )
        inner join constructor_results as constructor_results_3
        on (standings_1.driverstandingsid = constructor_results_3.constructorresultsid )
      on (constructor_standings_1.constructorstandingsid = constructor_results_3.constructorresultsid )
    on (results_1.resultid = constructor_results_3.constructorresultsid )
where results_2.position <= results_1.points
limit 4;
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref, 
  results_1.laps, 
  results_1.grid, 
  count(
    results_1.driverid), 
  min(
    results_1.grid), 
  results_1.date, 
  results_1.milliseconds, 
  avg(
    results_1.driverid), 
  min(
    results_1.date), 
  results_1.resultid, 
  drivers_1.nationality, 
  drivers_1.driverid, 
  drivers_1.forename
from 
  drivers as drivers_1
    inner join results as results_1
    on (results_1.driverid = drivers_1.driverid )
where drivers_1.surname is not NULL
group by drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, results_1.date, results_1.grid, results_1.laps, results_1.milliseconds, results_1.resultid
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  constructor_results_1.date, 
  min(
    constructor_results_1.points), 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date >= constructor_results_1.date
group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points
limit 1;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  races_1.raceid, 
  avg(
    constructor_results_1.constructorid), 
  sum(
    constructor_results_1.raceid), 
  races_1.date, 
  races_1.time, 
  max(
    constructor_results_1.constructorresultsid), 
  constructor_results_1.date, 
  constructor_results_1.constructorid
from 
  races as races_1
    inner join constructor_results as constructor_results_1
    on (constructor_results_1.raceid = races_1.raceid )
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.raceid, races_1.date, races_1.raceid, races_1.time
limit 1;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructors_1.constructorid), 
  constructors_1.name, 
  constructors_1.constructorid, 
  count(*), 
  constructors_1.constructorref, 
  avg(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name
limit 4;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.grid, 
  max(
    results_1.positionorder), 
  qualifying_1.driverid, 
  qualifying_1.constructorid
from 
  results as results_1
    inner join qualifying as qualifying_1
    on (results_1.resultid = qualifying_1.qualifyid )
where qualifying_1.position is not NULL
group by qualifying_1.constructorid, qualifying_1.driverid, results_1.grid
limit 4;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    standings_1.date), 
  min(
    standings_1.date), 
  sum(
    standings_1.position), 
  standings_1.date
from 
  constructor_standings as constructor_standings_1
    inner join standings as standings_1
    on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
where standings_1.wins is not NULL
group by standings_1.date
limit 3;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins, 
  avg(
    standings_1.driverstandingsid), 
  races_1.time, 
  results_1.points, 
  standings_1.date, 
  results_1.fastestlap, 
  constructor_standings_1.points
from 
  constructors as constructors_1
        inner join standings as standings_1
        on (constructors_1.constructorid = standings_1.driverstandingsid )
      inner join constructor_standings as constructor_standings_1
      on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
    inner join races as races_1
      inner join results as results_1
      on (results_1.raceid = races_1.raceid )
    on (standings_1.raceid = races_1.raceid )
where results_1.constructorid is not NULL
group by constructor_standings_1.points, constructor_standings_1.wins, races_1.time, results_1.fastestlap, results_1.points, standings_1.date
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    qualifying_1.constructorid), 
  qualifying_1.raceid, 
  min(
    qualifying_1.date), 
  qualifying_1.constructorid, 
  qualifying_1.driverid, 
  qualifying_1.number, 
  sum(
    qualifying_1.qualifyid), 
  max(
    qualifying_1.date), 
  count(
    qualifying_1.raceid)
from 
  qualifying as qualifying_1
where qualifying_1.driverid < qualifying_1.constructorid
group by qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.number, qualifying_1.raceid
limit 2;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    qualifying_1.raceid), 
  qualifying_1.qualifyid, 
  qualifying_1.number, 
  constructors_1.constructorid, 
  qualifying_1.date, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
    inner join constructors as constructors_1
    on (qualifying_1.constructorid = constructors_1.constructorid )
where qualifying_1.constructorid < qualifying_1.position
group by constructors_1.constructorid, qualifying_1.constructorid, qualifying_1.date, qualifying_1.number, qualifying_1.qualifyid
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorref = constructors_1.nationality
limit 1;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.number, 
  results_1.date, 
  constructors_1.constructorref, 
  results_1.constructorid, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
      inner join results as results_1
      on (constructor_standings_1.constructorstandingsid = results_1.resultid )
    inner join constructors as constructors_1
    on (results_1.constructorid = constructors_1.constructorid )
where constructor_standings_1.date = results_1.date
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid, 
  count(
    qualifying_1.position), 
  qualifying_1.constructorid, 
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
group by qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.position
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
    inner join races as races_1
    on (constructor_standings_1.raceid = races_1.raceid )
where constructor_standings_1.points <= constructor_standings_1.points
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  qualifying_1.number, 
  min(
    qualifying_1.date), 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.number
limit 1;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_2.name, 
  constructors_1.constructorref, 
  count(
    circuits_2.location)
from 
  circuits as circuits_1
    inner join circuits as circuits_2
      inner join constructors as constructors_1
      on (circuits_2.circuitid = constructors_1.constructorid )
    on (circuits_1.circuitid = circuits_2.circuitid )
where constructors_1.name is not NULL
group by circuits_2.name, constructors_1.constructorref
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid >= constructor_results_1.constructorresultsid
limit 3;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    drivers_1.dob)
from 
  drivers as drivers_1
    inner join circuits as circuits_1
    on (drivers_1.driverid = circuits_1.circuitid )
where drivers_1.nationality is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.position, 
  constructor_standings_1.points, 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position, 
  standings_1.driverid, 
  avg(
    circuits_1.lng), 
  standings_1.wins, 
  standings_1.raceid, 
  sum(
    circuits_1.alt), 
  min(
    standings_1.wins), 
  circuits_1.circuitid, 
  standings_1.date, 
  standings_1.driverstandingsid, 
  sum(
    circuits_1.lat), 
  circuits_1.country, 
  circuits_1.name, 
  circuits_1.alt, 
  circuits_1.location, 
  circuits_1.circuitref, 
  max(
    standings_1.date)
from 
  circuits as circuits_1
    inner join standings as standings_1
    on (circuits_1.circuitid = standings_1.driverstandingsid )
where circuits_1.location < circuits_1.name
group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.location, circuits_1.name, standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.position, standings_1.raceid, standings_1.wins
limit 4;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid, 
  qualifying_1.date, 
  count(
    qualifying_1.raceid), 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  qualifying_1.position, 
  count(
    qualifying_1.number), 
  qualifying_1.number, 
  max(
    qualifying_1.date)
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  avg(
    constructors_1.constructorid), 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.constructorref
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name, 
  constructors_1.constructorref, 
  count(
    constructors_1.nationality)
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorref, constructors_1.name
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.date, 
  races_1.time, 
  count(
    races_1.round), 
  races_1.year, 
  races_1.round
from 
  races as races_1
where races_1.name is not NULL
group by races_1.date, races_1.round, races_1.time, races_1.year
limit 2;
-- meta {"num_joins":4,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    constructor_results_3.points), 
  constructor_results_3.constructorid, 
  avg(
    constructor_results_3.points), 
  constructors_1.constructorid, 
  constructors_2.name, 
  constructors_2.nationality
from 
  constructors as constructors_1
        inner join constructor_results as constructor_results_1
        on (constructor_results_1.constructorid = constructors_1.constructorid )
      inner join constructor_results as constructor_results_2
        inner join constructors as constructors_2
        on (constructor_results_2.constructorid = constructors_2.constructorid )
      on (constructors_1.constructorid = constructors_2.constructorid )
    inner join constructor_results as constructor_results_3
    on (constructor_results_1.constructorresultsid = constructor_results_3.constructorresultsid )
where constructor_results_3.points is not NULL
group by constructor_results_3.constructorid, constructors_1.constructorid, constructors_2.name, constructors_2.nationality
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.code, 
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.code is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.name
from 
  races as races_1
where races_1.date < races_1.date
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position, 
  standings_1.driverid, 
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.wins is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverstandingsid, 
  count(*)
from 
  standings as standings_1
where standings_1.wins is not NULL
group by standings_1.driverstandingsid
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.nationality, 
  drivers_1.forename, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref, 
  drivers_1.forename, 
  drivers_1.nationality, 
  drivers_1.code, 
  drivers_1.dob, 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.code is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.points, 
  standings_1.wins, 
  standings_1.raceid, 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.wins is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lng, 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
limit 3;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.surname, 
  drivers_1.code, 
  max(
    results_1.position)
from 
  drivers as drivers_1
    inner join results as results_1
    on (results_1.driverid = drivers_1.driverid )
where drivers_1.dob <= results_1.date
group by drivers_1.code, drivers_1.surname
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverid, 
  circuits_1.circuitid, 
  drivers_1.code, 
  circuits_1.name, 
  circuits_1.lng
from 
  drivers as drivers_1
    inner join circuits as circuits_1
    on (drivers_1.driverid = circuits_1.circuitid )
where circuits_1.alt is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year, 
  races_1.round, 
  min(
    races_1.year), 
  races_1.time
from 
  races as races_1
where races_1.time is not NULL
group by races_1.round, races_1.time, races_1.year
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date, 
  avg(
    constructor_standings_1.points), 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.wins
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.raceid, 
  races_1.year, 
  races_1.round, 
  races_1.date, 
  races_1.time, 
  max(
    races_1.date)
from 
  races as races_1
where races_1.round is not NULL
group by races_1.date, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 3;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    results_1.resultid), 
  max(
    constructor_results_2.date), 
  results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  results_1.driverid
from 
  constructor_results as constructor_results_1
    inner join constructor_results as constructor_results_2
      inner join results as results_1
      on (constructor_results_2.constructorresultsid = results_1.resultid )
    on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
where constructor_results_2.points <= results_1.number
group by constructor_results_1.constructorresultsid, results_1.driverid, results_1.raceid
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
    inner join circuits as circuits_1
    on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
where constructor_standings_1.constructorid > constructor_standings_1.wins
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.position is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid, 
  races_1.date, 
  races_1.time
from 
  races as races_1
where races_1.time > races_1.name
limit 4;
-- meta {"num_joins":5,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    results_1.date), 
  results_1.laps, 
  avg(
    results_1.rank), 
  constructors_4.constructorid, 
  max(
    constructor_results_1.raceid), 
  constructors_1.constructorref, 
  constructors_4.nationality
from 
  constructor_results as constructor_results_1
    inner join constructors as constructors_1
          inner join constructors as constructors_2
          on (constructors_1.constructorid = constructors_2.constructorid )
        inner join constructors as constructors_3
        on (constructors_1.constructorid = constructors_3.constructorid )
      inner join results as results_1
        inner join constructors as constructors_4
        on (results_1.constructorid = constructors_4.constructorid )
      on (results_1.constructorid = constructors_3.constructorid )
    on (constructor_results_1.constructorid = constructors_4.constructorid )
where results_1.positionorder = constructors_2.constructorid
group by constructors_1.constructorref, constructors_4.constructorid, constructors_4.nationality, results_1.laps
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    results_1.raceid), 
  results_1.positionorder, 
  results_1.points, 
  results_1.laps, 
  results_1.milliseconds, 
  sum(
    results_1.fastestlap)
from 
  results as results_1
where results_1.number is not NULL
group by results_1.laps, results_1.milliseconds, results_1.points, results_1.positionorder
limit 2;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number
from 
  qualifying as qualifying_1
    inner join constructor_results as constructor_results_1
      inner join qualifying as qualifying_2
      on (constructor_results_1.constructorresultsid = qualifying_2.qualifyid )
    on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
where qualifying_2.date > qualifying_1.date
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date, 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.wins, 
  max(
    constructor_standings_1.points), 
  constructor_standings_1.points, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points > constructor_standings_1.points
group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  sum(
    circuits_1.alt), 
  circuits_1.location, 
  circuits_1.lng, 
  circuits_1.circuitid, 
  circuits_1.lat, 
  circuits_1.country, 
  circuits_1.alt, 
  min(
    circuits_1.alt)
from 
  circuits as circuits_1
where circuits_1.location is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.location
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.laps, 
  results_1.positionorder, 
  results_1.position
from 
  results as results_1
where results_1.position <= results_1.number
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  count(*), 
  max(
    constructor_results_1.date)
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.date
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  max(
    constructor_results_1.points)
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 4;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  avg(
    constructor_results_1.points), 
  max(
    constructor_results_1.constructorid), 
  constructor_results_1.date, 
  count(
    constructor_results_1.constructorid)
from 
  constructor_results as constructor_results_1
where constructor_results_1.date < constructor_results_1.date
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins, 
  avg(
    constructor_standings_1.wins), 
  constructor_standings_1.raceid, 
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points >= constructor_standings_1.points
group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.wins
limit 1;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  standings_1.driverid
from 
  races as races_1
    inner join standings as standings_1
      inner join results as results_1
        inner join constructor_results as constructor_results_1
          inner join circuits as circuits_1
          on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
        on (results_1.resultid = circuits_1.circuitid )
      on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
    on (results_1.raceid = races_1.raceid )
where standings_1.raceid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins, 
  standings_1.driverstandingsid, 
  min(
    standings_1.date), 
  min(
    standings_1.date), 
  standings_1.date
from 
  standings as standings_1
where standings_1.points is not NULL
group by standings_1.date, standings_1.driverstandingsid, standings_1.wins
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  constructor_standings_1.raceid, 
  max(
    constructor_standings_1.date)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points < constructor_standings_1.points
group by constructor_standings_1.raceid
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  max(
    constructor_results_1.constructorresultsid), 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.date
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    constructor_standings_1.points), 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.constructorid
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.rank, 
  results_1.milliseconds
from 
  results as results_1
where results_1.driverid = results_1.positionorder
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 4;
-- meta {"num_joins":4,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  constructor_standings_1.constructorstandingsid, 
  avg(
    constructor_standings_1.points), 
  constructor_standings_1.points, 
  min(
    constructor_standings_1.position), 
  constructor_results_1.points, 
  standings_1.points, 
  max(
    standings_1.date), 
  qualifying_1.number, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
    inner join constructor_standings as constructor_standings_1
        inner join constructor_results as constructor_results_1
        on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
      inner join qualifying as qualifying_2
        inner join standings as standings_1
        on (qualifying_2.qualifyid = standings_1.driverstandingsid )
      on (constructor_results_1.constructorresultsid = qualifying_2.qualifyid )
    on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
where qualifying_1.constructorid is not NULL
group by constructor_results_1.points, constructor_standings_1.constructorstandingsid, constructor_standings_1.points, qualifying_1.constructorid, qualifying_1.date, qualifying_1.number, standings_1.points
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructor_standings_1.constructorstandingsid, 
  constructors_1.constructorid, 
  constructors_1.name
from 
  constructor_standings as constructor_standings_1
    inner join constructors as constructors_1
    on (constructor_standings_1.constructorid = constructors_1.constructorid )
where constructor_standings_1.position <= constructor_standings_1.constructorid
limit 4;
-- meta {"num_joins":7,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_3.position
from 
  constructor_standings as constructor_standings_1
      inner join races as races_1
      on (constructor_standings_1.raceid = races_1.raceid )
    inner join constructor_results as constructor_results_1
            inner join constructor_standings as constructor_standings_2
            on (constructor_results_1.constructorresultsid = constructor_standings_2.constructorstandingsid )
          inner join constructor_standings as constructor_standings_3
            inner join results as results_1
            on (constructor_standings_3.constructorstandingsid = results_1.resultid )
          on (constructor_standings_2.constructorstandingsid = constructor_standings_3.constructorstandingsid )
        inner join races as races_2
        on (constructor_standings_2.raceid = races_2.raceid )
      inner join constructor_standings as constructor_standings_4
      on (results_1.resultid = constructor_standings_4.constructorstandingsid )
    on (results_1.raceid = races_1.raceid )
where constructor_results_1.constructorid is not NULL
limit 4;
-- meta {"num_joins":3,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.raceid, 
  drivers_1.driverid, 
  max(
    races_1.date), 
  qualifying_1.driverid, 
  races_1.name, 
  min(
    circuits_1.alt), 
  circuits_1.circuitref, 
  min(
    circuits_1.alt)
from 
  qualifying as qualifying_1
    inner join circuits as circuits_1
        inner join races as races_1
        on (races_1.circuitid = circuits_1.circuitid )
      inner join drivers as drivers_1
      on (races_1.raceid = drivers_1.driverid )
    on (qualifying_1.raceid = races_1.raceid )
where races_1.year is not NULL
group by circuits_1.circuitref, drivers_1.driverid, qualifying_1.driverid, races_1.name, races_1.raceid
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lng, 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.alt >= circuits_1.lat
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position
from 
  standings as standings_1
where standings_1.wins = standings_1.driverid
limit 4;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year, 
  races_1.name, 
  races_1.round, 
  races_1.date, 
  max(
    races_1.date), 
  races_1.circuitid, 
  count(*), 
  max(
    races_1.raceid), 
  races_1.raceid
from 
  races as races_1
where races_1.name is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.year
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid
from 
  races as races_1
where races_1.time is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid
from 
  races as races_1
where races_1.time < races_1.name
limit 1;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.nationality, 
  drivers_1.forename, 
  min(
    drivers_1.dob), 
  drivers_1.surname, 
  max(
    drivers_1.dob), 
  drivers_1.driverref, 
  count(
    drivers_1.forename), 
  max(
    drivers_1.driverid), 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
group by drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name, 
  qualifying_1.constructorid, 
  circuits_1.country, 
  circuits_1.location, 
  qualifying_1.number, 
  qualifying_1.raceid, 
  qualifying_1.driverid, 
  qualifying_1.position
from 
  circuits as circuits_1
    inner join qualifying as qualifying_1
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where circuits_1.location >= circuits_1.country
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  constructors_2.name
from 
  constructors as constructors_1
    inner join constructors as constructors_2
    on (constructors_1.constructorid = constructors_2.constructorid )
where constructors_1.name is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    constructor_results_1.points), 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.date
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  avg(
    constructor_standings_1.wins), 
  constructor_standings_1.raceid, 
  constructor_standings_1.date, 
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.wins
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_results_1.constructorid), 
  max(
    constructor_results_1.date), 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.raceid
limit 2;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.name, 
  max(
    races_1.circuitid), 
  races_1.round, 
  races_1.circuitid, 
  min(
    races_1.date), 
  races_1.time, 
  races_1.year, 
  races_1.raceid, 
  min(
    races_1.date), 
  count(*), 
  races_1.date, 
  min(
    races_1.date)
from 
  races as races_1
where races_1.name is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 2;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins, 
  constructor_standings_1.wins
from 
  standings as standings_1
      inner join constructor_standings as constructor_standings_1
        inner join qualifying as qualifying_1
        on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
      on (standings_1.driverstandingsid = qualifying_1.qualifyid )
    inner join qualifying as qualifying_2
    on (standings_1.driverstandingsid = qualifying_2.qualifyid )
where standings_1.points < constructor_standings_1.points
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":6,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.dob, 
  drivers_1.code, 
  drivers_1.forename, 
  count(
    drivers_1.code), 
  max(
    drivers_1.dob), 
  max(
    drivers_1.dob), 
  max(
    drivers_1.driverid), 
  drivers_1.nationality, 
  drivers_1.driverid, 
  drivers_1.driverref, 
  min(
    drivers_1.dob), 
  avg(
    drivers_1.driverid)
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality
limit 3;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.points, 
  max(
    results_1.date)
from 
  constructor_standings as constructor_standings_1
    inner join results as results_1
    on (constructor_standings_1.constructorstandingsid = results_1.resultid )
where results_1.constructorid is not NULL
group by constructor_standings_1.points
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.positionorder, 
  results_1.constructorid
from 
  drivers as drivers_1
    inner join results as results_1
    on (results_1.driverid = drivers_1.driverid )
where drivers_1.forename is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points < constructor_standings_1.points
limit 4;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  constructor_standings_1.points
from 
  constructors as constructors_1
      inner join constructor_standings as constructor_standings_1
        inner join qualifying as qualifying_1
        on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
      on (constructor_standings_1.constructorid = constructors_1.constructorid )
    inner join results as results_1
    on (results_1.constructorid = constructors_1.constructorid )
where results_1.rank is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.code, 
  drivers_1.surname, 
  drivers_1.nationality, 
  drivers_1.driverref, 
  drivers_1.driverid, 
  max(
    drivers_1.dob), 
  drivers_1.dob, 
  max(
    drivers_1.driverid), 
  sum(
    drivers_1.driverid), 
  sum(
    drivers_1.driverid), 
  avg(
    drivers_1.driverid)
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.nationality, drivers_1.surname
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.date, 
  races_1.raceid
from 
  races as races_1
    inner join standings as standings_1
    on (standings_1.raceid = races_1.raceid )
where races_1.date > standings_1.date
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name
from 
  qualifying as qualifying_1
    inner join circuits as circuits_1
    on (qualifying_1.qualifyid = circuits_1.circuitid )
where circuits_1.location is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    circuits_1.lat), 
  avg(
    circuits_1.lng), 
  circuits_1.circuitref, 
  circuits_1.alt, 
  circuits_1.circuitid, 
  circuits_1.name, 
  circuits_1.lng, 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.lat > circuits_1.lng
group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.lng, circuits_1.location, circuits_1.name
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.date <= standings_1.date
limit 2;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverid
from 
  races as races_1
      inner join constructor_results as constructor_results_1
      on (constructor_results_1.raceid = races_1.raceid )
    inner join drivers as drivers_1
    on (races_1.raceid = drivers_1.driverid )
where constructor_results_1.date = drivers_1.dob
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  max(
    qualifying_1.date)
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
group by qualifying_1.date
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  max(
    constructor_standings_1.points)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.position, constructor_standings_1.wins
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.number, 
  results_1.raceid, 
  min(
    results_1.date), 
  results_1.points, 
  results_1.fastestlap, 
  avg(
    results_1.number), 
  results_1.driverid
from 
  results as results_1
where results_1.rank is not NULL
group by results_1.driverid, results_1.fastestlap, results_1.number, results_1.points, results_1.raceid
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref, 
  min(
    drivers_1.driverid), 
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.dob = drivers_1.dob
group by drivers_1.driverref, drivers_1.forename
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.round, 
  races_1.time, 
  avg(
    races_1.year)
from 
  races as races_1
where races_1.round is not NULL
group by races_1.round, races_1.time
limit 3;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_2.rank, 
  results_1.statusid, 
  max(
    results_1.positionorder), 
  results_2.milliseconds, 
  results_1.number, 
  results_1.milliseconds
from 
  results as results_1
    inner join results as results_2
    on (results_1.resultid = results_2.resultid )
where results_2.milliseconds is not NULL
group by results_1.milliseconds, results_1.number, results_1.statusid, results_2.milliseconds, results_2.rank
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    standings_1.date), 
  standings_1.points
from 
  standings as standings_1
where standings_1.date <= standings_1.date
group by standings_1.points
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    standings_1.date)
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
limit 2;
-- meta {"num_joins":5,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  max(
    constructor_results_1.date)
from 
  constructor_results as constructor_results_1
      inner join qualifying as qualifying_1
      on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
    inner join circuits as circuits_1
        inner join drivers as drivers_1
        on (circuits_1.circuitid = drivers_1.driverid )
      inner join constructors as constructors_1
        inner join constructor_results as constructor_results_2
        on (constructor_results_2.constructorid = constructors_1.constructorid )
      on (circuits_1.circuitid = constructors_1.constructorid )
    on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
where qualifying_1.raceid > qualifying_1.position
group by constructor_results_1.points
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.raceid, 
  max(
    qualifying_1.date)
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
group by qualifying_1.raceid
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.constructorid, 
  results_1.statusid
from 
  results as results_1
where results_1.raceid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":7,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  count(*), 
  count(*), 
  constructors_1.name, 
  count(*), 
  count(
    constructors_1.constructorref), 
  max(
    constructors_1.constructorid), 
  max(
    constructors_1.constructorid), 
  avg(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.constructorref < constructors_1.nationality
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 2;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  races_1.circuitid, 
  races_2.name, 
  races_1.name, 
  races_2.round
from 
  constructor_results as constructor_results_1
    inner join races as races_1
      inner join races as races_2
      on (races_1.raceid = races_2.raceid )
    on (constructor_results_1.raceid = races_2.raceid )
where constructor_results_1.raceid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 1;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.position, 
  standings_1.points, 
  standings_2.date, 
  min(
    qualifying_1.date), 
  drivers_1.code, 
  qualifying_1.date
from 
  drivers as drivers_1
    inner join qualifying as qualifying_1
      inner join standings as standings_1
        inner join standings as standings_2
        on (standings_1.driverstandingsid = standings_2.driverstandingsid )
      on (qualifying_1.qualifyid = standings_2.driverstandingsid )
    on (standings_1.driverid = drivers_1.driverid )
where standings_1.driverstandingsid is not NULL
group by drivers_1.code, qualifying_1.date, qualifying_1.position, standings_1.points, standings_2.date
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position, 
  standings_1.wins, 
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.driverid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid >= constructor_results_1.raceid
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location, 
  circuits_1.circuitid, 
  min(
    circuits_1.lng), 
  circuits_1.name, 
  max(
    circuits_1.alt), 
  circuits_1.lat
from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
group by circuits_1.circuitid, circuits_1.lat, circuits_1.location, circuits_1.name
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  min(
    constructor_results_1.points)
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date
limit 4;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_standings_1.date), 
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  min(
    constructor_standings_1.date), 
  min(
    constructor_standings_1.date)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.wins
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructor_results_1.date), 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.constructorresultsid
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructors_1.name, 
  count(
    constructors_1.name), 
  constructors_1.nationality, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    qualifying_1.qualifyid), 
  qualifying_1.constructorid, 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
group by qualifying_1.constructorid, qualifying_1.driverid
limit 3;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.raceid, 
  max(
    constructor_standings_1.date)
from 
  races as races_1
    inner join constructor_standings as constructor_standings_1
    on (constructor_standings_1.raceid = races_1.raceid )
where races_1.round is not NULL
group by races_1.raceid
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  max(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.constructorref
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.resultid, 
  results_1.constructorid
from 
  results as results_1
where results_1.date is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position, 
  standings_1.raceid, 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.wins is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  count(*), 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.points, constructor_results_1.raceid
limit 1;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.constructorid, 
  max(
    qualifying_1.date), 
  qualifying_1.date, 
  count(
    qualifying_1.qualifyid), 
  qualifying_1.driverid, 
  qualifying_1.position, 
  qualifying_1.raceid, 
  qualifying_1.qualifyid, 
  min(
    qualifying_1.date), 
  min(
    qualifying_1.date)
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref, 
  drivers_1.dob, 
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.driverid = drivers_1.driverid
limit 3;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid, 
  circuits_1.lat, 
  circuits_1.circuitid, 
  circuits_1.country, 
  circuits_1.location, 
  max(
    circuits_1.lng), 
  circuits_1.circuitref
from 
  circuits as circuits_1
    inner join standings as standings_1
    on (circuits_1.circuitid = standings_1.driverstandingsid )
where circuits_1.country is not NULL
group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.location, standings_1.driverid
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.points, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.raceid, 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
limit 3;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date, 
  races_1.raceid
from 
  races as races_1
    inner join standings as standings_1
      inner join constructor_standings as constructor_standings_1
      on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
    on (standings_1.raceid = races_1.raceid )
where constructor_standings_1.constructorid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    circuits_1.lng), 
  circuits_1.country, 
  circuits_1.name, 
  max(
    circuits_1.alt), 
  circuits_1.circuitid, 
  circuits_1.lat, 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.alt is not NULL
group by circuits_1.circuitid, circuits_1.country, circuits_1.lat, circuits_1.location, circuits_1.name
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date
from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where constructor_results_1.points is not NULL
limit 3;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid, 
  circuits_1.name, 
  races_1.round, 
  min(
    races_1.date)
from 
  races as races_1
    inner join circuits as circuits_1
    on (races_1.circuitid = circuits_1.circuitid )
where races_1.raceid is not NULL
group by circuits_1.name, races_1.circuitid, races_1.round
limit 1;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_2.qualifyid, 
  races_1.date, 
  qualifying_2.driverid, 
  avg(
    qualifying_1.driverid), 
  count(
    qualifying_1.date), 
  races_1.name, 
  qualifying_1.constructorid, 
  qualifying_1.raceid, 
  qualifying_2.raceid
from 
  races as races_1
    inner join qualifying as qualifying_1
      inner join qualifying as qualifying_2
      on (qualifying_1.qualifyid = qualifying_2.qualifyid )
    on (qualifying_2.raceid = races_1.raceid )
where qualifying_1.number is not NULL
group by qualifying_1.constructorid, qualifying_1.raceid, qualifying_2.driverid, qualifying_2.qualifyid, qualifying_2.raceid, races_1.date, races_1.name
limit 4;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    qualifying_1.position), 
  races_1.raceid, 
  qualifying_1.driverid, 
  qualifying_1.date, 
  races_1.round, 
  races_1.time
from 
  races as races_1
    inner join qualifying as qualifying_1
    on (qualifying_1.raceid = races_1.raceid )
where qualifying_1.driverid is not NULL
group by qualifying_1.date, qualifying_1.driverid, races_1.raceid, races_1.round, races_1.time
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  min(
    constructor_results_1.date)
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.constructorid, 
  qualifying_1.number, 
  qualifying_1.driverid, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.date >= qualifying_1.date
limit 4;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid
from 
  constructors as constructors_1
    inner join constructor_standings as constructor_standings_1
      inner join constructors as constructors_2
      on (constructor_standings_1.constructorid = constructors_2.constructorid )
    on (constructors_1.constructorid = constructors_2.constructorid )
where constructor_standings_1.constructorstandingsid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_standings_1.date), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid
limit 4;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lat, 
  standings_1.raceid, 
  drivers_1.forename, 
  drivers_1.surname, 
  circuits_1.circuitid, 
  drivers_1.driverid, 
  drivers_1.code
from 
  circuits as circuits_1
        inner join circuits as circuits_2
        on (circuits_1.circuitid = circuits_2.circuitid )
      inner join drivers as drivers_1
      on (circuits_2.circuitid = drivers_1.driverid )
    inner join qualifying as qualifying_1
      inner join standings as standings_1
      on (qualifying_1.qualifyid = standings_1.driverstandingsid )
    on (circuits_1.circuitid = standings_1.driverstandingsid )
where drivers_1.code > circuits_1.location
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.dob, 
  max(
    drivers_1.dob), 
  count(*), 
  drivers_1.forename, 
  drivers_1.driverid, 
  drivers_1.nationality, 
  drivers_1.surname, 
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
group by drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
    inner join races as races_1
    on (qualifying_1.raceid = races_1.raceid )
where qualifying_1.number is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid, 
  min(
    races_1.date)
from 
  races as races_1
where races_1.raceid is not NULL
group by races_1.circuitid
limit 1;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position, 
  standings_1.driverid, 
  count(
    constructor_results_1.points), 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  standings_1.driverstandingsid, 
  standings_1.wins
from 
  constructor_results as constructor_results_1
    inner join standings as standings_1
    on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
where constructor_results_1.constructorresultsid > constructor_results_1.raceid
group by constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid, standings_1.driverid, standings_1.driverstandingsid, standings_1.position, standings_1.wins
limit 1;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_2.constructorid, 
  qualifying_2.position, 
  results_1.position, 
  results_1.resultid, 
  qualifying_2.qualifyid
from 
  results as results_1
      inner join qualifying as qualifying_1
      on (results_1.resultid = qualifying_1.qualifyid )
    inner join qualifying as qualifying_2
    on (qualifying_1.qualifyid = qualifying_2.qualifyid )
where qualifying_1.constructorid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.resultid, 
  results_1.driverid, 
  results_1.points, 
  max(
    results_1.date)
from 
  results as results_1
where results_1.positionorder is not NULL
group by results_1.driverid, results_1.points, results_1.resultid
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverstandingsid
from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where standings_1.raceid is not NULL
limit 1;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    races_2.date)
from 
  circuits as circuits_1
    inner join races as races_1
        inner join races as races_2
        on (races_1.raceid = races_2.raceid )
      inner join standings as standings_1
      on (standings_1.raceid = races_2.raceid )
    on (races_1.circuitid = circuits_1.circuitid )
where races_2.raceid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    constructors_1.nationality), 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  min(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 4;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_2.raceid, 
  constructor_standings_1.position, 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
    inner join constructor_standings as constructor_standings_2
    on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
where constructor_standings_1.date <= constructor_standings_2.date
group by constructor_standings_1.points, constructor_standings_1.position, constructor_standings_2.raceid
limit 2;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.qualifyid, 
  races_1.circuitid, 
  count(
    qualifying_1.constructorid), 
  qualifying_1.driverid, 
  races_1.year, 
  qualifying_1.position, 
  qualifying_1.number, 
  qualifying_1.date, 
  races_1.name, 
  races_1.date, 
  min(
    races_1.date), 
  races_1.raceid, 
  qualifying_1.raceid, 
  races_1.time
from 
  races as races_1
    inner join qualifying as qualifying_1
    on (qualifying_1.raceid = races_1.raceid )
where qualifying_1.driverid is not NULL
group by qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid, races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.time, races_1.year
limit 4;
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref, 
  standings_1.points, 
  max(
    circuits_1.lng), 
  circuits_2.location, 
  standings_1.position, 
  min(
    standings_1.date), 
  drivers_1.forename, 
  standings_1.raceid
from 
  circuits as circuits_1
    inner join drivers as drivers_1
      inner join circuits as circuits_2
        inner join standings as standings_1
        on (circuits_2.circuitid = standings_1.driverstandingsid )
      on (standings_1.driverid = drivers_1.driverid )
    on (circuits_1.circuitid = circuits_2.circuitid )
where circuits_2.circuitid <= circuits_1.circuitid
group by circuits_2.location, drivers_1.driverref, drivers_1.forename, standings_1.points, standings_1.position, standings_1.raceid
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.round, 
  races_1.date, 
  races_1.raceid, 
  races_1.name, 
  min(
    races_1.date)
from 
  races as races_1
where races_1.raceid > races_1.year
group by races_1.date, races_1.name, races_1.raceid, races_1.round
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.round, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  races_1.date, 
  races_1.name
from 
  races as races_1
    inner join constructor_results as constructor_results_1
    on (constructor_results_1.raceid = races_1.raceid )
where races_1.date <= constructor_results_1.date
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.points, 
  results_1.driverid, 
  results_1.fastestlap, 
  min(
    results_1.date), 
  results_1.milliseconds, 
  min(
    results_1.date), 
  results_1.rank, 
  results_1.positionorder, 
  results_1.resultid, 
  results_1.statusid
from 
  results as results_1
where results_1.driverid is not NULL
group by results_1.driverid, results_1.fastestlap, results_1.milliseconds, results_1.points, results_1.positionorder, results_1.rank, results_1.resultid, results_1.statusid
limit 2;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref, 
  constructors_1.name
from 
  circuits as circuits_1
        inner join constructors as constructors_1
        on (circuits_1.circuitid = constructors_1.constructorid )
      inner join drivers as drivers_1
        inner join constructor_results as constructor_results_1
        on (drivers_1.driverid = constructor_results_1.constructorresultsid )
      on (constructors_1.constructorid = drivers_1.driverid )
    inner join drivers as drivers_2
    on (circuits_1.circuitid = drivers_2.driverid )
where drivers_2.dob = drivers_1.dob
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
limit 3;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.position, 
  max(
    standings_1.date)
from 
  results as results_1
      inner join qualifying as qualifying_1
      on (results_1.resultid = qualifying_1.qualifyid )
    inner join standings as standings_1
    on (results_1.resultid = standings_1.driverstandingsid )
where standings_1.position is not NULL
group by results_1.position
limit 4;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref, 
  drivers_1.nationality
from 
  qualifying as qualifying_1
    inner join drivers as drivers_1
      inner join drivers as drivers_2
      on (drivers_1.driverid = drivers_2.driverid )
    on (qualifying_1.driverid = drivers_2.driverid )
where qualifying_1.raceid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.name, 
  min(
    constructors_1.constructorid), 
  sum(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 4;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  constructor_results_1.date, 
  constructors_1.name
from 
  constructors as constructors_1
    inner join standings as standings_1
        inner join constructor_results as constructor_results_1
        on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
      inner join constructor_results as constructor_results_2
      on (standings_1.driverstandingsid = constructor_results_2.constructorresultsid )
    on (constructor_results_2.constructorid = constructors_1.constructorid )
where constructors_1.constructorid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    constructor_standings_1.raceid), 
  max(
    constructor_standings_1.date), 
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.position, constructor_standings_1.wins
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    races_1.date)
from 
  races as races_1
where races_1.circuitid is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  constructors_1.name, 
  count(
    constructors_1.constructorid), 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.name, constructors_1.nationality
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  constructor_results_1.points, 
  max(
    constructor_results_1.date), 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.points <= constructor_results_1.points
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.points, 
  results_1.constructorid, 
  results_1.raceid, 
  results_1.milliseconds
from 
  results as results_1
where results_1.positionorder is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  count(
    constructors_1.constructorref), 
  constructors_1.name, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.name > constructors_1.nationality
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name
limit 2;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_2.raceid, 
  standings_2.points, 
  min(
    standings_2.date), 
  standings_2.driverid
from 
  standings as standings_1
    inner join standings as standings_2
    on (standings_1.driverstandingsid = standings_2.driverstandingsid )
where standings_1.raceid is not NULL
group by standings_2.driverid, standings_2.points, standings_2.raceid
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.points, 
  results_1.position, 
  results_1.number, 
  results_1.laps, 
  results_1.raceid, 
  results_1.constructorid, 
  max(
    results_1.grid)
from 
  results as results_1
where results_1.statusid is not NULL
group by results_1.constructorid, results_1.laps, results_1.number, results_1.points, results_1.position, results_1.raceid
limit 3;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    results_1.laps)
from 
  results as results_1
    inner join constructor_results as constructor_results_1
          inner join constructor_standings as constructor_standings_1
          on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
        inner join circuits as circuits_1
        on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
      inner join standings as standings_1
      on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
    on (results_1.resultid = constructor_standings_1.constructorstandingsid )
where constructor_results_1.constructorid is not NULL
limit 2;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref, 
  standings_1.driverstandingsid, 
  drivers_1.code, 
  results_1.statusid
from 
  circuits as circuits_1
        inner join drivers as drivers_1
        on (circuits_1.circuitid = drivers_1.driverid )
      inner join drivers as drivers_2
        inner join standings as standings_1
        on (standings_1.driverid = drivers_2.driverid )
      on (standings_1.driverid = drivers_1.driverid )
    inner join results as results_1
    on (circuits_1.circuitid = results_1.resultid )
where standings_1.driverstandingsid is not NULL
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.position
from 
  results as results_1
    inner join constructor_standings as constructor_standings_1
    on (results_1.resultid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.date <= results_1.date
limit 1;
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  circuits_1.name, 
  circuits_1.alt, 
  circuits_1.lat, 
  constructor_results_1.raceid, 
  count(
    constructor_results_1.constructorresultsid), 
  circuits_1.country, 
  count(*), 
  circuits_1.lng, 
  circuits_1.circuitref, 
  min(
    constructor_results_1.points), 
  min(
    constructor_results_1.date)
from 
  constructor_results as constructor_results_1
    inner join circuits as circuits_1
    on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
where circuits_1.country >= circuits_1.circuitref
group by circuits_1.alt, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.name, constructor_results_1.constructorid, constructor_results_1.points, constructor_results_1.raceid
limit 2;
-- meta {"num_joins":3,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    circuits_1.lng), 
  standings_1.date, 
  max(
    standings_1.date), 
  max(
    standings_1.driverid), 
  count(*)
from 
  constructor_results as constructor_results_1
      inner join standings as standings_1
        inner join constructors as constructors_1
        on (standings_1.driverstandingsid = constructors_1.constructorid )
      on (constructor_results_1.constructorid = constructors_1.constructorid )
    inner join circuits as circuits_1
    on (standings_1.driverstandingsid = circuits_1.circuitid )
where standings_1.driverid is not NULL
group by standings_1.date
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date
from 
  constructors as constructors_1
    inner join qualifying as qualifying_1
    on (qualifying_1.constructorid = constructors_1.constructorid )
where qualifying_1.qualifyid is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref, 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt, 
  sum(
    circuits_1.lat), 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
group by circuits_1.alt, circuits_1.lng
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    circuits_1.circuitid), 
  circuits_1.circuitid, 
  circuits_1.alt, 
  circuits_1.lng, 
  circuits_1.country, 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.country, circuits_1.lng, circuits_1.location
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.points
from 
  constructor_results as constructor_results_1
    inner join constructor_standings as constructor_standings_1
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where constructor_results_1.date >= constructor_standings_1.date
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    constructors_1.constructorid), 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorid > constructors_1.constructorid
group by constructors_1.constructorref
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lng, 
  avg(
    circuits_1.circuitid), 
  circuits_1.alt, 
  circuits_1.country, 
  avg(
    circuits_1.circuitid), 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.alt is not NULL
group by circuits_1.alt, circuits_1.country, circuits_1.lng, circuits_1.name
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_2.position
from 
  standings as standings_1
    inner join standings as standings_2
    on (standings_1.driverstandingsid = standings_2.driverstandingsid )
where standings_2.points is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.forename, 
  drivers_1.driverref, 
  count(*), 
  drivers_1.nationality, 
  drivers_1.driverid, 
  drivers_1.dob, 
  min(
    drivers_1.dob), 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.code is not NULL
group by drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    results_1.driverid), 
  results_1.points, 
  results_1.grid, 
  results_1.rank, 
  results_1.resultid, 
  min(
    results_1.constructorid), 
  results_1.raceid
from 
  results as results_1
where results_1.fastestlap is not NULL
group by results_1.grid, results_1.points, results_1.raceid, results_1.rank, results_1.resultid
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_standings_1.date), 
  constructor_standings_1.points, 
  constructor_standings_1.wins, 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date, 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.wins
limit 3;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins
from 
  constructor_results as constructor_results_1
    inner join results as results_1
      inner join constructor_standings as constructor_standings_1
      on (results_1.resultid = constructor_standings_1.constructorstandingsid )
    on (constructor_results_1.constructorresultsid = results_1.resultid )
where results_1.milliseconds is not NULL
limit 3;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid, 
  constructor_standings_1.position, 
  races_1.date
from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
      inner join standings as standings_2
            inner join races as races_1
            on (standings_2.raceid = races_1.raceid )
          inner join constructor_standings as constructor_standings_1
          on (standings_2.driverstandingsid = constructor_standings_1.constructorstandingsid )
        inner join qualifying as qualifying_1
        on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
      on (constructor_results_1.constructorresultsid = standings_2.driverstandingsid )
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where races_1.name < races_1.time
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid, 
  standings_1.raceid, 
  standings_1.points
from 
  standings as standings_1
where standings_1.date is not NULL
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  qualifying_1.constructorid, 
  qualifying_1.raceid
from 
  results as results_1
    inner join qualifying as qualifying_1
    on (results_1.resultid = qualifying_1.qualifyid )
where qualifying_1.position < qualifying_1.raceid
limit 1;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid, 
  qualifying_1.number, 
  max(
    qualifying_1.date), 
  max(
    qualifying_1.date), 
  qualifying_1.raceid, 
  qualifying_1.date, 
  sum(
    qualifying_1.qualifyid), 
  max(
    qualifying_1.number), 
  qualifying_1.position, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 2;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.qualifyid, 
  qualifying_1.driverid, 
  standings_1.points, 
  max(
    standings_1.date), 
  standings_1.driverstandingsid, 
  qualifying_1.constructorid, 
  standings_1.date, 
  qualifying_1.date, 
  standings_1.raceid
from 
  standings as standings_1
    inner join qualifying as qualifying_1
    on (standings_1.driverstandingsid = qualifying_1.qualifyid )
where standings_1.driverstandingsid is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.qualifyid, standings_1.date, standings_1.driverstandingsid, standings_1.points, standings_1.raceid
limit 3;
-- meta {"num_joins":0,"num_aggregates":6,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.driverid, 
  max(
    results_1.date), 
  results_1.resultid, 
  results_1.position, 
  max(
    results_1.points), 
  min(
    results_1.date), 
  results_1.grid, 
  results_1.constructorid, 
  min(
    results_1.positionorder), 
  results_1.date, 
  min(
    results_1.driverid), 
  results_1.rank, 
  count(*), 
  results_1.laps, 
  results_1.fastestlap, 
  results_1.positionorder
from 
  results as results_1
where results_1.points is not NULL
group by results_1.constructorid, results_1.date, results_1.driverid, results_1.fastestlap, results_1.grid, results_1.laps, results_1.position, results_1.positionorder, results_1.rank, results_1.resultid
limit 4;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.date, 
  max(
    results_1.date), 
  results_1.milliseconds, 
  results_1.points, 
  results_1.driverid
from 
  qualifying as qualifying_1
    inner join results as results_1
    on (qualifying_1.qualifyid = results_1.resultid )
where results_1.raceid is not NULL
group by results_1.date, results_1.driverid, results_1.milliseconds, results_1.points
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.date, 
  standings_1.driverid, 
  standings_1.points, 
  standings_1.position, 
  sum(
    standings_1.points)
from 
  standings as standings_1
where standings_1.raceid is not NULL
group by standings_1.date, standings_1.driverid, standings_1.points, standings_1.position
limit 4;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_results_1.points), 
  constructor_results_1.points, 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
    inner join constructor_results as constructor_results_1
    on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
where constructor_standings_1.position is not NULL
group by constructor_results_1.points, constructor_standings_1.raceid
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  qualifying_1.driverid, 
  qualifying_1.constructorid, 
  qualifying_1.position, 
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.date <= qualifying_1.date
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date, 
  sum(
    constructor_standings_1.points), 
  constructor_standings_1.points, 
  count(*)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
group by constructor_standings_1.date, constructor_standings_1.points
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 1;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name, 
  drivers_1.driverref, 
  constructors_1.constructorref, 
  drivers_1.driverid, 
  circuits_1.lng, 
  circuits_1.circuitref, 
  count(
    drivers_1.driverid), 
  circuits_1.location, 
  constructors_1.nationality, 
  drivers_1.forename
from 
  constructors as constructors_1
      inner join circuits as circuits_1
      on (constructors_1.constructorid = circuits_1.circuitid )
    inner join drivers as drivers_1
    on (circuits_1.circuitid = drivers_1.driverid )
where drivers_1.driverid is not NULL
group by circuits_1.circuitref, circuits_1.lng, circuits_1.location, constructors_1.constructorref, constructors_1.name, constructors_1.nationality, drivers_1.driverid, drivers_1.driverref, drivers_1.forename
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name
from 
  constructor_standings as constructor_standings_1
    inner join constructors as constructors_1
    on (constructor_standings_1.constructorid = constructors_1.constructorid )
where constructor_standings_1.wins < constructor_standings_1.raceid
limit 3;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.country, 
  sum(
    circuits_1.circuitid), 
  circuits_1.location, 
  circuits_1.lng, 
  circuits_1.lat, 
  circuits_1.name, 
  circuits_1.alt, 
  circuits_1.circuitid, 
  count(
    circuits_1.location), 
  count(
    circuits_1.lat), 
  circuits_1.circuitref, 
  sum(
    circuits_1.lng), 
  min(
    circuits_1.lng)
from 
  circuits as circuits_1
where circuits_1.name = circuits_1.location
group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.location, circuits_1.name
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.name, 
  min(
    races_1.date), 
  count(
    races_1.round), 
  races_1.time, 
  races_1.circuitid
from 
  races as races_1
where races_1.name is not NULL
group by races_1.circuitid, races_1.name, races_1.time
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    constructor_standings_1.constructorid)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
limit 3;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorid, 
  races_1.round, 
  constructor_results_1.date, 
  sum(
    results_1.constructorid), 
  constructor_results_1.constructorresultsid, 
  constructor_standings_1.date, 
  races_1.year
from 
  drivers as drivers_1
    inner join results as results_1
          inner join races as races_1
          on (results_1.raceid = races_1.raceid )
        inner join constructor_standings as constructor_standings_1
        on (constructor_standings_1.raceid = races_1.raceid )
      inner join constructor_results as constructor_results_1
      on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
    on (results_1.driverid = drivers_1.driverid )
where drivers_1.forename is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_standings_1.constructorid, constructor_standings_1.date, races_1.round, races_1.year
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.milliseconds, 
  results_1.grid
from 
  results as results_1
    inner join constructor_standings as constructor_standings_1
    on (results_1.resultid = constructor_standings_1.constructorstandingsid )
where results_1.date >= constructor_standings_1.date
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorid, 
  min(
    constructor_standings_1.points), 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.wins
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date, 
  constructor_standings_1.wins
from 
  circuits as circuits_1
    inner join constructor_standings as constructor_standings_1
    on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
where circuits_1.location is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
limit 2;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  qualifying_1.raceid, 
  sum(
    constructor_results_1.points), 
  qualifying_1.date, 
  constructor_results_1.date, 
  constructors_1.name, 
  qualifying_1.driverid
from 
  constructors as constructors_1
    inner join constructor_results as constructor_results_1
      inner join qualifying as qualifying_1
      on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
    on (constructor_results_1.constructorid = constructors_1.constructorid )
where constructors_1.name is not NULL
group by constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.points, constructors_1.name, constructors_1.nationality, qualifying_1.date, qualifying_1.driverid, qualifying_1.raceid
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.grid, 
  results_1.resultid, 
  results_1.milliseconds, 
  results_1.statusid
from 
  results as results_1
where results_1.laps is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.points, 
  avg(
    constructor_standings_1.constructorid), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.raceid
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.round, 
  races_1.year, 
  races_1.raceid, 
  max(
    races_1.date), 
  races_1.circuitid
from 
  races as races_1
where races_1.date = races_1.date
group by races_1.circuitid, races_1.raceid, races_1.round, races_1.year
limit 4;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_results_1.date)
from 
  constructors as constructors_1
      inner join constructor_results as constructor_results_1
      on (constructor_results_1.constructorid = constructors_1.constructorid )
    inner join results as results_1
      inner join circuits as circuits_1
      on (results_1.resultid = circuits_1.circuitid )
    on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
where results_1.position is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.laps, 
  results_1.raceid, 
  results_1.driverid, 
  max(
    results_1.number), 
  results_1.resultid, 
  results_1.positionorder, 
  results_1.points, 
  results_1.position, 
  results_1.statusid
from 
  results as results_1
where results_1.driverid is not NULL
group by results_1.driverid, results_1.laps, results_1.points, results_1.position, results_1.positionorder, results_1.raceid, results_1.resultid, results_1.statusid
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year, 
  max(
    races_1.date), 
  races_1.raceid
from 
  races as races_1
where races_1.name is not NULL
group by races_1.raceid, races_1.year
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.driverid
from 
  results as results_1
    inner join results as results_2
    on (results_1.resultid = results_2.resultid )
where results_2.fastestlap is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.nationality, 
  drivers_1.forename, 
  min(
    drivers_1.driverid), 
  drivers_1.surname, 
  drivers_1.driverref, 
  drivers_1.driverid, 
  max(
    drivers_1.driverid), 
  avg(
    drivers_1.driverid)
from 
  drivers as drivers_1
where drivers_1.dob > drivers_1.dob
group by drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.nationality, 
  standings_1.driverstandingsid, 
  standings_1.position
from 
  constructors as constructors_1
    inner join standings as standings_1
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where constructors_1.nationality > constructors_1.constructorref
limit 2;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins, 
  races_1.circuitid, 
  sum(
    constructor_standings_2.points), 
  constructor_standings_2.wins, 
  races_1.year, 
  constructor_results_1.points, 
  races_1.time, 
  constructor_results_1.constructorid, 
  constructor_standings_2.points
from 
  constructor_results as constructor_results_1
      inner join constructor_standings as constructor_standings_1
        inner join constructor_standings as constructor_standings_2
        on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
      on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
    inner join races as races_1
    on (constructor_results_1.raceid = races_1.raceid )
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.points, constructor_standings_1.wins, constructor_standings_2.points, constructor_standings_2.wins, races_1.circuitid, races_1.time, races_1.year
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverstandingsid, 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.points < standings_1.points
limit 3;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins, 
  qualifying_1.number, 
  constructor_standings_1.raceid
from 
  qualifying as qualifying_1
    inner join drivers as drivers_1
      inner join constructor_standings as constructor_standings_1
      on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
    on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.constructorid is not NULL
limit 4;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid, 
  qualifying_1.raceid, 
  drivers_1.forename, 
  qualifying_2.number
from 
  drivers as drivers_1
      inner join qualifying as qualifying_1
      on (qualifying_1.driverid = drivers_1.driverid )
    inner join qualifying as qualifying_2
    on (qualifying_1.qualifyid = qualifying_2.qualifyid )
where qualifying_2.number is not NULL
limit 2;
-- meta {"num_joins":7,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_2.time, 
  circuits_1.circuitref, 
  max(
    races_2.date), 
  drivers_1.driverid, 
  qualifying_1.date, 
  races_2.date, 
  constructors_1.constructorid
from 
  constructors as constructors_1
    inner join drivers as drivers_1
          inner join races as races_1
          on (drivers_1.driverid = races_1.raceid )
        inner join qualifying as qualifying_1
          inner join races as races_2
          on (qualifying_1.raceid = races_2.raceid )
        on (qualifying_1.raceid = races_1.raceid )
      inner join constructor_results as constructor_results_1
        inner join circuits as circuits_1
          inner join constructor_results as constructor_results_2
          on (circuits_1.circuitid = constructor_results_2.constructorresultsid )
        on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
      on (drivers_1.driverid = constructor_results_2.constructorresultsid )
    on (constructors_1.constructorid = races_2.raceid )
where drivers_1.dob <= qualifying_1.date
group by circuits_1.circuitref, constructors_1.constructorid, drivers_1.driverid, qualifying_1.date, races_2.date, races_2.time
limit 4;
