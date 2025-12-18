-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid, 
  standings_1.wins
from 
  standings as standings_1
where standings_1.raceid is not NULL
limit 37;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.raceid, 
  qualifying_1.driverid, 
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
limit 22;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lat, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
limit 28;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.position, 
  qualifying_1.raceid, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
    inner join results as results_1
    on (qualifying_1.qualifyid = results_1.resultid )
where qualifying_1.date < results_1.date
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  count(
    constructor_results_1.constructorid)
from 
  constructor_results as constructor_results_1
where constructor_results_1.points <= constructor_results_1.points
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 41;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  min(
    constructor_standings_1.raceid)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 4;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  constructor_standings_1.points, 
  standings_2.raceid
from 
  standings as standings_1
    inner join constructor_standings as constructor_standings_1
      inner join standings as standings_2
      on (constructor_standings_1.constructorstandingsid = standings_2.driverstandingsid )
    on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
where standings_1.driverstandingsid > standings_2.driverid
limit 7;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.dob, 
  count(
    drivers_1.forename), 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
group by drivers_1.dob, drivers_1.driverid
limit 30;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.position, 
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
limit 20;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.nationality, 
  min(
    races_1.date), 
  races_1.raceid, 
  min(
    races_1.raceid)
from 
  drivers as drivers_1
    inner join races as races_1
    on (drivers_1.driverid = races_1.raceid )
where drivers_1.code is not NULL
group by drivers_1.nationality, races_1.raceid
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    races_1.date)
from 
  races as races_1
where races_1.name is not NULL
limit 39;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name, 
  circuits_1.country, 
  circuits_1.location, 
  circuits_1.alt, 
  circuits_1.circuitref, 
  sum(
    circuits_1.circuitid)
from 
  circuits as circuits_1
where circuits_1.lat <= circuits_1.alt
group by circuits_1.alt, circuits_1.circuitref, circuits_1.country, circuits_1.location, circuits_1.name
limit 42;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  max(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.nationality > constructors_1.constructorref
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name
limit 19;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.raceid, 
  standings_1.raceid, 
  standings_1.position, 
  min(
    qualifying_1.date)
from 
  qualifying as qualifying_1
    inner join standings as standings_1
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where standings_1.points < standings_1.points
group by qualifying_1.raceid, standings_1.position, standings_1.raceid
limit 24;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
    inner join constructor_standings as constructor_standings_2
    on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
where constructor_standings_2.position is not NULL
limit 14;
-- meta {"num_joins":3,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    constructor_results_1.points), 
  circuits_1.name, 
  min(
    circuits_1.lng), 
  sum(
    circuits_1.lng), 
  races_1.circuitid, 
  count(
    races_1.year)
from 
  races as races_1
      inner join constructor_results as constructor_results_1
      on (races_1.raceid = constructor_results_1.constructorresultsid )
    inner join constructors as constructors_1
      inner join circuits as circuits_1
      on (constructors_1.constructorid = circuits_1.circuitid )
    on (races_1.raceid = circuits_1.circuitid )
where constructor_results_1.date = races_1.date
group by circuits_1.name, races_1.circuitid
limit 21;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.date
from 
  results as results_1
    inner join circuits as circuits_1
    on (results_1.resultid = circuits_1.circuitid )
where results_1.points is not NULL
limit 32;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitid, 
  circuits_1.lat, 
  circuits_2.lng, 
  circuits_2.circuitref, 
  circuits_1.country, 
  avg(
    circuits_2.circuitid), 
  circuits_1.location
from 
  circuits as circuits_1
    inner join circuits as circuits_2
    on (circuits_1.circuitid = circuits_2.circuitid )
where circuits_1.circuitref is not NULL
group by circuits_1.circuitid, circuits_1.country, circuits_1.lat, circuits_1.location, circuits_2.circuitref, circuits_2.lng
limit 13;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.date <= constructor_results_1.date
limit 5;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_results_1.constructorid), 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.points
limit 13;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructor_results_1.date)
from 
  constructor_results as constructor_results_1
    inner join constructor_standings as constructor_standings_1
      inner join constructor_results as constructor_results_2
      on (constructor_standings_1.constructorstandingsid = constructor_results_2.constructorresultsid )
    on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
where constructor_results_2.date is not NULL
limit 26;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_2.number
from 
  constructor_standings as constructor_standings_1
      inner join constructor_standings as constructor_standings_2
        inner join qualifying as qualifying_1
        on (constructor_standings_2.constructorstandingsid = qualifying_1.qualifyid )
      on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
    inner join qualifying as qualifying_2
      inner join qualifying as qualifying_3
      on (qualifying_2.qualifyid = qualifying_3.qualifyid )
    on (constructor_standings_2.constructorstandingsid = qualifying_2.qualifyid )
where constructor_standings_2.position is not NULL
limit 33;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins, 
  constructor_results_1.date, 
  constructor_standings_1.date, 
  constructor_standings_1.points, 
  constructor_results_1.points, 
  drivers_1.surname, 
  drivers_1.dob, 
  sum(
    constructor_standings_1.points), 
  drivers_1.code, 
  constructor_standings_1.constructorid, 
  sum(
    constructor_standings_1.points), 
  drivers_1.forename
from 
  constructor_standings as constructor_standings_1
      inner join constructor_results as constructor_results_1
      on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
    inner join drivers as drivers_1
    on (constructor_results_1.constructorresultsid = drivers_1.driverid )
where constructor_results_1.date > constructor_standings_1.date
group by constructor_results_1.date, constructor_results_1.points, constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.wins, drivers_1.code, drivers_1.dob, drivers_1.forename, drivers_1.surname
limit 9;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_results_1.date), 
  min(
    constructor_results_1.date), 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.raceid
limit 14;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name
from 
  circuits as circuits_1
    inner join standings as standings_1
    on (circuits_1.circuitid = standings_1.driverstandingsid )
where standings_1.position is not NULL
limit 38;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.driverid, 
  results_1.date, 
  results_1.statusid
from 
  results as results_1
where results_1.rank is not NULL
limit 16;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year, 
  constructors_1.constructorref, 
  races_1.time, 
  constructors_1.nationality, 
  constructors_1.name, 
  races_1.circuitid
from 
  races as races_1
    inner join constructors as constructors_1
    on (races_1.raceid = constructors_1.constructorid )
where races_1.year is not NULL
limit 19;
-- meta {"num_joins":0,"num_aggregates":6,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position, 
  standings_1.date, 
  standings_1.wins, 
  standings_1.raceid, 
  count(*), 
  standings_1.driverid, 
  standings_1.points, 
  max(
    standings_1.date), 
  min(
    standings_1.points), 
  min(
    standings_1.driverid), 
  min(
    standings_1.points), 
  sum(
    standings_1.points)
from 
  standings as standings_1
where standings_1.date > standings_1.date
group by standings_1.date, standings_1.driverid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
limit 28;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  count(
    constructors_1.name), 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorref > constructors_1.name
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 31;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 6;
-- meta {"num_joins":5,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number, 
  constructor_standings_1.date, 
  constructor_standings_2.constructorid, 
  constructor_standings_2.wins, 
  constructor_standings_3.position, 
  constructor_standings_3.constructorid, 
  qualifying_1.qualifyid, 
  min(
    circuits_1.lng), 
  qualifying_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_2.position, 
  constructor_standings_1.raceid, 
  races_1.year, 
  qualifying_1.date
from 
  circuits as circuits_1
        inner join constructor_standings as constructor_standings_1
          inner join races as races_1
          on (constructor_standings_1.constructorstandingsid = races_1.raceid )
        on (circuits_1.circuitid = races_1.raceid )
      inner join constructor_standings as constructor_standings_2
      on (races_1.raceid = constructor_standings_2.constructorstandingsid )
    inner join constructor_standings as constructor_standings_3
      inner join qualifying as qualifying_1
      on (constructor_standings_3.constructorstandingsid = qualifying_1.qualifyid )
    on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
where constructor_standings_2.raceid is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.raceid, constructor_standings_2.constructorid, constructor_standings_2.position, constructor_standings_2.wins, constructor_standings_3.constructorid, constructor_standings_3.position, qualifying_1.constructorid, qualifying_1.date, qualifying_1.number, qualifying_1.qualifyid, races_1.year
limit 13;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 34;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid, 
  races_1.round, 
  min(
    races_1.date), 
  races_1.year
from 
  races as races_1
where races_1.circuitid is not NULL
group by races_1.circuitid, races_1.round, races_1.year
limit 12;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    results_1.fastestlap), 
  qualifying_1.raceid, 
  results_1.grid, 
  races_1.raceid, 
  results_1.resultid, 
  races_1.circuitid, 
  standings_1.points, 
  races_1.name, 
  standings_1.driverid, 
  qualifying_1.date, 
  results_1.milliseconds, 
  results_1.positionorder
from 
  standings as standings_1
    inner join races as races_1
        inner join results as results_1
        on (races_1.raceid = results_1.resultid )
      inner join qualifying as qualifying_1
      on (results_1.resultid = qualifying_1.qualifyid )
    on (standings_1.driverstandingsid = qualifying_1.qualifyid )
where qualifying_1.qualifyid is not NULL
group by qualifying_1.date, qualifying_1.raceid, races_1.circuitid, races_1.name, races_1.raceid, results_1.grid, results_1.milliseconds, results_1.positionorder, results_1.resultid, standings_1.driverid, standings_1.points
limit 42;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    races_1.circuitid), 
  races_1.circuitid, 
  races_1.round, 
  standings_1.date
from 
  standings as standings_1
    inner join races as races_1
    on (standings_1.driverstandingsid = races_1.raceid )
where races_1.circuitid >= standings_1.driverid
group by races_1.circuitid, races_1.round, standings_1.date
limit 35;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  count(
    constructors_1.nationality)
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.nationality
limit 25;
-- meta {"num_joins":5,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_3.number, 
  qualifying_2.date, 
  drivers_1.code, 
  constructor_results_1.raceid, 
  qualifying_2.driverid, 
  qualifying_1.driverid, 
  qualifying_2.number, 
  qualifying_2.position, 
  races_1.year, 
  max(
    constructor_results_1.date)
from 
  races as races_1
        inner join constructor_results as constructor_results_1
        on (races_1.raceid = constructor_results_1.constructorresultsid )
      inner join drivers as drivers_1
          inner join qualifying as qualifying_1
          on (drivers_1.driverid = qualifying_1.qualifyid )
        inner join qualifying as qualifying_2
        on (qualifying_1.qualifyid = qualifying_2.qualifyid )
      on (races_1.raceid = drivers_1.driverid )
    inner join qualifying as qualifying_3
    on (races_1.raceid = qualifying_3.qualifyid )
where qualifying_1.position is not NULL
group by constructor_results_1.raceid, drivers_1.code, qualifying_1.driverid, qualifying_2.date, qualifying_2.driverid, qualifying_2.number, qualifying_2.position, qualifying_3.number, races_1.year
limit 25;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lat, 
  circuits_1.circuitid, 
  circuits_1.alt, 
  circuits_1.name, 
  circuits_1.country
from 
  circuits as circuits_1
where circuits_1.alt is not NULL
limit 33;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    circuits_1.circuitid), 
  circuits_1.alt, 
  circuits_1.location, 
  circuits_1.lat, 
  max(
    circuits_1.alt)
from 
  circuits as circuits_1
where circuits_1.alt is not NULL
group by circuits_1.alt, circuits_1.lat, circuits_1.location
limit 41;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.milliseconds
from 
  results as results_1
    inner join circuits as circuits_1
    on (results_1.resultid = circuits_1.circuitid )
where results_1.positionorder is not NULL
limit 37;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.date, 
  min(
    standings_1.date), 
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  standings_1.points, 
  standings_1.position, 
  standings_1.wins
from 
  standings as standings_1
where standings_1.raceid = standings_1.wins
group by standings_1.date, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
limit 26;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    standings_1.date), 
  min(
    standings_1.driverid), 
  standings_1.date, 
  max(
    standings_1.date), 
  standings_1.driverstandingsid, 
  standings_1.position, 
  standings_1.points, 
  standings_1.driverid, 
  standings_1.wins, 
  sum(
    standings_1.points)
from 
  standings as standings_1
where standings_1.date is not NULL
group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.wins
limit 1;
-- meta {"num_joins":2,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  count(
    constructor_results_1.constructorid), 
  constructor_results_1.raceid, 
  results_1.grid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  max(
    results_1.points), 
  results_1.positionorder, 
  results_1.points, 
  constructor_results_1.constructorresultsid, 
  results_2.statusid, 
  max(
    constructor_results_1.date), 
  results_1.driverid, 
  min(
    results_1.date), 
  max(
    constructor_results_1.date)
from 
  results as results_1
    inner join constructor_results as constructor_results_1
      inner join results as results_2
      on (constructor_results_1.constructorresultsid = results_2.resultid )
    on (results_1.resultid = results_2.resultid )
where results_2.grid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid, results_1.driverid, results_1.grid, results_1.points, results_1.positionorder, results_2.statusid
limit 6;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.position, 
  constructor_results_1.constructorresultsid, 
  constructor_standings_1.raceid, 
  results_1.milliseconds, 
  max(
    constructor_standings_1.position), 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
    inner join results as results_1
        inner join constructor_results as constructor_results_1
        on (results_1.resultid = constructor_results_1.constructorresultsid )
      inner join circuits as circuits_1
      on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
    on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_results_1.constructorresultsid, constructor_standings_1.constructorstandingsid, constructor_standings_1.position, constructor_standings_1.raceid, results_1.milliseconds
limit 12;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.round, 
  min(
    races_1.date), 
  sum(
    races_1.raceid), 
  min(
    races_1.date), 
  races_1.year
from 
  races as races_1
where races_1.time <= races_1.name
group by races_1.round, races_1.year
limit 12;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    results_1.resultid), 
  results_1.resultid
from 
  results as results_1
where results_1.position is not NULL
group by results_1.resultid
limit 33;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 11;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position, 
  standings_1.driverid, 
  constructor_results_1.constructorid, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
    inner join standings as standings_1
    on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
where standings_1.wins is not NULL
limit 27;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.points, 
  sum(
    constructor_standings_1.points), 
  constructor_standings_1.raceid, 
  max(
    constructor_standings_1.date), 
  constructor_standings_1.position, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid
limit 23;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.grid, 
  results_1.resultid, 
  sum(
    results_1.points)
from 
  results as results_1
where results_1.positionorder is not NULL
group by results_1.grid, results_1.resultid
limit 1;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.raceid
from 
  races as races_1
    inner join constructor_results as constructor_results_1
      inner join qualifying as qualifying_1
      on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
    on (races_1.raceid = constructor_results_1.constructorresultsid )
where races_1.raceid is not NULL
limit 22;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.dob, 
  drivers_1.driverid, 
  constructors_1.constructorid
from 
  constructors as constructors_1
    inner join drivers as drivers_1
    on (constructors_1.constructorid = drivers_1.driverid )
where drivers_1.dob < drivers_1.dob
limit 9;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.resultid, 
  results_1.rank
from 
  results as results_1
where results_1.raceid is not NULL
limit 24;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location
from 
  results as results_1
    inner join circuits as circuits_1
    on (results_1.resultid = circuits_1.circuitid )
where results_1.grid < results_1.raceid
limit 37;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.position, 
  standings_1.points, 
  sum(
    constructor_results_1.points), 
  qualifying_1.driverid, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  max(
    constructor_results_1.date)
from 
  constructor_results as constructor_results_1
    inner join standings as standings_1
      inner join qualifying as qualifying_1
      on (standings_1.driverstandingsid = qualifying_1.qualifyid )
    on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
where constructor_results_1.constructorid <= standings_1.driverid
group by constructor_results_1.date, constructor_results_1.raceid, qualifying_1.driverid, qualifying_1.position, standings_1.points
limit 7;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins, 
  standings_1.driverstandingsid, 
  sum(
    standings_1.points)
from 
  standings as standings_1
    inner join constructors as constructors_1
    on (standings_1.driverstandingsid = constructors_1.constructorid )
where constructors_1.name < constructors_1.constructorref
group by standings_1.driverstandingsid, standings_1.wins
limit 23;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.rank, 
  constructor_standings_1.points, 
  min(
    constructor_standings_1.date), 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructor_standings_1.constructorstandingsid, 
  constructors_1.name, 
  results_1.grid, 
  constructors_1.constructorid, 
  avg(
    constructor_standings_1.points), 
  results_1.resultid, 
  constructor_standings_1.position, 
  results_1.date, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
      inner join results as results_1
      on (constructor_standings_1.constructorstandingsid = results_1.resultid )
    inner join constructors as constructors_1
    on (results_1.resultid = constructors_1.constructorid )
where results_1.rank is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality, results_1.date, results_1.grid, results_1.rank, results_1.resultid
limit 27;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  min(
    constructor_results_1.points), 
  constructor_results_1.raceid, 
  min(
    constructor_results_1.constructorid)
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.raceid
limit 25;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_results_1.date), 
  avg(
    constructor_results_1.raceid), 
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date < constructor_results_1.date
group by constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.points
limit 16;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.raceid, 
  qualifying_1.constructorid, 
  qualifying_1.date, 
  max(
    qualifying_1.number)
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.raceid
limit 17;
-- meta {"num_joins":4,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  sum(
    results_1.milliseconds), 
  qualifying_1.qualifyid, 
  results_1.date, 
  max(
    results_1.rank)
from 
  circuits as circuits_1
    inner join races as races_1
          inner join constructors as constructors_1
          on (races_1.raceid = constructors_1.constructorid )
        inner join results as results_1
        on (races_1.raceid = results_1.resultid )
      inner join qualifying as qualifying_1
      on (races_1.raceid = qualifying_1.qualifyid )
    on (circuits_1.circuitid = results_1.resultid )
where circuits_1.circuitref is not NULL
group by constructors_1.nationality, qualifying_1.qualifyid, results_1.date
limit 38;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.round, 
  races_1.circuitid
from 
  races as races_1
where races_1.year is not NULL
limit 34;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    constructors_1.constructorid), 
  count(*), 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.constructorid
limit 27;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.raceid, 
  qualifying_1.date, 
  min(
    qualifying_1.date), 
  qualifying_1.constructorid, 
  max(
    qualifying_1.date), 
  qualifying_1.qualifyid, 
  max(
    qualifying_1.number), 
  qualifying_1.number, 
  count(*), 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.qualifyid, qualifying_1.raceid
limit 22;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins, 
  constructor_standings_1.raceid, 
  min(
    constructor_standings_1.points), 
  max(
    constructor_standings_1.date), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  sum(
    constructor_standings_1.points), 
  min(
    constructor_standings_1.raceid), 
  constructor_standings_1.points, 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.wins
limit 32;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
limit 31;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    circuits_1.location), 
  count(
    circuits_1.circuitid), 
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.lng < circuits_1.lat
group by circuits_1.circuitref
limit 17;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.time, 
  min(
    races_1.date), 
  races_1.name, 
  races_1.round, 
  min(
    races_1.date), 
  races_1.circuitid
from 
  races as races_1
where races_1.circuitid is not NULL
group by races_1.circuitid, races_1.name, races_1.round, races_1.time
limit 13;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  count(*), 
  min(
    constructor_results_1.constructorid), 
  max(
    constructor_results_1.date), 
  min(
    constructor_results_1.points)
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 16;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  qualifying_1.qualifyid, 
  circuits_1.country, 
  constructors_1.name, 
  circuits_1.location
from 
  constructors as constructors_1
    inner join results as results_1
      inner join qualifying as qualifying_1
        inner join circuits as circuits_1
          inner join results as results_2
          on (circuits_1.circuitid = results_2.resultid )
        on (qualifying_1.qualifyid = results_2.resultid )
      on (results_1.resultid = qualifying_1.qualifyid )
    on (constructors_1.constructorid = circuits_1.circuitid )
where results_1.fastestlap >= results_2.points
limit 35;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
limit 36;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  qualifying_1.driverid, 
  qualifying_1.raceid, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
limit 13;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
limit 22;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  standings_1.position, 
  results_1.position, 
  constructor_standings_1.constructorid, 
  standings_1.driverstandingsid, 
  results_1.statusid, 
  max(
    results_1.date), 
  standings_1.date, 
  avg(
    results_1.position)
from 
  constructor_standings as constructor_standings_1
    inner join results as results_1
      inner join standings as standings_1
      on (results_1.resultid = standings_1.driverstandingsid )
    on (constructor_standings_1.constructorstandingsid = results_1.resultid )
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.constructorid, results_1.position, results_1.statusid, standings_1.date, standings_1.driverstandingsid, standings_1.position, standings_1.raceid
limit 14;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lng, 
  circuits_1.name, 
  circuits_1.circuitref, 
  circuits_1.alt, 
  races_1.date, 
  count(
    circuits_1.location), 
  races_1.raceid
from 
  races as races_1
    inner join circuits as circuits_1
    on (races_1.raceid = circuits_1.circuitid )
where races_1.circuitid is not NULL
group by circuits_1.alt, circuits_1.circuitref, circuits_1.lng, circuits_1.name, races_1.date, races_1.raceid
limit 9;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.country
from 
  constructor_results as constructor_results_1
    inner join circuits as circuits_1
    on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
where circuits_1.name is not NULL
limit 21;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.name, 
  max(
    constructors_1.constructorid), 
  sum(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name
limit 13;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorstandingsid, 
  max(
    constructor_standings_1.date), 
  constructor_standings_1.raceid, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.raceid
limit 20;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  races_1.round, 
  constructor_standings_1.constructorstandingsid, 
  circuits_1.lng, 
  circuits_1.name, 
  circuits_1.alt, 
  constructor_standings_1.date, 
  constructor_results_1.date, 
  circuits_1.location, 
  races_1.raceid, 
  circuits_1.lat, 
  races_1.year
from 
  races as races_1
      inner join constructor_results as constructor_results_1
      on (races_1.raceid = constructor_results_1.constructorresultsid )
    inner join circuits as circuits_1
      inner join constructor_standings as constructor_standings_1
      on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where constructor_results_1.points is not NULL
limit 6;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructors_1.constructorid), 
  constructors_1.constructorref, 
  max(
    constructors_1.constructorid), 
  constructors_1.constructorid, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality
limit 29;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name, 
  circuits_1.circuitref, 
  circuits_1.circuitid, 
  circuits_1.country, 
  min(
    circuits_1.alt), 
  circuits_1.lng, 
  circuits_1.alt, 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lng, circuits_1.location, circuits_1.name
limit 31;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.raceid, 
  races_1.round
from 
  standings as standings_1
    inner join drivers as drivers_1
      inner join races as races_1
        inner join races as races_2
        on (races_1.raceid = races_2.raceid )
      on (drivers_1.driverid = races_2.raceid )
    on (standings_1.driverstandingsid = races_2.raceid )
where races_1.circuitid is not NULL
limit 12;
-- meta {"num_joins":5,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  constructor_standings_1.wins, 
  races_2.raceid, 
  sum(
    qualifying_1.qualifyid)
from 
  races as races_1
        inner join qualifying as qualifying_1
          inner join constructor_standings as constructor_standings_1
          on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
        on (races_1.raceid = qualifying_1.qualifyid )
      inner join races as races_2
      on (races_1.raceid = races_2.raceid )
    inner join drivers as drivers_1
      inner join qualifying as qualifying_2
      on (drivers_1.driverid = qualifying_2.qualifyid )
    on (races_2.raceid = qualifying_2.qualifyid )
where races_2.date >= races_1.date
group by constructor_standings_1.wins, races_2.raceid
limit 20;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.driverid, 
  results_1.rank, 
  results_1.milliseconds
from 
  results as results_1
where results_1.milliseconds is not NULL
limit 2;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number, 
  constructor_standings_2.constructorstandingsid, 
  qualifying_1.raceid, 
  qualifying_1.qualifyid, 
  standings_1.wins, 
  constructor_standings_2.date, 
  qualifying_1.constructorid, 
  constructor_standings_2.points, 
  avg(
    constructor_standings_2.points), 
  standings_1.position, 
  constructor_standings_2.position
from 
  standings as standings_1
        inner join qualifying as qualifying_1
        on (standings_1.driverstandingsid = qualifying_1.qualifyid )
      inner join constructor_standings as constructor_standings_1
      on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
    inner join constructor_standings as constructor_standings_2
    on (qualifying_1.qualifyid = constructor_standings_2.constructorstandingsid )
where standings_1.points = constructor_standings_2.points
group by constructor_standings_2.constructorstandingsid, constructor_standings_2.date, constructor_standings_2.points, constructor_standings_2.position, qualifying_1.constructorid, qualifying_1.number, qualifying_1.qualifyid, qualifying_1.raceid, standings_1.position, standings_1.wins
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    races_1.year), 
  races_1.year, 
  max(
    races_1.date), 
  races_1.date
from 
  races as races_1
where races_1.year is not NULL
group by races_1.date, races_1.year
limit 2;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    results_1.grid), 
  results_1.constructorid, 
  avg(
    results_1.rank), 
  results_1.raceid, 
  results_1.points, 
  results_1.milliseconds, 
  results_1.position, 
  results_1.rank, 
  results_1.grid, 
  results_1.statusid, 
  results_1.fastestlap, 
  sum(
    results_1.milliseconds), 
  results_1.driverid
from 
  results as results_1
where results_1.position is not NULL
group by results_1.constructorid, results_1.driverid, results_1.fastestlap, results_1.grid, results_1.milliseconds, results_1.points, results_1.position, results_1.raceid, results_1.rank, results_1.statusid
limit 25;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.country, 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.country is not NULL
limit 33;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    qualifying_1.date), 
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
group by qualifying_1.number
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.number, 
  results_1.position, 
  results_1.constructorid, 
  results_1.grid, 
  results_1.date, 
  avg(
    results_1.position), 
  results_1.raceid
from 
  results as results_1
where results_1.date <= results_1.date
group by results_1.constructorid, results_1.date, results_1.grid, results_1.number, results_1.position, results_1.raceid
limit 28;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt, 
  constructor_results_1.points, 
  constructor_results_1.raceid
from 
  circuits as circuits_1
    inner join constructor_results as constructor_results_1
    on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
where circuits_1.alt >= circuits_1.lng
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position, 
  standings_1.raceid, 
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.date > standings_1.date
limit 26;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.dob, 
  races_1.round, 
  constructors_1.nationality, 
  results_1.date
from 
  constructor_results as constructor_results_1
      inner join drivers as drivers_1
        inner join results as results_1
        on (drivers_1.driverid = results_1.resultid )
      on (constructor_results_1.constructorresultsid = drivers_1.driverid )
    inner join races as races_1
      inner join constructors as constructors_1
        inner join constructors as constructors_2
        on (constructors_1.constructorid = constructors_2.constructorid )
      on (races_1.raceid = constructors_2.constructorid )
    on (constructor_results_1.constructorresultsid = constructors_2.constructorid )
where drivers_1.driverref is not NULL
limit 34;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name, 
  circuits_1.circuitref, 
  circuits_1.circuitid, 
  circuits_1.lng, 
  circuits_1.alt
from 
  circuits as circuits_1
    inner join results as results_1
    on (circuits_1.circuitid = results_1.resultid )
where results_1.positionorder is not NULL
limit 36;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitid, 
  circuits_1.alt, 
  results_1.constructorid
from 
  circuits as circuits_1
    inner join results as results_1
    on (circuits_1.circuitid = results_1.resultid )
where circuits_1.lat is not NULL
limit 38;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid, 
  avg(
    qualifying_1.position), 
  count(*)
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
group by qualifying_1.driverid
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name, 
  qualifying_1.date
from 
  qualifying as qualifying_1
    inner join circuits as circuits_1
    on (qualifying_1.qualifyid = circuits_1.circuitid )
where circuits_1.alt is not NULL
limit 32;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.points, 
  count(*), 
  results_1.laps, 
  results_1.position, 
  results_1.rank, 
  results_1.fastestlap
from 
  results as results_1
where results_1.date is not NULL
group by results_1.fastestlap, results_1.laps, results_1.points, results_1.position, results_1.rank
limit 27;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid, 
  races_1.name, 
  races_1.raceid, 
  races_1.round
from 
  races as races_1
where races_1.time is not NULL
limit 25;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    circuits_1.circuitid), 
  circuits_1.alt, 
  avg(
    circuits_1.lat), 
  circuits_1.name
from 
  constructor_standings as constructor_standings_1
    inner join circuits as circuits_1
    on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
where constructor_standings_1.raceid is not NULL
group by circuits_1.alt, circuits_1.name
limit 10;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lat
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
limit 40;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 29;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  qualifying_1.position, 
  sum(
    constructor_standings_1.points), 
  qualifying_1.date, 
  qualifying_1.number, 
  qualifying_1.raceid, 
  qualifying_1.constructorid, 
  constructor_standings_1.points, 
  constructor_standings_1.position, 
  qualifying_1.driverid, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
    inner join qualifying as qualifying_1
    on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
where qualifying_1.raceid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.points, constructor_standings_1.position, qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.raceid
limit 29;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    constructors_1.constructorid), 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  min(
    constructors_1.constructorid), 
  max(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.constructorid > constructors_1.constructorid
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality
limit 34;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
limit 14;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    drivers_1.dob), 
  max(
    drivers_1.driverid), 
  drivers_1.code, 
  drivers_1.dob, 
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.forename
limit 33;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid, 
  races_1.raceid, 
  races_1.date, 
  constructor_standings_1.date, 
  standings_1.driverstandingsid, 
  standings_1.date, 
  constructor_standings_1.wins, 
  drivers_1.driverid, 
  constructor_standings_1.points, 
  standings_1.points, 
  drivers_1.dob, 
  constructor_standings_1.raceid, 
  drivers_1.driverref
from 
  drivers as drivers_1
    inner join constructor_standings as constructor_standings_1
      inner join races as races_1
        inner join standings as standings_1
        on (races_1.raceid = standings_1.driverstandingsid )
      on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
    on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
where drivers_1.surname is not NULL
limit 26;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position, 
  standings_1.driverstandingsid, 
  count(
    standings_1.wins), 
  standings_1.wins
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
group by standings_1.driverstandingsid, standings_1.position, standings_1.wins
limit 33;
-- meta {"num_joins":3,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_2.lat, 
  circuits_2.circuitid, 
  max(
    results_1.date), 
  constructors_1.nationality, 
  circuits_1.alt, 
  results_1.points, 
  constructors_1.constructorref, 
  circuits_2.circuitref, 
  circuits_2.lng, 
  results_1.driverid, 
  max(
    results_1.date), 
  min(
    circuits_2.lat), 
  max(
    results_1.constructorid), 
  circuits_1.location, 
  avg(
    results_1.number), 
  results_1.constructorid
from 
  circuits as circuits_1
    inner join circuits as circuits_2
      inner join results as results_1
        inner join constructors as constructors_1
        on (results_1.resultid = constructors_1.constructorid )
      on (circuits_2.circuitid = constructors_1.constructorid )
    on (circuits_1.circuitid = circuits_2.circuitid )
where circuits_2.location is not NULL
group by circuits_1.alt, circuits_1.location, circuits_2.circuitid, circuits_2.circuitref, circuits_2.lat, circuits_2.lng, constructors_1.constructorref, constructors_1.nationality, results_1.constructorid, results_1.driverid, results_1.points
limit 38;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.constructorid, 
  qualifying_1.date, 
  qualifying_1.position, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
limit 24;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.name, 
  races_1.date
from 
  races as races_1
where races_1.date > races_1.date
limit 28;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.dob, 
  drivers_1.forename, 
  qualifying_1.raceid, 
  results_1.raceid
from 
  qualifying as qualifying_1
    inner join drivers as drivers_1
      inner join results as results_1
      on (drivers_1.driverid = results_1.resultid )
    on (qualifying_1.qualifyid = results_1.resultid )
where drivers_1.surname <= drivers_1.code
limit 41;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.position, 
  min(
    results_1.rank), 
  results_1.milliseconds
from 
  results as results_1
where results_1.position <= results_1.fastestlap
group by results_1.milliseconds, results_1.position
limit 38;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.date
from 
  races as races_1
where races_1.date is not NULL
limit 5;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.points is not NULL
limit 14;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.points, 
  avg(
    constructor_standings_1.points), 
  avg(
    constructor_standings_1.constructorstandingsid), 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid = constructor_standings_1.wins
group by constructor_standings_1.points, constructor_standings_1.wins
limit 38;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.number, 
  constructors_1.name, 
  results_1.points, 
  circuits_1.circuitid, 
  min(
    constructor_results_1.date)
from 
  circuits as circuits_1
      inner join results as results_1
        inner join constructor_results as constructor_results_1
        on (results_1.resultid = constructor_results_1.constructorresultsid )
      on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
    inner join constructors as constructors_1
    on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
where results_1.constructorid < circuits_1.circuitid
group by circuits_1.circuitid, constructors_1.name, results_1.number, results_1.points
limit 20;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 20;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid, 
  standings_1.date, 
  standings_1.driverid, 
  races_1.name, 
  count(*), 
  races_1.raceid
from 
  races as races_1
    inner join standings as standings_1
    on (races_1.raceid = standings_1.driverstandingsid )
where standings_1.position is not NULL
group by races_1.circuitid, races_1.name, races_1.raceid, standings_1.date, standings_1.driverid
limit 30;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.positionorder, 
  results_1.number, 
  results_1.date, 
  results_1.fastestlap
from 
  results as results_1
where results_1.statusid is not NULL
limit 39;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lng, 
  circuits_1.location, 
  circuits_1.lat, 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
limit 36;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.number, 
  circuits_1.name, 
  results_1.statusid, 
  circuits_1.circuitid, 
  circuits_1.location, 
  drivers_2.forename, 
  constructor_standings_1.constructorid, 
  results_1.fastestlap, 
  drivers_1.surname, 
  max(
    constructor_standings_1.raceid), 
  circuits_1.circuitref
from 
  constructor_standings as constructor_standings_1
      inner join circuits as circuits_1
      on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
    inner join results as results_1
        inner join drivers as drivers_1
        on (results_1.resultid = drivers_1.driverid )
      inner join drivers as drivers_2
      on (results_1.resultid = drivers_2.driverid )
    on (circuits_1.circuitid = drivers_1.driverid )
where circuits_1.circuitid is not NULL
group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.location, circuits_1.name, constructor_standings_1.constructorid, drivers_1.surname, drivers_2.forename, results_1.fastestlap, results_1.number, results_1.statusid
limit 2;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.name, 
  min(
    races_1.date), 
  constructors_1.constructorid
from 
  constructors as constructors_1
    inner join races as races_1
    on (constructors_1.constructorid = races_1.raceid )
where races_1.circuitid <= races_1.year
group by constructors_1.constructorid, races_1.name
limit 35;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name, 
  drivers_1.driverref, 
  constructors_1.constructorid, 
  max(
    drivers_1.dob), 
  drivers_1.dob
from 
  constructors as constructors_1
    inner join drivers as drivers_1
    on (constructors_1.constructorid = drivers_1.driverid )
where drivers_1.forename is not NULL
group by constructors_1.constructorid, constructors_1.name, drivers_1.dob, drivers_1.driverref
limit 28;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.constructorid, 
  qualifying_1.number, 
  avg(
    qualifying_1.position), 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
group by qualifying_1.constructorid, qualifying_1.number, qualifying_1.qualifyid
limit 13;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
limit 34;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.points
from 
  standings as standings_1
where standings_1.date is not NULL
limit 24;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid
from 
  standings as standings_1
    inner join standings as standings_2
    on (standings_1.driverstandingsid = standings_2.driverstandingsid )
where standings_2.points < standings_1.points
limit 42;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid
from 
  standings as standings_1
where standings_1.points < standings_1.points
limit 25;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.forename, 
  drivers_1.driverref, 
  drivers_1.code, 
  drivers_1.dob, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  standings_2.driverstandingsid, 
  standings_1.driverid, 
  standings_1.date, 
  max(
    standings_2.date), 
  standings_2.position, 
  standings_2.date, 
  standings_2.points, 
  count(
    standings_1.raceid), 
  standings_1.driverstandingsid, 
  standings_2.raceid, 
  standings_2.wins
from 
  standings as standings_1
    inner join standings as standings_2
    on (standings_1.driverstandingsid = standings_2.driverstandingsid )
where standings_2.date is not NULL
group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.raceid, standings_2.date, standings_2.driverstandingsid, standings_2.points, standings_2.position, standings_2.raceid, standings_2.wins
limit 18;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
limit 36;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    results_1.position)
from 
  results as results_1
      inner join qualifying as qualifying_1
      on (results_1.resultid = qualifying_1.qualifyid )
    inner join constructor_standings as constructor_standings_1
    on (results_1.resultid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.constructorid is not NULL
limit 22;
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins, 
  races_1.circuitid, 
  standings_1.driverid, 
  races_1.raceid, 
  constructor_standings_1.date, 
  max(
    standings_1.date), 
  constructor_standings_1.raceid, 
  standings_1.position, 
  constructor_standings_2.position, 
  min(
    constructor_standings_2.date)
from 
  constructor_standings as constructor_standings_1
      inner join races as races_1
      on (constructor_standings_1.constructorstandingsid = races_1.raceid )
    inner join standings as standings_1
      inner join constructor_standings as constructor_standings_2
      on (standings_1.driverstandingsid = constructor_standings_2.constructorstandingsid )
    on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
where constructor_standings_1.points < standings_1.points
group by constructor_standings_1.date, constructor_standings_1.raceid, constructor_standings_2.position, races_1.circuitid, races_1.raceid, standings_1.driverid, standings_1.position, standings_1.wins
limit 25;
-- meta {"num_joins":4,"num_aggregates":8,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    circuits_1.lat), 
  drivers_1.surname, 
  circuits_1.circuitref, 
  drivers_1.dob, 
  sum(
    qualifying_1.raceid), 
  max(
    constructor_standings_1.date), 
  circuits_1.lat, 
  max(
    drivers_1.dob), 
  qualifying_1.qualifyid, 
  constructor_standings_1.points, 
  min(
    constructor_standings_1.constructorstandingsid), 
  constructor_standings_1.position, 
  qualifying_1.driverid, 
  drivers_2.driverid, 
  constructor_standings_1.constructorid, 
  min(
    drivers_2.dob), 
  qualifying_1.position, 
  constructor_standings_1.raceid, 
  drivers_1.forename, 
  min(
    drivers_1.dob), 
  max(
    constructor_standings_1.date)
from 
  qualifying as qualifying_1
      inner join drivers as drivers_1
        inner join constructor_standings as constructor_standings_1
          inner join drivers as drivers_2
          on (constructor_standings_1.constructorstandingsid = drivers_2.driverid )
        on (drivers_1.driverid = drivers_2.driverid )
      on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
    inner join circuits as circuits_1
    on (drivers_1.driverid = circuits_1.circuitid )
where qualifying_1.raceid is not NULL
group by circuits_1.circuitref, circuits_1.lat, constructor_standings_1.constructorid, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, drivers_1.dob, drivers_1.forename, drivers_1.surname, drivers_2.driverid, qualifying_1.driverid, qualifying_1.position, qualifying_1.qualifyid
limit 21;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.code, 
  avg(
    drivers_1.driverid), 
  drivers_1.surname, 
  min(
    drivers_1.dob), 
  drivers_1.forename, 
  constructor_results_1.constructorid
from 
  drivers as drivers_1
    inner join constructor_results as constructor_results_1
    on (drivers_1.driverid = constructor_results_1.constructorresultsid )
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorid, drivers_1.code, drivers_1.forename, drivers_1.surname
limit 6;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  avg(
    constructor_results_1.constructorid), 
  constructors_1.constructorref, 
  count(
    constructor_results_1.date), 
  constructors_1.constructorid, 
  avg(
    constructor_results_1.points)
from 
  constructor_results as constructor_results_1
    inner join constructors as constructors_1
    on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
where constructor_results_1.date = constructor_results_1.date
group by constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid, constructors_1.constructorid, constructors_1.constructorref
limit 30;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    constructor_results_1.points), 
  min(
    constructor_results_1.points)
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
limit 24;
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    standings_1.driverstandingsid), 
  sum(
    standings_1.points), 
  standings_1.points, 
  max(
    constructor_results_1.date)
from 
  constructor_results as constructor_results_1
      inner join qualifying as qualifying_1
      on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
    inner join standings as standings_1
    on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
where standings_1.driverid is not NULL
group by standings_1.points
limit 36;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.dob, 
  qualifying_1.position, 
  qualifying_1.raceid, 
  qualifying_1.qualifyid, 
  drivers_1.forename, 
  drivers_1.nationality
from 
  drivers as drivers_1
    inner join qualifying as qualifying_1
    on (drivers_1.driverid = qualifying_1.qualifyid )
where qualifying_1.qualifyid <= qualifying_1.constructorid
limit 32;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lng, 
  circuits_1.circuitref, 
  circuits_1.lat
from 
  circuits as circuits_1
where circuits_1.alt is not NULL
limit 30;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid
from 
  constructor_standings as constructor_standings_1
      inner join results as results_1
      on (constructor_standings_1.constructorstandingsid = results_1.resultid )
    inner join qualifying as qualifying_1
    on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
where results_1.positionorder is not NULL
limit 29;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.code, 
  drivers_1.nationality, 
  races_1.time
from 
  drivers as drivers_1
    inner join races as races_1
    on (drivers_1.driverid = races_1.raceid )
where races_1.time is not NULL
limit 33;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.constructorid, 
  qualifying_1.date, 
  qualifying_1.number, 
  avg(
    qualifying_1.constructorid), 
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.number, qualifying_1.position
limit 16;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  count(*), 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  max(
    constructor_results_1.date)
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 31;
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructors_1.constructorid), 
  min(
    circuits_1.lat), 
  constructors_1.nationality, 
  circuits_1.circuitref, 
  sum(
    circuits_1.alt)
from 
  constructors as constructors_1
      inner join circuits as circuits_1
      on (constructors_1.constructorid = circuits_1.circuitid )
    inner join constructors as constructors_2
    on (constructors_1.constructorid = constructors_2.constructorid )
where circuits_1.lng >= circuits_1.lat
group by circuits_1.circuitref, constructors_1.nationality
limit 30;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.resultid, 
  results_1.position, 
  results_1.date
from 
  results as results_1
where results_1.raceid is not NULL
limit 24;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverid, 
  drivers_1.surname, 
  drivers_1.dob, 
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.forename is not NULL
limit 8;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 31;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.grid, 
  results_1.positionorder, 
  results_1.resultid, 
  results_1.milliseconds, 
  results_1.raceid, 
  avg(
    results_1.laps)
from 
  results as results_1
where results_1.position <= results_1.fastestlap
group by results_1.grid, results_1.milliseconds, results_1.positionorder, results_1.raceid, results_1.resultid
limit 22;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructor_standings_1.raceid), 
  constructor_standings_1.raceid, 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
group by constructor_standings_1.raceid, constructor_standings_1.wins
limit 7;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.raceid, 
  count(*), 
  races_1.year
from 
  races as races_1
    inner join qualifying as qualifying_1
    on (races_1.raceid = qualifying_1.qualifyid )
where races_1.circuitid is not NULL
group by races_1.raceid, races_1.year
limit 7;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  constructors_1.name, 
  min(
    constructors_1.constructorid), 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 22;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.nationality, 
  drivers_1.driverref, 
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
limit 10;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  standings_1.position
from 
  standings as standings_1
where standings_1.driverid is not NULL
limit 5;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  count(
    constructor_results_1.date), 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  count(
    constructor_results_1.date), 
  constructor_results_1.constructorid, 
  sum(
    constructor_results_1.points)
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.raceid
limit 25;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position, 
  standings_1.date, 
  standings_1.raceid, 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.date is not NULL
limit 27;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lat, 
  circuits_1.lng, 
  circuits_1.location, 
  circuits_1.country, 
  max(
    circuits_1.circuitid)
from 
  circuits as circuits_1
where circuits_1.location is not NULL
group by circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.location
limit 2;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  qualifying_1.raceid, 
  min(
    standings_1.points)
from 
  qualifying as qualifying_1
    inner join standings as standings_1
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where standings_1.driverstandingsid is not NULL
group by qualifying_1.date, qualifying_1.raceid
limit 23;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    drivers_1.driverid), 
  max(
    drivers_1.driverid), 
  drivers_1.dob, 
  drivers_1.driverid, 
  drivers_1.driverref, 
  avg(
    drivers_1.driverid), 
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.code is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.driverref
limit 26;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructor_standings_1.date), 
  constructors_1.constructorref, 
  constructor_standings_1.date, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid
from 
  constructors as constructors_1
    inner join constructor_standings as constructor_standings_1
    on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
where constructors_1.nationality is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructors_1.constructorref
limit 16;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid
from 
  qualifying as qualifying_1
    inner join circuits as circuits_1
    on (qualifying_1.qualifyid = circuits_1.circuitid )
where circuits_1.country is not NULL
limit 3;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    results_1.milliseconds), 
  constructors_1.constructorref, 
  drivers_1.code, 
  drivers_1.driverid, 
  constructors_1.constructorid, 
  results_1.fastestlap, 
  min(
    drivers_1.dob), 
  results_1.rank, 
  constructors_1.nationality
from 
  constructors as constructors_1
      inner join results as results_1
      on (constructors_1.constructorid = results_1.resultid )
    inner join drivers as drivers_1
    on (constructors_1.constructorid = drivers_1.driverid )
where results_1.raceid > results_1.resultid
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality, drivers_1.code, drivers_1.driverid, results_1.fastestlap, results_1.rank
limit 28;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.country
from 
  circuits as circuits_1
where circuits_1.location is not NULL
limit 17;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.grid
from 
  results as results_1
where results_1.raceid is not NULL
limit 13;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructor_standings_1.points), 
  constructor_standings_1.points, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points = constructor_standings_1.points
group by constructor_standings_1.constructorid, constructor_standings_1.points
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.name, 
  min(
    constructors_1.constructorid), 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorid <= constructors_1.constructorid
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 7;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid, 
  constructors_1.name, 
  qualifying_1.constructorid
from 
  constructors as constructors_1
    inner join qualifying as qualifying_1
    on (constructors_1.constructorid = qualifying_1.qualifyid )
where qualifying_1.date > qualifying_1.date
limit 30;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.round
from 
  races as races_1
where races_1.raceid is not NULL
limit 13;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.date, 
  races_1.year, 
  count(
    races_1.time), 
  constructor_standings_1.points, 
  constructor_standings_1.wins, 
  min(
    races_1.date)
from 
  circuits as circuits_1
      inner join races as races_1
      on (circuits_1.circuitid = races_1.raceid )
    inner join constructor_standings as constructor_standings_1
    on (races_1.raceid = constructor_standings_1.constructorstandingsid )
where races_1.circuitid > races_1.round
group by constructor_standings_1.points, constructor_standings_1.wins, races_1.date, races_1.year
limit 24;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  drivers_1.driverid, 
  drivers_1.surname, 
  avg(
    drivers_1.driverid), 
  drivers_1.forename, 
  drivers_1.nationality, 
  avg(
    drivers_1.driverid), 
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.code is not NULL
group by drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 24;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    qualifying_1.date), 
  qualifying_1.position, 
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
group by qualifying_1.number, qualifying_1.position
limit 6;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorid > constructors_1.constructorid
limit 36;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    constructor_standings_2.points), 
  races_2.circuitid
from 
  races as races_1
      inner join constructor_standings as constructor_standings_1
      on (races_1.raceid = constructor_standings_1.constructorstandingsid )
    inner join races as races_2
      inner join constructor_standings as constructor_standings_2
      on (races_2.raceid = constructor_standings_2.constructorstandingsid )
    on (races_1.raceid = races_2.raceid )
where races_2.date is not NULL
group by races_2.circuitid
limit 17;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number, 
  avg(
    qualifying_1.qualifyid), 
  qualifying_1.qualifyid, 
  sum(
    qualifying_1.driverid), 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
group by qualifying_1.date, qualifying_1.number, qualifying_1.qualifyid
limit 31;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.statusid, 
  results_1.laps, 
  results_1.constructorid
from 
  results as results_1
where results_1.grid > results_1.driverid
limit 42;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
limit 10;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins, 
  count(
    standings_1.raceid), 
  count(*)
from 
  standings as standings_1
where standings_1.wins is not NULL
group by standings_1.wins
limit 27;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position, 
  max(
    constructor_standings_1.date), 
  qualifying_1.number, 
  constructor_standings_1.position
from 
  qualifying as qualifying_1
    inner join constructor_standings as constructor_standings_1
      inner join standings as standings_1
      on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.position, qualifying_1.number, standings_1.position
limit 22;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  min(
    constructor_results_1.date), 
  constructor_results_1.points, 
  min(
    constructor_results_1.points), 
  constructors_1.constructorid
from 
  constructors as constructors_1
    inner join constructor_results as constructor_results_1
    on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
where constructors_1.nationality is not NULL
group by constructor_results_1.constructorid, constructor_results_1.points, constructors_1.constructorid
limit 6;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
limit 7;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.raceid
from 
  races as races_1
    inner join races as races_2
    on (races_1.raceid = races_2.raceid )
where races_1.name > races_2.name
limit 17;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.laps
from 
  results as results_1
where results_1.points <= results_1.position
limit 20;
-- meta {"num_joins":7,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.laps, 
  results_3.positionorder, 
  constructors_1.constructorref, 
  avg(
    results_2.number), 
  constructor_results_1.constructorid, 
  results_3.number, 
  sum(
    results_1.fastestlap), 
  max(
    drivers_2.dob)
from 
  drivers as drivers_1
          inner join standings as standings_1
          on (drivers_1.driverid = standings_1.driverstandingsid )
        inner join constructors as constructors_1
        on (standings_1.driverstandingsid = constructors_1.constructorid )
      inner join drivers as drivers_2
        inner join results as results_1
        on (drivers_2.driverid = results_1.resultid )
      on (drivers_1.driverid = drivers_2.driverid )
    inner join constructor_results as constructor_results_1
      inner join results as results_2
        inner join results as results_3
        on (results_2.resultid = results_3.resultid )
      on (constructor_results_1.constructorresultsid = results_2.resultid )
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.constructorid, constructors_1.constructorref, results_1.laps, results_3.number, results_3.positionorder
limit 37;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  circuits_1.circuitid, 
  count(*)
from 
  constructors as constructors_1
        inner join circuits as circuits_1
        on (constructors_1.constructorid = circuits_1.circuitid )
      inner join constructor_results as constructor_results_1
      on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
    inner join results as results_1
      inner join constructors as constructors_2
      on (results_1.resultid = constructors_2.constructorid )
    on (constructor_results_1.constructorresultsid = results_1.resultid )
where constructor_results_1.constructorid <= results_1.raceid
group by circuits_1.circuitid, constructors_1.constructorref
limit 3;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number, 
  max(
    qualifying_1.date), 
  count(
    qualifying_1.number), 
  qualifying_1.position, 
  qualifying_1.raceid, 
  qualifying_1.driverid, 
  max(
    qualifying_1.driverid), 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.raceid
limit 21;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.name > constructors_1.nationality
limit 22;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  drivers_1.dob
from 
  constructor_results as constructor_results_1
    inner join drivers as drivers_1
      inner join results as results_1
        inner join circuits as circuits_1
        on (results_1.resultid = circuits_1.circuitid )
      on (drivers_1.driverid = results_1.resultid )
    on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
where constructor_results_1.date = drivers_1.dob
limit 25;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 38;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid, 
  min(
    standings_1.date), 
  constructor_results_1.raceid, 
  drivers_1.nationality, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
    inner join standings as standings_1
      inner join drivers as drivers_1
      on (standings_1.driverstandingsid = drivers_1.driverid )
    on (constructor_results_1.constructorresultsid = drivers_1.driverid )
where standings_1.driverid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.raceid, drivers_1.nationality, standings_1.driverid
limit 7;
-- meta {"num_joins":5,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_2.country, 
  circuits_1.location, 
  constructor_standings_1.constructorid, 
  constructors_1.constructorref, 
  circuits_1.lat, 
  qualifying_1.qualifyid, 
  min(
    qualifying_1.qualifyid)
from 
  qualifying as qualifying_1
      inner join constructors as constructors_1
      on (qualifying_1.qualifyid = constructors_1.constructorid )
    inner join constructor_standings as constructor_standings_1
        inner join circuits as circuits_1
        on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
      inner join circuits as circuits_2
        inner join standings as standings_1
        on (circuits_2.circuitid = standings_1.driverstandingsid )
      on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
    on (constructors_1.constructorid = circuits_2.circuitid )
where standings_1.raceid is not NULL
group by circuits_1.lat, circuits_1.location, circuits_2.country, constructor_standings_1.constructorid, constructors_1.constructorref, qualifying_1.qualifyid
limit 26;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid
from 
  standings as standings_1
where standings_1.position is not NULL
limit 11;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.points, 
  results_1.number, 
  results_1.rank, 
  results_1.driverid, 
  results_1.raceid, 
  min(
    results_1.date), 
  results_1.positionorder, 
  results_1.statusid
from 
  results as results_1
where results_1.grid >= results_1.statusid
group by results_1.driverid, results_1.number, results_1.points, results_1.positionorder, results_1.raceid, results_1.rank, results_1.statusid
limit 39;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    qualifying_1.date)
from 
  qualifying as qualifying_1
where qualifying_1.date = qualifying_1.date
limit 9;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.date, 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
limit 31;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.country, 
  circuits_1.location, 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.alt is not NULL
limit 35;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year, 
  races_1.round, 
  races_1.time
from 
  races as races_1
where races_1.raceid is not NULL
limit 25;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.nationality, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  drivers_2.nationality, 
  max(
    drivers_1.dob), 
  drivers_1.driverid
from 
  drivers as drivers_1
    inner join constructor_results as constructor_results_1
      inner join drivers as drivers_2
      on (constructor_results_1.constructorresultsid = drivers_2.driverid )
    on (drivers_1.driverid = constructor_results_1.constructorresultsid )
where constructor_results_1.points = constructor_results_1.points
group by constructor_results_1.constructorid, constructor_results_1.raceid, drivers_1.driverid, drivers_1.nationality, drivers_2.nationality
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  min(
    constructors_1.constructorid), 
  min(
    constructors_1.constructorid), 
  constructors_1.nationality, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorid > constructors_1.constructorid
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality
limit 21;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins, 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
      inner join circuits as circuits_1
      on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
    inner join circuits as circuits_2
    on (circuits_1.circuitid = circuits_2.circuitid )
where circuits_2.country is not NULL
limit 41;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  constructor_results_1.points, 
  count(*)
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.date, constructor_results_1.points
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date, 
  count(*), 
  min(
    constructor_standings_1.wins)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins > constructor_standings_1.position
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.wins
limit 13;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref, 
  qualifying_1.position, 
  qualifying_1.driverid, 
  max(
    drivers_1.dob), 
  qualifying_1.number
from 
  qualifying as qualifying_1
    inner join drivers as drivers_1
      inner join qualifying as qualifying_2
      on (drivers_1.driverid = qualifying_2.qualifyid )
    on (qualifying_1.qualifyid = qualifying_2.qualifyid )
where drivers_1.code is not NULL
group by drivers_1.driverref, qualifying_1.driverid, qualifying_1.number, qualifying_1.position
limit 16;
-- meta {"num_joins":6,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.raceid, 
  results_1.rank, 
  circuits_1.location, 
  standings_1.driverid, 
  standings_1.date, 
  races_1.time, 
  sum(
    results_1.grid), 
  constructor_results_1.constructorid, 
  sum(
    results_1.fastestlap), 
  constructor_results_1.raceid, 
  qualifying_1.driverid, 
  constructor_results_1.date, 
  min(
    circuits_1.alt), 
  results_1.milliseconds
from 
  races as races_1
        inner join drivers as drivers_1
        on (races_1.raceid = drivers_1.driverid )
      inner join qualifying as qualifying_1
          inner join standings as standings_1
          on (qualifying_1.qualifyid = standings_1.driverstandingsid )
        inner join circuits as circuits_1
          inner join constructor_results as constructor_results_1
          on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
        on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
      on (races_1.raceid = standings_1.driverstandingsid )
    inner join results as results_1
    on (constructor_results_1.constructorresultsid = results_1.resultid )
where circuits_1.lat is not NULL
group by circuits_1.location, constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.raceid, qualifying_1.driverid, qualifying_1.raceid, races_1.time, results_1.milliseconds, results_1.rank, standings_1.date, standings_1.driverid
limit 14;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins
from 
  races as races_1
      inner join drivers as drivers_1
        inner join standings as standings_1
        on (drivers_1.driverid = standings_1.driverstandingsid )
      on (races_1.raceid = standings_1.driverstandingsid )
    inner join constructor_standings as constructor_standings_1
    on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
where drivers_1.surname is not NULL
limit 7;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date, 
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  max(
    constructor_standings_1.date), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorid, 
  min(
    constructor_standings_1.points), 
  constructor_standings_1.wins, 
  min(
    constructor_standings_1.date)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date = constructor_standings_1.date
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 6;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    circuits_1.lat), 
  constructor_standings_1.constructorstandingsid
from 
  circuits as circuits_1
    inner join constructor_standings as constructor_standings_1
    on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
where circuits_1.lng is not NULL
group by constructor_standings_1.constructorstandingsid
limit 11;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.points, 
  standings_1.date
from 
  standings as standings_1
where standings_1.wins is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.date, 
  min(
    results_1.number)
from 
  results as results_1
where results_1.grid is not NULL
group by results_1.date
limit 17;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location, 
  circuits_1.alt, 
  circuits_1.circuitid, 
  circuits_1.name, 
  circuits_1.lng, 
  circuits_1.country, 
  sum(
    circuits_1.alt), 
  sum(
    circuits_1.lat), 
  max(
    circuits_1.circuitid), 
  sum(
    circuits_1.circuitid), 
  max(
    circuits_1.circuitid)
from 
  circuits as circuits_1
where circuits_1.country is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.country, circuits_1.lng, circuits_1.location, circuits_1.name
limit 7;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.forename, 
  drivers_1.surname, 
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.country
from 
  circuits as circuits_1
where circuits_1.name is not NULL
limit 14;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
limit 40;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    qualifying_1.position), 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  max(
    qualifying_1.number), 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
group by qualifying_1.constructorid, qualifying_1.qualifyid, qualifying_1.raceid
limit 6;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref, 
  drivers_1.nationality, 
  drivers_1.driverid, 
  max(
    drivers_1.driverid)
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
group by drivers_1.driverid, drivers_1.driverref, drivers_1.nationality
limit 32;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  drivers_1.dob, 
  standings_1.date, 
  standings_1.wins, 
  standings_1.driverid, 
  standings_2.points
from 
  standings as standings_1
        inner join standings as standings_2
        on (standings_1.driverstandingsid = standings_2.driverstandingsid )
      inner join drivers as drivers_1
      on (standings_1.driverstandingsid = drivers_1.driverid )
    inner join qualifying as qualifying_1
    on (drivers_1.driverid = qualifying_1.qualifyid )
where drivers_1.surname is not NULL
limit 20;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  results_1.statusid, 
  results_2.milliseconds, 
  constructor_standings_1.position
from 
  results as results_1
    inner join constructor_standings as constructor_standings_1
        inner join results as results_2
        on (constructor_standings_1.constructorstandingsid = results_2.resultid )
      inner join constructors as constructors_1
      on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
    on (results_1.resultid = constructors_1.constructorid )
where results_1.milliseconds is not NULL
limit 6;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.date, 
  max(
    standings_1.points)
from 
  standings as standings_1
where standings_1.driverid < standings_1.position
group by standings_1.date
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points >= constructor_standings_1.points
limit 13;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  sum(
    constructors_1.constructorid)
from 
  races as races_1
    inner join races as races_2
      inner join constructors as constructors_1
      on (races_2.raceid = constructors_1.constructorid )
    on (races_1.raceid = constructors_1.constructorid )
where races_1.year is not NULL
group by constructors_1.nationality
limit 13;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
limit 10;
-- meta {"num_joins":0,"num_aggregates":6,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.name, 
  avg(
    races_1.circuitid), 
  races_1.year, 
  races_1.round, 
  races_1.raceid, 
  count(
    races_1.name), 
  max(
    races_1.raceid), 
  races_1.time, 
  min(
    races_1.date), 
  min(
    races_1.date), 
  races_1.date, 
  count(*)
from 
  races as races_1
where races_1.time is not NULL
group by races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_standings_1.points), 
  constructor_standings_1.raceid, 
  max(
    constructor_standings_1.constructorid)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.raceid
limit 30;
-- meta {"num_joins":4,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.raceid, 
  standings_1.position, 
  races_1.date, 
  sum(
    results_1.number), 
  qualifying_1.position, 
  constructor_standings_1.position, 
  min(
    results_1.raceid), 
  races_1.year
from 
  constructor_standings as constructor_standings_1
          inner join standings as standings_1
          on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
        inner join results as results_1
        on (constructor_standings_1.constructorstandingsid = results_1.resultid )
      inner join races as races_1
      on (results_1.resultid = races_1.raceid )
    inner join qualifying as qualifying_1
    on (races_1.raceid = qualifying_1.qualifyid )
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.position, constructor_standings_1.raceid, qualifying_1.position, races_1.date, races_1.year, standings_1.position
limit 27;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.position
from 
  constructor_standings as constructor_standings_1
      inner join circuits as circuits_1
      on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
    inner join qualifying as qualifying_1
    on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
where qualifying_1.number is not NULL
limit 34;
-- meta {"num_joins":0,"num_aggregates":7,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  max(
    standings_1.position), 
  min(
    standings_1.points), 
  min(
    standings_1.raceid), 
  min(
    standings_1.driverid), 
  max(
    standings_1.date), 
  standings_1.driverid, 
  standings_1.points, 
  standings_1.driverstandingsid, 
  max(
    standings_1.raceid), 
  standings_1.date, 
  count(*)
from 
  standings as standings_1
where standings_1.points > standings_1.points
group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.raceid
limit 13;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.forename
from 
  drivers as drivers_1
    inner join drivers as drivers_2
    on (drivers_1.driverid = drivers_2.driverid )
where drivers_2.driverid is not NULL
limit 35;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  qualifying_1.number, 
  qualifying_1.driverid, 
  min(
    qualifying_1.date), 
  max(
    qualifying_1.date)
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.number, qualifying_1.qualifyid
limit 21;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date, 
  drivers_1.nationality, 
  drivers_1.code
from 
  constructor_standings as constructor_standings_1
    inner join drivers as drivers_1
    on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
where drivers_1.driverref is not NULL
limit 8;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.round, 
  races_1.raceid, 
  avg(
    races_1.year)
from 
  races as races_1
where races_1.circuitid is not NULL
group by races_1.raceid, races_1.round
limit 40;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_standings_1.date)
from 
  constructor_standings as constructor_standings_1
    inner join constructors as constructors_1
    on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
where constructors_1.nationality <= constructors_1.constructorref
limit 16;
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    races_1.date), 
  drivers_1.driverid, 
  constructor_standings_1.position, 
  constructor_standings_1.points, 
  races_1.name, 
  races_1.round, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  avg(
    constructor_standings_1.constructorstandingsid), 
  races_1.date
from 
  constructors as constructors_1
    inner join races as races_1
      inner join drivers as drivers_1
        inner join constructor_standings as constructor_standings_1
        on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
      on (races_1.raceid = constructor_standings_1.constructorstandingsid )
    on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
where drivers_1.dob >= races_1.date
group by constructor_standings_1.points, constructor_standings_1.position, constructors_1.constructorid, constructors_1.constructorref, drivers_1.driverid, races_1.date, races_1.name, races_1.round
limit 41;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.date, 
  standings_1.raceid, 
  standings_1.wins, 
  count(*)
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
group by standings_1.date, standings_1.raceid, standings_1.wins
limit 8;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number, 
  constructors_1.nationality, 
  qualifying_1.constructorid
from 
  constructors as constructors_1
    inner join qualifying as qualifying_1
    on (constructors_1.constructorid = qualifying_1.qualifyid )
where qualifying_1.raceid is not NULL
limit 23;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.date, 
  races_1.raceid
from 
  races as races_1
where races_1.name is not NULL
limit 13;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  qualifying_1.constructorid, 
  qualifying_1.driverid, 
  min(
    qualifying_1.date), 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.qualifyid
limit 42;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    constructor_standings_1.points), 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  max(
    constructor_standings_1.constructorid)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date <= constructor_standings_1.date
group by constructor_standings_1.constructorid, constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.wins
limit 29;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
limit 13;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.resultid, 
  results_1.fastestlap, 
  results_1.position, 
  results_1.rank
from 
  results as results_1
where results_1.date >= results_1.date
limit 27;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_2.name, 
  constructors_1.nationality, 
  circuits_1.lng
from 
  circuits as circuits_1
    inner join circuits as circuits_2
      inner join constructors as constructors_1
      on (circuits_2.circuitid = constructors_1.constructorid )
    on (circuits_1.circuitid = circuits_2.circuitid )
where constructors_1.name is not NULL
limit 21;
-- meta {"num_joins":5,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date, 
  sum(
    circuits_2.lng)
from 
  circuits as circuits_1
        inner join constructor_standings as constructor_standings_1
        on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
      inner join standings as standings_1
      on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
    inner join standings as standings_2
      inner join qualifying as qualifying_1
        inner join circuits as circuits_2
        on (qualifying_1.qualifyid = circuits_2.circuitid )
      on (standings_2.driverstandingsid = qualifying_1.qualifyid )
    on (circuits_1.circuitid = circuits_2.circuitid )
where qualifying_1.number is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.date, standings_1.position
limit 8;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 26;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    drivers_1.dob), 
  qualifying_1.raceid, 
  qualifying_2.qualifyid, 
  count(
    drivers_1.nationality), 
  qualifying_1.number, 
  qualifying_2.date, 
  qualifying_2.position, 
  drivers_1.surname
from 
  drivers as drivers_1
    inner join qualifying as qualifying_1
      inner join qualifying as qualifying_2
      on (qualifying_1.qualifyid = qualifying_2.qualifyid )
    on (drivers_1.driverid = qualifying_2.qualifyid )
where drivers_1.forename is not NULL
group by drivers_1.surname, qualifying_1.number, qualifying_1.raceid, qualifying_2.date, qualifying_2.position, qualifying_2.qualifyid
limit 12;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.fastestlap
from 
  races as races_1
    inner join standings as standings_1
      inner join results as results_1
      on (standings_1.driverstandingsid = results_1.resultid )
    on (races_1.raceid = standings_1.driverstandingsid )
where standings_1.wins = races_1.raceid
limit 8;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins, 
  results_1.milliseconds, 
  constructor_results_1.raceid, 
  results_1.constructorid, 
  results_1.statusid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  results_1.driverid, 
  results_1.date, 
  standings_1.date, 
  standings_1.driverstandingsid
from 
  results as results_1
      inner join standings as standings_1
      on (results_1.resultid = standings_1.driverstandingsid )
    inner join constructor_results as constructor_results_1
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where constructor_results_1.points is not NULL
limit 37;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location, 
  results_1.grid, 
  constructor_standings_1.wins, 
  max(
    constructor_standings_1.points), 
  circuits_1.circuitref, 
  results_1.positionorder
from 
  results as results_1
    inner join circuits as circuits_1
      inner join constructor_standings as constructor_standings_1
      on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
    on (results_1.resultid = circuits_1.circuitid )
where results_1.number is not NULL
group by circuits_1.circuitref, circuits_1.location, constructor_standings_1.wins, results_1.grid, results_1.positionorder
limit 29;
-- meta {"num_joins":6,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructor_results_1.date), 
  circuits_1.country
from 
  constructors as constructors_1
      inner join drivers as drivers_1
        inner join constructors as constructors_2
        on (drivers_1.driverid = constructors_2.constructorid )
      on (constructors_1.constructorid = constructors_2.constructorid )
    inner join results as results_1
          inner join constructor_results as constructor_results_1
          on (results_1.resultid = constructor_results_1.constructorresultsid )
        inner join standings as standings_1
        on (results_1.resultid = standings_1.driverstandingsid )
      inner join circuits as circuits_1
      on (results_1.resultid = circuits_1.circuitid )
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where results_1.statusid is not NULL
group by circuits_1.country
limit 9;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 22;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverstandingsid, 
  results_2.constructorid
from 
  results as results_1
      inner join standings as standings_1
      on (results_1.resultid = standings_1.driverstandingsid )
    inner join results as results_2
    on (standings_1.driverstandingsid = results_2.resultid )
where results_2.rank is not NULL
limit 33;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_2.circuitid, 
  standings_1.driverid, 
  standings_1.date, 
  races_1.year, 
  races_1.date, 
  races_1.time, 
  races_2.name
from 
  races as races_1
      inner join races as races_2
      on (races_1.raceid = races_2.raceid )
    inner join standings as standings_1
    on (races_1.raceid = standings_1.driverstandingsid )
where standings_1.date = races_1.date
limit 22;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.milliseconds
from 
  results as results_1
    inner join races as races_1
    on (results_1.resultid = races_1.raceid )
where results_1.rank < results_1.fastestlap
limit 40;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.statusid, 
  max(
    results_1.date), 
  results_1.rank, 
  results_1.position, 
  results_1.resultid, 
  sum(
    results_1.milliseconds)
from 
  results as results_1
where results_1.milliseconds is not NULL
group by results_1.position, results_1.rank, results_1.resultid, results_1.statusid
limit 27;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 17;
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_standings_1.constructorstandingsid), 
  qualifying_1.constructorid, 
  qualifying_1.date, 
  constructors_1.nationality, 
  qualifying_1.position, 
  constructors_1.constructorid, 
  constructor_standings_1.points, 
  min(
    qualifying_1.date), 
  min(
    qualifying_1.date)
from 
  constructor_standings as constructor_standings_1
    inner join constructors as constructors_1
      inner join qualifying as qualifying_1
      on (constructors_1.constructorid = qualifying_1.qualifyid )
    on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
where qualifying_1.constructorid is not NULL
group by constructor_standings_1.points, constructors_1.constructorid, constructors_1.nationality, qualifying_1.constructorid, qualifying_1.date, qualifying_1.position
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.constructorid, 
  qualifying_1.position, 
  qualifying_1.date, 
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
limit 10;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorstandingsid, 
  results_1.number, 
  results_1.raceid, 
  results_1.resultid
from 
  constructor_standings as constructor_standings_1
    inner join results as results_1
    on (constructor_standings_1.constructorstandingsid = results_1.resultid )
where constructor_standings_1.date > results_1.date
limit 20;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number, 
  qualifying_1.raceid, 
  qualifying_1.constructorid, 
  max(
    constructor_standings_1.date), 
  qualifying_1.date, 
  constructors_1.nationality, 
  constructors_1.name, 
  qualifying_1.driverid
from 
  constructors as constructors_1
      inner join constructor_standings as constructor_standings_1
      on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
    inner join qualifying as qualifying_1
    on (constructors_1.constructorid = qualifying_1.qualifyid )
where qualifying_1.position is not NULL
group by constructors_1.name, constructors_1.nationality, qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.raceid
limit 27;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    constructors_1.constructorid), 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorid
limit 16;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins, 
  standings_1.position, 
  standings_1.driverid, 
  standings_1.points
from 
  standings as standings_1
where standings_1.position < standings_1.driverid
limit 9;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_2.wins, 
  races_1.name, 
  min(
    constructor_standings_1.date), 
  constructor_standings_2.position, 
  constructor_standings_2.raceid, 
  constructor_standings_2.points, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid
from 
  races as races_1
      inner join constructor_standings as constructor_standings_1
      on (races_1.raceid = constructor_standings_1.constructorstandingsid )
    inner join constructor_standings as constructor_standings_2
    on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
where constructor_standings_1.date >= constructor_standings_2.date
group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_2.points, constructor_standings_2.position, constructor_standings_2.raceid, constructor_standings_2.wins, races_1.name
limit 6;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.resultid, 
  results_1.milliseconds
from 
  results as results_1
where results_1.constructorid is not NULL
limit 17;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid, 
  races_1.year, 
  standings_1.position, 
  max(
    races_1.date), 
  races_1.name, 
  max(
    standings_1.raceid), 
  min(
    standings_1.points)
from 
  races as races_1
    inner join standings as standings_1
    on (races_1.raceid = standings_1.driverstandingsid )
where standings_1.driverstandingsid >= standings_1.position
group by races_1.name, races_1.year, standings_1.driverid, standings_1.position
limit 39;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.rank
from 
  results as results_1
where results_1.statusid is not NULL
limit 12;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.statusid, 
  results_1.laps, 
  results_1.number, 
  results_1.rank, 
  results_1.driverid
from 
  results as results_1
where results_1.statusid is not NULL
limit 17;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins, 
  standings_1.driverid, 
  max(
    races_1.date), 
  races_1.name, 
  races_1.round
from 
  standings as standings_1
        inner join races as races_1
        on (standings_1.driverstandingsid = races_1.raceid )
      inner join constructor_standings as constructor_standings_1
      on (races_1.raceid = constructor_standings_1.constructorstandingsid )
    inner join races as races_2
    on (standings_1.driverstandingsid = races_2.raceid )
where standings_1.date > races_2.date
group by races_1.name, races_1.round, standings_1.driverid, standings_1.wins
limit 4;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  qualifying_1.raceid
from 
  constructors as constructors_1
    inner join qualifying as qualifying_1
      inner join races as races_1
      on (qualifying_1.qualifyid = races_1.raceid )
    on (constructors_1.constructorid = qualifying_1.qualifyid )
where races_1.round is not NULL
limit 28;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    qualifying_1.number), 
  qualifying_1.constructorid, 
  avg(
    qualifying_1.position)
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
group by qualifying_1.constructorid
limit 6;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_2.dob, 
  max(
    drivers_1.dob), 
  drivers_1.code, 
  drivers_1.forename
from 
  drivers as drivers_1
    inner join drivers as drivers_2
    on (drivers_1.driverid = drivers_2.driverid )
where drivers_1.code is not NULL
group by drivers_1.code, drivers_1.forename, drivers_2.dob
limit 32;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref
from 
  circuits as circuits_1
    inner join constructors as constructors_1
      inner join races as races_1
      on (constructors_1.constructorid = races_1.raceid )
    on (circuits_1.circuitid = races_1.raceid )
where races_1.date < races_1.date
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position, 
  max(
    standings_1.points)
from 
  standings as standings_1
where standings_1.wins is not NULL
group by standings_1.position
limit 13;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
limit 17;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    results_1.date)
from 
  constructors as constructors_1
    inner join results as results_1
    on (constructors_1.constructorid = results_1.resultid )
where results_1.date <= results_1.date
limit 23;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    constructors_1.constructorid), 
  count(*), 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorref, 
  min(
    constructors_1.constructorid), 
  min(
    constructors_1.constructorid), 
  constructors_1.constructorid, 
  min(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 13;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  results_1.grid, 
  results_1.number, 
  results_1.positionorder, 
  max(
    constructor_results_1.date), 
  constructor_results_1.points, 
  results_1.resultid
from 
  results as results_1
    inner join constructor_results as constructor_results_1
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where results_1.constructorid is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.points, results_1.grid, results_1.number, results_1.positionorder, results_1.resultid
limit 39;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid, 
  constructor_results_1.constructorresultsid, 
  min(
    standings_1.wins), 
  standings_1.wins, 
  standings_1.date
from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where constructor_results_1.date > standings_1.date
group by constructor_results_1.constructorresultsid, standings_1.date, standings_1.driverid, standings_1.wins
limit 15;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.location <= circuits_1.circuitref
limit 42;
-- meta {"num_joins":6,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.date, 
  results_1.raceid, 
  avg(
    results_1.points)
from 
  races as races_1
        inner join constructors as constructors_1
          inner join standings as standings_1
            inner join drivers as drivers_1
            on (standings_1.driverstandingsid = drivers_1.driverid )
          on (constructors_1.constructorid = standings_1.driverstandingsid )
        on (races_1.raceid = standings_1.driverstandingsid )
      inner join results as results_1
        inner join circuits as circuits_1
        on (results_1.resultid = circuits_1.circuitid )
      on (drivers_1.driverid = results_1.resultid )
    inner join constructor_standings as constructor_standings_1
    on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
where results_1.constructorid is not NULL
group by results_1.raceid, standings_1.date
limit 35;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 2;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.positionorder, 
  races_1.time, 
  results_1.milliseconds, 
  max(
    results_1.date), 
  circuits_1.lng, 
  races_1.date
from 
  results as results_1
    inner join circuits as circuits_1
      inner join races as races_1
      on (circuits_1.circuitid = races_1.raceid )
    on (results_1.resultid = circuits_1.circuitid )
where results_1.resultid >= results_1.positionorder
group by circuits_1.lng, races_1.date, races_1.time, results_1.milliseconds, results_1.positionorder
limit 32;
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.time, 
  drivers_1.dob, 
  sum(
    races_1.round), 
  sum(
    races_1.round), 
  constructors_1.name, 
  races_1.year, 
  drivers_1.nationality, 
  races_1.raceid, 
  drivers_1.code, 
  count(*), 
  races_1.round
from 
  constructors as constructors_1
      inner join drivers as drivers_1
      on (constructors_1.constructorid = drivers_1.driverid )
    inner join races as races_1
    on (drivers_1.driverid = races_1.raceid )
where constructors_1.constructorid > races_1.raceid
group by constructors_1.name, drivers_1.code, drivers_1.dob, drivers_1.nationality, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 33;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position, 
  sum(
    standings_1.points), 
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.raceid is not NULL
group by standings_1.driverstandingsid, standings_1.position
limit 5;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.position, 
  min(
    qualifying_1.date), 
  qualifying_1.raceid, 
  standings_1.position
from 
  standings as standings_1
    inner join qualifying as qualifying_1
    on (standings_1.driverstandingsid = qualifying_1.qualifyid )
where standings_1.driverid is not NULL
group by qualifying_1.position, qualifying_1.raceid, standings_1.position
limit 6;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    results_1.number), 
  races_2.round, 
  max(
    races_1.date)
from 
  results as results_1
      inner join races as races_1
      on (results_1.resultid = races_1.raceid )
    inner join races as races_2
    on (results_1.resultid = races_2.raceid )
where results_1.points is not NULL
group by races_2.round
limit 39;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid
from 
  drivers as drivers_1
          inner join drivers as drivers_2
          on (drivers_1.driverid = drivers_2.driverid )
        inner join standings as standings_1
          inner join constructor_results as constructor_results_1
          on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
        on (drivers_1.driverid = constructor_results_1.constructorresultsid )
      inner join standings as standings_2
      on (standings_1.driverstandingsid = standings_2.driverstandingsid )
    inner join results as results_1
    on (drivers_2.driverid = results_1.resultid )
where drivers_1.nationality >= drivers_1.forename
limit 16;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.positionorder, 
  results_1.position, 
  results_1.driverid, 
  results_1.fastestlap, 
  count(
    results_1.laps)
from 
  results as results_1
where results_1.resultid is not NULL
group by results_1.driverid, results_1.fastestlap, results_1.position, results_1.positionorder
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
limit 6;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  avg(
    constructors_1.constructorid), 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.name, constructors_1.nationality
limit 11;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.position
from 
  results as results_1
where results_1.milliseconds is not NULL
limit 40;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name, 
  count(*), 
  constructors_1.constructorid, 
  sum(
    constructors_1.constructorid), 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  max(
    constructors_1.constructorid), 
  count(*), 
  count(*)
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 42;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lat, 
  avg(
    circuits_1.circuitid), 
  circuits_1.alt, 
  avg(
    circuits_1.circuitid), 
  circuits_1.country, 
  circuits_1.lng, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.name is not NULL
group by circuits_1.alt, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.name
limit 19;
-- meta {"num_joins":4,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_2.points, 
  standings_1.driverid, 
  results_1.resultid, 
  drivers_1.driverref, 
  standings_1.driverstandingsid, 
  sum(
    races_1.raceid), 
  drivers_1.dob, 
  standings_1.wins, 
  sum(
    results_1.fastestlap), 
  drivers_1.driverid, 
  count(
    standings_1.date), 
  standings_1.position, 
  races_1.time, 
  results_1.driverid, 
  sum(
    races_1.year), 
  races_1.circuitid
from 
  results as results_1
      inner join standings as standings_1
          inner join standings as standings_2
          on (standings_1.driverstandingsid = standings_2.driverstandingsid )
        inner join races as races_1
        on (standings_1.driverstandingsid = races_1.raceid )
      on (results_1.resultid = standings_1.driverstandingsid )
    inner join drivers as drivers_1
    on (standings_2.driverstandingsid = drivers_1.driverid )
where drivers_1.forename < drivers_1.code
group by drivers_1.dob, drivers_1.driverid, drivers_1.driverref, races_1.circuitid, races_1.time, results_1.driverid, results_1.resultid, standings_1.driverid, standings_1.driverstandingsid, standings_1.position, standings_1.wins, standings_2.points
limit 4;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    drivers_1.dob), 
  drivers_1.driverid, 
  drivers_1.nationality, 
  drivers_1.forename, 
  drivers_1.code, 
  count(*), 
  drivers_1.surname, 
  max(
    drivers_1.driverid), 
  drivers_1.driverref, 
  drivers_1.dob, 
  avg(
    drivers_1.driverid)
from 
  drivers as drivers_1
where drivers_1.forename is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 20;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverid, 
  drivers_1.surname, 
  drivers_1.nationality, 
  drivers_1.dob, 
  drivers_1.driverref, 
  drivers_1.forename, 
  drivers_1.code, 
  min(
    drivers_1.driverid)
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 35;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name, 
  circuits_1.alt, 
  circuits_1.circuitid, 
  circuits_1.lng, 
  min(
    circuits_1.lat), 
  circuits_1.lat
from 
  circuits as circuits_1
where circuits_1.country is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.lat, circuits_1.lng, circuits_1.name
limit 21;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  standings_2.driverid
from 
  constructor_results as constructor_results_1
    inner join standings as standings_1
      inner join standings as standings_2
      on (standings_1.driverstandingsid = standings_2.driverstandingsid )
    on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
where constructor_results_1.constructorresultsid is not NULL
limit 38;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.milliseconds, 
  results_1.raceid, 
  results_1.positionorder, 
  results_1.fastestlap, 
  results_1.laps, 
  results_1.rank, 
  standings_1.driverid
from 
  standings as standings_1
    inner join results as results_1
    on (standings_1.driverstandingsid = results_1.resultid )
where standings_1.date is not NULL
limit 9;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.position, 
  min(
    results_1.milliseconds), 
  results_1.milliseconds, 
  constructor_standings_1.points
from 
  results as results_1
    inner join constructor_standings as constructor_standings_1
    on (results_1.resultid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.raceid is not NULL
group by constructor_standings_1.points, results_1.milliseconds, results_1.position
limit 18;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.date
from 
  races as races_1
where races_1.date is not NULL
limit 31;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.points, 
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  max(
    constructor_standings_1.position)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 7;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.time
from 
  races as races_1
where races_1.date is not NULL
limit 11;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date > constructor_standings_1.date
limit 16;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_2.number, 
  min(
    qualifying_2.raceid)
from 
  qualifying as qualifying_1
    inner join qualifying as qualifying_2
    on (qualifying_1.qualifyid = qualifying_2.qualifyid )
where qualifying_2.constructorid is not NULL
group by qualifying_2.number
limit 16;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lng, 
  circuits_1.location, 
  circuits_1.circuitref, 
  circuits_1.country, 
  count(*), 
  sum(
    circuits_1.circuitid)
from 
  circuits as circuits_1
where circuits_1.name >= circuits_1.country
group by circuits_1.circuitref, circuits_1.country, circuits_1.lng, circuits_1.location
limit 36;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
    inner join races as races_1
      inner join races as races_2
      on (races_1.raceid = races_2.raceid )
    on (constructor_standings_1.constructorstandingsid = races_2.raceid )
where constructor_standings_1.constructorstandingsid is not NULL
limit 31;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
limit 32;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date, 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.points, 
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  max(
    constructor_standings_1.points)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid
limit 12;
-- meta {"num_joins":6,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.resultid
from 
  constructors as constructors_1
        inner join standings as standings_1
        on (constructors_1.constructorid = standings_1.driverstandingsid )
      inner join races as races_1
          inner join qualifying as qualifying_1
          on (races_1.raceid = qualifying_1.qualifyid )
        inner join standings as standings_2
          inner join results as results_1
          on (standings_2.driverstandingsid = results_1.resultid )
        on (races_1.raceid = results_1.resultid )
      on (standings_1.driverstandingsid = standings_2.driverstandingsid )
    inner join circuits as circuits_1
    on (standings_1.driverstandingsid = circuits_1.circuitid )
where results_1.fastestlap > results_1.position
limit 19;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  circuits_1.country, 
  circuits_1.lng, 
  max(
    constructor_standings_1.date), 
  circuits_1.circuitref
from 
  circuits as circuits_1
    inner join constructor_standings as constructor_standings_1
    on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.position is not NULL
group by circuits_1.circuitref, circuits_1.country, circuits_1.lng
limit 32;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    results_1.number), 
  results_1.number, 
  results_1.milliseconds
from 
  results as results_1
where results_1.points >= results_1.milliseconds
group by results_1.milliseconds, results_1.number
limit 13;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid
from 
  constructor_standings as constructor_standings_1
    inner join standings as standings_1
    on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
where constructor_standings_1.position is not NULL
limit 30;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.date, 
  races_1.year, 
  races_1.round, 
  races_1.raceid, 
  races_1.time
from 
  races as races_1
where races_1.time is not NULL
limit 34;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lat, 
  count(*), 
  circuits_1.name, 
  circuits_1.country, 
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.name is not NULL
group by circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.name
limit 24;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  standings_1.position
from 
  qualifying as qualifying_1
    inner join standings as standings_1
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where standings_1.points is not NULL
limit 40;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_2.lat, 
  circuits_1.circuitref, 
  circuits_2.country, 
  circuits_2.circuitid, 
  constructors_1.constructorref
from 
  races as races_1
    inner join circuits as circuits_1
        inner join constructors as constructors_1
        on (circuits_1.circuitid = constructors_1.constructorid )
      inner join circuits as circuits_2
      on (circuits_1.circuitid = circuits_2.circuitid )
    on (races_1.raceid = constructors_1.constructorid )
where constructors_1.name is not NULL
limit 24;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.raceid, 
  races_1.name, 
  races_1.time, 
  races_1.circuitid
from 
  races as races_1
where races_1.year is not NULL
limit 19;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.time, 
  races_1.raceid, 
  races_1.year, 
  races_1.name, 
  count(*), 
  races_1.round
from 
  races as races_1
where races_1.circuitid is not NULL
group by races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 12;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.country
from 
  results as results_1
    inner join circuits as circuits_1
    on (results_1.resultid = circuits_1.circuitid )
where results_1.driverid < results_1.statusid
limit 24;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.date, 
  standings_1.driverid, 
  min(
    standings_1.date), 
  standings_1.position
from 
  standings as standings_1
where standings_1.date = standings_1.date
group by standings_1.date, standings_1.driverid, standings_1.position
limit 7;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  standings_1.points, 
  max(
    standings_1.raceid), 
  standings_1.date, 
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.wins is not NULL
group by standings_1.date, standings_1.driverstandingsid, standings_1.points, standings_1.raceid
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.name
from 
  races as races_1
    inner join qualifying as qualifying_1
    on (races_1.raceid = qualifying_1.qualifyid )
where qualifying_1.qualifyid is not NULL
limit 31;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_2.alt, 
  circuits_1.alt, 
  circuits_1.country
from 
  circuits as circuits_1
    inner join circuits as circuits_2
    on (circuits_1.circuitid = circuits_2.circuitid )
where circuits_2.location is not NULL
limit 25;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverstandingsid, 
  min(
    standings_1.date), 
  circuits_1.alt, 
  min(
    standings_1.driverstandingsid), 
  qualifying_1.qualifyid
from 
  standings as standings_1
      inner join qualifying as qualifying_1
      on (standings_1.driverstandingsid = qualifying_1.qualifyid )
    inner join circuits as circuits_1
    on (qualifying_1.qualifyid = circuits_1.circuitid )
where qualifying_1.date = standings_1.date
group by circuits_1.alt, qualifying_1.qualifyid, standings_1.driverstandingsid
limit 10;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.date, 
  standings_1.driverid, 
  standings_1.position, 
  standings_1.points
from 
  standings as standings_1
where standings_1.driverstandingsid < standings_1.wins
limit 15;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.position, 
  constructor_results_1.constructorid, 
  qualifying_1.qualifyid, 
  races_1.raceid, 
  max(
    constructor_results_1.date), 
  constructor_results_1.points, 
  min(
    races_1.date), 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  races_1.time
from 
  constructor_results as constructor_results_1
      inner join races as races_1
      on (constructor_results_1.constructorresultsid = races_1.raceid )
    inner join qualifying as qualifying_1
    on (races_1.raceid = qualifying_1.qualifyid )
where races_1.name is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.raceid, qualifying_1.position, qualifying_1.qualifyid, races_1.raceid, races_1.time
limit 12;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.position, 
  qualifying_1.driverid, 
  drivers_1.dob, 
  races_1.round, 
  races_1.year, 
  races_1.name, 
  drivers_1.forename, 
  drivers_1.nationality
from 
  qualifying as qualifying_1
      inner join races as races_1
      on (qualifying_1.qualifyid = races_1.raceid )
    inner join drivers as drivers_1
    on (qualifying_1.qualifyid = drivers_1.driverid )
where races_1.name is not NULL
limit 9;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  circuits_1.alt, 
  constructors_1.nationality
from 
  constructor_results as constructor_results_1
      inner join constructors as constructors_1
      on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
    inner join circuits as circuits_1
    on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
where constructor_results_1.constructorid is not NULL
limit 36;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.code, 
  constructors_1.nationality, 
  constructors_1.name
from 
  drivers as drivers_1
    inner join constructors as constructors_1
    on (drivers_1.driverid = constructors_1.constructorid )
where constructors_1.constructorref is not NULL
limit 5;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_results_1.points), 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
    inner join drivers as drivers_1
    on (constructor_results_1.constructorresultsid = drivers_1.driverid )
where constructor_results_1.points < constructor_results_1.points
group by constructor_results_1.date
limit 37;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
limit 22;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.points
from 
  qualifying as qualifying_1
    inner join standings as standings_1
        inner join constructor_results as constructor_results_1
        on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
      inner join standings as standings_2
        inner join results as results_1
        on (standings_2.driverstandingsid = results_1.resultid )
      on (constructor_results_1.constructorresultsid = results_1.resultid )
    on (qualifying_1.qualifyid = results_1.resultid )
where standings_2.points is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins, 
  standings_1.date, 
  standings_1.raceid, 
  sum(
    standings_1.points)
from 
  standings as standings_1
where standings_1.date <= standings_1.date
group by standings_1.date, standings_1.raceid, standings_1.wins
limit 14;
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    results_1.date), 
  drivers_1.driverid, 
  circuits_1.lat, 
  results_1.raceid, 
  avg(
    results_1.number), 
  drivers_1.dob
from 
  results as results_1
      inner join circuits as circuits_1
        inner join drivers as drivers_1
        on (circuits_1.circuitid = drivers_1.driverid )
      on (results_1.resultid = drivers_1.driverid )
    inner join qualifying as qualifying_1
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where circuits_1.name = drivers_1.driverref
group by circuits_1.lat, drivers_1.dob, drivers_1.driverid, results_1.raceid
limit 24;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    results_1.milliseconds), 
  results_1.positionorder
from 
  results as results_1
where results_1.milliseconds is not NULL
group by results_1.positionorder
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt, 
  circuits_1.circuitid, 
  avg(
    circuits_1.alt)
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
group by circuits_1.alt, circuits_1.circuitid
limit 5;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
limit 39;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverstandingsid
from 
  qualifying as qualifying_1
        inner join constructor_standings as constructor_standings_1
        on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
      inner join qualifying as qualifying_2
      on (constructor_standings_1.constructorstandingsid = qualifying_2.qualifyid )
    inner join constructor_standings as constructor_standings_2
      inner join standings as standings_1
        inner join constructor_results as constructor_results_1
        on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
      on (constructor_standings_2.constructorstandingsid = standings_1.driverstandingsid )
    on (qualifying_1.qualifyid = constructor_standings_2.constructorstandingsid )
where constructor_results_1.constructorid is not NULL
limit 22;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid < qualifying_1.constructorid
limit 9;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  min(
    drivers_1.dob), 
  max(
    drivers_1.driverid)
from 
  constructors as constructors_1
    inner join drivers as drivers_1
    on (constructors_1.constructorid = drivers_1.driverid )
where constructors_1.constructorref is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 37;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid, 
  standings_1.points
from 
  standings as standings_1
where standings_1.raceid <= standings_1.driverid
limit 13;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructors_1.name, 
  count(*), 
  constructors_1.constructorid, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 25;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.date, 
  results_1.position, 
  results_1.driverid, 
  results_1.milliseconds, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins, 
  results_1.laps, 
  constructor_standings_1.date, 
  min(
    results_1.number), 
  constructor_standings_1.raceid, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  results_1.grid
from 
  results as results_1
    inner join constructor_standings as constructor_standings_1
    on (results_1.resultid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.date is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins, results_1.date, results_1.driverid, results_1.grid, results_1.laps, results_1.milliseconds, results_1.position
limit 14;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    qualifying_1.date)
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
limit 14;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins, 
  min(
    standings_1.driverid)
from 
  standings as standings_1
where standings_1.position is not NULL
group by standings_1.wins
limit 24;
-- meta {"num_joins":6,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    standings_1.wins), 
  drivers_2.driverid, 
  results_1.fastestlap, 
  standings_1.raceid, 
  standings_2.driverid, 
  circuits_1.alt, 
  circuits_1.location, 
  circuits_1.lat, 
  constructor_results_1.points, 
  circuits_1.circuitid
from 
  drivers as drivers_1
        inner join standings as standings_1
        on (drivers_1.driverid = standings_1.driverstandingsid )
      inner join circuits as circuits_1
      on (standings_1.driverstandingsid = circuits_1.circuitid )
    inner join drivers as drivers_2
        inner join results as results_1
          inner join constructor_results as constructor_results_1
          on (results_1.resultid = constructor_results_1.constructorresultsid )
        on (drivers_2.driverid = results_1.resultid )
      inner join standings as standings_2
      on (results_1.resultid = standings_2.driverstandingsid )
    on (standings_1.driverstandingsid = results_1.resultid )
where circuits_1.location is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.lat, circuits_1.location, constructor_results_1.points, drivers_2.driverid, results_1.fastestlap, standings_1.raceid, standings_2.driverid
limit 21;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    circuits_1.circuitid), 
  circuits_1.circuitid, 
  circuits_1.location, 
  circuits_1.country, 
  max(
    circuits_1.lat), 
  circuits_1.alt, 
  circuits_1.name, 
  circuits_1.lat
from 
  circuits as circuits_1
where circuits_1.location <= circuits_1.country
group by circuits_1.alt, circuits_1.circuitid, circuits_1.country, circuits_1.lat, circuits_1.location, circuits_1.name
limit 19;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.date, 
  results_1.number, 
  results_1.constructorid
from 
  results as results_1
where results_1.number >= results_1.milliseconds
limit 11;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid, 
  constructors_1.constructorid, 
  sum(
    races_1.round), 
  constructors_1.name, 
  min(
    races_1.date), 
  races_1.name, 
  constructors_1.nationality, 
  races_1.raceid, 
  count(
    races_1.time)
from 
  constructors as constructors_1
    inner join races as races_1
    on (constructors_1.constructorid = races_1.raceid )
where races_1.circuitid >= races_1.raceid
group by constructors_1.constructorid, constructors_1.name, constructors_1.nationality, races_1.circuitid, races_1.name, races_1.raceid
limit 25;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.country is not NULL
limit 27;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.date, 
  results_1.positionorder, 
  min(
    results_1.fastestlap), 
  max(
    results_1.number), 
  results_1.fastestlap, 
  results_1.points
from 
  results as results_1
where results_1.fastestlap < results_1.rank
group by results_1.date, results_1.fastestlap, results_1.points, results_1.positionorder
limit 37;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.statusid, 
  results_1.position
from 
  results as results_1
where results_1.resultid is not NULL
limit 28;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_results_1.points), 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.points <= constructor_results_1.points
group by constructor_results_1.date
limit 9;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_3.location
from 
  circuits as circuits_1
    inner join constructors as constructors_1
        inner join circuits as circuits_2
        on (constructors_1.constructorid = circuits_2.circuitid )
      inner join circuits as circuits_3
        inner join constructors as constructors_2
        on (circuits_3.circuitid = constructors_2.constructorid )
      on (constructors_1.constructorid = constructors_2.constructorid )
    on (circuits_1.circuitid = constructors_1.constructorid )
where circuits_1.location is not NULL
limit 25;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 25;
-- meta {"num_joins":7,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    qualifying_1.date), 
  drivers_2.forename
from 
  constructors as constructors_1
    inner join drivers as drivers_1
      inner join constructors as constructors_2
          inner join constructor_standings as constructor_standings_1
            inner join drivers as drivers_2
            on (constructor_standings_1.constructorstandingsid = drivers_2.driverid )
          on (constructors_2.constructorid = constructor_standings_1.constructorstandingsid )
        inner join qualifying as qualifying_1
          inner join drivers as drivers_3
            inner join drivers as drivers_4
            on (drivers_3.driverid = drivers_4.driverid )
          on (qualifying_1.qualifyid = drivers_4.driverid )
        on (drivers_2.driverid = drivers_4.driverid )
      on (drivers_1.driverid = drivers_4.driverid )
    on (constructors_1.constructorid = drivers_1.driverid )
where constructors_2.name is not NULL
group by drivers_2.forename
limit 19;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.driverstandingsid >= standings_1.position
limit 35;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid, 
  standings_1.raceid, 
  standings_1.points, 
  standings_1.driverstandingsid, 
  standings_1.wins, 
  standings_1.date, 
  standings_1.position
from 
  standings as standings_1
where standings_1.position is not NULL
limit 39;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.name < constructors_1.constructorref
limit 33;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 39;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  qualifying_1.driverid, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorid <= constructors_1.constructorid
limit 12;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 9;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.date, 
  races_1.year, 
  races_1.circuitid, 
  races_1.raceid, 
  races_1.time, 
  min(
    races_1.round)
from 
  races as races_1
where races_1.year is not NULL
group by races_1.circuitid, races_1.date, races_1.raceid, races_1.time, races_1.year
limit 24;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year, 
  races_1.time, 
  races_1.round, 
  races_1.raceid
from 
  races as races_1
where races_1.name > races_1.time
limit 23;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorstandingsid, 
  avg(
    constructor_standings_1.points)
from 
  circuits as circuits_1
    inner join constructor_standings as constructor_standings_1
    on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
where circuits_1.country <= circuits_1.circuitref
group by constructor_standings_1.constructorstandingsid
limit 16;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.round
from 
  races as races_1
where races_1.circuitid is not NULL
limit 18;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  min(
    standings_1.points), 
  standings_1.driverid, 
  standings_1.wins, 
  standings_1.driverstandingsid, 
  standings_1.date, 
  avg(
    standings_1.points)
from 
  standings as standings_1
where standings_1.driverid is not NULL
group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.raceid, standings_1.wins
limit 17;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.statusid, 
  results_1.constructorid, 
  max(
    results_1.positionorder), 
  results_1.grid
from 
  results as results_1
where results_1.number is not NULL
group by results_1.constructorid, results_1.grid, results_1.statusid
limit 7;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid
from 
  constructor_results as constructor_results_1
      inner join circuits as circuits_1
      on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
    inner join races as races_1
    on (circuits_1.circuitid = races_1.raceid )
where constructor_results_1.constructorid is not NULL
limit 27;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.raceid, 
  avg(
    qualifying_1.number), 
  qualifying_1.date, 
  qualifying_1.driverid, 
  count(*), 
  qualifying_1.position, 
  max(
    qualifying_1.date), 
  qualifying_1.number, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
group by qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 15;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  results_1.driverid
from 
  results as results_1
    inner join constructor_results as constructor_results_1
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where results_1.laps is not NULL
limit 29;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    qualifying_1.qualifyid), 
  qualifying_1.position, 
  qualifying_1.raceid, 
  qualifying_1.number, 
  qualifying_1.qualifyid, 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
group by qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 14;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lng
from 
  constructor_standings as constructor_standings_1
    inner join circuits as circuits_1
    on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
where circuits_1.country is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.round, 
  races_1.circuitid, 
  races_1.time
from 
  races as races_1
where races_1.round is not NULL
limit 25;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid, 
  circuits_1.location, 
  count(
    circuits_1.lat), 
  circuits_1.circuitid
from 
  races as races_1
      inner join circuits as circuits_1
      on (races_1.raceid = circuits_1.circuitid )
    inner join results as results_1
    on (races_1.raceid = results_1.resultid )
where circuits_1.lng is not NULL
group by circuits_1.circuitid, circuits_1.location, races_1.circuitid
limit 22;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.raceid, 
  constructors_1.constructorid, 
  results_1.rank, 
  constructors_1.nationality, 
  constructor_results_1.date, 
  constructors_1.constructorref
from 
  constructors as constructors_1
        inner join results as results_1
        on (constructors_1.constructorid = results_1.resultid )
      inner join circuits as circuits_1
      on (results_1.resultid = circuits_1.circuitid )
    inner join constructor_results as constructor_results_1
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where circuits_1.lat < results_1.points
limit 32;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    drivers_1.driverid), 
  drivers_1.driverref, 
  drivers_1.nationality, 
  avg(
    drivers_1.driverid), 
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.forename is not NULL
group by drivers_1.driverref, drivers_1.forename, drivers_1.nationality
limit 10;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    races_2.year), 
  races_1.year, 
  races_1.date, 
  races_1.time, 
  drivers_1.forename, 
  drivers_1.surname
from 
  races as races_1
    inner join drivers as drivers_1
      inner join races as races_2
      on (drivers_1.driverid = races_2.raceid )
    on (races_1.raceid = races_2.raceid )
where races_1.name <= races_1.time
group by drivers_1.forename, drivers_1.surname, races_1.date, races_1.time, races_1.year
limit 36;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    standings_1.date), 
  avg(
    standings_1.points), 
  standings_1.raceid, 
  standings_1.position, 
  standings_1.driverid, 
  standings_1.wins
from 
  standings as standings_1
where standings_1.raceid is not NULL
group by standings_1.driverid, standings_1.position, standings_1.raceid, standings_1.wins
limit 32;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.rank, 
  results_1.points, 
  max(
    results_1.laps), 
  results_1.constructorid, 
  min(
    results_1.date), 
  count(*), 
  max(
    results_1.date)
from 
  results as results_1
where results_1.date >= results_1.date
group by results_1.constructorid, results_1.points, results_1.rank
limit 40;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select distinct 
  circuits_1.country
from 
  circuits as circuits_1
    inner join constructor_results as constructor_results_1
    on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
where circuits_1.name is not NULL
limit 34;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.nationality, 
  drivers_1.forename, 
  min(
    drivers_1.dob), 
  min(
    drivers_1.dob), 
  drivers_1.driverref, 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
group by drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 38;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date, 
  constructors_1.constructorref
from 
  qualifying as qualifying_1
    inner join constructor_standings as constructor_standings_1
      inner join constructors as constructors_1
      on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
    on (qualifying_1.qualifyid = constructors_1.constructorid )
where constructors_1.constructorref is not NULL
limit 32;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.nationality, 
  constructor_standings_1.points, 
  count(
    constructor_standings_1.date), 
  drivers_1.driverref
from 
  constructors as constructors_1
    inner join constructor_standings as constructor_standings_1
      inner join drivers as drivers_1
      on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
    on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
where drivers_1.nationality is not NULL
group by constructor_standings_1.points, drivers_1.driverref, drivers_1.nationality
limit 10;
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    circuits_1.lat), 
  drivers_2.dob, 
  drivers_2.driverid, 
  avg(
    drivers_2.driverid), 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
    inner join drivers as drivers_1
      inner join circuits as circuits_1
        inner join drivers as drivers_2
        on (circuits_1.circuitid = drivers_2.driverid )
      on (drivers_1.driverid = drivers_2.driverid )
    on (constructor_results_1.constructorresultsid = drivers_1.driverid )
where drivers_1.code is not NULL
group by constructor_results_1.constructorresultsid, drivers_2.dob, drivers_2.driverid
limit 31;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    standings_1.raceid), 
  circuits_1.lat, 
  standings_1.wins
from 
  circuits as circuits_1
    inner join standings as standings_1
    on (circuits_1.circuitid = standings_1.driverstandingsid )
where standings_1.driverstandingsid is not NULL
group by circuits_1.lat, standings_1.wins
limit 36;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.raceid, 
  races_1.year, 
  races_1.circuitid, 
  min(
    races_1.round), 
  races_1.round, 
  races_1.time
from 
  races as races_1
where races_1.date is not NULL
group by races_1.circuitid, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 32;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.date, 
  results_1.driverid, 
  count(
    races_1.time), 
  results_1.resultid, 
  results_1.milliseconds, 
  races_1.name, 
  count(
    races_1.year)
from 
  races as races_1
    inner join results as results_1
    on (races_1.raceid = results_1.resultid )
where races_1.round is not NULL
group by races_1.date, races_1.name, results_1.driverid, results_1.milliseconds, results_1.resultid
limit 8;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 5;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.country
from 
  circuits as circuits_1
where circuits_1.circuitref <= circuits_1.country
limit 20;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year, 
  races_1.circuitid, 
  races_1.name, 
  max(
    races_1.date)
from 
  races as races_1
where races_1.year is not NULL
group by races_1.circuitid, races_1.name, races_1.year
limit 34;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.rank, 
  results_1.driverid, 
  results_1.resultid, 
  results_1.position, 
  results_1.milliseconds, 
  avg(
    results_1.rank), 
  results_1.raceid
from 
  results as results_1
where results_1.laps >= results_1.constructorid
group by results_1.driverid, results_1.milliseconds, results_1.position, results_1.raceid, results_1.rank, results_1.resultid
limit 27;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position >= constructor_standings_1.constructorstandingsid
limit 21;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid
from 
  constructors as constructors_1
    inner join constructors as constructors_2
      inner join standings as standings_1
      on (constructors_2.constructorid = standings_1.driverstandingsid )
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where constructors_1.constructorid is not NULL
limit 39;
-- meta {"num_joins":5,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  min(
    qualifying_1.date), 
  constructor_results_1.constructorid, 
  constructors_1.nationality
from 
  qualifying as qualifying_1
        inner join constructor_results as constructor_results_1
          inner join standings as standings_1
          on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
        on (qualifying_1.qualifyid = standings_1.driverstandingsid )
      inner join races as races_1
      on (qualifying_1.qualifyid = races_1.raceid )
    inner join standings as standings_2
      inner join constructors as constructors_1
      on (standings_2.driverstandingsid = constructors_1.constructorid )
    on (races_1.raceid = constructors_1.constructorid )
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructors_1.nationality, qualifying_1.date
limit 26;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_standings_1.wins
from 
  constructor_results as constructor_results_1
    inner join constructor_standings as constructor_standings_1
      inner join results as results_1
      on (constructor_standings_1.constructorstandingsid = results_1.resultid )
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.date = constructor_results_1.date
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
limit 6;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorstandingsid, 
  qualifying_1.qualifyid, 
  avg(
    constructor_standings_1.wins), 
  constructor_results_1.raceid, 
  qualifying_1.position, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
    inner join constructor_results as constructor_results_1
      inner join qualifying as qualifying_1
      on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
    on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
where constructor_results_1.points is not NULL
group by constructor_results_1.raceid, constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.position, qualifying_1.position, qualifying_1.qualifyid
limit 2;
-- meta {"num_joins":7,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_3.constructorid, 
  constructors_3.name
from 
  constructor_standings as constructor_standings_1
            inner join constructors as constructors_1
            on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
          inner join constructors as constructors_2
          on (constructor_standings_1.constructorstandingsid = constructors_2.constructorid )
        inner join standings as standings_1
        on (constructors_1.constructorid = standings_1.driverstandingsid )
      inner join constructor_standings as constructor_standings_2
      on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
    inner join circuits as circuits_1
        inner join drivers as drivers_1
        on (circuits_1.circuitid = drivers_1.driverid )
      inner join constructors as constructors_3
      on (drivers_1.driverid = constructors_3.constructorid )
    on (standings_1.driverstandingsid = circuits_1.circuitid )
where constructor_standings_2.points > circuits_1.lng
limit 12;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    circuits_1.lng), 
  circuits_1.country, 
  races_1.circuitid, 
  circuits_1.lat, 
  races_1.year, 
  circuits_1.lng, 
  races_1.raceid
from 
  circuits as circuits_1
    inner join races as races_1
    on (circuits_1.circuitid = races_1.raceid )
where circuits_1.name < circuits_1.location
group by circuits_1.country, circuits_1.lat, circuits_1.lng, races_1.circuitid, races_1.raceid, races_1.year
limit 11;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
      inner join standings as standings_1
      on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
    inner join drivers as drivers_1
    on (standings_1.driverstandingsid = drivers_1.driverid )
where standings_1.driverid is not NULL
limit 11;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.position
from 
  results as results_1
where results_1.rank is not NULL
limit 37;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.forename, 
  drivers_1.dob, 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
limit 23;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.laps, 
  results_1.positionorder
from 
  results as results_1
where results_1.rank <= results_1.fastestlap
limit 17;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.position, 
  results_1.laps, 
  results_1.date, 
  results_1.fastestlap, 
  results_1.grid, 
  avg(
    results_1.points), 
  results_1.statusid, 
  results_1.points
from 
  results as results_1
where results_1.fastestlap <= results_1.number
group by results_1.date, results_1.fastestlap, results_1.grid, results_1.laps, results_1.points, results_1.position, results_1.statusid
limit 41;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.points > constructor_results_1.points
limit 7;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.dob, 
  drivers_1.driverid, 
  drivers_1.forename, 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
limit 28;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lng, 
  circuits_1.circuitid, 
  circuits_1.circuitref, 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.lng < circuits_1.alt
limit 12;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.date, 
  avg(
    standings_1.points), 
  standings_1.position, 
  circuits_1.name, 
  circuits_1.circuitid, 
  circuits_1.lng, 
  circuits_1.circuitref, 
  count(*), 
  standings_1.driverstandingsid, 
  min(
    circuits_1.alt), 
  circuits_1.location
from 
  circuits as circuits_1
    inner join standings as standings_1
    on (circuits_1.circuitid = standings_1.driverstandingsid )
where standings_1.wins is not NULL
group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.lng, circuits_1.location, circuits_1.name, standings_1.date, standings_1.driverstandingsid, standings_1.position
limit 33;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  circuits_1.alt
from 
  constructor_results as constructor_results_1
    inner join circuits as circuits_1
    on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
where constructor_results_1.date > constructor_results_1.date
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lng, 
  drivers_1.surname, 
  circuits_1.lat, 
  circuits_1.circuitref, 
  circuits_1.alt
from 
  drivers as drivers_1
    inner join circuits as circuits_1
    on (drivers_1.driverid = circuits_1.circuitid )
where circuits_1.lat > circuits_1.alt
limit 30;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  qualifying_1.number, 
  count(
    qualifying_1.constructorid), 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
group by qualifying_1.date, qualifying_1.number, qualifying_1.qualifyid, qualifying_1.raceid
limit 24;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    results_1.date), 
  results_1.positionorder, 
  results_1.position, 
  results_1.fastestlap, 
  avg(
    results_1.position), 
  results_1.resultid, 
  results_1.milliseconds, 
  results_1.driverid, 
  count(*), 
  results_1.grid, 
  results_1.number, 
  results_1.raceid
from 
  results as results_1
where results_1.constructorid is not NULL
group by results_1.driverid, results_1.fastestlap, results_1.grid, results_1.milliseconds, results_1.number, results_1.position, results_1.positionorder, results_1.raceid, results_1.resultid
limit 15;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref
from 
  constructors as constructors_1
        inner join constructor_standings as constructor_standings_1
        on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
      inner join drivers as drivers_1
      on (constructors_1.constructorid = drivers_1.driverid )
    inner join races as races_1
    on (constructors_1.constructorid = races_1.raceid )
where races_1.name is not NULL
limit 17;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt, 
  circuits_1.country, 
  circuits_1.circuitref, 
  circuits_1.location, 
  circuits_1.lat, 
  min(
    circuits_1.lng)
from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
group by circuits_1.alt, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.location
limit 16;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    races_1.date), 
  races_1.year, 
  count(*), 
  races_1.round, 
  races_1.circuitid, 
  max(
    races_1.circuitid), 
  races_1.name, 
  constructors_1.name, 
  constructors_1.constructorref, 
  races_1.date, 
  races_1.raceid, 
  constructors_1.nationality
from 
  races as races_1
    inner join constructors as constructors_1
    on (races_1.raceid = constructors_1.constructorid )
where races_1.date < races_1.date
group by constructors_1.constructorref, constructors_1.name, constructors_1.nationality, races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.year
limit 23;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    results_1.number), 
  constructor_standings_1.constructorid, 
  max(
    results_1.constructorid), 
  results_1.position, 
  constructor_standings_1.position, 
  results_1.grid
from 
  constructor_standings as constructor_standings_1
    inner join results as results_1
    on (constructor_standings_1.constructorstandingsid = results_1.resultid )
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.position, results_1.grid, results_1.position
limit 34;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  qualifying_1.driverid, 
  races_1.round
from 
  races as races_1
    inner join qualifying as qualifying_1
      inner join qualifying as qualifying_2
        inner join constructors as constructors_1
        on (qualifying_2.qualifyid = constructors_1.constructorid )
      on (qualifying_1.qualifyid = qualifying_2.qualifyid )
    on (races_1.raceid = constructors_1.constructorid )
where qualifying_2.position is not NULL
limit 36;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    circuits_1.circuitid), 
  circuits_1.circuitref, 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.circuitid > circuits_1.circuitid
group by circuits_1.circuitref, circuits_1.location
limit 11;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins, 
  constructor_standings_1.date, 
  count(
    constructor_standings_1.position), 
  constructor_standings_1.constructorid, 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.raceid, 
  constructor_standings_1.points, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  min(
    constructor_standings_1.date)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 33;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverid, 
  min(
    drivers_1.dob), 
  max(
    drivers_1.dob)
from 
  constructor_standings as constructor_standings_1
      inner join drivers as drivers_1
      on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
    inner join constructors as constructors_1
    on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
where drivers_1.code > drivers_1.driverref
group by drivers_1.driverid
limit 32;
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructor_standings_1.position, 
  constructors_1.nationality, 
  max(
    constructor_standings_1.constructorstandingsid), 
  max(
    qualifying_1.constructorid), 
  qualifying_1.date, 
  min(
    qualifying_1.date), 
  qualifying_1.driverid, 
  constructors_1.name
from 
  qualifying as qualifying_1
      inner join constructor_standings as constructor_standings_1
      on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
    inner join constructors as constructors_1
    on (qualifying_1.qualifyid = constructors_1.constructorid )
where qualifying_1.number is not NULL
group by constructor_standings_1.position, constructors_1.constructorid, constructors_1.name, constructors_1.nationality, qualifying_1.date, qualifying_1.driverid
limit 39;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position
from 
  qualifying as qualifying_1
    inner join standings as standings_1
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where qualifying_1.driverid > qualifying_1.qualifyid
limit 34;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.date, 
  standings_1.wins
from 
  standings as standings_1
    inner join drivers as drivers_1
    on (standings_1.driverstandingsid = drivers_1.driverid )
where drivers_1.nationality <= drivers_1.driverref
limit 14;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lat, 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.name is not NULL
limit 37;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.name, 
  count(
    races_1.round), 
  races_1.raceid, 
  min(
    races_1.date), 
  races_1.round
from 
  races as races_1
where races_1.time = races_1.name
group by races_1.name, races_1.raceid, races_1.round
limit 12;
-- meta {"num_joins":4,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  drivers_1.dob, 
  circuits_1.alt, 
  circuits_1.circuitid, 
  constructors_1.name, 
  max(
    circuits_1.lng), 
  qualifying_1.date, 
  qualifying_1.qualifyid, 
  drivers_1.code, 
  drivers_1.forename, 
  races_1.raceid, 
  races_1.circuitid, 
  circuits_1.location, 
  constructors_1.nationality, 
  avg(
    circuits_1.lat), 
  races_1.date, 
  drivers_1.surname, 
  drivers_1.driverref, 
  min(
    circuits_1.lng)
from 
  drivers as drivers_1
      inner join qualifying as qualifying_1
        inner join circuits as circuits_1
          inner join races as races_1
          on (circuits_1.circuitid = races_1.raceid )
        on (qualifying_1.qualifyid = circuits_1.circuitid )
      on (drivers_1.driverid = races_1.raceid )
    inner join constructors as constructors_1
    on (races_1.raceid = constructors_1.constructorid )
where races_1.raceid is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.location, constructors_1.constructorref, constructors_1.name, constructors_1.nationality, drivers_1.code, drivers_1.dob, drivers_1.driverref, drivers_1.forename, drivers_1.surname, qualifying_1.date, qualifying_1.qualifyid, races_1.circuitid, races_1.date, races_1.raceid
limit 18;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location
from 
  circuits as circuits_1
    inner join constructors as constructors_1
    on (circuits_1.circuitid = constructors_1.constructorid )
where constructors_1.name is not NULL
limit 19;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  max(
    constructor_standings_1.constructorstandingsid), 
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 39;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.points, 
  qualifying_1.driverid, 
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  min(
    qualifying_1.date), 
  standings_1.date
from 
  standings as standings_1
    inner join qualifying as qualifying_1
      inner join results as results_1
      on (qualifying_1.qualifyid = results_1.resultid )
    on (standings_1.driverstandingsid = results_1.resultid )
where qualifying_1.constructorid is not NULL
group by qualifying_1.driverid, results_1.points, standings_1.date, standings_1.driverstandingsid, standings_1.raceid
limit 29;
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    results_1.fastestlap), 
  sum(
    results_1.fastestlap), 
  results_1.statusid, 
  results_1.constructorid, 
  max(
    qualifying_1.date), 
  qualifying_1.raceid, 
  qualifying_1.constructorid, 
  results_1.positionorder, 
  results_1.position, 
  min(
    qualifying_1.date)
from 
  results as results_1
    inner join qualifying as qualifying_1
    on (results_1.resultid = qualifying_1.qualifyid )
where results_1.date <= qualifying_1.date
group by qualifying_1.constructorid, qualifying_1.raceid, results_1.constructorid, results_1.position, results_1.positionorder, results_1.statusid
limit 9;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref, 
  qualifying_1.driverid, 
  qualifying_1.constructorid, 
  max(
    qualifying_1.date), 
  qualifying_1.number
from 
  qualifying as qualifying_1
    inner join drivers as drivers_1
    on (qualifying_1.qualifyid = drivers_1.driverid )
where qualifying_1.raceid is not NULL
group by drivers_1.driverref, qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.number
limit 27;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid, 
  qualifying_1.raceid, 
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.date >= qualifying_1.date
limit 16;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    results_1.position)
from 
  circuits as circuits_1
      inner join qualifying as qualifying_1
      on (circuits_1.circuitid = qualifying_1.qualifyid )
    inner join results as results_1
    on (qualifying_1.qualifyid = results_1.resultid )
where qualifying_1.number is not NULL
limit 7;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.fastestlap, 
  results_1.points, 
  results_1.rank, 
  results_1.raceid, 
  results_1.number
from 
  results as results_1
where results_1.grid is not NULL
limit 42;
-- meta {"num_joins":2,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  races_1.circuitid, 
  standings_1.driverid, 
  standings_1.wins, 
  standings_1.position, 
  count(*), 
  max(
    standings_1.points), 
  max(
    constructor_results_1.points), 
  avg(
    standings_1.points), 
  races_1.name, 
  constructor_results_1.constructorresultsid, 
  races_1.year, 
  races_1.round, 
  standings_1.raceid, 
  races_1.date, 
  max(
    standings_1.points)
from 
  constructor_results as constructor_results_1
    inner join races as races_1
      inner join standings as standings_1
      on (races_1.raceid = standings_1.driverstandingsid )
    on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
where standings_1.raceid is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.raceid, races_1.circuitid, races_1.date, races_1.name, races_1.round, races_1.year, standings_1.driverid, standings_1.position, standings_1.raceid, standings_1.wins
limit 36;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid, 
  sum(
    results_1.number), 
  constructor_results_1.date
from 
  drivers as drivers_1
    inner join races as races_1
      inner join results as results_1
        inner join constructor_results as constructor_results_1
        on (results_1.resultid = constructor_results_1.constructorresultsid )
      on (races_1.raceid = constructor_results_1.constructorresultsid )
    on (drivers_1.driverid = constructor_results_1.constructorresultsid )
where results_1.statusid is not NULL
group by constructor_results_1.date, races_1.circuitid
limit 21;
-- meta {"num_joins":1,"num_aggregates":8,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    races_1.year), 
  races_1.raceid, 
  standings_1.driverstandingsid, 
  standings_1.position, 
  min(
    standings_1.date), 
  standings_1.driverid, 
  standings_1.raceid, 
  max(
    standings_1.position), 
  standings_1.points, 
  count(
    races_1.date), 
  sum(
    races_1.raceid), 
  avg(
    standings_1.points), 
  races_1.round, 
  races_1.time, 
  races_1.name, 
  standings_1.date, 
  avg(
    standings_1.points), 
  max(
    standings_1.points)
from 
  races as races_1
    inner join standings as standings_1
    on (races_1.raceid = standings_1.driverstandingsid )
where standings_1.points = standings_1.points
group by races_1.name, races_1.raceid, races_1.round, races_1.time, standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid
limit 27;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.points < constructor_results_1.points
limit 34;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_2.constructorid
from 
  constructor_results as constructor_results_1
    inner join constructor_results as constructor_results_2
    on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
where constructor_results_2.points is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.date <= constructor_results_1.date
limit 32;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.dob, 
  drivers_1.surname, 
  drivers_1.forename, 
  min(
    drivers_1.dob), 
  drivers_1.driverid, 
  min(
    drivers_1.dob), 
  drivers_1.driverref, 
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.surname
limit 10;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    races_1.date), 
  count(*), 
  races_1.raceid
from 
  races as races_1
where races_1.round is not NULL
group by races_1.raceid
limit 40;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.driverid
from 
  circuits as circuits_1
    inner join results as results_1
    on (circuits_1.circuitid = results_1.resultid )
where results_1.points = results_1.number
limit 33;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.qualifyid, 
  races_1.year, 
  constructor_standings_1.constructorstandingsid
from 
  races as races_1
      inner join constructor_standings as constructor_standings_1
      on (races_1.raceid = constructor_standings_1.constructorstandingsid )
    inner join circuits as circuits_1
      inner join qualifying as qualifying_1
      on (circuits_1.circuitid = qualifying_1.qualifyid )
    on (races_1.raceid = circuits_1.circuitid )
where qualifying_1.raceid is not NULL
limit 15;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position, 
  circuits_1.name, 
  drivers_1.surname, 
  drivers_1.driverref, 
  circuits_1.circuitid
from 
  standings as standings_1
      inner join circuits as circuits_1
      on (standings_1.driverstandingsid = circuits_1.circuitid )
    inner join drivers as drivers_1
    on (standings_1.driverstandingsid = drivers_1.driverid )
where drivers_1.surname is not NULL
limit 40;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.nationality, 
  races_1.name, 
  drivers_1.dob, 
  races_1.raceid
from 
  drivers as drivers_1
      inner join qualifying as qualifying_1
      on (drivers_1.driverid = qualifying_1.qualifyid )
    inner join races as races_1
    on (qualifying_1.qualifyid = races_1.raceid )
where drivers_1.driverid is not NULL
limit 33;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.date
from 
  races as races_1
where races_1.time is not NULL
limit 16;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    races_1.date), 
  races_1.time, 
  races_1.circuitid, 
  races_1.date, 
  min(
    races_1.date), 
  count(*), 
  races_1.raceid, 
  min(
    races_1.date)
from 
  races as races_1
where races_1.raceid is not NULL
group by races_1.circuitid, races_1.date, races_1.raceid, races_1.time
limit 20;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lng, 
  circuits_1.country, 
  min(
    circuits_1.alt), 
  races_1.circuitid, 
  races_1.year, 
  max(
    races_1.date)
from 
  races as races_1
    inner join circuits as circuits_1
    on (races_1.raceid = circuits_1.circuitid )
where circuits_1.lat < circuits_1.alt
group by circuits_1.country, circuits_1.lng, races_1.circuitid, races_1.year
limit 26;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins, 
  constructor_standings_1.date, 
  constructor_standings_1.raceid, 
  constructor_standings_1.position, 
  max(
    constructor_standings_1.wins)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 29;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 19;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.code, 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.code is not NULL
limit 22;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  min(
    results_1.points), 
  results_1.laps, 
  max(
    results_1.date), 
  results_1.fastestlap
from 
  results as results_1
    inner join constructors as constructors_1
    on (results_1.resultid = constructors_1.constructorid )
where results_1.milliseconds >= results_1.rank
group by constructors_1.constructorid, results_1.fastestlap, results_1.laps
limit 41;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.points < constructor_results_1.points
limit 18;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitid, 
  max(
    circuits_1.lat), 
  circuits_1.circuitref, 
  sum(
    circuits_1.alt), 
  circuits_1.location, 
  min(
    circuits_1.circuitid), 
  circuits_1.name, 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.lng, circuits_1.location, circuits_1.name
limit 8;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  constructors_1.constructorid, 
  count(*), 
  constructors_1.constructorref, 
  qualifying_1.constructorid
from 
  constructors as constructors_1
    inner join qualifying as qualifying_1
    on (constructors_1.constructorid = qualifying_1.qualifyid )
where constructors_1.constructorref = constructors_1.nationality
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality, qualifying_1.constructorid
limit 20;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.grid
from 
  constructors as constructors_1
    inner join results as results_1
    on (constructors_1.constructorid = results_1.resultid )
where constructors_1.name is not NULL
limit 17;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  max(
    constructor_results_1.date), 
  constructor_standings_1.wins, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  max(
    constructor_results_1.points), 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
    inner join constructor_results as constructor_results_1
    on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_standings_1.constructorstandingsid, constructor_standings_1.wins
limit 24;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.grid, 
  results_1.fastestlap, 
  results_1.laps, 
  max(
    results_1.date), 
  results_1.driverid, 
  results_1.raceid
from 
  results as results_1
where results_1.points is not NULL
group by results_1.driverid, results_1.fastestlap, results_1.grid, results_1.laps, results_1.raceid
limit 27;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    results_1.number)
from 
  results as results_1
where results_1.rank > results_1.fastestlap
limit 26;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    standings_1.points)
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
limit 38;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.name, 
  races_1.raceid
from 
  races as races_1
where races_1.date > races_1.date
limit 35;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.raceid
from 
  constructors as constructors_1
    inner join results as results_1
      inner join constructor_results as constructor_results_1
        inner join constructor_standings as constructor_standings_1
        on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
      on (results_1.resultid = constructor_standings_1.constructorstandingsid )
    on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
where results_1.rank is not NULL
limit 37;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year
from 
  results as results_1
      inner join races as races_1
      on (results_1.resultid = races_1.raceid )
    inner join results as results_2
    on (results_1.resultid = results_2.resultid )
where results_2.raceid >= results_2.positionorder
limit 16;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.surname, 
  circuits_1.lng, 
  races_1.raceid, 
  races_1.year
from 
  races as races_1
    inner join circuits as circuits_1
      inner join drivers as drivers_1
      on (circuits_1.circuitid = drivers_1.driverid )
    on (races_1.raceid = circuits_1.circuitid )
where races_1.raceid is not NULL
limit 30;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
    inner join standings as standings_1
    on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
where standings_1.driverstandingsid is not NULL
limit 18;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.code, 
  drivers_1.nationality, 
  drivers_1.driverref, 
  drivers_1.dob, 
  drivers_1.driverid, 
  min(
    drivers_1.driverid)
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.nationality
limit 8;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  min(
    constructor_results_1.constructorid), 
  constructor_standings_1.wins
from 
  constructor_results as constructor_results_1
    inner join constructor_standings as constructor_standings_1
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.constructorid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.date, constructor_standings_1.wins
limit 32;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 12;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.date >= constructor_results_1.date
limit 26;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality
from 
  constructors as constructors_1
    inner join constructor_results as constructor_results_1
      inner join constructor_results as constructor_results_2
      on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
    on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
where constructor_results_2.constructorid is not NULL
limit 23;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.position, 
  avg(
    constructor_standings_1.points), 
  constructor_standings_1.raceid
from 
  circuits as circuits_1
    inner join constructor_standings as constructor_standings_1
    on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
where circuits_1.circuitid is not NULL
group by constructor_standings_1.position, constructor_standings_1.raceid
limit 20;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location
from 
  drivers as drivers_1
    inner join circuits as circuits_1
      inner join results as results_1
      on (circuits_1.circuitid = results_1.resultid )
    on (drivers_1.driverid = results_1.resultid )
where results_1.date is not NULL
limit 34;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    results_1.rank), 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  circuits_1.circuitref, 
  constructor_standings_1.position
from 
  constructor_results as constructor_results_1
        inner join constructor_standings as constructor_standings_1
        on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
      inner join circuits as circuits_1
      on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
    inner join results as results_1
    on (constructor_results_1.constructorresultsid = results_1.resultid )
where results_1.resultid is not NULL
group by circuits_1.circuitref, constructor_results_1.constructorid, constructor_results_1.points, constructor_standings_1.position
limit 7;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.laps
from 
  results as results_1
    inner join results as results_2
      inner join qualifying as qualifying_1
        inner join drivers as drivers_1
        on (qualifying_1.qualifyid = drivers_1.driverid )
      on (results_2.resultid = drivers_1.driverid )
    on (results_1.resultid = qualifying_1.qualifyid )
where results_2.rank < results_1.position
limit 26;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.position, 
  results_1.raceid
from 
  standings as standings_1
        inner join results as results_1
        on (standings_1.driverstandingsid = results_1.resultid )
      inner join constructor_standings as constructor_standings_1
      on (results_1.resultid = constructor_standings_1.constructorstandingsid )
    inner join constructor_standings as constructor_standings_2
    on (standings_1.driverstandingsid = constructor_standings_2.constructorstandingsid )
where results_1.number is not NULL
limit 14;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year, 
  races_1.time, 
  min(
    races_1.circuitid), 
  races_1.raceid, 
  races_1.date, 
  races_1.name
from 
  races as races_1
where races_1.circuitid is not NULL
group by races_1.date, races_1.name, races_1.raceid, races_1.time, races_1.year
limit 42;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.surname, 
  drivers_2.forename, 
  drivers_2.nationality, 
  drivers_1.nationality, 
  races_1.date
from 
  drivers as drivers_1
    inner join races as races_1
      inner join drivers as drivers_2
      on (races_1.raceid = drivers_2.driverid )
    on (drivers_1.driverid = races_1.raceid )
where drivers_1.surname < races_1.time
limit 32;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid
from 
  constructor_results as constructor_results_1
    inner join qualifying as qualifying_1
    on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
where constructor_results_1.points is not NULL
limit 27;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lng, 
  drivers_1.surname, 
  drivers_1.driverref, 
  circuits_1.circuitid, 
  drivers_1.forename, 
  min(
    drivers_1.dob), 
  min(
    circuits_1.circuitid), 
  min(
    circuits_1.lng), 
  circuits_1.lat, 
  drivers_1.dob
from 
  circuits as circuits_1
    inner join drivers as drivers_1
    on (circuits_1.circuitid = drivers_1.driverid )
where drivers_1.dob = drivers_1.dob
group by circuits_1.circuitid, circuits_1.lat, circuits_1.lng, drivers_1.dob, drivers_1.driverref, drivers_1.forename, drivers_1.surname
limit 22;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.date, 
  drivers_1.dob
from 
  constructors as constructors_1
      inner join races as races_1
      on (constructors_1.constructorid = races_1.raceid )
    inner join drivers as drivers_1
      inner join standings as standings_1
      on (drivers_1.driverid = standings_1.driverstandingsid )
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where races_1.circuitid is not NULL
limit 34;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  drivers_1.driverref
from 
  results as results_1
    inner join drivers as drivers_1
    on (results_1.resultid = drivers_1.driverid )
where drivers_1.code is not NULL
group by drivers_1.driverref
limit 16;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.surname, 
  constructor_standings_1.constructorstandingsid
from 
  drivers as drivers_1
    inner join constructor_standings as constructor_standings_1
      inner join circuits as circuits_1
      on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
    on (drivers_1.driverid = circuits_1.circuitid )
where constructor_standings_1.points is not NULL
limit 28;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid
from 
  qualifying as qualifying_1
    inner join results as results_1
    on (qualifying_1.qualifyid = results_1.resultid )
where results_1.date is not NULL
limit 27;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number, 
  qualifying_1.driverid, 
  qualifying_1.constructorid, 
  qualifying_1.position, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.date <= qualifying_1.date
limit 14;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.statusid, 
  results_1.rank, 
  results_1.fastestlap, 
  results_1.number, 
  results_1.milliseconds
from 
  results as results_1
where results_1.raceid > results_1.constructorid
limit 26;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  min(
    constructor_results_1.date), 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 22;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt, 
  circuits_1.circuitid, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.country is not NULL
limit 42;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.date < constructor_results_1.date
limit 23;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    constructor_results_1.constructorid)
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
limit 33;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    standings_1.points), 
  constructor_results_1.raceid, 
  circuits_1.circuitref, 
  standings_1.position
from 
  constructor_results as constructor_results_1
    inner join circuits as circuits_1
      inner join standings as standings_1
      on (circuits_1.circuitid = standings_1.driverstandingsid )
    on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
where circuits_1.lat <= constructor_results_1.points
group by circuits_1.circuitref, constructor_results_1.raceid, standings_1.position
limit 18;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid, 
  races_1.name, 
  races_1.round, 
  max(
    races_1.circuitid), 
  races_1.time, 
  max(
    races_1.raceid)
from 
  races as races_1
where races_1.date < races_1.date
group by races_1.circuitid, races_1.name, races_1.round, races_1.time
limit 30;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins, 
  sum(
    standings_1.points), 
  standings_1.position, 
  standings_1.driverstandingsid, 
  standings_1.driverid, 
  standings_1.date, 
  standings_1.points
from 
  standings as standings_1
where standings_1.wins is not NULL
group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.wins
limit 2;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_2.driverid, 
  standings_2.points
from 
  standings as standings_1
      inner join constructor_results as constructor_results_1
        inner join races as races_1
        on (constructor_results_1.constructorresultsid = races_1.raceid )
      on (standings_1.driverstandingsid = races_1.raceid )
    inner join standings as standings_2
    on (standings_1.driverstandingsid = standings_2.driverstandingsid )
where standings_2.date < constructor_results_1.date
limit 25;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.time, 
  races_1.raceid, 
  races_1.year, 
  races_1.date, 
  races_1.round, 
  sum(
    races_1.year)
from 
  races as races_1
where races_1.circuitid is not NULL
group by races_1.date, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 8;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.date, 
  standings_1.position
from 
  standings as standings_1
where standings_1.points is not NULL
limit 38;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
limit 42;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year, 
  races_1.raceid, 
  races_1.date, 
  races_1.round, 
  max(
    races_1.date), 
  races_1.circuitid, 
  races_1.name
from 
  races as races_1
where races_1.year is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.year
limit 32;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name
from 
  circuits as circuits_1
    inner join standings as standings_1
    on (circuits_1.circuitid = standings_1.driverstandingsid )
where circuits_1.name is not NULL
limit 32;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.grid, 
  results_1.position, 
  results_1.number, 
  results_1.constructorid, 
  min(
    results_1.date)
from 
  results as results_1
where results_1.date <= results_1.date
group by results_1.constructorid, results_1.grid, results_1.number, results_1.position
limit 5;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name, 
  constructors_1.constructorid, 
  min(
    qualifying_1.date), 
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  qualifying_1.raceid
from 
  constructors as constructors_1
    inner join qualifying as qualifying_1
    on (constructors_1.constructorid = qualifying_1.qualifyid )
where qualifying_1.constructorid is not NULL
group by constructors_1.constructorid, constructors_1.name, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 18;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.number, 
  results_1.laps, 
  results_1.constructorid, 
  results_1.points, 
  results_1.date, 
  results_1.position, 
  sum(
    results_1.number), 
  results_1.fastestlap, 
  sum(
    results_1.milliseconds)
from 
  results as results_1
where results_1.position is not NULL
group by results_1.constructorid, results_1.date, results_1.fastestlap, results_1.laps, results_1.number, results_1.points, results_1.position
limit 42;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.forename
from 
  races as races_1
    inner join drivers as drivers_1
      inner join constructors as constructors_1
      on (drivers_1.driverid = constructors_1.constructorid )
    on (races_1.raceid = drivers_1.driverid )
where drivers_1.dob is not NULL
limit 8;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.surname, 
  drivers_1.driverid, 
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.code is not NULL
limit 31;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.position, 
  qualifying_1.driverid, 
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
limit 31;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position
from 
  standings as standings_1
where standings_1.driverid is not NULL
limit 8;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.points, 
  avg(
    standings_1.raceid), 
  max(
    standings_1.date), 
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  standings_1.position, 
  avg(
    standings_1.points), 
  max(
    standings_1.raceid), 
  standings_1.date, 
  standings_1.driverid, 
  standings_1.wins, 
  count(*)
from 
  standings as standings_1
where standings_1.points is not NULL
group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
limit 5;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorid, 
  circuits_1.location
from 
  circuits as circuits_1
    inner join constructors as constructors_1
    on (circuits_1.circuitid = constructors_1.constructorid )
where constructors_1.nationality <= circuits_1.name
limit 24;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  standings_1.date, 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.points = standings_1.points
limit 15;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  constructors_1.constructorid, 
  constructors_1.name
from 
  standings as standings_1
          inner join qualifying as qualifying_1
          on (standings_1.driverstandingsid = qualifying_1.qualifyid )
        inner join results as results_1
          inner join constructor_results as constructor_results_1
          on (results_1.resultid = constructor_results_1.constructorresultsid )
        on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
      inner join constructors as constructors_1
      on (standings_1.driverstandingsid = constructors_1.constructorid )
    inner join circuits as circuits_1
    on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
where circuits_1.country > circuits_1.name
limit 42;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    races_1.circuitid), 
  max(
    races_1.year), 
  races_1.date, 
  races_1.time, 
  races_1.raceid, 
  races_1.round, 
  races_1.circuitid, 
  races_1.year
from 
  races as races_1
where races_1.date >= races_1.date
group by races_1.circuitid, races_1.date, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 24;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.points, 
  max(
    standings_1.date)
from 
  standings as standings_1
where standings_1.points is not NULL
group by standings_1.points
limit 31;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
limit 39;
-- meta {"num_joins":3,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_standings_1.date), 
  constructor_results_1.points, 
  constructor_results_1.date, 
  min(
    qualifying_1.qualifyid), 
  constructor_standings_1.wins, 
  qualifying_1.raceid, 
  qualifying_1.constructorid, 
  qualifying_1.number, 
  min(
    constructor_results_1.date), 
  constructors_1.constructorref, 
  constructors_1.name
from 
  constructor_standings as constructor_standings_1
    inner join constructor_results as constructor_results_1
      inner join qualifying as qualifying_1
        inner join constructors as constructors_1
        on (qualifying_1.qualifyid = constructors_1.constructorid )
      on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
    on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
where constructor_results_1.date is not NULL
group by constructor_results_1.date, constructor_results_1.points, constructor_standings_1.wins, constructors_1.constructorref, constructors_1.name, qualifying_1.constructorid, qualifying_1.number, qualifying_1.raceid
limit 35;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
limit 6;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitid, 
  max(
    circuits_1.circuitid)
from 
  circuits as circuits_1
where circuits_1.country is not NULL
group by circuits_1.circuitid
limit 42;
-- meta {"num_joins":1,"num_aggregates":6,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.code, 
  standings_1.wins, 
  standings_1.raceid, 
  min(
    drivers_1.dob), 
  standings_1.driverid, 
  avg(
    standings_1.points), 
  max(
    standings_1.points), 
  drivers_1.driverid, 
  max(
    standings_1.points), 
  max(
    standings_1.points), 
  sum(
    standings_1.points)
from 
  drivers as drivers_1
    inner join standings as standings_1
    on (drivers_1.driverid = standings_1.driverstandingsid )
where drivers_1.nationality is not NULL
group by drivers_1.code, drivers_1.driverid, standings_1.driverid, standings_1.raceid, standings_1.wins
limit 30;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    standings_1.driverstandingsid), 
  standings_1.raceid, 
  standings_1.driverstandingsid, 
  standings_1.wins, 
  standings_1.position, 
  standings_1.date, 
  standings_1.points, 
  max(
    standings_1.date), 
  min(
    standings_1.date), 
  min(
    standings_1.date), 
  min(
    standings_1.date)
from 
  standings as standings_1
where standings_1.points <= standings_1.points
group by standings_1.date, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
limit 27;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitid, 
  circuits_1.circuitref, 
  circuits_1.country, 
  circuits_1.alt, 
  circuits_1.lat, 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
limit 25;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  standings_1.points
from 
  standings as standings_1
where standings_1.raceid is not NULL
limit 32;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name
from 
  circuits as circuits_1
    inner join constructors as constructors_1
    on (circuits_1.circuitid = constructors_1.constructorid )
where circuits_1.lng = circuits_1.lat
limit 11;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.statusid
from 
  results as results_1
where results_1.raceid is not NULL
limit 5;
-- meta {"num_joins":3,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    results_1.points), 
  races_1.time, 
  results_1.statusid, 
  sum(
    results_1.raceid), 
  min(
    qualifying_1.date)
from 
  qualifying as qualifying_1
        inner join results as results_1
        on (qualifying_1.qualifyid = results_1.resultid )
      inner join races as races_1
      on (qualifying_1.qualifyid = races_1.raceid )
    inner join races as races_2
    on (results_1.resultid = races_2.raceid )
where results_1.points > results_1.number
group by races_1.time, results_1.statusid
limit 22;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.positionorder, 
  min(
    results_1.date), 
  results_1.constructorid
from 
  results as results_1
where results_1.date <= results_1.date
group by results_1.constructorid, results_1.positionorder
limit 29;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lat, 
  circuits_1.lng, 
  circuits_1.location, 
  circuits_1.country, 
  circuits_1.name, 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.circuitid < circuits_1.circuitid
limit 15;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    drivers_1.dob), 
  drivers_1.code, 
  drivers_1.nationality, 
  drivers_1.driverid, 
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.nationality
limit 35;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    results_1.date)
from 
  results as results_1
where results_1.driverid is not NULL
limit 2;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    results_1.raceid), 
  constructor_standings_1.date, 
  drivers_1.code, 
  constructor_standings_1.wins
from 
  results as results_1
        inner join drivers as drivers_1
        on (results_1.resultid = drivers_1.driverid )
      inner join standings as standings_1
      on (drivers_1.driverid = standings_1.driverstandingsid )
    inner join constructor_standings as constructor_standings_1
    on (results_1.resultid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.position is not NULL
group by constructor_standings_1.date, constructor_standings_1.wins, drivers_1.code
limit 21;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  standings_1.position, 
  min(
    standings_1.date)
from 
  standings as standings_1
where standings_1.driverid is not NULL
group by standings_1.position, standings_1.raceid
limit 26;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.raceid
from 
  standings as standings_1
    inner join qualifying as qualifying_1
    on (standings_1.driverstandingsid = qualifying_1.qualifyid )
where qualifying_1.driverid is not NULL
limit 14;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  avg(
    constructor_results_1.constructorid), 
  avg(
    constructor_results_1.points), 
  max(
    constructor_results_1.date), 
  count(*)
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 33;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.qualifyid, 
  qualifying_1.driverid, 
  qualifying_1.constructorid, 
  qualifying_1.raceid, 
  min(
    qualifying_1.date), 
  qualifying_1.position, 
  min(
    qualifying_1.date)
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
group by qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 23;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.date, 
  results_1.positionorder, 
  results_1.driverid, 
  results_1.number, 
  results_1.statusid
from 
  results as results_1
where results_1.date >= results_1.date
limit 27;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position, 
  standings_1.driverstandingsid, 
  count(*), 
  max(
    standings_1.date), 
  standings_1.driverid, 
  standings_1.date, 
  standings_1.wins, 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.driverid is not NULL
group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.position, standings_1.raceid, standings_1.wins
limit 25;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    constructor_results_1.points), 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 5;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid, 
  qualifying_1.date, 
  standings_1.raceid
from 
  standings as standings_1
    inner join qualifying as qualifying_1
    on (standings_1.driverstandingsid = qualifying_1.qualifyid )
where qualifying_1.date is not NULL
limit 32;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid, 
  races_1.date, 
  races_1.time, 
  races_1.year
from 
  races as races_1
where races_1.time is not NULL
limit 29;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location, 
  circuits_1.alt, 
  circuits_1.circuitref, 
  max(
    circuits_1.lat), 
  circuits_1.lat, 
  circuits_1.name, 
  races_1.circuitid, 
  races_1.round, 
  count(*)
from 
  races as races_1
    inner join circuits as circuits_1
    on (races_1.raceid = circuits_1.circuitid )
where races_1.date < races_1.date
group by circuits_1.alt, circuits_1.circuitref, circuits_1.lat, circuits_1.location, circuits_1.name, races_1.circuitid, races_1.round
limit 35;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.raceid, 
  results_1.position, 
  results_1.points, 
  constructor_results_1.date, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_results as constructor_results_1
      inner join constructor_standings as constructor_standings_1
      on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
    inner join results as results_1
      inner join constructor_standings as constructor_standings_2
      on (results_1.resultid = constructor_standings_2.constructorstandingsid )
    on (constructor_results_1.constructorresultsid = results_1.resultid )
where constructor_standings_2.raceid is not NULL
limit 34;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality
from 
  constructors as constructors_1
    inner join drivers as drivers_1
    on (constructors_1.constructorid = drivers_1.driverid )
where constructors_1.name is not NULL
limit 14;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid, 
  standings_1.raceid, 
  standings_1.driverstandingsid, 
  sum(
    standings_1.points), 
  standings_1.date, 
  sum(
    standings_1.position)
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.raceid
limit 13;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name, 
  constructor_results_1.constructorid, 
  standings_1.position, 
  constructor_results_1.raceid, 
  constructors_1.constructorref, 
  constructor_results_1.points, 
  constructor_results_1.date, 
  standings_2.position, 
  standings_1.wins, 
  standings_2.driverid, 
  count(*)
from 
  constructors as constructors_1
      inner join standings as standings_1
      on (constructors_1.constructorid = standings_1.driverstandingsid )
    inner join races as races_1
        inner join constructor_results as constructor_results_1
        on (races_1.raceid = constructor_results_1.constructorresultsid )
      inner join standings as standings_2
      on (constructor_results_1.constructorresultsid = standings_2.driverstandingsid )
    on (constructors_1.constructorid = races_1.raceid )
where standings_2.points >= standings_1.points
group by constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid, constructors_1.constructorref, constructors_1.name, standings_1.position, standings_1.wins, standings_2.driverid, standings_2.position
limit 28;
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_standings_2.date), 
  avg(
    constructor_standings_2.position), 
  constructor_standings_1.constructorstandingsid
from 
  circuits as circuits_1
        inner join constructor_standings as constructor_standings_1
        on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
      inner join constructor_standings as constructor_standings_2
      on (circuits_1.circuitid = constructor_standings_2.constructorstandingsid )
    inner join standings as standings_1
    on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
where constructor_standings_1.position is not NULL
group by constructor_standings_1.constructorstandingsid
limit 28;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.position, 
  constructor_standings_1.points, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
limit 29;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.fastestlap, 
  results_1.statusid, 
  results_1.milliseconds, 
  results_1.rank, 
  avg(
    results_1.grid), 
  min(
    results_1.milliseconds), 
  results_1.resultid, 
  results_1.grid
from 
  results as results_1
where results_1.positionorder is not NULL
group by results_1.fastestlap, results_1.grid, results_1.milliseconds, results_1.rank, results_1.resultid, results_1.statusid
limit 23;
-- meta {"num_joins":7,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  min(
    drivers_2.dob)
from 
  results as results_1
      inner join drivers as drivers_1
      on (results_1.resultid = drivers_1.driverid )
    inner join circuits as circuits_1
        inner join constructor_standings as constructor_standings_1
        on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
      inner join constructors as constructors_1
          inner join constructor_standings as constructor_standings_2
          on (constructors_1.constructorid = constructor_standings_2.constructorstandingsid )
        inner join drivers as drivers_2
          inner join standings as standings_1
          on (drivers_2.driverid = standings_1.driverstandingsid )
        on (constructor_standings_2.constructorstandingsid = drivers_2.driverid )
      on (circuits_1.circuitid = constructor_standings_2.constructorstandingsid )
    on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
where standings_1.driverid is not NULL
group by constructors_1.constructorid
limit 19;
-- meta {"num_joins":6,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_2.raceid, 
  drivers_1.driverref, 
  count(
    races_2.round), 
  constructor_results_1.raceid, 
  races_3.year, 
  constructor_results_1.date, 
  races_3.raceid, 
  constructor_results_1.points, 
  races_2.time
from 
  drivers as drivers_1
        inner join constructor_results as constructor_results_1
        on (drivers_1.driverid = constructor_results_1.constructorresultsid )
      inner join standings as standings_1
          inner join races as races_1
          on (standings_1.driverstandingsid = races_1.raceid )
        inner join races as races_2
          inner join races as races_3
          on (races_2.raceid = races_3.raceid )
        on (standings_1.driverstandingsid = races_3.raceid )
      on (drivers_1.driverid = races_1.raceid )
    inner join constructor_results as constructor_results_2
    on (races_1.raceid = constructor_results_2.constructorresultsid )
where standings_1.date < races_1.date
group by constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid, constructor_results_2.raceid, drivers_1.driverref, races_2.time, races_3.raceid, races_3.year
limit 35;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.name, 
  count(*)
from 
  constructors as constructors_1
where constructors_1.constructorid > constructors_1.constructorid
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 15;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.points
from 
  constructor_results as constructor_results_1
    inner join constructor_standings as constructor_standings_1
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where constructor_results_1.constructorid is not NULL
limit 12;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref, 
  circuits_1.lng, 
  standings_1.position, 
  constructor_results_1.constructorresultsid, 
  standings_1.driverid, 
  constructor_results_1.points
from 
  standings as standings_1
    inner join circuits as circuits_1
      inner join constructor_results as constructor_results_1
      on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
    on (standings_1.driverstandingsid = circuits_1.circuitid )
where constructor_results_1.constructorid > constructor_results_1.raceid
limit 20;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 35;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  max(
    constructor_results_1.raceid), 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.date
limit 18;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
limit 41;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 27;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid < constructor_results_1.constructorid
limit 11;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid <= constructor_standings_1.wins
limit 28;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.date, 
  drivers_1.driverref, 
  drivers_1.surname, 
  drivers_1.dob, 
  standings_1.driverid, 
  drivers_1.driverid, 
  max(
    standings_1.points), 
  standings_1.points
from 
  drivers as drivers_1
    inner join standings as standings_1
    on (drivers_1.driverid = standings_1.driverstandingsid )
where drivers_1.driverid is not NULL
group by drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.surname, standings_1.date, standings_1.driverid, standings_1.points
limit 26;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.raceid, 
  races_1.round, 
  results_1.driverid, 
  results_1.positionorder
from 
  results as results_1
    inner join races as races_1
    on (results_1.resultid = races_1.raceid )
where results_1.constructorid is not NULL
limit 18;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructors_1.constructorid), 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  count(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.constructorid >= constructors_1.constructorid
group by constructors_1.constructorid, constructors_1.nationality
limit 41;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  sum(
    constructor_results_1.points), 
  constructor_results_1.date, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid <= constructor_results_1.constructorid
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 19;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 28;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.qualifyid
from 
  results as results_1
    inner join qualifying as qualifying_1
    on (results_1.resultid = qualifying_1.qualifyid )
where results_1.date <= qualifying_1.date
limit 34;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  qualifying_1.qualifyid, 
  qualifying_1.number, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
limit 15;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitid, 
  sum(
    circuits_1.lat), 
  circuits_1.country, 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
group by circuits_1.circuitid, circuits_1.country, circuits_1.location
limit 27;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.driverid, 
  results_1.raceid, 
  avg(
    results_1.laps), 
  results_1.positionorder, 
  results_1.grid
from 
  results as results_1
where results_1.date < results_1.date
group by results_1.driverid, results_1.grid, results_1.positionorder, results_1.raceid
limit 23;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
    inner join standings as standings_1
        inner join constructor_results as constructor_results_2
        on (standings_1.driverstandingsid = constructor_results_2.constructorresultsid )
      inner join constructor_standings as constructor_standings_1
        inner join races as races_1
        on (constructor_standings_1.constructorstandingsid = races_1.raceid )
      on (constructor_results_2.constructorresultsid = constructor_standings_1.constructorstandingsid )
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where standings_1.position is not NULL
group by constructor_results_1.date
limit 7;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  constructor_results_1.raceid, 
  drivers_1.code, 
  avg(
    constructor_results_1.points), 
  drivers_1.driverid, 
  drivers_1.nationality
from 
  drivers as drivers_1
    inner join constructor_results as constructor_results_1
    on (drivers_1.driverid = constructor_results_1.constructorresultsid )
where constructor_results_1.raceid is not NULL
group by constructor_results_1.raceid, drivers_1.code, drivers_1.driverid, drivers_1.nationality
limit 14;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins, 
  sum(
    results_1.statusid), 
  constructor_standings_1.raceid, 
  races_1.year, 
  constructors_1.constructorid
from 
  constructors as constructors_1
        inner join results as results_1
        on (constructors_1.constructorid = results_1.resultid )
      inner join races as races_1
      on (results_1.resultid = races_1.raceid )
    inner join constructor_standings as constructor_standings_1
    on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
where races_1.time is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.raceid, constructor_standings_1.wins, constructors_1.constructorid, races_1.year
limit 29;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    results_1.date), 
  count(
    results_1.points), 
  avg(
    results_1.position), 
  avg(
    results_1.milliseconds)
from 
  results as results_1
where results_1.milliseconds is not NULL
limit 17;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.positionorder, 
  results_1.driverid
from 
  results as results_1
where results_1.date < results_1.date
limit 26;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.points
from 
  standings as standings_1
    inner join constructors as constructors_1
    on (standings_1.driverstandingsid = constructors_1.constructorid )
where standings_1.driverid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid, 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.raceid < qualifying_1.driverid
limit 37;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
limit 9;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.qualifyid, 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
limit 23;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid, 
  qualifying_1.qualifyid, 
  standings_1.raceid
from 
  qualifying as qualifying_1
    inner join standings as standings_1
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where standings_1.points > standings_1.points
limit 21;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
    inner join constructor_standings as constructor_standings_2
    on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
where constructor_standings_2.points is not NULL
limit 6;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid
from 
  races as races_1
    inner join constructor_results as constructor_results_1
          inner join drivers as drivers_1
          on (constructor_results_1.constructorresultsid = drivers_1.driverid )
        inner join constructors as constructors_1
        on (drivers_1.driverid = constructors_1.constructorid )
      inner join standings as standings_1
      on (drivers_1.driverid = standings_1.driverstandingsid )
    on (races_1.raceid = constructors_1.constructorid )
where standings_1.points >= constructor_results_1.points
limit 19;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.statusid, 
  results_1.points
from 
  results as results_1
where results_1.driverid is not NULL
limit 10;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.nationality, 
  drivers_1.dob, 
  drivers_1.code, 
  drivers_1.forename, 
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
limit 23;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.forename, 
  drivers_1.surname, 
  drivers_1.code, 
  min(
    drivers_1.dob), 
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.nationality <= drivers_1.surname
group by drivers_1.code, drivers_1.dob, drivers_1.forename, drivers_1.surname
limit 18;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.points, 
  standings_1.position
from 
  standings as standings_1
where standings_1.points is not NULL
limit 32;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    circuits_1.lng), 
  constructors_1.name, 
  standings_1.position
from 
  constructors as constructors_1
    inner join standings as standings_1
      inner join circuits as circuits_1
      on (standings_1.driverstandingsid = circuits_1.circuitid )
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where constructors_1.nationality is not NULL
group by constructors_1.name, standings_1.position
limit 4;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    circuits_1.circuitid), 
  circuits_1.circuitid, 
  circuits_2.lng, 
  sum(
    circuits_1.lat), 
  circuits_2.circuitid, 
  sum(
    circuits_1.alt), 
  circuits_2.name, 
  circuits_2.circuitref, 
  circuits_1.circuitref
from 
  circuits as circuits_1
    inner join circuits as circuits_2
    on (circuits_1.circuitid = circuits_2.circuitid )
where circuits_2.location is not NULL
group by circuits_1.circuitid, circuits_1.circuitref, circuits_2.circuitid, circuits_2.circuitref, circuits_2.lng, circuits_2.name
limit 42;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructors_1.constructorid), 
  constructors_1.constructorref, 
  sum(
    constructors_1.constructorid), 
  constructors_1.constructorid, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name
limit 31;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.raceid, 
  max(
    qualifying_1.raceid), 
  constructor_results_1.constructorid, 
  max(
    constructor_results_2.date), 
  constructor_results_2.raceid, 
  qualifying_1.qualifyid
from 
  constructor_results as constructor_results_1
    inner join constructor_results as constructor_results_2
      inner join qualifying as qualifying_1
      on (constructor_results_2.constructorresultsid = qualifying_1.qualifyid )
    on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.constructorid, constructor_results_2.raceid, qualifying_1.qualifyid, qualifying_1.raceid
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
limit 32;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position, 
  standings_1.date
from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where standings_1.driverstandingsid is not NULL
limit 5;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.position, 
  qualifying_1.driverid, 
  qualifying_1.date, 
  qualifying_1.constructorid, 
  max(
    qualifying_1.date)
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.position
limit 40;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.date
from 
  standings as standings_1
where standings_1.position is not NULL
limit 16;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    qualifying_1.date), 
  qualifying_1.constructorid, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
group by qualifying_1.constructorid, qualifying_1.raceid
limit 21;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.milliseconds
from 
  results as results_1
where results_1.points is not NULL
limit 12;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
    inner join circuits as circuits_1
      inner join qualifying as qualifying_1
      on (circuits_1.circuitid = qualifying_1.qualifyid )
    on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
where constructor_standings_1.raceid <= qualifying_1.position
limit 17;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  results_1.date, 
  min(
    results_1.positionorder)
from 
  constructor_standings as constructor_standings_1
    inner join results as results_1
    on (constructor_standings_1.constructorstandingsid = results_1.resultid )
where constructor_standings_1.date > results_1.date
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.wins, results_1.date
limit 39;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date, 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
limit 30;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.points, 
  min(
    constructor_standings_1.raceid), 
  count(
    constructor_standings_1.date), 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
group by constructor_standings_1.date, constructor_standings_1.points
limit 29;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.driverid, 
  results_1.raceid, 
  results_1.milliseconds, 
  avg(
    results_1.number), 
  results_1.resultid, 
  results_1.positionorder, 
  results_1.constructorid, 
  results_1.date
from 
  results as results_1
where results_1.laps > results_1.constructorid
group by results_1.constructorid, results_1.date, results_1.driverid, results_1.milliseconds, results_1.positionorder, results_1.raceid, results_1.resultid
limit 20;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name, 
  circuits_1.country, 
  circuits_1.circuitref, 
  circuits_1.lng, 
  sum(
    circuits_1.circuitid), 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.location is not NULL
group by circuits_1.circuitref, circuits_1.country, circuits_1.lng, circuits_1.location, circuits_1.name
limit 31;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    constructor_results_1.raceid)
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 22;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    constructors_1.constructorid), 
  constructors_1.nationality, 
  max(
    constructors_1.constructorid), 
  count(
    constructors_1.nationality), 
  constructors_1.constructorref, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 27;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    standings_1.date), 
  standings_1.points
from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where standings_1.date is not NULL
group by standings_1.points
limit 20;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select distinct 
  standings_2.wins, 
  standings_1.points, 
  standings_2.raceid
from 
  standings as standings_1
    inner join standings as standings_2
    on (standings_1.driverstandingsid = standings_2.driverstandingsid )
where standings_2.date > standings_1.date
limit 17;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid, 
  races_1.time, 
  races_1.raceid, 
  sum(
    races_1.year)
from 
  races as races_1
where races_1.circuitid is not NULL
group by races_1.circuitid, races_1.raceid, races_1.time
limit 35;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  count(*), 
  constructors_1.name
from 
  constructors as constructors_1
    inner join constructor_standings as constructor_standings_1
      inner join constructor_results as constructor_results_1
      on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
    on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
where constructors_1.name is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.raceid, constructors_1.name
limit 29;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    standings_1.points), 
  standings_1.position, 
  standings_1.raceid
from 
  races as races_1
    inner join standings as standings_1
    on (races_1.raceid = standings_1.driverstandingsid )
where standings_1.raceid is not NULL
group by standings_1.position, standings_1.raceid
limit 20;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  circuits_1.circuitid, 
  max(
    constructor_results_1.date), 
  circuits_1.lat, 
  circuits_1.alt, 
  circuits_1.country
from 
  constructor_results as constructor_results_1
    inner join circuits as circuits_1
    on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
where constructor_results_1.raceid is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.country, circuits_1.lat, constructor_results_1.points
limit 26;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.position < qualifying_1.driverid
limit 26;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.points, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
limit 32;
-- meta {"num_joins":6,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_2.country, 
  constructor_results_2.constructorresultsid, 
  constructor_results_1.constructorid
from 
  constructors as constructors_1
      inner join constructor_results as constructor_results_1
      on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
    inner join drivers as drivers_1
        inner join circuits as circuits_1
        on (drivers_1.driverid = circuits_1.circuitid )
      inner join constructor_results as constructor_results_2
          inner join qualifying as qualifying_1
          on (constructor_results_2.constructorresultsid = qualifying_1.qualifyid )
        inner join circuits as circuits_2
        on (qualifying_1.qualifyid = circuits_2.circuitid )
      on (circuits_1.circuitid = constructor_results_2.constructorresultsid )
    on (constructors_1.constructorid = constructor_results_2.constructorresultsid )
where constructor_results_2.constructorid is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid
from 
  standings as standings_1
    inner join constructors as constructors_1
    on (standings_1.driverstandingsid = constructors_1.constructorid )
where constructors_1.constructorid is not NULL
limit 3;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.date, 
  circuits_1.alt, 
  results_1.fastestlap, 
  circuits_1.name, 
  circuits_1.circuitid, 
  min(
    results_1.date), 
  circuits_1.lng, 
  results_1.driverid
from 
  results as results_1
    inner join circuits as circuits_1
    on (results_1.resultid = circuits_1.circuitid )
where results_1.resultid is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.lng, circuits_1.name, results_1.date, results_1.driverid, results_1.fastestlap
limit 29;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.nationality, 
  max(
    constructors_1.constructorid), 
  drivers_1.code
from 
  constructors as constructors_1
    inner join drivers as drivers_1
    on (constructors_1.constructorid = drivers_1.driverid )
where constructors_1.constructorid is not NULL
group by drivers_1.code, drivers_1.nationality
limit 16;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.milliseconds
from 
  circuits as circuits_1
    inner join results as results_1
    on (circuits_1.circuitid = results_1.resultid )
where circuits_1.circuitref >= circuits_1.location
limit 23;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
group by drivers_1.code
limit 34;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    qualifying_1.date), 
  results_1.positionorder, 
  qualifying_2.qualifyid
from 
  results as results_1
    inner join qualifying as qualifying_1
      inner join qualifying as qualifying_2
      on (qualifying_1.qualifyid = qualifying_2.qualifyid )
    on (results_1.resultid = qualifying_1.qualifyid )
where qualifying_2.constructorid is not NULL
group by qualifying_2.qualifyid, results_1.positionorder
limit 15;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    circuits_1.lng), 
  circuits_1.lat, 
  races_1.round, 
  races_1.date, 
  standings_1.position, 
  circuits_1.circuitid, 
  standings_1.wins
from 
  races as races_1
    inner join standings as standings_1
      inner join circuits as circuits_1
      on (standings_1.driverstandingsid = circuits_1.circuitid )
    on (races_1.raceid = standings_1.driverstandingsid )
where circuits_1.lng is not NULL
group by circuits_1.circuitid, circuits_1.lat, races_1.date, races_1.round, standings_1.position, standings_1.wins
limit 10;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.raceid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.position, 
  qualifying_1.date, 
  qualifying_1.constructorid, 
  sum(
    constructor_standings_1.points)
from 
  constructor_standings as constructor_standings_1
      inner join races as races_1
      on (constructor_standings_1.constructorstandingsid = races_1.raceid )
    inner join qualifying as qualifying_1
    on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
where races_1.date > qualifying_1.date
group by constructor_standings_1.position, constructor_standings_1.raceid, qualifying_1.constructorid, qualifying_1.date, qualifying_1.raceid
limit 3;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.raceid, 
  min(
    results_1.rank), 
  drivers_1.nationality, 
  results_1.rank, 
  results_1.fastestlap
from 
  drivers as drivers_1
    inner join results as results_1
    on (drivers_1.driverid = results_1.resultid )
where drivers_1.dob is not NULL
group by drivers_1.nationality, results_1.fastestlap, results_1.raceid, results_1.rank
limit 32;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.milliseconds, 
  results_1.number, 
  results_1.laps, 
  results_1.resultid
from 
  results as results_1
where results_1.positionorder > results_1.laps
limit 9;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructor_results_1.date), 
  circuits_1.alt, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
    inner join circuits as circuits_1
    on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
where circuits_1.circuitid is not NULL
group by circuits_1.alt, constructor_results_1.raceid
limit 32;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    circuits_1.alt), 
  circuits_1.name, 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.name is not NULL
group by circuits_1.alt, circuits_1.name
limit 10;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  constructors_1.constructorref
from 
  constructor_results as constructor_results_1
    inner join constructors as constructors_1
    on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
where constructors_1.constructorref is not NULL
limit 10;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.positionorder
from 
  constructor_standings as constructor_standings_1
    inner join results as results_1
    on (constructor_standings_1.constructorstandingsid = results_1.resultid )
where constructor_standings_1.constructorstandingsid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    standings_1.points), 
  standings_1.driverid, 
  standings_1.date, 
  max(
    standings_1.date), 
  count(*), 
  standings_1.position, 
  standings_1.points
from 
  standings as standings_1
where standings_1.driverid = standings_1.wins
group by standings_1.date, standings_1.driverid, standings_1.points, standings_1.position
limit 28;
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.rank, 
  min(
    qualifying_1.position), 
  circuits_1.lng, 
  circuits_2.country, 
  circuits_2.circuitid, 
  count(*), 
  circuits_2.name, 
  circuits_2.lng
from 
  qualifying as qualifying_1
      inner join results as results_1
        inner join circuits as circuits_1
        on (results_1.resultid = circuits_1.circuitid )
      on (qualifying_1.qualifyid = results_1.resultid )
    inner join circuits as circuits_2
    on (circuits_1.circuitid = circuits_2.circuitid )
where results_1.date > qualifying_1.date
group by circuits_1.lng, circuits_2.circuitid, circuits_2.country, circuits_2.lng, circuits_2.name, results_1.rank
limit 21;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
limit 7;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  standings_1.points, 
  max(
    standings_1.wins), 
  avg(
    constructor_standings_1.points)
from 
  constructor_standings as constructor_standings_1
    inner join standings as standings_1
    on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
where standings_1.position = standings_1.raceid
group by standings_1.points, standings_1.raceid
limit 21;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.milliseconds, 
  standings_1.raceid, 
  max(
    standings_1.date), 
  constructors_1.constructorid, 
  constructor_standings_1.wins, 
  results_1.rank, 
  constructors_1.constructorref, 
  standings_1.driverid
from 
  results as results_1
    inner join constructor_standings as constructor_standings_1
      inner join constructors as constructors_1
        inner join standings as standings_1
        on (constructors_1.constructorid = standings_1.driverstandingsid )
      on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
    on (results_1.resultid = standings_1.driverstandingsid )
where constructors_1.constructorref > constructors_1.name
group by constructor_standings_1.wins, constructors_1.constructorid, constructors_1.constructorref, results_1.milliseconds, results_1.rank, standings_1.driverid, standings_1.raceid
limit 25;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.constructorid, 
  constructor_results_1.points, 
  results_1.position, 
  constructors_2.name, 
  avg(
    results_1.statusid), 
  constructors_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructors_2.constructorref
from 
  constructors as constructors_1
    inner join constructor_results as constructor_results_1
      inner join results as results_1
        inner join constructors as constructors_2
        on (results_1.resultid = constructors_2.constructorid )
      on (constructor_results_1.constructorresultsid = constructors_2.constructorid )
    on (constructors_1.constructorid = results_1.resultid )
where constructors_1.constructorid is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.points, constructors_1.constructorid, constructors_2.constructorref, constructors_2.name, results_1.constructorid, results_1.position
limit 29;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.dob, 
  drivers_1.driverid, 
  drivers_1.forename, 
  drivers_1.code, 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.code is not NULL
limit 24;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 2;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.points, 
  results_1.rank, 
  sum(
    races_1.raceid)
from 
  races as races_1
    inner join constructor_standings as constructor_standings_1
      inner join results as results_1
      on (constructor_standings_1.constructorstandingsid = results_1.resultid )
    on (races_1.raceid = constructor_standings_1.constructorstandingsid )
where races_1.name is not NULL
group by constructor_standings_1.points, results_1.rank
limit 18;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.name
from 
  constructor_standings as constructor_standings_1
    inner join races as races_1
    on (constructor_standings_1.constructorstandingsid = races_1.raceid )
where constructor_standings_1.points is not NULL
limit 29;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.round, 
  races_1.raceid, 
  races_1.year
from 
  races as races_1
where races_1.year is not NULL
limit 41;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid
from 
  races as races_1
where races_1.raceid is not NULL
limit 30;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref, 
  constructors_1.constructorid, 
  constructor_results_1.constructorid, 
  constructors_1.nationality
from 
  constructors as constructors_1
      inner join drivers as drivers_1
      on (constructors_1.constructorid = drivers_1.driverid )
    inner join constructor_results as constructor_results_1
    on (drivers_1.driverid = constructor_results_1.constructorresultsid )
where drivers_1.dob is not NULL
limit 17;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_2.raceid
from 
  constructor_standings as constructor_standings_1
    inner join constructor_standings as constructor_standings_2
      inner join drivers as drivers_1
      on (constructor_standings_2.constructorstandingsid = drivers_1.driverid )
    on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
where constructor_standings_1.date <= drivers_1.dob
limit 41;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    results_1.raceid), 
  results_1.constructorid, 
  results_1.milliseconds, 
  standings_1.date, 
  results_1.raceid, 
  results_1.number, 
  results_1.grid, 
  max(
    results_1.date), 
  min(
    results_1.raceid)
from 
  standings as standings_1
    inner join results as results_1
    on (standings_1.driverstandingsid = results_1.resultid )
where standings_1.driverid is not NULL
group by results_1.constructorid, results_1.grid, results_1.milliseconds, results_1.number, results_1.raceid, standings_1.date
limit 34;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  constructors_1.constructorid, 
  standings_1.points
from 
  standings as standings_1
    inner join constructors as constructors_1
    on (standings_1.driverstandingsid = constructors_1.constructorid )
where standings_1.raceid is not NULL
limit 5;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
limit 22;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.position, 
  constructor_standings_1.points
from 
  constructors as constructors_1
      inner join circuits as circuits_1
      on (constructors_1.constructorid = circuits_1.circuitid )
    inner join constructor_standings as constructor_standings_1
      inner join constructor_standings as constructor_standings_2
      on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
    on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
where circuits_1.name is not NULL
limit 30;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    drivers_1.dob), 
  drivers_1.dob, 
  drivers_1.driverid, 
  drivers_1.code, 
  min(
    drivers_1.driverid), 
  drivers_1.surname, 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.nationality, drivers_1.surname
limit 36;
-- meta {"num_joins":4,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    results_2.date), 
  results_1.position, 
  qualifying_1.date, 
  results_2.points, 
  max(
    qualifying_1.date), 
  results_2.raceid, 
  qualifying_1.constructorid, 
  min(
    results_3.number), 
  results_3.position, 
  qualifying_2.number, 
  sum(
    results_2.points)
from 
  qualifying as qualifying_1
    inner join results as results_1
        inner join results as results_2
        on (results_1.resultid = results_2.resultid )
      inner join qualifying as qualifying_2
        inner join results as results_3
        on (qualifying_2.qualifyid = results_3.resultid )
      on (results_1.resultid = results_3.resultid )
    on (qualifying_1.qualifyid = results_3.resultid )
where results_1.rank <= results_2.number
group by qualifying_1.constructorid, qualifying_1.date, qualifying_2.number, results_1.position, results_2.points, results_2.raceid, results_3.position
limit 25;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitid, 
  circuits_1.country, 
  circuits_1.name, 
  races_1.circuitid, 
  races_1.year
from 
  circuits as circuits_1
    inner join races as races_1
    on (circuits_1.circuitid = races_1.raceid )
where circuits_1.country is not NULL
limit 42;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location
from 
  drivers as drivers_1
      inner join circuits as circuits_1
      on (drivers_1.driverid = circuits_1.circuitid )
    inner join races as races_1
    on (circuits_1.circuitid = races_1.raceid )
where drivers_1.dob is not NULL
limit 9;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.points
from 
  standings as standings_1
where standings_1.points is not NULL
limit 33;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position, 
  standings_1.driverid, 
  standings_1.date, 
  standings_1.points, 
  sum(
    standings_1.points), 
  standings_1.raceid, 
  standings_1.wins, 
  count(
    standings_1.driverstandingsid), 
  min(
    standings_1.date)
from 
  standings as standings_1
where standings_1.position is not NULL
group by standings_1.date, standings_1.driverid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
limit 37;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.points, 
  standings_1.raceid, 
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.points < standings_1.points
limit 13;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number, 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 27;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 6;
-- meta {"num_joins":4,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructor_standings_1.date), 
  min(
    qualifying_2.date), 
  min(
    constructor_standings_1.points), 
  qualifying_2.position, 
  qualifying_1.driverid, 
  constructor_results_1.constructorresultsid, 
  races_1.time, 
  constructor_results_1.constructorid, 
  qualifying_1.position, 
  races_1.name, 
  constructor_standings_1.points
from 
  constructor_results as constructor_results_1
    inner join qualifying as qualifying_1
          inner join constructor_standings as constructor_standings_1
          on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
        inner join qualifying as qualifying_2
        on (qualifying_1.qualifyid = qualifying_2.qualifyid )
      inner join races as races_1
      on (qualifying_1.qualifyid = races_1.raceid )
    on (constructor_results_1.constructorresultsid = races_1.raceid )
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_standings_1.points, qualifying_1.driverid, qualifying_1.position, qualifying_2.position, races_1.name, races_1.time
limit 24;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.raceid, 
  races_1.date, 
  races_1.time
from 
  races as races_1
where races_1.time <= races_1.name
limit 24;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number, 
  qualifying_1.driverid, 
  qualifying_1.position, 
  count(*), 
  qualifying_1.qualifyid, 
  qualifying_1.date, 
  count(
    qualifying_1.position)
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
group by qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid
limit 13;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
      inner join constructor_results as constructor_results_2
      on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
    inner join races as races_1
    on (constructor_results_2.constructorresultsid = races_1.raceid )
where races_1.date is not NULL
limit 36;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
limit 24;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  qualifying_1.number, 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
limit 6;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverid, 
  drivers_1.surname, 
  drivers_1.nationality, 
  races_1.year
from 
  drivers as drivers_1
    inner join races as races_1
    on (drivers_1.driverid = races_1.raceid )
where races_1.round < drivers_1.driverid
limit 16;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lat, 
  circuits_1.circuitid, 
  circuits_1.lng, 
  max(
    circuits_1.lat), 
  circuits_1.circuitref, 
  circuits_1.country, 
  circuits_1.alt, 
  circuits_1.name, 
  max(
    circuits_1.alt), 
  sum(
    circuits_1.alt), 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.location, circuits_1.name
limit 35;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.points, 
  standings_1.driverstandingsid, 
  standings_1.position
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
limit 5;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  drivers_1.nationality, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
    inner join drivers as drivers_1
    on (constructor_results_1.constructorresultsid = drivers_1.driverid )
where drivers_1.dob <= constructor_results_1.date
limit 8;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.milliseconds, 
  results_1.resultid, 
  races_1.circuitid
from 
  circuits as circuits_1
      inner join results as results_1
        inner join races as races_1
        on (results_1.resultid = races_1.raceid )
      on (circuits_1.circuitid = results_1.resultid )
    inner join drivers as drivers_1
    on (circuits_1.circuitid = drivers_1.driverid )
where results_1.grid > races_1.circuitid
limit 23;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 20;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  constructor_standings_1.date
from 
  constructor_results as constructor_results_1
    inner join circuits as circuits_1
      inner join constructor_standings as constructor_standings_1
      on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
    on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
where circuits_1.country is not NULL
limit 36;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  min(
    constructor_results_1.constructorid)
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date
limit 8;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructors_1.constructorid, 
  constructor_results_1.raceid
from 
  constructors as constructors_1
    inner join constructor_results as constructor_results_1
      inner join qualifying as qualifying_1
      on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
    on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
where qualifying_1.qualifyid < constructor_results_1.raceid
limit 1;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins, 
  min(
    results_1.date), 
  results_1.date, 
  results_1.number
from 
  standings as standings_1
    inner join standings as standings_2
      inner join constructor_standings as constructor_standings_1
        inner join results as results_1
        on (constructor_standings_1.constructorstandingsid = results_1.resultid )
      on (standings_2.driverstandingsid = results_1.resultid )
    on (standings_1.driverstandingsid = standings_2.driverstandingsid )
where constructor_standings_1.position >= standings_2.position
group by constructor_standings_1.wins, results_1.date, results_1.number
limit 25;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
      inner join qualifying as qualifying_1
        inner join circuits as circuits_1
        on (qualifying_1.qualifyid = circuits_1.circuitid )
      on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
    inner join constructors as constructors_1
    on (circuits_1.circuitid = constructors_1.constructorid )
where constructor_results_1.constructorid is not NULL
limit 9;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  count(*), 
  max(
    constructor_results_1.date), 
  max(
    constructor_results_1.date), 
  constructor_results_1.raceid, 
  min(
    constructor_results_1.date), 
  min(
    constructor_results_1.date)
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 2;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.name, 
  circuits_1.country, 
  min(
    circuits_1.alt), 
  circuits_1.location, 
  constructors_1.nationality, 
  sum(
    circuits_1.lng), 
  min(
    circuits_1.alt)
from 
  circuits as circuits_1
    inner join constructors as constructors_1
    on (circuits_1.circuitid = constructors_1.constructorid )
where circuits_1.name is not NULL
group by circuits_1.country, circuits_1.location, constructors_1.constructorid, constructors_1.name, constructors_1.nationality
limit 35;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.constructorref, 
  count(
    constructors_1.nationality), 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 29;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    results_1.points), 
  min(
    results_1.date)
from 
  results as results_1
where results_1.date is not NULL
limit 28;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid, 
  max(
    qualifying_1.date), 
  qualifying_1.number, 
  qualifying_1.raceid, 
  count(
    qualifying_1.driverid), 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.number, qualifying_1.raceid
limit 39;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.time, 
  qualifying_1.qualifyid
from 
  races as races_1
    inner join qualifying as qualifying_1
      inner join qualifying as qualifying_2
      on (qualifying_1.qualifyid = qualifying_2.qualifyid )
    on (races_1.raceid = qualifying_2.qualifyid )
where races_1.date is not NULL
limit 42;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 40;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points, 
  max(
    constructor_standings_1.date), 
  constructor_standings_1.wins, 
  constructor_standings_1.raceid, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 37;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.date, 
  standings_1.driverid, 
  standings_1.wins
from 
  standings as standings_1
where standings_1.raceid = standings_1.position
limit 20;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructor_standings_1.points)
from 
  constructor_standings as constructor_standings_1
    inner join constructors as constructors_1
    on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
where constructors_1.name is not NULL
limit 11;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.points, 
  results_1.laps, 
  results_1.statusid
from 
  results as results_1
where results_1.number is not NULL
limit 22;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.dob, 
  drivers_1.driverid, 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
limit 29;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date
from 
  constructor_results as constructor_results_1
    inner join constructor_standings as constructor_standings_1
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where constructor_results_1.raceid is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year, 
  races_1.round, 
  max(
    races_1.date), 
  races_1.name, 
  races_1.circuitid, 
  avg(
    races_1.raceid), 
  races_1.raceid
from 
  races as races_1
where races_1.name is not NULL
group by races_1.circuitid, races_1.name, races_1.raceid, races_1.round, races_1.year
limit 11;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.round, 
  races_1.name, 
  races_1.raceid, 
  races_1.time
from 
  races as races_1
where races_1.date is not NULL
limit 13;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid, 
  min(
    qualifying_1.date)
from 
  qualifying as qualifying_1
where qualifying_1.date >= qualifying_1.date
group by qualifying_1.driverid
limit 36;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    results_1.laps), 
  results_1.grid, 
  results_1.statusid, 
  results_1.position, 
  results_1.fastestlap, 
  avg(
    results_1.raceid), 
  results_1.raceid, 
  results_1.points
from 
  results as results_1
where results_1.date < results_1.date
group by results_1.fastestlap, results_1.grid, results_1.points, results_1.position, results_1.raceid, results_1.statusid
limit 40;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructor_results_1.date), 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  qualifying_1.qualifyid, 
  sum(
    results_1.resultid)
from 
  results as results_1
    inner join qualifying as qualifying_1
      inner join constructor_results as constructor_results_1
      on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
    on (results_1.resultid = qualifying_1.qualifyid )
where results_1.constructorid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, qualifying_1.qualifyid
limit 41;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.constructorid, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
limit 12;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverid, 
  drivers_1.dob, 
  races_1.name, 
  min(
    results_1.milliseconds)
from 
  races as races_1
    inner join drivers as drivers_1
      inner join results as results_1
      on (drivers_1.driverid = results_1.resultid )
    on (races_1.raceid = results_1.resultid )
where results_1.resultid <= races_1.round
group by drivers_1.dob, drivers_1.driverid, races_1.name
limit 3;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  circuits_1.lat
from 
  constructors as constructors_1
      inner join circuits as circuits_1
      on (constructors_1.constructorid = circuits_1.circuitid )
    inner join constructor_results as constructor_results_1
      inner join constructor_results as constructor_results_2
      on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
    on (constructors_1.constructorid = constructor_results_2.constructorresultsid )
where constructor_results_2.constructorid is not NULL
limit 41;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref, 
  constructors_1.constructorid
from 
  circuits as circuits_1
    inner join constructors as constructors_1
    on (circuits_1.circuitid = constructors_1.constructorid )
where constructors_1.name is not NULL
limit 35;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorstandingsid, 
  max(
    constructor_standings_1.date), 
  min(
    constructor_standings_1.points), 
  count(*), 
  constructor_standings_1.raceid, 
  max(
    constructor_standings_1.points), 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.raceid
limit 14;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref
from 
  constructors as constructors_1
    inner join circuits as circuits_1
    on (constructors_1.constructorid = circuits_1.circuitid )
where circuits_1.lat is not NULL
limit 21;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    races_1.year), 
  races_1.round, 
  races_1.raceid, 
  races_1.year
from 
  races as races_1
where races_1.round is not NULL
group by races_1.raceid, races_1.round, races_1.year
limit 18;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructor_results_1.raceid), 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  max(
    constructor_results_1.points)
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid
limit 23;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    constructor_results_1.raceid), 
  max(
    constructor_results_1.date), 
  constructor_standings_1.raceid, 
  constructor_standings_1.date, 
  constructor_results_1.raceid, 
  sum(
    constructor_standings_1.position), 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
    inner join constructor_results as constructor_results_1
    on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
where constructor_results_1.raceid is not NULL
group by constructor_results_1.raceid, constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.raceid
limit 7;
-- meta {"num_joins":5,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructor_standings_3.date), 
  constructor_standings_1.position, 
  max(
    constructor_standings_4.raceid)
from 
  constructor_standings as constructor_standings_1
      inner join constructor_standings as constructor_standings_2
      on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
    inner join constructor_standings as constructor_standings_3
        inner join circuits as circuits_1
        on (constructor_standings_3.constructorstandingsid = circuits_1.circuitid )
      inner join constructor_standings as constructor_standings_4
        inner join constructors as constructors_1
        on (constructor_standings_4.constructorstandingsid = constructors_1.constructorid )
      on (constructor_standings_3.constructorstandingsid = constructors_1.constructorid )
    on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
where constructor_standings_2.wins is not NULL
group by constructor_standings_1.position
limit 12;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  standings_1.driverid, 
  standings_1.position, 
  standings_1.driverstandingsid, 
  standings_1.points, 
  standings_1.date
from 
  standings as standings_1
where standings_1.points < standings_1.points
limit 35;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date, 
  standings_1.points, 
  races_1.name, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.raceid, 
  races_1.round, 
  avg(
    standings_1.points)
from 
  races as races_1
    inner join constructor_results as constructor_results_1
        inner join constructor_standings as constructor_standings_1
        on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
      inner join standings as standings_1
      on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
    on (races_1.raceid = standings_1.driverstandingsid )
where races_1.name > races_1.time
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.raceid, races_1.name, races_1.round, standings_1.points
limit 13;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructor_results_1.constructorid), 
  constructor_results_1.date, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.date
limit 19;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.dob
from 
  standings as standings_1
      inner join drivers as drivers_1
      on (standings_1.driverstandingsid = drivers_1.driverid )
    inner join constructors as constructors_1
    on (drivers_1.driverid = constructors_1.constructorid )
where drivers_1.driverref is not NULL
limit 39;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.resultid
from 
  results as results_1
where results_1.date > results_1.date
limit 32;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.country, 
  avg(
    circuits_1.alt), 
  circuits_1.circuitid, 
  circuits_1.location, 
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.country is not NULL
group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.location
limit 7;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.raceid, 
  races_1.circuitid
from 
  races as races_1
where races_1.circuitid is not NULL
limit 30;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref, 
  constructor_standings_1.date, 
  circuits_1.lat, 
  circuits_1.location, 
  max(
    constructor_standings_1.date), 
  constructor_standings_1.position, 
  constructor_standings_1.points, 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.wins, 
  avg(
    constructor_standings_1.raceid), 
  circuits_1.country
from 
  constructor_standings as constructor_standings_1
    inner join circuits as circuits_1
    on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
where circuits_1.alt is not NULL
group by circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.location, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.wins
limit 26;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.resultid, 
  results_1.milliseconds
from 
  results as results_1
where results_1.fastestlap <= results_1.number
limit 32;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.surname, 
  drivers_1.driverref, 
  max(
    drivers_1.dob)
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
group by drivers_1.driverref, drivers_1.surname
limit 31;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.country
from 
  circuits as circuits_1
where circuits_1.location is not NULL
limit 15;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    drivers_1.dob), 
  qualifying_1.date, 
  drivers_1.nationality
from 
  qualifying as qualifying_1
    inner join races as races_1
        inner join circuits as circuits_1
        on (races_1.raceid = circuits_1.circuitid )
      inner join drivers as drivers_1
      on (circuits_1.circuitid = drivers_1.driverid )
    on (qualifying_1.qualifyid = races_1.raceid )
where circuits_1.lng <= circuits_1.lat
group by drivers_1.nationality, qualifying_1.date
limit 16;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  sum(
    constructor_results_1.points), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points
limit 26;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructors_1.nationality, 
  avg(
    constructors_1.constructorid), 
  constructors_1.constructorid, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 39;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref, 
  drivers_1.driverid, 
  drivers_1.nationality, 
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.forename is not NULL
limit 42;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
limit 30;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.raceid, 
  max(
    qualifying_1.date), 
  qualifying_1.position, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
group by qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 7;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_2.grid, 
  qualifying_1.position, 
  results_2.number
from 
  qualifying as qualifying_1
      inner join results as results_1
      on (qualifying_1.qualifyid = results_1.resultid )
    inner join results as results_2
    on (results_1.resultid = results_2.resultid )
where qualifying_1.date > results_1.date
limit 22;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.resultid
from 
  results as results_1
where results_1.laps is not NULL
limit 7;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins, 
  constructor_standings_1.raceid, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
limit 13;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructor_results_2.date
from 
  constructor_results as constructor_results_1
      inner join races as races_1
      on (constructor_results_1.constructorresultsid = races_1.raceid )
    inner join constructor_results as constructor_results_2
        inner join races as races_2
        on (constructor_results_2.constructorresultsid = races_2.raceid )
      inner join constructors as constructors_1
        inner join results as results_1
        on (constructors_1.constructorid = results_1.resultid )
      on (constructor_results_2.constructorresultsid = results_1.resultid )
    on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
where constructor_results_2.constructorresultsid is not NULL
limit 28;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverstandingsid, 
  standings_1.wins, 
  standings_1.raceid, 
  standings_1.date, 
  standings_1.driverid, 
  max(
    standings_1.driverstandingsid)
from 
  standings as standings_1
where standings_1.points <= standings_1.points
group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.raceid, standings_1.wins
limit 41;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverstandingsid, 
  avg(
    standings_1.points), 
  standings_1.position, 
  standings_1.driverid, 
  standings_1.points, 
  standings_1.date
from 
  standings as standings_1
where standings_1.date is not NULL
group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position
limit 26;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.grid, 
  results_1.resultid
from 
  circuits as circuits_1
    inner join results as results_1
    on (circuits_1.circuitid = results_1.resultid )
where circuits_1.lng = results_1.points
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.nationality, 
  drivers_1.code, 
  drivers_1.dob, 
  drivers_1.driverref, 
  max(
    drivers_1.dob), 
  drivers_1.surname, 
  sum(
    drivers_1.driverid)
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverref, drivers_1.nationality, drivers_1.surname
limit 8;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.date, 
  standings_1.wins, 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.points is not NULL
limit 5;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date
from 
  circuits as circuits_1
      inner join qualifying as qualifying_1
      on (circuits_1.circuitid = qualifying_1.qualifyid )
    inner join constructor_results as constructor_results_1
    on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
where qualifying_1.qualifyid is not NULL
limit 37;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid
from 
  standings as standings_1
where standings_1.date is not NULL
limit 22;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position, 
  constructor_results_1.points, 
  constructors_1.name, 
  constructors_1.constructorid, 
  standings_1.driverstandingsid, 
  qualifying_1.number, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
      inner join constructors as constructors_1
        inner join standings as standings_1
        on (constructors_1.constructorid = standings_1.driverstandingsid )
      on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
    inner join qualifying as qualifying_1
    on (standings_1.driverstandingsid = qualifying_1.qualifyid )
where standings_1.driverid is not NULL
limit 12;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 41;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    qualifying_1.number), 
  qualifying_1.constructorid, 
  max(
    qualifying_1.date), 
  qualifying_1.qualifyid, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.constructorid, qualifying_1.qualifyid, qualifying_1.raceid
limit 18;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.code, 
  drivers_1.forename, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
limit 7;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.constructorid, 
  constructor_standings_1.wins, 
  constructor_standings_1.raceid, 
  races_1.raceid, 
  races_1.round, 
  races_1.date, 
  qualifying_1.qualifyid, 
  constructor_standings_1.date, 
  races_1.name
from 
  races as races_1
      inner join constructor_standings as constructor_standings_1
      on (races_1.raceid = constructor_standings_1.constructorstandingsid )
    inner join qualifying as qualifying_1
    on (races_1.raceid = qualifying_1.qualifyid )
where qualifying_1.date < races_1.date
limit 14;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location, 
  drivers_1.nationality, 
  drivers_1.driverid, 
  drivers_1.driverref, 
  min(
    drivers_1.driverid), 
  circuits_1.circuitref, 
  circuits_1.lat, 
  max(
    drivers_1.dob)
from 
  drivers as drivers_1
    inner join circuits as circuits_1
    on (drivers_1.driverid = circuits_1.circuitid )
where drivers_1.surname is not NULL
group by circuits_1.circuitref, circuits_1.lat, circuits_1.location, drivers_1.driverid, drivers_1.driverref, drivers_1.nationality
limit 5;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid, 
  count(
    constructor_standings_1.position), 
  constructor_standings_1.date, 
  sum(
    constructor_standings_1.position)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.wins
limit 5;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt, 
  avg(
    circuits_1.lat), 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.lat <= circuits_1.alt
group by circuits_1.alt, circuits_1.lng
limit 42;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.date, 
  max(
    races_1.circuitid)
from 
  races as races_1
where races_1.round <= races_1.raceid
group by races_1.date
limit 34;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid, 
  standings_1.points, 
  standings_1.date, 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.date is not NULL
limit 31;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.number
from 
  races as races_1
    inner join results as results_1
    on (races_1.raceid = results_1.resultid )
where races_1.raceid is not NULL
limit 38;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.date < constructor_results_1.date
limit 22;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    qualifying_1.constructorid), 
  min(
    qualifying_1.qualifyid), 
  qualifying_1.number, 
  qualifying_1.qualifyid, 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
group by qualifying_1.date, qualifying_1.number, qualifying_1.qualifyid
limit 16;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  constructors_1.name, 
  max(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.name, constructors_1.nationality
limit 6;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
limit 18;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.surname, 
  drivers_1.forename, 
  drivers_1.code, 
  drivers_1.dob, 
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
limit 12;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select distinct 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
limit 37;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  races_1.round, 
  avg(
    races_1.round), 
  constructors_1.name, 
  max(
    races_1.date), 
  constructors_1.constructorid, 
  min(
    races_1.date), 
  races_1.raceid, 
  races_1.time, 
  races_1.year
from 
  constructors as constructors_1
    inner join races as races_1
    on (constructors_1.constructorid = races_1.raceid )
where races_1.year is not NULL
group by constructors_1.constructorid, constructors_1.name, constructors_1.nationality, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 35;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    standings_1.points), 
  standings_1.driverstandingsid, 
  constructors_1.nationality, 
  constructors_1.constructorref
from 
  standings as standings_1
    inner join constructors as constructors_1
    on (standings_1.driverstandingsid = constructors_1.constructorid )
where constructors_1.constructorref is not NULL
group by constructors_1.constructorref, constructors_1.nationality, standings_1.driverstandingsid
limit 23;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref, 
  max(
    standings_1.date), 
  races_1.date
from 
  races as races_1
      inner join drivers as drivers_1
      on (races_1.raceid = drivers_1.driverid )
    inner join standings as standings_1
    on (races_1.raceid = standings_1.driverstandingsid )
where races_1.raceid = standings_1.wins
group by drivers_1.driverref, races_1.date
limit 22;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.date
from 
  races as races_1
where races_1.year is not NULL
limit 37;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lat, 
  sum(
    circuits_1.alt), 
  circuits_1.lng, 
  circuits_1.name, 
  circuits_1.circuitref, 
  circuits_1.country, 
  count(*), 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.name
limit 31;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  max(
    standings_1.points), 
  drivers_1.driverref
from 
  drivers as drivers_1
    inner join standings as standings_1
    on (drivers_1.driverid = standings_1.driverstandingsid )
where standings_1.date is not NULL
group by drivers_1.driverref, standings_1.raceid
limit 8;
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.surname, 
  avg(
    constructor_standings_1.points), 
  constructor_standings_1.points, 
  drivers_1.dob, 
  max(
    constructor_standings_1.date), 
  drivers_1.driverid, 
  constructors_1.constructorref, 
  count(*), 
  constructors_1.constructorid
from 
  drivers as drivers_1
    inner join constructors as constructors_1
      inner join constructor_standings as constructor_standings_1
      on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
    on (drivers_1.driverid = constructors_1.constructorid )
where constructor_standings_1.date is not NULL
group by constructor_standings_1.points, constructors_1.constructorid, constructors_1.constructorref, drivers_1.dob, drivers_1.driverid, drivers_1.surname
limit 35;
-- meta {"num_joins":6,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.qualifyid
from 
  drivers as drivers_1
          inner join constructor_results as constructor_results_1
            inner join circuits as circuits_1
            on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
          on (drivers_1.driverid = circuits_1.circuitid )
        inner join drivers as drivers_2
        on (constructor_results_1.constructorresultsid = drivers_2.driverid )
      inner join results as results_1
        inner join qualifying as qualifying_1
        on (results_1.resultid = qualifying_1.qualifyid )
      on (constructor_results_1.constructorresultsid = results_1.resultid )
    inner join drivers as drivers_3
    on (drivers_1.driverid = drivers_3.driverid )
where drivers_2.driverid is not NULL
limit 15;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
limit 5;
-- meta {"num_joins":5,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    races_1.date), 
  races_1.date, 
  constructor_results_1.constructorid, 
  drivers_1.driverid, 
  circuits_1.circuitref, 
  constructor_standings_1.date, 
  sum(
    constructor_standings_1.points), 
  constructor_standings_2.constructorid, 
  constructor_standings_2.points, 
  drivers_1.driverref, 
  min(
    circuits_1.lat), 
  races_1.name, 
  constructor_results_1.date, 
  races_1.circuitid
from 
  constructor_results as constructor_results_1
        inner join drivers as drivers_1
          inner join races as races_1
          on (drivers_1.driverid = races_1.raceid )
        on (constructor_results_1.constructorresultsid = races_1.raceid )
      inner join constructor_standings as constructor_standings_1
        inner join circuits as circuits_1
        on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
      on (drivers_1.driverid = circuits_1.circuitid )
    inner join constructor_standings as constructor_standings_2
    on (races_1.raceid = constructor_standings_2.constructorstandingsid )
where races_1.date >= constructor_standings_2.date
group by circuits_1.circuitref, constructor_results_1.constructorid, constructor_results_1.date, constructor_standings_1.date, constructor_standings_2.constructorid, constructor_standings_2.points, drivers_1.driverid, drivers_1.driverref, races_1.circuitid, races_1.date, races_1.name
limit 23;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    circuits_1.lng)
from 
  circuits as circuits_1
    inner join races as races_1
      inner join constructor_results as constructor_results_1
      on (races_1.raceid = constructor_results_1.constructorresultsid )
    on (circuits_1.circuitid = races_1.raceid )
where races_1.date <= constructor_results_1.date
limit 28;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.raceid, 
  races_1.year, 
  results_1.number, 
  races_1.time, 
  races_1.round, 
  results_1.position, 
  results_1.driverid, 
  races_1.date, 
  races_1.circuitid
from 
  qualifying as qualifying_1
    inner join results as results_1
      inner join races as races_1
      on (results_1.resultid = races_1.raceid )
    on (qualifying_1.qualifyid = races_1.raceid )
where qualifying_1.constructorid <= results_1.raceid
limit 13;
-- meta {"num_joins":7,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_2.round, 
  qualifying_3.raceid
from 
  races as races_1
        inner join constructor_standings as constructor_standings_1
          inner join qualifying as qualifying_1
          on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
        on (races_1.raceid = qualifying_1.qualifyid )
      inner join qualifying as qualifying_2
        inner join results as results_1
          inner join qualifying as qualifying_3
          on (results_1.resultid = qualifying_3.qualifyid )
        on (qualifying_2.qualifyid = qualifying_3.qualifyid )
      on (qualifying_1.qualifyid = qualifying_3.qualifyid )
    inner join standings as standings_1
      inner join races as races_2
      on (standings_1.driverstandingsid = races_2.raceid )
    on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
where qualifying_3.raceid is not NULL
limit 22;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref, 
  circuits_1.country, 
  avg(
    circuits_1.alt), 
  circuits_1.location
from 
  circuits as circuits_1
    inner join results as results_1
    on (circuits_1.circuitid = results_1.resultid )
where results_1.date = results_1.date
group by circuits_1.circuitref, circuits_1.country, circuits_1.location
limit 35;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  standings_2.points, 
  races_1.year
from 
  races as races_1
      inner join standings as standings_1
      on (races_1.raceid = standings_1.driverstandingsid )
    inner join constructor_standings as constructor_standings_1
      inner join standings as standings_2
      on (constructor_standings_1.constructorstandingsid = standings_2.driverstandingsid )
    on (races_1.raceid = standings_2.driverstandingsid )
where standings_1.position is not NULL
limit 19;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid, 
  standings_1.points
from 
  standings as standings_1
where standings_1.raceid is not NULL
limit 41;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid = constructor_results_1.raceid
limit 21;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.raceid
from 
  races as races_1
    inner join results as results_1
    on (races_1.raceid = results_1.resultid )
where results_1.points >= results_1.position
limit 35;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.points, 
  avg(
    constructor_standings_1.position), 
  standings_1.position, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
      inner join constructor_results as constructor_results_1
      on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
    inner join standings as standings_1
    on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.date, constructor_standings_1.date, constructor_standings_1.points, standings_1.position
limit 20;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.date, 
  count(*)
from 
  results as results_1
where results_1.milliseconds is not NULL
group by results_1.date
limit 3;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    qualifying_1.date), 
  standings_1.driverid, 
  sum(
    standings_1.points), 
  standings_1.raceid
from 
  standings as standings_1
    inner join qualifying as qualifying_1
    on (standings_1.driverstandingsid = qualifying_1.qualifyid )
where qualifying_1.constructorid is not NULL
group by standings_1.driverid, standings_1.raceid
limit 41;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitid, 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.country is not NULL
limit 8;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date, 
  max(
    constructor_standings_1.points), 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
    inner join standings as standings_1
    on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.date, constructor_standings_1.raceid
limit 29;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructors_1.nationality
from 
  constructors as constructors_1
      inner join constructors as constructors_2
      on (constructors_1.constructorid = constructors_2.constructorid )
    inner join constructor_results as constructor_results_1
      inner join results as results_1
      on (constructor_results_1.constructorresultsid = results_1.resultid )
    on (constructors_1.constructorid = results_1.resultid )
where constructor_results_1.constructorresultsid is not NULL
limit 28;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.date, 
  races_1.raceid
from 
  races as races_1
where races_1.circuitid is not NULL
limit 42;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  max(
    constructor_standings_1.position), 
  constructor_standings_1.wins, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins <= constructor_standings_1.raceid
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.wins
limit 23;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.points, 
  standings_1.date, 
  standings_1.raceid, 
  standings_1.wins, 
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  standings_1.position
from 
  standings as standings_1
where standings_1.driverid is not NULL
limit 2;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.positionorder, 
  max(
    results_1.rank), 
  sum(
    results_1.number), 
  results_1.milliseconds, 
  results_1.statusid, 
  min(
    constructor_results_1.date), 
  constructor_results_1.constructorresultsid
from 
  results as results_1
    inner join constructor_results as constructor_results_1
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where results_1.date >= constructor_results_1.date
group by constructor_results_1.constructorresultsid, results_1.milliseconds, results_1.positionorder, results_1.statusid
limit 35;
-- meta {"num_joins":4,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorid, 
  standings_1.wins, 
  constructor_standings_1.raceid, 
  qualifying_2.date, 
  results_1.resultid, 
  standings_1.position, 
  count(*), 
  qualifying_1.number, 
  avg(
    results_1.resultid)
from 
  standings as standings_1
          inner join qualifying as qualifying_1
          on (standings_1.driverstandingsid = qualifying_1.qualifyid )
        inner join results as results_1
        on (standings_1.driverstandingsid = results_1.resultid )
      inner join constructor_standings as constructor_standings_1
      on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
    inner join qualifying as qualifying_2
    on (standings_1.driverstandingsid = qualifying_2.qualifyid )
where qualifying_2.position < results_1.positionorder
group by constructor_standings_1.constructorid, constructor_standings_1.raceid, qualifying_1.number, qualifying_2.date, results_1.resultid, standings_1.position, standings_1.wins
limit 19;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.constructorid, 
  qualifying_1.raceid, 
  qualifying_1.number, 
  max(
    qualifying_1.date), 
  qualifying_1.position, 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.number, qualifying_1.position, qualifying_1.raceid
limit 7;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 34;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    qualifying_1.date), 
  qualifying_1.number, 
  qualifying_1.qualifyid, 
  count(*), 
  qualifying_1.driverid, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.number, qualifying_1.qualifyid
limit 12;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins, 
  standings_1.points, 
  standings_1.driverid, 
  min(
    standings_1.points)
from 
  standings as standings_1
    inner join drivers as drivers_1
    on (standings_1.driverstandingsid = drivers_1.driverid )
where drivers_1.driverref is not NULL
group by standings_1.driverid, standings_1.points, standings_1.wins
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.constructorid, 
  results_1.points, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.nationality
from 
  results as results_1
    inner join constructors as constructors_1
    on (results_1.resultid = constructors_1.constructorid )
where constructors_1.name is not NULL
limit 6;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref, 
  constructor_results_1.points, 
  results_1.grid, 
  circuits_1.location, 
  results_1.resultid, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  sum(
    circuits_1.circuitid), 
  results_1.constructorid, 
  results_1.fastestlap, 
  max(
    circuits_1.alt)
from 
  circuits as circuits_1
    inner join constructor_results as constructor_results_1
      inner join results as results_1
      on (constructor_results_1.constructorresultsid = results_1.resultid )
    on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
where constructor_results_1.points is not NULL
group by circuits_1.circuitref, circuits_1.location, constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.points, results_1.constructorid, results_1.fastestlap, results_1.grid, results_1.resultid
limit 37;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.surname, 
  drivers_1.driverid, 
  count(
    drivers_1.forename), 
  drivers_1.code, 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.code is not NULL
group by drivers_1.code, drivers_1.driverid, drivers_1.nationality, drivers_1.surname
limit 7;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructors_1.name, 
  max(
    constructors_1.constructorid), 
  count(*), 
  sum(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorref, constructors_1.name
limit 31;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.constructorid, 
  results_1.grid, 
  qualifying_1.constructorid, 
  results_1.rank
from 
  qualifying as qualifying_1
    inner join results as results_1
    on (qualifying_1.qualifyid = results_1.resultid )
where results_1.date < qualifying_1.date
limit 18;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  sum(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.constructorid, constructors_1.name, constructors_1.nationality
limit 16;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  max(
    constructor_results_1.raceid), 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  sum(
    constructor_results_1.raceid), 
  max(
    constructor_results_1.points), 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points
limit 36;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref, 
  max(
    results_2.position), 
  results_2.fastestlap, 
  results_1.grid, 
  circuits_1.alt
from 
  circuits as circuits_1
      inner join results as results_1
      on (circuits_1.circuitid = results_1.resultid )
    inner join results as results_2
    on (results_1.resultid = results_2.resultid )
where results_2.constructorid is not NULL
group by circuits_1.alt, circuits_1.circuitref, results_1.grid, results_2.fastestlap
limit 9;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.statusid, 
  results_1.positionorder, 
  races_1.year, 
  drivers_1.dob, 
  races_1.date, 
  results_1.resultid
from 
  constructor_standings as constructor_standings_1
    inner join races as races_1
      inner join results as results_1
        inner join drivers as drivers_1
        on (results_1.resultid = drivers_1.driverid )
      on (races_1.raceid = results_1.resultid )
    on (constructor_standings_1.constructorstandingsid = results_1.resultid )
where results_1.rank is not NULL
limit 26;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.raceid, 
  races_1.round, 
  races_1.circuitid, 
  races_1.time, 
  races_1.name
from 
  races as races_1
where races_1.name is not NULL
limit 13;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid, 
  races_1.date
from 
  races as races_1
where races_1.time is not NULL
limit 13;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.raceid, 
  standings_1.position, 
  max(
    standings_1.date), 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.driverid is not NULL
group by standings_1.driverid, standings_1.position, standings_1.raceid
limit 32;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.date, 
  races_1.time, 
  races_1.circuitid, 
  races_1.name, 
  races_1.year, 
  min(
    races_1.date), 
  races_1.raceid, 
  min(
    races_1.date), 
  max(
    races_1.date)
from 
  races as races_1
where races_1.date >= races_1.date
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.time, races_1.year
limit 13;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.position, 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
limit 10;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.raceid
from 
  races as races_1
where races_1.year is not NULL
limit 34;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.statusid, 
  results_1.date, 
  min(
    results_1.date), 
  results_1.positionorder, 
  results_1.laps, 
  results_1.position, 
  results_1.constructorid
from 
  results as results_1
where results_1.date = results_1.date
group by results_1.constructorid, results_1.date, results_1.laps, results_1.position, results_1.positionorder, results_1.statusid
limit 36;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructor_standings_1.points), 
  constructor_standings_1.constructorid, 
  sum(
    constructor_standings_1.points), 
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.points
limit 27;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.round, 
  races_1.name, 
  races_1.raceid, 
  max(
    races_1.date), 
  max(
    races_1.date), 
  max(
    races_1.raceid), 
  max(
    races_1.round), 
  races_1.year, 
  races_1.time, 
  races_1.circuitid
from 
  races as races_1
where races_1.date is not NULL
group by races_1.circuitid, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 27;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.nationality, 
  drivers_1.forename, 
  drivers_1.driverref, 
  drivers_1.driverid, 
  max(
    drivers_1.dob), 
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.code is not NULL
group by drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality
limit 39;
-- meta {"num_joins":1,"num_aggregates":6,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.raceid, 
  circuits_1.circuitid, 
  constructor_standings_1.wins, 
  circuits_1.location, 
  circuits_1.country, 
  constructor_standings_1.date, 
  circuits_1.name, 
  min(
    constructor_standings_1.points), 
  min(
    constructor_standings_1.raceid), 
  constructor_standings_1.position, 
  constructor_standings_1.constructorid, 
  min(
    constructor_standings_1.points), 
  constructor_standings_1.points, 
  sum(
    constructor_standings_1.wins), 
  min(
    constructor_standings_1.date), 
  min(
    constructor_standings_1.date), 
  circuits_1.lng
from 
  constructor_standings as constructor_standings_1
    inner join circuits as circuits_1
    on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
where constructor_standings_1.date > constructor_standings_1.date
group by circuits_1.alt, circuits_1.circuitid, circuits_1.country, circuits_1.lng, circuits_1.location, circuits_1.name, constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 32;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    circuits_1.circuitid), 
  circuits_1.circuitid, 
  avg(
    circuits_1.alt), 
  circuits_1.location, 
  circuits_1.lng, 
  circuits_1.circuitref, 
  min(
    circuits_1.circuitid), 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.country is not NULL
group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.lng, circuits_1.location, circuits_1.name
limit 12;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.fastestlap, 
  results_1.resultid, 
  results_1.position, 
  standings_1.points, 
  results_1.statusid, 
  results_1.positionorder, 
  results_1.rank, 
  results_1.grid
from 
  standings as standings_1
    inner join results as results_1
    on (standings_1.driverstandingsid = results_1.resultid )
where standings_1.date is not NULL
limit 11;
-- meta {"num_joins":0,"num_aggregates":6,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  drivers_1.driverref, 
  drivers_1.driverid, 
  avg(
    drivers_1.driverid), 
  max(
    drivers_1.dob), 
  max(
    drivers_1.dob), 
  drivers_1.forename, 
  max(
    drivers_1.dob), 
  drivers_1.surname, 
  drivers_1.code, 
  min(
    drivers_1.dob)
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
group by drivers_1.code, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.surname
limit 6;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.round, 
  races_1.name, 
  races_1.circuitid, 
  sum(
    standings_1.driverid), 
  max(
    standings_1.points), 
  races_1.time, 
  races_1.raceid, 
  standings_1.date, 
  races_1.year, 
  avg(
    standings_1.points)
from 
  standings as standings_1
    inner join races as races_1
    on (standings_1.driverstandingsid = races_1.raceid )
where races_1.time is not NULL
group by races_1.circuitid, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year, standings_1.date
limit 29;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  races_1.circuitid
from 
  races as races_1
where races_1.year is not NULL
group by races_1.circuitid
limit 25;
-- meta {"num_joins":3,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    races_2.date), 
  races_2.round, 
  races_1.round, 
  circuits_1.country, 
  avg(
    circuits_1.lng), 
  races_2.name, 
  min(
    races_1.date), 
  max(
    races_2.round), 
  avg(
    races_2.round), 
  circuits_1.lng, 
  races_2.date, 
  races_1.time, 
  circuits_1.lat
from 
  circuits as circuits_1
      inner join drivers as drivers_1
      on (circuits_1.circuitid = drivers_1.driverid )
    inner join races as races_1
      inner join races as races_2
      on (races_1.raceid = races_2.raceid )
    on (drivers_1.driverid = races_1.raceid )
where drivers_1.forename is not NULL
group by circuits_1.country, circuits_1.lat, circuits_1.lng, races_1.round, races_1.time, races_2.date, races_2.name, races_2.round
limit 22;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select distinct 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
      inner join constructor_results as constructor_results_1
      on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
    inner join constructors as constructors_1
    on (qualifying_1.qualifyid = constructors_1.constructorid )
where constructors_1.constructorref is not NULL
limit 23;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
    inner join races as races_1
    on (qualifying_1.qualifyid = races_1.raceid )
where races_1.name <= races_1.time
limit 23;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number, 
  qualifying_1.date, 
  qualifying_1.raceid, 
  qualifying_1.driverid, 
  count(*), 
  qualifying_1.qualifyid, 
  qualifying_1.position, 
  qualifying_1.constructorid, 
  min(
    qualifying_1.date), 
  sum(
    qualifying_1.qualifyid)
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 26;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.time, 
  races_1.round
from 
  races as races_1
where races_1.time is not NULL
limit 11;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref, 
  sum(
    drivers_1.driverid), 
  drivers_1.surname, 
  drivers_1.dob, 
  drivers_1.driverid, 
  drivers_1.forename, 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
group by drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 18;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverid, 
  max(
    drivers_1.driverid), 
  drivers_1.surname, 
  drivers_1.driverref, 
  drivers_1.code, 
  count(
    drivers_1.surname)
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
group by drivers_1.code, drivers_1.driverid, drivers_1.driverref, drivers_1.surname
limit 29;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.grid, 
  results_1.fastestlap
from 
  results as results_1
where results_1.driverid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lng, 
  circuits_1.circuitid, 
  max(
    circuits_1.circuitid), 
  circuits_1.location, 
  circuits_1.circuitref, 
  circuits_1.alt, 
  avg(
    circuits_1.lat)
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.lng, circuits_1.location
limit 40;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref, 
  min(
    constructor_standings_1.date), 
  min(
    circuits_1.circuitid)
from 
  constructor_standings as constructor_standings_1
    inner join circuits as circuits_1
    on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
where circuits_1.name is not NULL
group by circuits_1.circuitref
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.date, 
  races_1.year, 
  races_1.round
from 
  races as races_1
where races_1.name <= races_1.time
limit 12;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_2.constructorresultsid
from 
  constructor_standings as constructor_standings_1
      inner join constructor_results as constructor_results_1
      on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
    inner join constructor_results as constructor_results_2
    on (constructor_standings_1.constructorstandingsid = constructor_results_2.constructorresultsid )
where constructor_standings_1.constructorid is not NULL
limit 42;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.wins, 
  avg(
    standings_1.points), 
  standings_1.date, 
  drivers_1.nationality, 
  drivers_1.forename, 
  count(*), 
  standings_1.points, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid
from 
  drivers as drivers_1
    inner join constructor_standings as constructor_standings_1
      inner join standings as standings_1
      on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
    on (drivers_1.driverid = standings_1.driverstandingsid )
where constructor_standings_1.raceid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, drivers_1.forename, drivers_1.nationality, standings_1.date, standings_1.points, standings_1.wins
limit 22;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.dob, 
  drivers_1.surname, 
  drivers_1.driverid
from 
  drivers as drivers_1
    inner join drivers as drivers_2
    on (drivers_1.driverid = drivers_2.driverid )
where drivers_2.surname is not NULL
limit 21;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year
from 
  races as races_1
where races_1.time > races_1.name
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location, 
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.circuitid >= circuits_1.circuitid
limit 37;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    races_1.date), 
  max(
    races_1.year), 
  races_1.year, 
  races_1.name, 
  races_1.time, 
  races_1.circuitid, 
  races_1.round, 
  races_1.raceid, 
  min(
    races_1.round)
from 
  races as races_1
where races_1.year is not NULL
group by races_1.circuitid, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 39;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    results_1.fastestlap), 
  results_1.date
from 
  results as results_1
where results_1.grid is not NULL
group by results_1.date
limit 14;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    races_1.date), 
  races_1.round, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  races_1.raceid, 
  races_1.year, 
  races_1.date
from 
  races as races_1
    inner join constructors as constructors_1
    on (races_1.raceid = constructors_1.constructorid )
where races_1.name is not NULL
group by constructors_1.constructorid, constructors_1.nationality, races_1.date, races_1.raceid, races_1.round, races_1.year
limit 30;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.date, 
  results_1.position
from 
  constructor_results as constructor_results_1
      inner join qualifying as qualifying_1
          inner join qualifying as qualifying_2
          on (qualifying_1.qualifyid = qualifying_2.qualifyid )
        inner join results as results_1
        on (qualifying_2.qualifyid = results_1.resultid )
      on (constructor_results_1.constructorresultsid = qualifying_2.qualifyid )
    inner join races as races_1
      inner join races as races_2
      on (races_1.raceid = races_2.raceid )
    on (qualifying_1.qualifyid = races_1.raceid )
where races_1.year is not NULL
limit 30;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location, 
  circuits_1.lng, 
  circuits_1.alt, 
  circuits_1.country, 
  circuits_1.lat
from 
  circuits as circuits_1
where circuits_1.alt is not NULL
limit 31;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt, 
  standings_1.date, 
  results_1.milliseconds, 
  constructor_results_1.date, 
  sum(
    standings_1.points), 
  constructor_results_1.constructorresultsid
from 
  results as results_1
    inner join constructor_results as constructor_results_1
      inner join standings as standings_1
        inner join circuits as circuits_1
        on (standings_1.driverstandingsid = circuits_1.circuitid )
      on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where results_1.milliseconds < results_1.fastestlap
group by circuits_1.alt, constructor_results_1.constructorresultsid, constructor_results_1.date, results_1.milliseconds, standings_1.date
limit 32;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_2.constructorref
from 
  constructor_results as constructor_results_1
    inner join drivers as drivers_1
          inner join constructors as constructors_1
          on (drivers_1.driverid = constructors_1.constructorid )
        inner join constructors as constructors_2
        on (constructors_1.constructorid = constructors_2.constructorid )
      inner join constructor_standings as constructor_standings_1
        inner join qualifying as qualifying_1
        on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
      on (constructors_2.constructorid = constructor_standings_1.constructorstandingsid )
    on (constructor_results_1.constructorresultsid = drivers_1.driverid )
where constructor_results_1.date > constructor_standings_1.date
limit 33;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    races_1.round), 
  races_1.round, 
  races_1.time
from 
  races as races_1
where races_1.time is not NULL
group by races_1.round, races_1.time
limit 9;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*)
from 
  results as results_1
    inner join races as races_1
      inner join results as results_2
        inner join constructor_results as constructor_results_1
          inner join constructors as constructors_1
          on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
        on (results_2.resultid = constructor_results_1.constructorresultsid )
      on (races_1.raceid = constructors_1.constructorid )
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where constructors_1.constructorref > constructors_1.nationality
limit 31;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  count(*), 
  races_1.raceid
from 
  races as races_1
    inner join constructors as constructors_1
    on (races_1.raceid = constructors_1.constructorid )
where races_1.time >= constructors_1.constructorref
group by constructors_1.nationality, races_1.raceid
limit 32;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref, 
  drivers_1.surname, 
  drivers_1.nationality, 
  drivers_1.dob, 
  drivers_1.forename, 
  drivers_1.code, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
limit 13;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  count(
    constructor_results_1.constructorid)
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 28;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.raceid, 
  races_1.circuitid
from 
  results as results_1
    inner join races as races_1
    on (results_1.resultid = races_1.raceid )
where results_1.rank < results_1.fastestlap
limit 5;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    results_1.milliseconds), 
  circuits_1.country, 
  circuits_1.location
from 
  results as results_1
    inner join circuits as circuits_1
    on (results_1.resultid = circuits_1.circuitid )
where results_1.grid is not NULL
group by circuits_1.country, circuits_1.location
limit 21;
-- meta {"num_joins":5,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    results_1.points), 
  min(
    qualifying_2.date), 
  max(
    results_1.date), 
  qualifying_2.position
from 
  results as results_1
      inner join qualifying as qualifying_1
        inner join circuits as circuits_1
        on (qualifying_1.qualifyid = circuits_1.circuitid )
      on (results_1.resultid = qualifying_1.qualifyid )
    inner join constructor_standings as constructor_standings_1
        inner join qualifying as qualifying_2
        on (constructor_standings_1.constructorstandingsid = qualifying_2.qualifyid )
      inner join results as results_2
      on (constructor_standings_1.constructorstandingsid = results_2.resultid )
    on (circuits_1.circuitid = qualifying_2.qualifyid )
where results_1.grid is not NULL
group by qualifying_2.position
limit 8;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  min(
    constructor_results_1.date), 
  min(
    constructor_results_1.constructorid), 
  max(
    constructor_results_1.date), 
  constructor_results_1.points, 
  max(
    constructor_results_1.raceid), 
  constructor_results_1.constructorresultsid, 
  min(
    constructor_results_1.constructorresultsid)
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 36;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    circuits_1.alt), 
  min(
    circuits_1.circuitid), 
  sum(
    circuits_1.circuitid), 
  circuits_1.circuitid, 
  avg(
    circuits_1.lng)
from 
  circuits as circuits_1
where circuits_1.name is not NULL
group by circuits_1.circuitid
limit 1;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_2.country, 
  standings_1.raceid, 
  circuits_2.name, 
  circuits_2.circuitref, 
  circuits_2.circuitid, 
  max(
    circuits_1.lng), 
  avg(
    circuits_2.lng)
from 
  standings as standings_1
      inner join circuits as circuits_1
      on (standings_1.driverstandingsid = circuits_1.circuitid )
    inner join circuits as circuits_2
    on (standings_1.driverstandingsid = circuits_2.circuitid )
where circuits_2.alt < circuits_1.lng
group by circuits_2.circuitid, circuits_2.circuitref, circuits_2.country, circuits_2.name, standings_1.raceid
limit 42;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.date, 
  results_1.statusid, 
  results_1.constructorid
from 
  results as results_1
where results_1.number is not NULL
limit 14;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.position, 
  min(
    results_1.date), 
  results_1.constructorid, 
  max(
    results_1.points)
from 
  results as results_1
where results_1.points is not NULL
group by results_1.constructorid, results_1.position
limit 30;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  qualifying_1.qualifyid, 
  qualifying_1.raceid
from 
  constructor_results as constructor_results_1
      inner join constructor_results as constructor_results_2
      on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
    inner join qualifying as qualifying_1
    on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
where constructor_results_1.constructorid < constructor_results_2.raceid
limit 4;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_2.country, 
  circuits_1.lng, 
  circuits_2.name, 
  circuits_1.alt, 
  max(
    circuits_2.circuitid), 
  circuits_1.circuitid, 
  sum(
    circuits_1.lat), 
  circuits_1.name
from 
  circuits as circuits_1
    inner join circuits as circuits_2
    on (circuits_1.circuitid = circuits_2.circuitid )
where circuits_1.country is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.lng, circuits_1.name, circuits_2.country, circuits_2.name
limit 22;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.code
from 
  drivers as drivers_1
    inner join results as results_1
      inner join constructor_standings as constructor_standings_1
      on (results_1.resultid = constructor_standings_1.constructorstandingsid )
    on (drivers_1.driverid = results_1.resultid )
where constructor_standings_1.position is not NULL
limit 33;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_3.driverid, 
  qualifying_1.position
from 
  qualifying as qualifying_1
      inner join races as races_1
        inner join circuits as circuits_1
        on (races_1.raceid = circuits_1.circuitid )
      on (qualifying_1.qualifyid = races_1.raceid )
    inner join qualifying as qualifying_2
      inner join qualifying as qualifying_3
      on (qualifying_2.qualifyid = qualifying_3.qualifyid )
    on (qualifying_1.qualifyid = qualifying_2.qualifyid )
where races_1.year is not NULL
limit 40;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date
from 
  qualifying as qualifying_1
    inner join constructor_results as constructor_results_1
    on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
where qualifying_1.raceid = constructor_results_1.raceid
limit 7;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lat, 
  circuits_1.circuitref, 
  circuits_1.location, 
  circuits_1.circuitid, 
  circuits_1.alt, 
  min(
    circuits_1.lat)
from 
  circuits as circuits_1
where circuits_1.country < circuits_1.location
group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.lat, circuits_1.location
limit 29;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.points, 
  sum(
    standings_1.raceid), 
  standings_1.driverstandingsid, 
  standings_1.position, 
  standings_1.date, 
  min(
    standings_1.date)
from 
  standings as standings_1
where standings_1.position is not NULL
group by standings_1.date, standings_1.driverstandingsid, standings_1.points, standings_1.position
limit 23;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  min(
    constructor_results_1.points)
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.points
limit 16;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.country, 
  circuits_1.location, 
  circuits_1.lat
from 
  circuits as circuits_1
where circuits_1.lat < circuits_1.lng
limit 25;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.forename, 
  max(
    drivers_1.driverid), 
  drivers_1.nationality, 
  drivers_1.code, 
  drivers_1.surname, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.nationality <= drivers_1.driverref
group by drivers_1.code, drivers_1.driverid, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 41;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.points, 
  standings_2.wins, 
  standings_2.driverstandingsid, 
  races_1.date, 
  avg(
    standings_1.position), 
  standings_1.wins, 
  standings_2.date, 
  standings_2.raceid
from 
  standings as standings_1
    inner join standings as standings_2
      inner join races as races_1
      on (standings_2.driverstandingsid = races_1.raceid )
    on (standings_1.driverstandingsid = standings_2.driverstandingsid )
where standings_1.points is not NULL
group by races_1.date, standings_1.points, standings_1.wins, standings_2.date, standings_2.driverstandingsid, standings_2.raceid, standings_2.wins
limit 1;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_2.date, 
  qualifying_2.constructorid, 
  circuits_1.country, 
  qualifying_1.number
from 
  qualifying as qualifying_1
      inner join circuits as circuits_1
      on (qualifying_1.qualifyid = circuits_1.circuitid )
    inner join qualifying as qualifying_2
    on (circuits_1.circuitid = qualifying_2.qualifyid )
where circuits_1.name is not NULL
limit 30;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.driverid, 
  results_1.rank
from 
  results as results_1
where results_1.statusid is not NULL
limit 31;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date, 
  min(
    constructor_standings_1.wins), 
  constructor_standings_1.points, 
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date = constructor_standings_1.date
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 14;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_2.date, 
  min(
    standings_1.date)
from 
  qualifying as qualifying_1
    inner join qualifying as qualifying_2
      inner join standings as standings_1
      on (qualifying_2.qualifyid = standings_1.driverstandingsid )
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where qualifying_1.driverid is not NULL
group by qualifying_2.date
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid, 
  races_1.year, 
  races_1.date, 
  races_1.raceid, 
  races_1.round, 
  races_1.time, 
  min(
    races_1.date), 
  max(
    races_1.date)
from 
  races as races_1
where races_1.raceid is not NULL
group by races_1.circuitid, races_1.date, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 28;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructor_results_1.points), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  sum(
    constructor_results_1.constructorid)
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.raceid
limit 28;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lat, 
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.name is not NULL
limit 15;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    qualifying_1.position)
from 
  qualifying as qualifying_1
where qualifying_1.date < qualifying_1.date
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  qualifying_1.constructorid, 
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  constructor_results_1.constructorid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid >= constructor_results_1.constructorid
group by constructor_results_1.constructorid, constructor_results_1.date
limit 8;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid <= qualifying_1.driverid
limit 5;
-- meta {"num_joins":0,"num_aggregates":6,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  sum(
    constructor_results_1.points), 
  constructor_results_1.points, 
  min(
    constructor_results_1.date), 
  min(
    constructor_results_1.date), 
  constructor_results_1.date, 
  min(
    constructor_results_1.points), 
  constructor_results_1.raceid, 
  sum(
    constructor_results_1.raceid), 
  count(
    constructor_results_1.date)
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid = constructor_results_1.raceid
group by constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 33;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.position
from 
  qualifying as qualifying_1
    inner join standings as standings_1
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where standings_1.points < standings_1.points
limit 40;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverid
from 
  drivers as drivers_1
    inner join constructor_standings as constructor_standings_1
    on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
where drivers_1.nationality is not NULL
limit 23;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref, 
  max(
    circuits_1.lat), 
  standings_2.position
from 
  drivers as drivers_1
      inner join standings as standings_1
      on (drivers_1.driverid = standings_1.driverstandingsid )
    inner join circuits as circuits_1
      inner join standings as standings_2
      on (circuits_1.circuitid = standings_2.driverstandingsid )
    on (drivers_1.driverid = circuits_1.circuitid )
where standings_2.date is not NULL
group by drivers_1.driverref, standings_2.position
limit 38;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.number, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 16;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.points
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
limit 17;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    qualifying_1.qualifyid), 
  qualifying_1.position, 
  qualifying_1.constructorid, 
  qualifying_1.date, 
  qualifying_1.number, 
  count(*), 
  qualifying_1.driverid, 
  qualifying_1.raceid, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 6;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality
from 
  constructors as constructors_1
    inner join standings as standings_1
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where standings_1.driverstandingsid is not NULL
limit 38;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid, 
  races_1.name, 
  drivers_1.forename, 
  drivers_1.driverref, 
  results_2.raceid, 
  results_1.driverid, 
  results_1.laps, 
  drivers_1.nationality, 
  results_1.grid, 
  results_1.constructorid
from 
  results as results_1
        inner join drivers as drivers_1
        on (results_1.resultid = drivers_1.driverid )
      inner join results as results_2
      on (drivers_1.driverid = results_2.resultid )
    inner join races as races_1
    on (drivers_1.driverid = races_1.raceid )
where races_1.circuitid is not NULL
limit 20;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*)
from 
  standings as standings_1
where standings_1.date is not NULL
limit 14;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.country is not NULL
limit 11;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lng
from 
  races as races_1
    inner join circuits as circuits_1
      inner join constructor_standings as constructor_standings_1
      on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
    on (races_1.raceid = circuits_1.circuitid )
where races_1.name is not NULL
limit 30;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.date, 
  standings_1.raceid, 
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
limit 8;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.round
from 
  races as races_1
where races_1.date < races_1.date
limit 22;
-- meta {"num_joins":1,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  count(
    drivers_1.code), 
  constructors_1.constructorref, 
  sum(
    drivers_1.driverid), 
  max(
    drivers_1.dob), 
  avg(
    drivers_1.driverid), 
  drivers_1.driverref, 
  count(
    constructors_1.constructorid)
from 
  constructors as constructors_1
    inner join drivers as drivers_1
    on (constructors_1.constructorid = drivers_1.driverid )
where constructors_1.constructorref is not NULL
group by constructors_1.constructorref, constructors_1.nationality, drivers_1.driverref
limit 17;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select distinct 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.points <= standings_1.points
limit 26;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.country, 
  circuits_1.lng, 
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.alt is not NULL
limit 27;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  max(
    constructor_results_1.date), 
  constructor_results_1.date, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.raceid
limit 12;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructor_results_1.date), 
  constructor_results_1.constructorid, 
  circuits_1.circuitref, 
  constructor_results_1.constructorresultsid, 
  circuits_1.country
from 
  circuits as circuits_1
      inner join constructor_results as constructor_results_1
      on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
    inner join constructors as constructors_1
    on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
where constructor_results_1.date = constructor_results_1.date
group by circuits_1.circuitref, circuits_1.country, constructor_results_1.constructorid, constructor_results_1.constructorresultsid
limit 6;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.position, 
  qualifying_1.number, 
  qualifying_1.driverid, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
limit 25;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.position, 
  min(
    constructor_standings_1.points)
from 
  qualifying as qualifying_1
    inner join constructor_standings as constructor_standings_1
    on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
where qualifying_1.date <= constructor_standings_1.date
group by constructor_standings_1.position
limit 16;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    drivers_1.dob), 
  drivers_1.dob, 
  drivers_1.nationality, 
  drivers_1.surname, 
  drivers_1.forename, 
  drivers_1.code, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.forename is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 30;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.round, 
  results_1.position, 
  sum(
    circuits_1.lat), 
  circuits_1.country, 
  min(
    races_1.date), 
  circuits_1.lng
from 
  results as results_1
    inner join circuits as circuits_1
      inner join races as races_1
      on (circuits_1.circuitid = races_1.raceid )
    on (results_1.resultid = circuits_1.circuitid )
where races_1.time is not NULL
group by circuits_1.country, circuits_1.lng, races_1.round, results_1.position
limit 40;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.round, 
  races_1.time, 
  races_1.date, 
  races_1.name, 
  max(
    races_1.round), 
  races_1.circuitid
from 
  races as races_1
where races_1.date = races_1.date
group by races_1.circuitid, races_1.date, races_1.name, races_1.round, races_1.time
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 28;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  min(
    constructor_results_1.date), 
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points
limit 8;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name, 
  drivers_1.nationality, 
  drivers_1.driverref, 
  constructors_1.constructorid
from 
  constructors as constructors_1
    inner join drivers as drivers_1
    on (constructors_1.constructorid = drivers_1.driverid )
where constructors_1.constructorref = drivers_1.forename
limit 7;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.driverid <= drivers_1.driverid
limit 39;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.constructorid, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
limit 13;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lng, 
  circuits_1.location
from 
  drivers as drivers_1
    inner join circuits as circuits_1
      inner join constructor_standings as constructor_standings_1
        inner join circuits as circuits_2
        on (constructor_standings_1.constructorstandingsid = circuits_2.circuitid )
      on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
    on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
where circuits_1.lng is not NULL
limit 16;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    qualifying_1.date)
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
limit 28;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid, 
  max(
    constructor_results_1.points), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.points = constructor_results_1.points
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.raceid
limit 10;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.time, 
  races_1.date, 
  races_1.round, 
  races_1.year, 
  min(
    races_1.date)
from 
  races as races_1
where races_1.round is not NULL
group by races_1.date, races_1.round, races_1.time, races_1.year
limit 6;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 22;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name, 
  constructors_1.constructorid, 
  max(
    constructors_1.constructorid), 
  constructors_1.constructorref, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 24;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.qualifyid, 
  max(
    races_1.date), 
  drivers_1.dob
from 
  qualifying as qualifying_1
      inner join races as races_1
      on (qualifying_1.qualifyid = races_1.raceid )
    inner join drivers as drivers_1
    on (qualifying_1.qualifyid = drivers_1.driverid )
where drivers_1.driverid is not NULL
group by drivers_1.dob, qualifying_1.qualifyid
limit 25;
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverid, 
  constructor_standings_1.date, 
  standings_1.raceid, 
  constructor_standings_1.raceid, 
  standings_2.driverstandingsid, 
  standings_2.wins, 
  count(*), 
  count(
    standings_2.driverstandingsid), 
  standings_1.points, 
  min(
    standings_2.driverstandingsid)
from 
  constructor_standings as constructor_standings_1
      inner join standings as standings_1
      on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
    inner join standings as standings_2
    on (constructor_standings_1.constructorstandingsid = standings_2.driverstandingsid )
where standings_1.date is not NULL
group by constructor_standings_1.date, constructor_standings_1.raceid, standings_1.driverid, standings_1.points, standings_1.raceid, standings_2.driverstandingsid, standings_2.wins
limit 9;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    standings_1.date), 
  standings_1.raceid, 
  standings_1.driverid, 
  races_1.circuitid, 
  standings_1.wins, 
  standings_1.date, 
  races_1.time, 
  races_1.date, 
  min(
    races_1.date)
from 
  races as races_1
    inner join standings as standings_1
    on (races_1.raceid = standings_1.driverstandingsid )
where standings_1.raceid is not NULL
group by races_1.circuitid, races_1.date, races_1.time, standings_1.date, standings_1.driverid, standings_1.raceid, standings_1.wins
limit 13;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  min(
    standings_1.points), 
  standings_1.position
from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where standings_1.wins is not NULL
group by constructor_results_1.date, standings_1.position
limit 2;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    circuits_1.lat)
from 
  circuits as circuits_1
    inner join constructor_standings as constructor_standings_1
    on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
where circuits_1.alt is not NULL
limit 7;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.surname
from 
  drivers as drivers_1
    inner join constructors as constructors_1
    on (drivers_1.driverid = constructors_1.constructorid )
where constructors_1.nationality is not NULL
limit 11;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.nationality, 
  constructors_1.nationality, 
  drivers_2.dob, 
  max(
    drivers_2.dob)
from 
  constructors as constructors_1
        inner join drivers as drivers_1
        on (constructors_1.constructorid = drivers_1.driverid )
      inner join races as races_1
      on (constructors_1.constructorid = races_1.raceid )
    inner join drivers as drivers_2
      inner join qualifying as qualifying_1
      on (drivers_2.driverid = qualifying_1.qualifyid )
    on (races_1.raceid = qualifying_1.qualifyid )
where constructors_1.constructorref <= constructors_1.name
group by constructors_1.nationality, drivers_1.nationality, drivers_2.dob
limit 39;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.driverstandingsid, 
  standings_1.wins, 
  min(
    standings_1.date), 
  count(*)
from 
  standings as standings_1
where standings_1.wins is not NULL
group by standings_1.driverstandingsid, standings_1.wins
limit 31;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    results_1.rank), 
  max(
    results_1.date), 
  results_1.driverid, 
  avg(
    results_1.resultid), 
  results_1.raceid, 
  results_1.rank
from 
  results as results_1
where results_1.driverid is not NULL
group by results_1.driverid, results_1.raceid, results_1.rank
limit 32;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  count(
    constructors_1.nationality)
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.constructorref
limit 17;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
limit 21;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitref, 
  constructors_1.nationality, 
  avg(
    circuits_1.circuitid)
from 
  constructors as constructors_1
    inner join circuits as circuits_1
    on (constructors_1.constructorid = circuits_1.circuitid )
where circuits_1.circuitref is not NULL
group by circuits_1.circuitref, constructors_1.nationality
limit 26;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_2.constructorid, 
  circuits_2.lat, 
  constructor_standings_2.wins, 
  constructor_standings_1.points, 
  circuits_3.circuitref
from 
  constructor_standings as constructor_standings_1
      inner join circuits as circuits_1
        inner join constructor_standings as constructor_standings_2
        on (circuits_1.circuitid = constructor_standings_2.constructorstandingsid )
      on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
    inner join circuits as circuits_2
      inner join circuits as circuits_3
      on (circuits_2.circuitid = circuits_3.circuitid )
    on (constructor_standings_2.constructorstandingsid = circuits_3.circuitid )
where circuits_3.lat < constructor_standings_1.points
limit 2;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
      inner join constructor_results as constructor_results_1
      on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
    inner join results as results_1
    on (constructor_results_1.constructorresultsid = results_1.resultid )
where results_1.milliseconds is not NULL
limit 26;
-- meta {"num_joins":5,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.wins, 
  count(
    drivers_1.nationality), 
  drivers_1.nationality, 
  standings_1.position, 
  drivers_1.dob, 
  races_1.round, 
  min(
    drivers_1.dob), 
  standings_1.driverstandingsid
from 
  constructor_standings as constructor_standings_1
          inner join standings as standings_1
          on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
        inner join circuits as circuits_1
        on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
      inner join circuits as circuits_2
      on (standings_1.driverstandingsid = circuits_2.circuitid )
    inner join drivers as drivers_1
      inner join races as races_1
      on (drivers_1.driverid = races_1.raceid )
    on (constructor_standings_1.constructorstandingsid = races_1.raceid )
where constructor_standings_1.date > drivers_1.dob
group by constructor_standings_1.wins, drivers_1.dob, drivers_1.nationality, races_1.round, standings_1.driverstandingsid, standings_1.position
limit 20;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  max(
    constructors_1.constructorid), 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.nationality >= constructors_1.constructorref
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 7;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    races_1.year), 
  races_1.date, 
  races_1.round, 
  races_1.raceid, 
  races_1.circuitid, 
  count(
    races_1.round), 
  races_1.year, 
  sum(
    races_1.circuitid), 
  races_1.time, 
  min(
    races_1.date)
from 
  races as races_1
where races_1.circuitid > races_1.raceid
group by races_1.circuitid, races_1.date, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 15;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.dob, 
  drivers_1.forename, 
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.forename is not NULL
limit 29;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.rank
from 
  results as results_1
where results_1.date < results_1.date
limit 16;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructor_results_1.date)
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 19;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  sum(
    circuits_1.alt), 
  standings_1.date, 
  circuits_1.alt
from 
  circuits as circuits_1
    inner join standings as standings_1
      inner join constructors as constructors_1
      on (standings_1.driverstandingsid = constructors_1.constructorid )
    on (circuits_1.circuitid = constructors_1.constructorid )
where circuits_1.lat is not NULL
group by circuits_1.alt, standings_1.date
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.nationality, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.code is not NULL
limit 33;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.nationality, 
  sum(
    constructor_standings_1.points), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  sum(
    constructor_standings_1.points), 
  constructor_standings_1.date, 
  drivers_1.code, 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
    inner join drivers as drivers_1
    on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
where drivers_1.surname is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.raceid, drivers_1.code, drivers_1.nationality
limit 20;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.date, 
  qualifying_1.number, 
  qualifying_1.raceid, 
  qualifying_1.driverid, 
  qualifying_1.position, 
  max(
    qualifying_1.date), 
  max(
    qualifying_1.qualifyid), 
  min(
    qualifying_1.date)
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.raceid
limit 33;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    standings_2.date), 
  drivers_1.dob
from 
  standings as standings_1
      inner join constructor_standings as constructor_standings_1
      on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
    inner join drivers as drivers_1
        inner join results as results_1
        on (drivers_1.driverid = results_1.resultid )
      inner join standings as standings_2
      on (drivers_1.driverid = standings_2.driverstandingsid )
    on (standings_1.driverstandingsid = standings_2.driverstandingsid )
where results_1.milliseconds is not NULL
group by drivers_1.dob
limit 35;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.number, 
  results_1.position, 
  results_1.grid, 
  results_1.rank, 
  results_1.driverid, 
  results_1.resultid
from 
  results as results_1
where results_1.grid is not NULL
limit 8;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lat
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  sum(
    constructor_results_1.constructorresultsid), 
  constructor_results_1.raceid, 
  count(
    constructor_results_1.points), 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.raceid
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid, 
  qualifying_1.raceid, 
  qualifying_1.position, 
  qualifying_1.constructorid, 
  qualifying_1.date, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
limit 40;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid
from 
  constructors as constructors_1
    inner join constructors as constructors_2
    on (constructors_1.constructorid = constructors_2.constructorid )
where constructors_2.nationality is not NULL
limit 18;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverid, 
  drivers_1.surname, 
  drivers_1.dob, 
  drivers_1.driverref, 
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.code is not NULL
limit 33;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  avg(
    constructor_results_1.points)
from 
  constructor_results as constructor_results_1
where constructor_results_1.date >= constructor_results_1.date
group by constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.raceid
limit 29;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.position, 
  standings_1.wins
from 
  standings as standings_1
    inner join results as results_1
    on (standings_1.driverstandingsid = results_1.resultid )
where results_1.points is not NULL
limit 20;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorid, 
  qualifying_1.number, 
  constructor_standings_1.date, 
  qualifying_1.qualifyid, 
  qualifying_1.position, 
  constructor_standings_1.wins, 
  races_1.date, 
  races_1.name, 
  standings_1.date, 
  drivers_1.driverref, 
  qualifying_1.constructorid, 
  standings_1.position, 
  drivers_1.code
from 
  races as races_1
      inner join drivers as drivers_1
      on (races_1.raceid = drivers_1.driverid )
    inner join qualifying as qualifying_1
      inner join constructor_standings as constructor_standings_1
        inner join standings as standings_1
        on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
      on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
    on (races_1.raceid = standings_1.driverstandingsid )
where standings_1.wins is not NULL
limit 35;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_standings_1.wins, 
  constructor_results_1.date, 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.position, 
  constructor_results_1.points, 
  constructor_standings_1.raceid, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  max(
    constructor_results_1.date), 
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
    inner join constructor_results as constructor_results_1
    on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
where constructor_standings_1.date is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 20;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year, 
  races_1.date
from 
  races as races_1
where races_1.round is not NULL
limit 21;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.fastestlap, 
  results_1.position, 
  circuits_1.lng, 
  circuits_1.name, 
  results_1.resultid, 
  circuits_1.location, 
  count(*)
from 
  circuits as circuits_1
    inner join results as results_1
    on (circuits_1.circuitid = results_1.resultid )
where circuits_1.name is not NULL
group by circuits_1.lng, circuits_1.location, circuits_1.name, results_1.fastestlap, results_1.position, results_1.resultid
limit 36;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    standings_1.date), 
  constructors_1.nationality, 
  standings_1.date, 
  max(
    standings_1.raceid)
from 
  standings as standings_1
    inner join constructors as constructors_1
    on (standings_1.driverstandingsid = constructors_1.constructorid )
where standings_1.position is not NULL
group by constructors_1.nationality, standings_1.date
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorid, 
  min(
    constructor_standings_1.date), 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid
limit 14;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.qualifyid
from 
  constructor_results as constructor_results_1
    inner join standings as standings_1
          inner join results as results_1
          on (standings_1.driverstandingsid = results_1.resultid )
        inner join drivers as drivers_1
        on (results_1.resultid = drivers_1.driverid )
      inner join qualifying as qualifying_1
      on (standings_1.driverstandingsid = qualifying_1.qualifyid )
    on (constructor_results_1.constructorresultsid = drivers_1.driverid )
where results_1.points >= results_1.number
limit 20;
-- meta {"num_joins":4,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.resultid, 
  sum(
    results_1.rank), 
  min(
    results_1.constructorid), 
  constructor_results_1.raceid
from 
  races as races_1
        inner join standings as standings_1
        on (races_1.raceid = standings_1.driverstandingsid )
      inner join results as results_1
        inner join constructor_results as constructor_results_1
        on (results_1.resultid = constructor_results_1.constructorresultsid )
      on (standings_1.driverstandingsid = results_1.resultid )
    inner join circuits as circuits_1
    on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
where circuits_1.circuitid is not NULL
group by constructor_results_1.raceid, results_1.resultid
limit 35;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    constructor_results_1.points), 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  sum(
    constructor_results_1.raceid), 
  max(
    constructor_results_1.constructorresultsid), 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points
limit 42;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_results_1.points), 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.raceid
limit 12;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.dob, 
  drivers_1.driverref, 
  drivers_1.forename, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
limit 23;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins < constructor_standings_1.position
limit 30;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    races_1.year), 
  races_1.date, 
  max(
    races_1.date)
from 
  races as races_1
where races_1.name is not NULL
group by races_1.date
limit 41;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    results_1.fastestlap), 
  min(
    results_1.date), 
  avg(
    results_1.fastestlap), 
  results_1.points, 
  results_1.positionorder, 
  results_1.number, 
  results_1.fastestlap, 
  results_1.position
from 
  results as results_1
where results_1.points is not NULL
group by results_1.fastestlap, results_1.number, results_1.points, results_1.position, results_1.positionorder
limit 16;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref, 
  count(*), 
  drivers_1.forename, 
  sum(
    drivers_1.driverid), 
  drivers_1.dob, 
  drivers_1.nationality, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
group by drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.lng, 
  circuits_1.location, 
  circuits_1.lat, 
  circuits_1.name, 
  circuits_1.country, 
  circuits_1.circuitid, 
  avg(
    circuits_1.circuitid), 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.name is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.location, circuits_1.name
limit 26;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
    inner join circuits as circuits_1
    on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
where circuits_1.circuitref is not NULL
limit 37;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid
from 
  qualifying as qualifying_1
    inner join constructors as constructors_1
      inner join qualifying as qualifying_2
      on (constructors_1.constructorid = qualifying_2.qualifyid )
    on (qualifying_1.qualifyid = qualifying_2.qualifyid )
where qualifying_2.driverid is not NULL
limit 39;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 26;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select distinct 
  qualifying_1.number
from 
  qualifying as qualifying_1
    inner join constructor_standings as constructor_standings_1
      inner join constructors as constructors_1
      on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
    on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.points < constructor_standings_1.points
limit 6;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.date, 
  qualifying_2.constructorid, 
  circuits_1.name
from 
  standings as standings_1
      inner join qualifying as qualifying_1
      on (standings_1.driverstandingsid = qualifying_1.qualifyid )
    inner join qualifying as qualifying_2
        inner join circuits as circuits_1
        on (qualifying_2.qualifyid = circuits_1.circuitid )
      inner join constructor_results as constructor_results_1
      on (qualifying_2.qualifyid = constructor_results_1.constructorresultsid )
    on (standings_1.driverstandingsid = circuits_1.circuitid )
where circuits_1.circuitid is not NULL
limit 7;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 27;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    constructor_results_1.points)
from 
  constructor_results as constructor_results_1
where constructor_results_1.date <= constructor_results_1.date
limit 37;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.circuitid, 
  races_1.raceid, 
  races_1.round
from 
  races as races_1
where races_1.time is not NULL
limit 25;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_2.raceid, 
  avg(
    races_1.raceid), 
  standings_1.driverid, 
  standings_2.points
from 
  races as races_1
    inner join standings as standings_1
        inner join standings as standings_2
        on (standings_1.driverstandingsid = standings_2.driverstandingsid )
      inner join constructor_results as constructor_results_1
      on (standings_2.driverstandingsid = constructor_results_1.constructorresultsid )
    on (races_1.raceid = standings_2.driverstandingsid )
where constructor_results_1.points is not NULL
group by standings_1.driverid, standings_2.points, standings_2.raceid
limit 42;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 20;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.year
from 
  races as races_1
where races_1.date is not NULL
limit 9;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.code, 
  drivers_1.dob, 
  max(
    constructors_1.constructorid), 
  drivers_1.forename, 
  drivers_1.surname
from 
  constructors as constructors_1
      inner join drivers as drivers_1
      on (constructors_1.constructorid = drivers_1.driverid )
    inner join constructor_standings as constructor_standings_1
    on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
where constructors_1.name > constructors_1.constructorref
group by drivers_1.code, drivers_1.dob, drivers_1.forename, drivers_1.surname
limit 19;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.code, 
  drivers_1.dob, 
  drivers_1.driverid, 
  min(
    drivers_1.driverid)
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverid
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.driverref, 
  drivers_1.surname, 
  drivers_1.nationality, 
  drivers_1.code, 
  drivers_1.dob, 
  min(
    drivers_1.dob)
from 
  drivers as drivers_1
where drivers_1.forename is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverref, drivers_1.nationality, drivers_1.surname
limit 37;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    circuits_1.alt), 
  circuits_1.name, 
  circuits_1.lng, 
  circuits_1.lat
from 
  circuits as circuits_1
where circuits_1.location is not NULL
group by circuits_1.lat, circuits_1.lng, circuits_1.name
limit 16;
-- meta {"num_joins":5,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_results_1.points), 
  standings_1.points, 
  drivers_1.forename, 
  standings_1.driverid, 
  drivers_2.dob, 
  drivers_2.code, 
  races_1.raceid
from 
  drivers as drivers_1
        inner join constructors as constructors_1
        on (drivers_1.driverid = constructors_1.constructorid )
      inner join drivers as drivers_2
        inner join constructor_results as constructor_results_1
        on (drivers_2.driverid = constructor_results_1.constructorresultsid )
      on (drivers_1.driverid = drivers_2.driverid )
    inner join races as races_1
      inner join standings as standings_1
      on (races_1.raceid = standings_1.driverstandingsid )
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where constructor_results_1.points is not NULL
group by drivers_1.forename, drivers_2.code, drivers_2.dob, races_1.raceid, standings_1.driverid, standings_1.points
limit 19;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  min(
    standings_1.points), 
  constructors_1.constructorref, 
  avg(
    standings_1.points), 
  standings_1.wins, 
  standings_1.position, 
  max(
    standings_1.date), 
  constructors_1.name
from 
  constructors as constructors_1
    inner join standings as standings_1
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where standings_1.date >= standings_1.date
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, standings_1.position, standings_1.wins
limit 27;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_2.date, 
  qualifying_1.driverid, 
  qualifying_1.position, 
  qualifying_2.number, 
  qualifying_2.raceid, 
  min(
    qualifying_1.constructorid)
from 
  qualifying as qualifying_1
    inner join qualifying as qualifying_2
    on (qualifying_1.qualifyid = qualifying_2.qualifyid )
where qualifying_1.date > qualifying_2.date
group by qualifying_1.driverid, qualifying_1.position, qualifying_2.date, qualifying_2.number, qualifying_2.raceid
limit 39;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.position, 
  results_1.date, 
  results_1.constructorid, 
  results_2.grid, 
  results_1.points, 
  results_1.positionorder, 
  results_2.date, 
  results_2.positionorder
from 
  results as results_1
    inner join results as results_2
    on (results_1.resultid = results_2.resultid )
where results_1.positionorder is not NULL
limit 5;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    results_1.rank), 
  results_1.rank
from 
  constructor_standings as constructor_standings_1
      inner join results as results_1
      on (constructor_standings_1.constructorstandingsid = results_1.resultid )
    inner join races as races_1
    on (results_1.resultid = races_1.raceid )
where results_1.resultid is not NULL
group by results_1.rank
limit 24;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.resultid
from 
  results as results_1
where results_1.milliseconds <= results_1.rank
limit 21;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.raceid, 
  results_1.position, 
  results_1.grid, 
  results_1.rank, 
  avg(
    results_1.milliseconds), 
  results_1.driverid
from 
  results as results_1
where results_1.statusid <= results_1.positionorder
group by results_1.driverid, results_1.grid, results_1.position, results_1.raceid, results_1.rank
limit 16;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.name, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 1;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  standings_1.date, 
  results_1.constructorid
from 
  results as results_1
        inner join qualifying as qualifying_1
        on (results_1.resultid = qualifying_1.qualifyid )
      inner join constructor_results as constructor_results_1
        inner join qualifying as qualifying_2
          inner join races as races_1
          on (qualifying_2.qualifyid = races_1.raceid )
        on (constructor_results_1.constructorresultsid = races_1.raceid )
      on (qualifying_1.qualifyid = races_1.raceid )
    inner join standings as standings_1
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where races_1.name >= races_1.time
limit 13;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location, 
  constructor_standings_1.constructorid
from 
  circuits as circuits_1
      inner join qualifying as qualifying_1
        inner join qualifying as qualifying_2
        on (qualifying_1.qualifyid = qualifying_2.qualifyid )
      on (circuits_1.circuitid = qualifying_2.qualifyid )
    inner join constructor_standings as constructor_standings_1
    on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
where circuits_1.name is not NULL
limit 17;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    constructor_standings_1.date), 
  constructors_1.name
from 
  constructor_standings as constructor_standings_1
    inner join constructors as constructors_1
    on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
where constructors_1.constructorref is not NULL
group by constructors_1.name
limit 21;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_2.raceid, 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
    inner join constructor_standings as constructor_standings_2
    on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
where constructor_standings_2.points > constructor_standings_1.points
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
limit 21;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  max(
    constructor_results_1.date)
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 16;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitid, 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
limit 39;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  sum(
    constructor_results_1.points)
from 
  constructor_results as constructor_results_1
where constructor_results_1.date > constructor_results_1.date
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.raceid
limit 11;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
    inner join qualifying as qualifying_2
    on (qualifying_1.qualifyid = qualifying_2.qualifyid )
where qualifying_1.date is not NULL
limit 21;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  constructor_standings_1.constructorstandingsid, 
  count(*), 
  constructor_standings_1.date, 
  max(
    constructor_standings_1.constructorstandingsid)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.date
limit 15;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.forename, 
  races_1.round
from 
  drivers as drivers_1
      inner join drivers as drivers_2
      on (drivers_1.driverid = drivers_2.driverid )
    inner join races as races_1
    on (drivers_1.driverid = races_1.raceid )
where races_1.year is not NULL
limit 15;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.position, 
  min(
    qualifying_1.date)
from 
  qualifying as qualifying_1
where qualifying_1.raceid > qualifying_1.constructorid
group by qualifying_1.position
limit 41;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  sum(
    standings_1.driverstandingsid), 
  standings_1.date, 
  standings_1.driverid, 
  constructor_results_1.date, 
  standings_1.wins, 
  standings_1.raceid, 
  standings_1.points
from 
  constructor_results as constructor_results_1
    inner join standings as standings_1
    on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
where constructor_results_1.date >= standings_1.date
group by constructor_results_1.constructorresultsid, constructor_results_1.date, standings_1.date, standings_1.driverid, standings_1.points, standings_1.raceid, standings_1.wins
limit 19;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.country, 
  circuits_1.location, 
  circuits_1.name, 
  circuits_1.lng, 
  circuits_1.circuitid, 
  count(*)
from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
group by circuits_1.circuitid, circuits_1.country, circuits_1.lng, circuits_1.location, circuits_1.name
limit 31;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    standings_1.raceid), 
  standings_1.driverstandingsid, 
  races_1.round, 
  races_1.date
from 
  races as races_1
    inner join standings as standings_1
    on (races_1.raceid = standings_1.driverstandingsid )
where races_1.date is not NULL
group by races_1.date, races_1.round, standings_1.driverstandingsid
limit 2;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  min(
    constructor_results_1.points), 
  max(
    constructor_results_1.points), 
  min(
    constructor_results_1.date)
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 38;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid, 
  min(
    constructor_results_1.constructorresultsid), 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 40;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
limit 32;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.raceid, 
  races_1.circuitid
from 
  races as races_1
where races_1.raceid is not NULL
limit 8;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorid, 
  max(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.constructorid
limit 13;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.location, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  max(
    circuits_1.lng), 
  circuits_1.alt, 
  constructors_1.name
from 
  circuits as circuits_1
    inner join constructors as constructors_1
    on (circuits_1.circuitid = constructors_1.constructorid )
where circuits_1.circuitid = constructors_1.constructorid
group by circuits_1.alt, circuits_1.location, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 30;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    races_1.raceid)
from 
  races as races_1
    inner join standings as standings_1
    on (races_1.raceid = standings_1.driverstandingsid )
where standings_1.date >= races_1.date
limit 41;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorid, 
  sum(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.constructorid, constructors_1.name, constructors_1.nationality
limit 3;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_standings_1.constructorid, 
  constructors_1.constructorid, 
  drivers_2.nationality, 
  races_1.circuitid, 
  drivers_2.driverref, 
  drivers_2.code, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  races_1.raceid
from 
  races as races_1
      inner join constructor_standings as constructor_standings_1
      on (races_1.raceid = constructor_standings_1.constructorstandingsid )
    inner join drivers as drivers_1
      inner join drivers as drivers_2
        inner join constructors as constructors_1
        on (drivers_2.driverid = constructors_1.constructorid )
      on (drivers_1.driverid = constructors_1.constructorid )
    on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
where races_1.time <= drivers_1.nationality
limit 24;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructor_results_1.constructorresultsid
from 
  standings as standings_1
      inner join constructor_results as constructor_results_1
      on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
    inner join standings as standings_2
      inner join constructor_results as constructor_results_2
        inner join qualifying as qualifying_1
        on (constructor_results_2.constructorresultsid = qualifying_1.qualifyid )
      on (standings_2.driverstandingsid = constructor_results_2.constructorresultsid )
    on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
where constructor_results_1.points is not NULL
limit 23;
-- meta {"num_joins":4,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.dob, 
  qualifying_1.constructorid, 
  max(
    drivers_1.dob), 
  results_1.resultid, 
  results_1.position, 
  races_1.raceid, 
  qualifying_1.qualifyid, 
  count(*), 
  races_1.name, 
  max(
    drivers_1.dob), 
  results_1.fastestlap, 
  qualifying_2.driverid, 
  count(*), 
  races_1.round, 
  qualifying_2.constructorid, 
  drivers_1.driverref, 
  races_1.time, 
  drivers_1.nationality
from 
  results as results_1
    inner join races as races_1
          inner join drivers as drivers_1
          on (races_1.raceid = drivers_1.driverid )
        inner join qualifying as qualifying_1
        on (races_1.raceid = qualifying_1.qualifyid )
      inner join qualifying as qualifying_2
      on (drivers_1.driverid = qualifying_2.qualifyid )
    on (results_1.resultid = races_1.raceid )
where races_1.round is not NULL
group by drivers_1.dob, drivers_1.driverref, drivers_1.nationality, qualifying_1.constructorid, qualifying_1.qualifyid, qualifying_2.constructorid, qualifying_2.driverid, races_1.name, races_1.raceid, races_1.round, races_1.time, results_1.fastestlap, results_1.position, results_1.resultid
limit 38;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.milliseconds, 
  results_1.points, 
  results_1.number, 
  results_1.driverid
from 
  results as results_1
where results_1.laps is not NULL
limit 11;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    constructors_1.constructorid), 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorid >= constructors_1.constructorid
group by constructors_1.constructorid
limit 41;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.raceid, 
  races_1.circuitid, 
  max(
    races_1.raceid), 
  races_1.date
from 
  races as races_1
where races_1.year is not NULL
group by races_1.circuitid, races_1.date, races_1.raceid
limit 39;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  drivers_1.dob, 
  avg(
    drivers_1.driverid), 
  drivers_1.nationality, 
  drivers_1.driverid, 
  drivers_1.forename, 
  max(
    drivers_1.driverid), 
  drivers_1.surname, 
  max(
    drivers_1.driverid)
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
group by drivers_1.dob, drivers_1.driverid, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 18;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 7;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  results_1.statusid, 
  max(
    results_1.raceid), 
  results_1.positionorder
from 
  results as results_1
where results_1.statusid is not NULL
group by results_1.positionorder, results_1.statusid
limit 41;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitid, 
  constructor_results_1.constructorid
from 
  circuits as circuits_1
    inner join constructor_results as constructor_results_1
    on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
where constructor_results_1.constructorid is not NULL
limit 10;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.circuitid, 
  circuits_1.lat, 
  circuits_1.location, 
  max(
    circuits_1.circuitid), 
  circuits_1.country, 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.alt > circuits_1.lat
group by circuits_1.alt, circuits_1.circuitid, circuits_1.country, circuits_1.lat, circuits_1.location
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  races_1.name, 
  races_1.year
from 
  races as races_1
where races_1.time < races_1.name
limit 10;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  circuits_1.alt
from 
  circuits as circuits_1
    inner join qualifying as qualifying_1
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where qualifying_1.raceid < qualifying_1.qualifyid
limit 31;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.date < qualifying_1.date
limit 37;
