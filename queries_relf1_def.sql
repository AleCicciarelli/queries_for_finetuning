select  
  constructor_results_1.raceid, 
  max(
    cast(constructor_results_1.points as float8)), 
  qualifying_1.raceid, 
  constructor_results_1.constructorresultsid, 
  qualifying_1.date, 
  qualifying_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  qualifying_1.driverid, 
  constructor_results_1.constructorid, 
  min(
    cast(constructor_results_1.raceid as int8)), 
  constructor_results_1.constructorresultsid, 
  qualifying_1.number, 
  constructor_results_1.constructorid, 
  qualifying_1.position, 
  constructor_results_1.constructorid, 
  qualifying_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  qualifying_1.date, 
  constructor_results_1.constructorresultsid, 
  max(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  constructor_results_1.raceid, 
  qualifying_1.position, 
  qualifying_1.number, 
  min(
    cast(constructor_results_1.raceid as int8)), 
  count(*), 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  qualifying_1.driverid, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
    inner join qualifying as qualifying_1
    on (constructor_results_1.raceid = qualifying_1.qualifyid )
where constructor_results_1.raceid is not NULL
group by constructor_results_1.raceid, qualifying_1.raceid, constructor_results_1.constructorresultsid, qualifying_1.date, qualifying_1.constructorid, constructor_results_1.date, constructor_results_1.raceid, constructor_results_1.points, qualifying_1.driverid, constructor_results_1.constructorid, constructor_results_1.constructorresultsid, qualifying_1.number, constructor_results_1.constructorid, qualifying_1.position, constructor_results_1.constructorid, qualifying_1.raceid, constructor_results_1.raceid, constructor_results_1.date, qualifying_1.date, constructor_results_1.constructorresultsid, constructor_results_1.constructorid, constructor_results_1.points, qualifying_1.qualifyid, qualifying_1.raceid, constructor_results_1.raceid, qualifying_1.position, qualifying_1.number, constructor_results_1.points, constructor_results_1.constructorresultsid, constructor_results_1.points, qualifying_1.driverid, constructor_results_1.constructorid
limit 35;
select  
  standings_1.points, 
  standings_1.points, 
  standings_1.position, 
  standings_1.position, 
  standings_1.raceid, 
  standings_1.raceid, 
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.points is not NULL
limit 6;
select  
  constructors_1.nationality, 
  count(
    cast(constructors_1.constructorid as int8)), 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.nationality, constructors_1.constructorid, constructors_1.name, constructors_1.nationality, constructors_1.constructorid, constructors_1.constructorref
limit 13;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
limit 1;
select  
  min(
    cast(results_1.date as "timestamp")), 
  results_1.position, 
  sum(
    cast(results_1.driverid as int8))
from 
  results as results_1
where results_1.grid is not NULL
group by results_1.position
limit 1;
select  
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.name, 
  max(
    cast(constructors_1.constructorid as int8)), 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorref, constructors_1.nationality, constructors_1.constructorref, constructors_1.nationality, constructors_1.name, constructors_1.constructorref
limit 28;
select  
  avg(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.constructorid, 
  min(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.date, 
  min(
    cast(constructor_results_1.raceid as int8))
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorid, constructor_results_1.date
limit 11;
select  
  qualifying_1.position, 
  count(*)
from 
  qualifying as qualifying_1
where qualifying_1.date >= qualifying_1.date
group by qualifying_1.position
limit 11;
select  
  constructor_standings_2.raceid, 
  drivers_1.driverid, 
  drivers_1.surname
from 
  constructor_standings as constructor_standings_1
    inner join constructor_standings as constructor_standings_2
      inner join drivers as drivers_1
      on (constructor_standings_2.constructorstandingsid = drivers_1.driverid )
    on (constructor_standings_1.constructorid = drivers_1.driverid )
where drivers_1.code > drivers_1.surname
limit 6;
select  
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 41;
select  
  standings_1.driverstandingsid, 
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
limit 11;
select  
  drivers_1.driverid, 
  races_1.time, 
  max(
    cast(drivers_2.code as text)), 
  drivers_2.nationality, 
  races_1.raceid, 
  drivers_1.code, 
  count(
    cast(races_1.raceid as int8)), 
  drivers_2.code, 
  constructors_1.name, 
  constructors_1.nationality, 
  max(
    cast(drivers_1.dob as "timestamp")), 
  max(
    cast(qualifying_1.date as "timestamp")), 
  constructors_1.constructorref
from 
  drivers as drivers_1
    inner join constructors as constructors_1
        inner join races as races_1
        on (constructors_1.nationality = races_1.name )
      inner join drivers as drivers_2
        inner join qualifying as qualifying_1
        on (drivers_2.driverid = qualifying_1.qualifyid )
      on (races_1.time = drivers_2.driverref )
    on (drivers_1.driverid = constructors_1.constructorid )
where qualifying_1.date >= drivers_2.dob
group by drivers_1.driverid, races_1.time, drivers_2.nationality, races_1.raceid, drivers_1.code, drivers_2.code, constructors_1.name, constructors_1.nationality, constructors_1.constructorref
limit 28;
select  
  qualifying_1.date, 
  qualifying_1.number, 
  qualifying_1.number, 
  qualifying_1.number, 
  qualifying_1.number, 
  qualifying_1.raceid, 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 23;
select  
  max(
    cast(constructors_1.constructorid as int8)), 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.name > constructors_1.constructorref
group by constructors_1.constructorid, constructors_1.name, constructors_1.constructorref, constructors_1.nationality, constructors_1.constructorid, constructors_1.constructorid, constructors_1.constructorid, constructors_1.name, constructors_1.nationality, constructors_1.nationality, constructors_1.nationality
limit 4;
select  
  results_1.date, 
  results_1.number
from 
  results as results_1
where results_1.rank is not NULL
limit 14;
select  
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
limit 31;
select  
  drivers_2.nationality, 
  races_1.circuitid, 
  qualifying_1.position
from 
  races as races_1
    inner join drivers as drivers_1
        inner join constructor_standings as constructor_standings_1
        on (drivers_1.dob = constructor_standings_1.date )
      inner join constructor_results as constructor_results_1
          inner join circuits as circuits_1
          on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
        inner join results as results_1
            inner join drivers as drivers_2
            on (results_1.constructorid = drivers_2.driverid )
          inner join qualifying as qualifying_1
          on (results_1.resultid = qualifying_1.qualifyid )
        on (circuits_1.name = drivers_2.driverref )
      on (constructor_standings_1.raceid = qualifying_1.qualifyid )
    on (races_1.date = drivers_1.dob )
where circuits_1.circuitref is not NULL
limit 4;
select  
  drivers_1.dob, 
  drivers_1.nationality, 
  drivers_1.forename, 
  drivers_1.driverid, 
  drivers_1.nationality, 
  standings_1.driverid, 
  min(
    cast(drivers_1.dob as "timestamp")), 
  standings_1.raceid, 
  drivers_1.driverid, 
  drivers_1.driverid, 
  drivers_1.driverref, 
  drivers_1.driverref, 
  standings_1.points, 
  standings_1.points, 
  standings_1.wins, 
  standings_1.wins, 
  drivers_1.forename, 
  max(
    cast(drivers_1.code as text)), 
  drivers_1.driverid, 
  standings_1.position, 
  min(
    cast(drivers_1.dob as "timestamp")), 
  standings_1.date, 
  standings_1.date, 
  drivers_1.driverid
from 
  standings as standings_1
    inner join drivers as drivers_1
    on (standings_1.position = drivers_1.driverid )
where drivers_1.dob > standings_1.date
group by drivers_1.dob, drivers_1.nationality, drivers_1.forename, drivers_1.driverid, drivers_1.nationality, standings_1.driverid, standings_1.raceid, drivers_1.driverid, drivers_1.driverid, drivers_1.driverref, drivers_1.driverref, standings_1.points, standings_1.points, standings_1.wins, standings_1.wins, drivers_1.forename, drivers_1.driverid, standings_1.position, standings_1.date, standings_1.date, drivers_1.driverid
limit 17;
select  
  drivers_1.dob, 
  qualifying_1.constructorid
from 
  constructor_standings as constructor_standings_1
      inner join qualifying as qualifying_1
        inner join constructor_standings as constructor_standings_2
        on (qualifying_1.constructorid = constructor_standings_2.constructorstandingsid )
      on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
    inner join drivers as drivers_1
    on (qualifying_1.raceid = drivers_1.driverid )
where drivers_1.code is not NULL
limit 9;
select  
  sum(
    cast(circuits_1.lng as float8)), 
  qualifying_1.date, 
  qualifying_1.driverid, 
  circuits_1.circuitref, 
  qualifying_2.driverid, 
  min(
    cast(qualifying_2.date as "timestamp")), 
  qualifying_1.raceid, 
  qualifying_2.driverid, 
  qualifying_2.qualifyid, 
  max(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_2.position, 
  qualifying_1.number, 
  qualifying_1.number, 
  count(*), 
  qualifying_2.number, 
  circuits_1.lng, 
  circuits_1.country, 
  qualifying_2.raceid, 
  qualifying_1.constructorid, 
  circuits_1.name, 
  qualifying_2.raceid, 
  qualifying_2.qualifyid, 
  count(*), 
  max(
    cast(circuits_1.circuitref as text)), 
  qualifying_1.position, 
  circuits_1.name
from 
  circuits as circuits_1
    inner join qualifying as qualifying_1
      inner join qualifying as qualifying_2
      on (qualifying_1.position = qualifying_2.qualifyid )
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where qualifying_2.date >= qualifying_1.date
group by qualifying_1.date, qualifying_1.driverid, circuits_1.circuitref, qualifying_2.driverid, qualifying_1.raceid, qualifying_2.driverid, qualifying_2.qualifyid, qualifying_2.position, qualifying_1.number, qualifying_1.number, qualifying_2.number, circuits_1.lng, circuits_1.country, qualifying_2.raceid, qualifying_1.constructorid, circuits_1.name, qualifying_2.raceid, qualifying_2.qualifyid, qualifying_1.position, circuits_1.name
limit 31;
select  
  drivers_1.dob, 
  drivers_1.nationality, 
  drivers_1.driverref, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.forename is not NULL
limit 17;
select  
  results_1.grid
from 
  results as results_1
      inner join qualifying as qualifying_1
        inner join constructors as constructors_1
        on (qualifying_1.raceid = constructors_1.constructorid )
      on (results_1.grid = constructors_1.constructorid )
    inner join results as results_2
    on (results_1.points = results_2.number )
where results_2.laps is not NULL
limit 7;
select  
  sum(
    cast(circuits_1.circuitid as int8)), 
  min(
    cast(circuits_1.circuitid as int8)), 
  circuits_1.circuitid, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.location = circuits_1.circuitref
group by circuits_1.circuitid, circuits_1.name
limit 15;
select  
  constructor_results_1.constructorresultsid, 
  min(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  min(
    cast(constructor_results_1.date as "timestamp")), 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, constructor_results_1.constructorid, constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.constructorid, constructor_results_1.date
limit 33;
select  
  avg(
    cast(constructor_standings_1.position as int8)), 
  min(
    cast(constructor_standings_1.date as "timestamp")), 
  circuits_2.circuitid, 
  constructor_standings_1.raceid
from 
  constructor_results as constructor_results_1
    inner join constructor_standings as constructor_standings_1
        inner join circuits as circuits_1
        on (constructor_standings_1.constructorid = circuits_1.circuitid )
      inner join qualifying as qualifying_1
        inner join circuits as circuits_2
        on (qualifying_1.position = circuits_2.circuitid )
      on (constructor_standings_1.position = qualifying_1.qualifyid )
    on (constructor_results_1.date = qualifying_1.date )
where constructor_results_1.raceid is not NULL
group by circuits_2.circuitid, constructor_standings_1.raceid
limit 42;
select  
  circuits_1.location, 
  sum(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  circuits_1.lat, 
  circuits_1.circuitid, 
  circuits_1.circuitid, 
  sum(
    cast(constructor_results_1.raceid as int8)), 
  max(
    cast(circuits_1.location as text)), 
  max(
    cast(circuits_1.country as text)), 
  constructors_1.constructorid, 
  min(
    cast(constructors_1.constructorref as text)), 
  circuits_1.circuitid, 
  circuits_1.lat, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid
from 
  circuits as circuits_1
    inner join constructors as constructors_1
      inner join constructor_results as constructor_results_1
      on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
    on (circuits_1.country = constructors_1.constructorref )
where constructors_1.nationality is not NULL
group by circuits_1.location, constructor_results_1.constructorid, constructor_results_1.constructorresultsid, circuits_1.lat, circuits_1.circuitid, circuits_1.circuitid, constructors_1.constructorid, circuits_1.circuitid, circuits_1.lat, constructor_results_1.points, constructor_results_1.constructorresultsid
limit 24;
select  
  races_1.circuitid, 
  races_1.time, 
  races_1.raceid, 
  max(
    cast(races_1.date as "timestamp")), 
  races_1.raceid, 
  races_1.name, 
  races_1.date, 
  races_1.year, 
  races_1.time, 
  races_1.year, 
  races_1.raceid, 
  races_1.date, 
  races_1.name, 
  races_1.name
from 
  races as races_1
where races_1.time is not NULL
group by races_1.circuitid, races_1.time, races_1.raceid, races_1.raceid, races_1.name, races_1.date, races_1.year, races_1.time, races_1.year, races_1.raceid, races_1.date, races_1.name, races_1.name
limit 24;
select  
  max(
    cast(constructor_standings_1.points as float8))
from 
  races as races_1
    inner join constructor_standings as constructor_standings_1
    on (races_1.date = constructor_standings_1.date )
where races_1.round is not NULL
limit 18;
select  
  circuits_1.circuitref, 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.name is not NULL
limit 35;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.position
from 
  qualifying as qualifying_1
    inner join circuits as circuits_1
        inner join constructor_results as constructor_results_1
        on (circuits_1.alt = constructor_results_1.points )
      inner join constructor_standings as constructor_standings_1
      on (circuits_1.lng = constructor_standings_1.points )
    on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
where circuits_1.circuitref <= circuits_1.name
limit 10;
select  
  sum(
    cast(results_1.number as float8))
from 
  results as results_1
where results_1.driverid = results_1.grid
limit 10;
select  
  qualifying_1.date, 
  qualifying_2.qualifyid
from 
  standings as standings_1
      inner join constructor_results as constructor_results_1
        inner join constructor_results as constructor_results_2
          inner join qualifying as qualifying_1
          on (constructor_results_2.constructorid = qualifying_1.qualifyid )
        on (constructor_results_1.raceid = constructor_results_2.constructorresultsid )
      on (standings_1.points = constructor_results_2.points )
    inner join qualifying as qualifying_2
      inner join results as results_1
      on (qualifying_2.position = results_1.resultid )
    on (qualifying_1.number = qualifying_2.qualifyid )
where results_1.number = constructor_results_1.points
limit 18;
select  
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date <= constructor_results_1.date
limit 22;
select  
  min(
    cast(constructor_standings_2.date as "timestamp")), 
  constructor_standings_1.points, 
  constructor_standings_2.position, 
  circuits_1.circuitref, 
  constructor_results_1.constructorresultsid, 
  count(
    cast(constructor_standings_2.constructorid as int8)), 
  circuits_1.circuitid, 
  constructor_standings_1.constructorid, 
  constructor_standings_2.points, 
  constructor_standings_2.constructorstandingsid, 
  constructor_standings_1.date
from 
  constructor_results as constructor_results_1
      inner join circuits as circuits_1
      on (constructor_results_1.raceid = circuits_1.circuitid )
    inner join constructor_standings as constructor_standings_1
      inner join constructor_standings as constructor_standings_2
      on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
    on (circuits_1.alt = constructor_standings_1.points )
where constructor_standings_2.points is not NULL
group by constructor_standings_1.points, constructor_standings_2.position, circuits_1.circuitref, constructor_results_1.constructorresultsid, circuits_1.circuitid, constructor_standings_1.constructorid, constructor_standings_2.points, constructor_standings_2.constructorstandingsid, constructor_standings_1.date
limit 30;
select  
  results_1.number, 
  constructors_1.constructorref, 
  results_1.constructorid, 
  min(
    cast(results_1.resultid as int8)), 
  constructors_1.constructorref, 
  results_1.rank
from 
  results as results_1
    inner join constructors as constructors_1
    on (results_1.constructorid = constructors_1.constructorid )
where results_1.rank is not NULL
group by results_1.number, constructors_1.constructorref, results_1.constructorid, constructors_1.constructorref, results_1.rank
limit 42;
select  
  races_1.circuitid, 
  standings_1.wins
from 
  standings as standings_1
    inner join races as races_1
    on (standings_1.raceid = races_1.raceid )
where standings_1.points is not NULL
limit 6;
select  
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 26;
select  
  circuits_1.circuitid, 
  circuits_1.name, 
  circuits_1.name, 
  max(
    cast(circuits_1.lng as float8)), 
  min(
    cast(circuits_1.circuitid as int8))
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
group by circuits_1.circuitid, circuits_1.name, circuits_1.name
limit 40;
select  
  min(
    cast(results_1.position as float8)), 
  results_1.date, 
  results_1.number, 
  results_1.date
from 
  results as results_1
where results_1.laps is not NULL
group by results_1.date, results_1.number, results_1.date
limit 17;
select  
  results_1.number, 
  results_1.rank, 
  qualifying_1.position, 
  qualifying_2.driverid, 
  results_1.date, 
  results_1.laps, 
  qualifying_1.driverid, 
  qualifying_1.position, 
  results_1.resultid, 
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  qualifying_1.date, 
  results_1.raceid, 
  qualifying_2.raceid, 
  results_1.driverid, 
  min(
    cast(qualifying_2.date as "timestamp")), 
  results_1.driverid
from 
  qualifying as qualifying_1
      inner join qualifying as qualifying_2
      on (qualifying_1.driverid = qualifying_2.qualifyid )
    inner join results as results_1
    on (qualifying_1.date = results_1.date )
where results_1.statusid is not NULL
group by results_1.number, results_1.rank, qualifying_1.position, qualifying_2.driverid, results_1.date, results_1.laps, qualifying_1.driverid, qualifying_1.position, results_1.resultid, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.date, results_1.raceid, qualifying_2.raceid, results_1.driverid, results_1.driverid
limit 40;
select  
  constructor_standings_1.wins, 
  count(*), 
  constructor_standings_1.points, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.wins, constructor_standings_1.points, constructor_standings_1.points, constructor_standings_1.constructorid
limit 19;
select  
  results_1.date, 
  results_1.rank, 
  min(
    cast(results_1.number as float8)), 
  results_1.constructorid, 
  results_1.milliseconds, 
  results_1.date, 
  results_1.grid, 
  results_1.resultid
from 
  results as results_1
where results_1.driverid = results_1.statusid
group by results_1.date, results_1.rank, results_1.constructorid, results_1.milliseconds, results_1.date, results_1.grid, results_1.resultid
limit 40;
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid, 
  min(
    cast(constructor_standings_1.points as float8)), 
  circuits_1.location
from 
  constructor_standings as constructor_standings_1
    inner join circuits as circuits_1
    on (constructor_standings_1.raceid = circuits_1.circuitid )
where circuits_1.lng is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorid, circuits_1.location
limit 3;
select  
  max(
    cast(constructors_1.constructorid as int8))
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 6;
select  
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid, 
  max(
    cast(circuits_1.circuitref as text)), 
  qualifying_1.date, 
  qualifying_1.raceid, 
  circuits_1.circuitref, 
  qualifying_1.number
from 
  constructor_standings as constructor_standings_1
    inner join qualifying as qualifying_1
      inner join circuits as circuits_1
      on (qualifying_1.position = circuits_1.circuitid )
    on (constructor_standings_1.constructorid = qualifying_1.qualifyid )
where circuits_1.circuitref is not NULL
group by qualifying_1.qualifyid, qualifying_1.qualifyid, qualifying_1.date, qualifying_1.raceid, circuits_1.circuitref, qualifying_1.number
limit 31;
select  
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
limit 16;
select  
  races_1.circuitid, 
  races_1.time, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  max(
    cast(drivers_1.forename as text)), 
  races_1.round, 
  standings_1.date
from 
  circuits as circuits_1
        inner join constructors as constructors_1
          inner join races as races_1
          on (constructors_1.nationality = races_1.name )
        on (circuits_1.country = constructors_1.constructorref )
      inner join drivers as drivers_1
      on (races_1.round = drivers_1.driverid )
    inner join standings as standings_1
    on (races_1.raceid = standings_1.driverstandingsid )
where races_1.date > drivers_1.dob
group by races_1.circuitid, races_1.time, constructors_1.nationality, constructors_1.constructorref, constructors_1.constructorref, constructors_1.nationality, constructors_1.nationality, races_1.round, standings_1.date
limit 22;
select  
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
limit 12;
select  
  races_1.year
from 
  circuits as circuits_1
    inner join races as races_1
      inner join qualifying as qualifying_1
      on (races_1.round = qualifying_1.qualifyid )
    on (circuits_1.circuitref = races_1.name )
where circuits_1.circuitid is not NULL
limit 22;
select  
  constructor_results_1.points, 
  constructor_standings_1.position, 
  constructor_standings_1.position, 
  max(
    cast(constructor_results_1.constructorresultsid as int8)), 
  constructor_results_1.raceid, 
  avg(
    cast(constructor_standings_1.points as float8)), 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
    inner join constructor_results as constructor_results_1
    on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
where constructor_results_1.raceid is not NULL
group by constructor_results_1.points, constructor_standings_1.position, constructor_standings_1.position, constructor_results_1.raceid, constructor_standings_1.raceid
limit 1;
select  
  standings_1.raceid, 
  min(
    cast(standings_1.date as "timestamp"))
from 
  standings as standings_1
where standings_1.date is not NULL
group by standings_1.raceid
limit 18;
select  
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  min(
    cast(constructors_1.constructorid as int8)), 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.name, 
  max(
    cast(constructors_1.constructorref as text)), 
  min(
    cast(constructors_1.constructorref as text))
from 
  constructors as constructors_1
where constructors_1.constructorid >= constructors_1.constructorid
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.constructorref, constructors_1.name, constructors_1.nationality, constructors_1.constructorref, constructors_1.name, constructors_1.constructorid, constructors_1.name, constructors_1.name, constructors_1.constructorid, constructors_1.nationality, constructors_1.constructorref, constructors_1.constructorid, constructors_1.name
limit 42;
select  
  standings_1.position, 
  min(
    cast(standings_1.raceid as int8)), 
  standings_1.position, 
  standings_1.date, 
  standings_1.driverstandingsid, 
  standings_1.driverid, 
  standings_1.points, 
  sum(
    cast(standings_1.points as float8)), 
  min(
    cast(standings_1.points as float8)), 
  standings_1.raceid, 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.raceid is not NULL
group by standings_1.position, standings_1.position, standings_1.date, standings_1.driverstandingsid, standings_1.driverid, standings_1.points, standings_1.raceid, standings_1.driverid
limit 11;
select  
  races_2.circuitid, 
  max(
    cast(races_1.date as "timestamp")), 
  races_2.name, 
  races_1.date, 
  races_2.circuitid, 
  count(
    cast(races_2.date as "timestamp")), 
  races_2.circuitid, 
  min(
    cast(races_1.name as text)), 
  races_2.raceid, 
  races_1.name, 
  races_1.time, 
  races_1.round, 
  races_1.raceid, 
  races_2.time, 
  races_1.time, 
  races_2.time, 
  max(
    cast(races_1.time as text))
from 
  races as races_1
    inner join races as races_2
    on (races_1.raceid = races_2.raceid )
where races_2.year >= races_2.round
group by races_2.circuitid, races_2.name, races_1.date, races_2.circuitid, races_2.circuitid, races_2.raceid, races_1.name, races_1.time, races_1.round, races_1.raceid, races_2.time, races_1.time, races_2.time
limit 31;
select  
  standings_2.points
from 
  standings as standings_1
    inner join standings as standings_2
    on (standings_1.wins = standings_2.driverstandingsid )
where standings_1.raceid is not NULL
limit 23;
select  
  qualifying_1.constructorid, 
  avg(
    cast(qualifying_1.qualifyid as int8)), 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  qualifying_1.raceid, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
    inner join constructor_results as constructor_results_1
    on (qualifying_1.position = constructor_results_1.constructorresultsid )
where constructor_results_1.constructorid is not NULL
group by qualifying_1.constructorid, constructor_results_1.points, constructor_results_1.constructorresultsid, constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.date, qualifying_1.raceid, qualifying_1.qualifyid
limit 36;
select  
  min(
    cast(circuits_1.name as text)), 
  constructors_1.name, 
  max(
    cast(circuits_1.name as text)), 
  max(
    cast(constructors_1.constructorref as text)), 
  circuits_1.name, 
  circuits_1.location, 
  circuits_1.circuitref
from 
  constructors as constructors_1
    inner join circuits as circuits_1
    on (constructors_1.name = circuits_1.circuitref )
where constructors_1.constructorid > circuits_1.circuitid
group by constructors_1.name, circuits_1.name, circuits_1.location, circuits_1.circuitref
limit 13;
select  
  max(
    cast(races_1.round as int8)), 
  races_1.round, 
  races_1.year, 
  races_1.time, 
  races_1.time, 
  races_1.raceid, 
  races_1.round
from 
  races as races_1
where races_1.date is not NULL
group by races_1.round, races_1.year, races_1.time, races_1.time, races_1.raceid, races_1.round
limit 1;
select  
  circuits_1.circuitid, 
  constructors_1.nationality, 
  circuits_1.lng, 
  constructors_1.constructorref, 
  circuits_1.alt, 
  constructors_1.nationality, 
  count(*), 
  constructors_1.nationality, 
  max(
    cast(circuits_1.alt as float8)), 
  constructors_1.constructorid
from 
  circuits as circuits_1
    inner join constructors as constructors_1
    on (circuits_1.name = constructors_1.constructorref )
where constructors_1.nationality is not NULL
group by circuits_1.circuitid, constructors_1.nationality, circuits_1.lng, constructors_1.constructorref, circuits_1.alt, constructors_1.nationality, constructors_1.nationality, constructors_1.constructorid
limit 25;
select  
  circuits_1.lat, 
  constructor_standings_1.constructorid, 
  sum(
    cast(constructor_standings_1.wins as int8)), 
  circuits_1.alt, 
  min(
    cast(circuits_2.location as text)), 
  constructor_standings_1.constructorstandingsid, 
  circuits_2.circuitid
from 
  qualifying as qualifying_1
    inner join circuits as circuits_1
        inner join constructor_standings as constructor_standings_1
        on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
      inner join circuits as circuits_2
      on (constructor_standings_1.constructorid = circuits_2.circuitid )
    on (qualifying_1.constructorid = circuits_2.circuitid )
where qualifying_1.number is not NULL
group by circuits_1.lat, constructor_standings_1.constructorid, circuits_1.alt, constructor_standings_1.constructorstandingsid, circuits_2.circuitid
limit 22;
select  
  constructors_1.name, 
  min(
    cast(circuits_1.lat as float8)), 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.name, 
  circuits_1.country, 
  constructors_1.nationality, 
  circuits_1.circuitid, 
  constructors_1.constructorid, 
  circuits_1.alt
from 
  constructors as constructors_1
    inner join circuits as circuits_1
    on (constructors_1.constructorid = circuits_1.circuitid )
where circuits_1.circuitid >= constructors_1.constructorid
group by constructors_1.name, constructors_1.constructorid, constructors_1.constructorid, constructors_1.name, circuits_1.country, constructors_1.nationality, circuits_1.circuitid, constructors_1.constructorid, circuits_1.alt
limit 6;
select  
  races_1.raceid, 
  constructors_1.nationality, 
  races_1.year
from 
  constructors as constructors_1
    inner join races as races_1
    on (constructors_1.constructorref = races_1.name )
where races_1.time is not NULL
limit 33;
select  
  standings_1.date, 
  standings_1.driverstandingsid, 
  standings_1.position, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  standings_1.date
from 
  standings as standings_1
    inner join constructors as constructors_1
    on (standings_1.driverid = constructors_1.constructorid )
where standings_1.date >= standings_1.date
limit 13;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.points, 
  circuits_1.lat, 
  circuits_1.country, 
  circuits_1.location, 
  circuits_1.circuitref, 
  constructor_standings_1.date, 
  count(
    cast(constructor_standings_1.constructorstandingsid as int8)), 
  circuits_1.name, 
  circuits_1.lat, 
  circuits_1.location
from 
  constructor_standings as constructor_standings_1
    inner join circuits as circuits_1
    on (constructor_standings_1.wins = circuits_1.circuitid )
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.points, circuits_1.lat, circuits_1.country, circuits_1.location, circuits_1.circuitref, constructor_standings_1.date, circuits_1.name, circuits_1.lat, circuits_1.location
limit 21;
select  
  avg(
    cast(standings_1.points as float8)), 
  standings_1.points, 
  standings_1.position
from 
  standings as standings_1
where standings_1.position is not NULL
group by standings_1.points, standings_1.position
limit 12;
select  
  results_1.driverid, 
  results_1.rank, 
  count(
    cast(results_1.raceid as int8)), 
  results_1.raceid, 
  results_1.laps
from 
  results as results_1
where results_1.laps is not NULL
group by results_1.driverid, results_1.rank, results_1.raceid, results_1.laps
limit 5;
select  
  circuits_1.lat, 
  circuits_1.lat, 
  circuits_1.lat, 
  circuits_1.lat, 
  circuits_1.lat
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
limit 14;
select  
  standings_1.date, 
  standings_1.driverid, 
  standings_1.raceid, 
  standings_1.driverstandingsid
from 
  constructor_results as constructor_results_1
    inner join standings as standings_1
    on (constructor_results_1.points = standings_1.points )
where constructor_results_1.points is not NULL
limit 15;
select  
  sum(
    cast(standings_1.driverstandingsid as int8)), 
  constructors_1.nationality, 
  standings_1.raceid, 
  max(
    cast(constructors_1.name as text)), 
  constructors_1.constructorid
from 
  constructor_results as constructor_results_1
      inner join standings as standings_1
      on (constructor_results_1.raceid = standings_1.driverstandingsid )
    inner join constructors as constructors_1
    on (standings_1.driverid = constructors_1.constructorid )
where constructor_results_1.raceid is not NULL
group by constructors_1.nationality, standings_1.raceid, constructors_1.constructorid
limit 11;
select  
  races_1.round, 
  results_1.raceid, 
  results_1.resultid, 
  results_1.grid, 
  races_1.round, 
  races_1.name, 
  results_1.number, 
  results_1.fastestlap, 
  races_1.circuitid, 
  results_1.laps, 
  results_1.milliseconds, 
  races_1.time, 
  results_1.driverid, 
  races_1.round, 
  races_1.date, 
  races_1.time, 
  results_1.statusid, 
  results_1.statusid
from 
  results as results_1
    inner join races as races_1
    on (results_1.statusid = races_1.raceid )
where results_1.constructorid is not NULL
limit 15;
select  
  races_1.raceid, 
  min(
    cast(races_1.time as text))
from 
  races as races_1
where races_1.date is not NULL
group by races_1.raceid
limit 35;
select  
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
    inner join constructors as constructors_1
      inner join constructor_standings as constructor_standings_1
      on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
    on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
where constructors_1.nationality < constructors_1.name
limit 30;
select  
  max(
    cast(circuits_1.lng as float8)), 
  circuits_1.lng, 
  circuits_1.circuitref, 
  circuits_1.country, 
  sum(
    cast(circuits_1.alt as float8))
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
group by circuits_1.lng, circuits_1.circuitref, circuits_1.country
limit 29;
select  
  qualifying_1.qualifyid, 
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  qualifying_1.constructorid, 
  qualifying_1.number, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
limit 27;
select  
  constructor_results_1.raceid, 
  constructor_standings_1.wins, 
  min(
    cast(constructor_standings_1.points as float8)), 
  constructor_standings_1.constructorstandingsid, 
  constructor_results_1.points
from 
  constructor_standings as constructor_standings_1
      inner join qualifying as qualifying_1
      on (constructor_standings_1.position = qualifying_1.qualifyid )
    inner join constructor_results as constructor_results_1
    on (constructor_standings_1.position = constructor_results_1.constructorresultsid )
where constructor_standings_1.wins is not NULL
group by constructor_results_1.raceid, constructor_standings_1.wins, constructor_standings_1.constructorstandingsid, constructor_results_1.points
limit 21;
select  
  results_1.constructorid, 
  max(
    cast(races_1.date as "timestamp")), 
  races_1.date
from 
  results as results_1
    inner join races as races_1
    on (results_1.date = races_1.date )
where races_1.name is not NULL
group by results_1.constructorid, races_1.date
limit 33;
select  
  circuits_1.lng, 
  circuits_1.circuitid, 
  races_1.round
from 
  races as races_1
    inner join circuits as circuits_1
    on (races_1.round = circuits_1.circuitid )
where races_1.date < races_1.date
limit 37;
select  
  standings_1.position, 
  drivers_2.forename, 
  drivers_2.driverid, 
  circuits_1.location
from 
  drivers as drivers_1
    inner join drivers as drivers_2
        inner join constructor_results as constructor_results_1
        on (drivers_2.driverid = constructor_results_1.constructorresultsid )
      inner join circuits as circuits_1
        inner join standings as standings_1
        on (circuits_1.lng = standings_1.points )
      on (constructor_results_1.points = standings_1.points )
    on (drivers_1.driverref = circuits_1.circuitref )
where drivers_2.surname is not NULL
limit 38;
select  
  standings_1.points
from 
  standings as standings_1
    inner join standings as standings_2
    on (standings_1.driverid = standings_2.driverstandingsid )
where standings_1.points is not NULL
limit 2;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorid, 
  circuits_1.circuitref, 
  constructor_standings_1.date, 
  constructor_standings_1.raceid, 
  circuits_1.alt, 
  circuits_1.alt, 
  drivers_1.surname, 
  races_1.time
from 
  circuits as circuits_1
        inner join constructor_standings as constructor_standings_1
        on (circuits_1.alt = constructor_standings_1.points )
      inner join races as races_1
      on (circuits_1.country = races_1.name )
    inner join drivers as drivers_1
    on (constructor_standings_1.position = drivers_1.driverid )
where races_1.time is not NULL
limit 31;
select  
  constructor_results_1.constructorresultsid
from 
  drivers as drivers_1
        inner join constructor_standings as constructor_standings_1
        on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
      inner join constructor_results as constructor_results_1
      on (constructor_standings_1.constructorid = constructor_results_1.constructorresultsid )
    inner join circuits as circuits_1
    on (constructor_results_1.points = circuits_1.lat )
where constructor_results_1.raceid is not NULL
limit 25;
select  
  qualifying_1.position, 
  constructors_1.constructorref
from 
  qualifying as qualifying_1
    inner join constructors as constructors_1
    on (qualifying_1.raceid = constructors_1.constructorid )
where qualifying_1.number is not NULL
limit 24;
select  
  min(
    cast(constructor_standings_1.points as float8))
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
limit 26;
select  
  constructors_1.constructorref, 
  constructors_1.name, 
  races_1.circuitid, 
  constructors_1.constructorref
from 
  constructors as constructors_1
    inner join races as races_1
    on (constructors_1.name = races_1.name )
where races_1.name is not NULL
limit 6;
select  
  drivers_1.dob, 
  drivers_1.dob, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  min(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.nationality
from 
  constructors as constructors_1
    inner join drivers as drivers_1
    on (constructors_1.name = drivers_1.driverref )
where constructors_1.name is not NULL
group by drivers_1.dob, drivers_1.dob, constructors_1.constructorref, constructors_1.nationality, drivers_1.nationality
limit 8;
select  
  results_1.rank, 
  constructor_results_1.raceid, 
  results_1.statusid, 
  results_1.driverid, 
  constructor_results_1.constructorresultsid, 
  results_1.number, 
  results_1.positionorder, 
  results_1.position, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  results_1.rank, 
  results_1.raceid, 
  results_1.laps
from 
  constructor_results as constructor_results_1
    inner join results as results_1
    on (constructor_results_1.date = results_1.date )
where results_1.laps = results_1.raceid
limit 35;
select  
  constructors_1.name, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  races_1.circuitid, 
  constructors_2.constructorref, 
  constructor_standings_1.wins
from 
  races as races_1
        inner join constructor_standings as constructor_standings_1
        on (races_1.date = constructor_standings_1.date )
      inner join constructors as constructors_1
      on (constructor_standings_1.wins = constructors_1.constructorid )
    inner join constructors as constructors_2
    on (races_1.round = constructors_2.constructorid )
where constructor_standings_1.raceid is not NULL
limit 6;
select  
  constructors_1.name, 
  constructors_1.nationality, 
  count(*), 
  constructors_1.constructorref, 
  constructors_1.name, 
  max(
    cast(constructors_1.constructorref as text)), 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.name, constructors_1.nationality, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 37;
select  
  races_1.circuitid, 
  races_1.round, 
  constructor_results_1.constructorresultsid, 
  results_2.fastestlap
from 
  results as results_1
        inner join races as races_1
        on (results_1.positionorder = races_1.raceid )
      inner join constructor_standings as constructor_standings_1
      on (results_1.laps = constructor_standings_1.constructorstandingsid )
    inner join constructor_results as constructor_results_1
      inner join results as results_2
        inner join constructors as constructors_1
        on (results_2.statusid = constructors_1.constructorid )
      on (constructor_results_1.points = results_2.number )
    on (constructor_standings_1.date = results_2.date )
where constructors_1.constructorid is not NULL
limit 21;
select  
  max(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.driverid, 
  qualifying_1.raceid, 
  qualifying_1.raceid, 
  qualifying_1.position, 
  qualifying_1.constructorid, 
  count(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.driverid, qualifying_1.raceid, qualifying_1.raceid, qualifying_1.position, qualifying_1.constructorid, qualifying_1.raceid
limit 28;
select  
  constructor_results_1.constructorresultsid, 
  constructors_1.name, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
    inner join constructors as constructors_1
    on (constructor_results_1.raceid = constructors_1.constructorid )
where constructor_results_1.points is not NULL
limit 5;
select  
  results_1.date, 
  results_1.resultid, 
  sum(
    cast(results_1.rank as float8)), 
  results_1.statusid
from 
  results as results_1
where results_1.milliseconds is not NULL
group by results_1.date, results_1.resultid, results_1.statusid
limit 38;
select  
  drivers_3.driverid, 
  results_1.rank, 
  sum(
    cast(results_1.constructorid as int8))
from 
  constructor_results as constructor_results_1
      inner join drivers as drivers_1
        inner join drivers as drivers_2
          inner join results as results_1
          on (drivers_2.dob = results_1.date )
        on (drivers_1.nationality = drivers_2.driverref )
      on (constructor_results_1.constructorid = results_1.resultid )
    inner join drivers as drivers_3
    on (drivers_1.code = drivers_3.driverref )
where results_1.points < constructor_results_1.points
group by drivers_3.driverid, results_1.rank
limit 36;
select  
  races_1.name, 
  races_1.date, 
  races_1.name, 
  races_1.time, 
  races_1.name, 
  min(
    cast(races_1.date as "timestamp")), 
  avg(
    cast(races_1.round as int8)), 
  races_1.raceid, 
  races_1.circuitid, 
  races_1.raceid, 
  races_1.date
from 
  races as races_1
where races_1.round is not NULL
group by races_1.name, races_1.date, races_1.name, races_1.time, races_1.name, races_1.raceid, races_1.circuitid, races_1.raceid, races_1.date
limit 23;
select  
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid >= constructor_results_1.constructorresultsid
limit 31;
select  
  circuits_1.circuitid, 
  sum(
    cast(circuits_1.circuitid as int8))
from 
  circuits as circuits_1
where circuits_1.circuitref > circuits_1.country
group by circuits_1.circuitid
limit 26;
select  
  standings_1.driverstandingsid, 
  avg(
    cast(standings_1.points as float8)), 
  standings_1.date, 
  standings_1.points, 
  standings_1.wins, 
  standings_1.driverid, 
  standings_1.points, 
  avg(
    cast(standings_1.points as float8)), 
  standings_1.position, 
  standings_1.driverid, 
  standings_1.driverid, 
  standings_1.date, 
  standings_1.points, 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.points > standings_1.points
group by standings_1.driverstandingsid, standings_1.date, standings_1.points, standings_1.wins, standings_1.driverid, standings_1.points, standings_1.position, standings_1.driverid, standings_1.driverid, standings_1.date, standings_1.points, standings_1.raceid
limit 6;
select distinct 
  max(
    cast(circuits_1.circuitid as int8)), 
  max(
    cast(constructor_results_1.date as "timestamp")), 
  constructor_results_1.constructorid
from 
  constructors as constructors_1
    inner join standings as standings_1
      inner join constructor_results as constructor_results_1
        inner join circuits as circuits_1
        on (constructor_results_1.raceid = circuits_1.circuitid )
      on (standings_1.driverstandingsid = circuits_1.circuitid )
    on (constructors_1.name = circuits_1.circuitref )
where circuits_1.circuitid <= constructor_results_1.constructorresultsid
group by constructor_results_1.constructorid
limit 8;
select  
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
limit 22;
select  
  min(
    cast(results_1.date as "timestamp")), 
  drivers_2.driverid, 
  constructors_1.nationality
from 
  results as results_1
    inner join drivers as drivers_1
        inner join constructors as constructors_1
        on (drivers_1.forename = constructors_1.constructorref )
      inner join drivers as drivers_2
      on (constructors_1.name = drivers_2.driverref )
    on (results_1.statusid = drivers_2.driverid )
where drivers_1.surname is not NULL
group by drivers_2.driverid, constructors_1.nationality
limit 38;
select  
  min(
    cast(constructor_results_1.date as "timestamp")), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  min(
    cast(constructor_results_1.raceid as int8)), 
  constructor_results_1.date, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.date, constructor_results_1.constructorid, constructor_results_1.points, constructor_results_1.date, constructor_results_1.raceid, constructor_results_1.raceid, constructor_results_1.date, constructor_results_1.date, constructor_results_1.raceid
limit 18;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.date, 
  constructor_standings_1.date, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
limit 33;
select  
  results_1.points, 
  min(
    cast(results_1.date as "timestamp")), 
  results_1.number, 
  max(
    cast(results_1.date as "timestamp")), 
  results_1.points, 
  results_1.resultid, 
  results_1.statusid, 
  results_1.points, 
  results_1.rank, 
  results_1.laps, 
  results_1.raceid, 
  count(
    cast(results_1.milliseconds as float8)), 
  results_1.grid, 
  results_1.rank, 
  results_1.driverid, 
  results_1.constructorid, 
  results_1.positionorder
from 
  results as results_1
where results_1.date < results_1.date
group by results_1.points, results_1.number, results_1.points, results_1.resultid, results_1.statusid, results_1.points, results_1.rank, results_1.laps, results_1.raceid, results_1.grid, results_1.rank, results_1.driverid, results_1.constructorid, results_1.positionorder
limit 34;
select  
  drivers_1.driverid, 
  drivers_1.driverref, 
  drivers_1.dob, 
  drivers_1.code, 
  drivers_1.surname, 
  max(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.code is not NULL
group by drivers_1.driverid, drivers_1.driverref, drivers_1.dob, drivers_1.code, drivers_1.surname, drivers_1.dob
limit 35;
select  
  min(
    cast(drivers_1.surname as text)), 
  constructor_standings_1.date, 
  constructor_standings_1.wins
from 
  drivers as drivers_1
    inner join constructor_standings as constructor_standings_1
    on (drivers_1.dob = constructor_standings_1.date )
where constructor_standings_1.raceid is not NULL
group by constructor_standings_1.date, constructor_standings_1.wins
limit 15;
select  
  drivers_1.dob, 
  sum(
    cast(results_1.positionorder as int8)), 
  drivers_1.nationality, 
  max(
    cast(results_1.positionorder as int8)), 
  results_1.constructorid, 
  results_1.driverid, 
  results_1.fastestlap, 
  drivers_1.surname, 
  results_1.raceid, 
  results_1.raceid, 
  results_1.laps
from 
  results as results_1
    inner join drivers as drivers_1
    on (results_1.laps = drivers_1.driverid )
where drivers_1.nationality is not NULL
group by drivers_1.dob, drivers_1.nationality, results_1.constructorid, results_1.driverid, results_1.fastestlap, drivers_1.surname, results_1.raceid, results_1.raceid, results_1.laps
limit 32;
select  
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
limit 11;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  max(
    cast(constructor_standings_1.wins as int8)), 
  sum(
    cast(constructor_standings_1.points as float8)), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.raceid, constructor_standings_1.constructorid, constructor_standings_1.raceid, constructor_standings_1.constructorstandingsid, constructor_standings_1.position, constructor_standings_1.wins
limit 22;
select  
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorid >= constructors_1.constructorid
limit 20;
select  
  qualifying_1.qualifyid, 
  min(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.raceid, 
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.constructorid <= qualifying_1.raceid
group by qualifying_1.qualifyid, qualifying_1.raceid, qualifying_1.position
limit 19;
select  
  races_1.round, 
  races_1.time, 
  max(
    cast(races_1.date as "timestamp")), 
  races_1.name
from 
  races as races_1
where races_1.date > races_1.date
group by races_1.round, races_1.time, races_1.name
limit 7;
select  
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  count(*), 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality, constructors_1.constructorref, constructors_1.constructorid, constructors_1.nationality, constructors_1.constructorref, constructors_1.constructorref, constructors_1.name, constructors_1.nationality, constructors_1.constructorref, constructors_1.name, constructors_1.nationality, constructors_1.nationality, constructors_1.name, constructors_1.name, constructors_1.constructorref, constructors_1.name, constructors_1.constructorref
limit 3;
select  
  standings_1.points, 
  drivers_1.nationality, 
  standings_1.raceid, 
  standings_1.position
from 
  standings as standings_1
    inner join drivers as drivers_1
    on (standings_1.driverid = drivers_1.driverid )
where drivers_1.dob is not NULL
limit 22;
select  
  standings_1.position, 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.wins is not NULL
limit 33;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.date, 
  constructor_standings_1.date, 
  sum(
    cast(constructor_standings_1.points as float8)), 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid, 
  min(
    cast(constructor_standings_1.date as "timestamp")), 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
group by constructor_standings_1.raceid, constructor_standings_1.date, constructor_standings_1.date, constructor_standings_1.date, constructor_standings_1.constructorid, constructor_standings_1.wins, constructor_standings_1.date, constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid
limit 39;
select  
  constructor_results_1.points, 
  min(
    cast(constructor_results_1.points as float8))
from 
  constructors as constructors_1
    inner join constructor_results as constructor_results_1
    on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
where constructor_results_1.date is not NULL
group by constructor_results_1.points
limit 7;
select  
  standings_2.driverstandingsid, 
  standings_2.date, 
  standings_1.points, 
  standings_2.wins, 
  standings_2.points, 
  standings_2.driverstandingsid, 
  count(*), 
  avg(
    cast(standings_1.points as float8)), 
  standings_1.date, 
  standings_1.driverid, 
  standings_1.points
from 
  standings as standings_1
    inner join standings as standings_2
    on (standings_1.points = standings_2.points )
where standings_2.raceid is not NULL
group by standings_2.driverstandingsid, standings_2.date, standings_1.points, standings_2.wins, standings_2.points, standings_2.driverstandingsid, standings_1.date, standings_1.driverid, standings_1.points
limit 31;
select  
  standings_2.position, 
  standings_2.driverstandingsid, 
  max(
    cast(constructor_standings_1.position as int8)), 
  standings_1.driverstandingsid, 
  qualifying_1.number
from 
  qualifying as qualifying_1
    inner join circuits as circuits_1
        inner join drivers as drivers_1
          inner join standings as standings_1
          on (drivers_1.dob = standings_1.date )
        on (circuits_1.alt = standings_1.points )
      inner join constructor_standings as constructor_standings_1
        inner join standings as standings_2
        on (constructor_standings_1.points = standings_2.points )
      on (circuits_1.lat = constructor_standings_1.points )
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where drivers_1.code is not NULL
group by standings_2.position, standings_2.driverstandingsid, standings_1.driverstandingsid, qualifying_1.number
limit 2;
select  
  min(
    cast(constructor_standings_1.date as "timestamp")), 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.raceid, constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date
limit 16;
select  
  results_1.date, 
  results_1.statusid, 
  results_1.points, 
  results_1.grid, 
  results_1.position, 
  sum(
    cast(results_1.points as float8)), 
  results_1.position, 
  results_1.raceid, 
  results_1.milliseconds
from 
  results as results_1
where results_1.laps is not NULL
group by results_1.date, results_1.statusid, results_1.points, results_1.grid, results_1.position, results_1.position, results_1.raceid, results_1.milliseconds
limit 36;
select  
  races_1.raceid
from 
  results as results_1
      inner join races as races_1
        inner join drivers as drivers_1
        on (races_1.raceid = drivers_1.driverid )
      on (results_1.constructorid = races_1.raceid )
    inner join qualifying as qualifying_1
    on (races_1.circuitid = qualifying_1.qualifyid )
where qualifying_1.driverid is not NULL
limit 19;
select  
  races_1.date, 
  constructor_standings_1.raceid
from 
  constructors as constructors_1
            inner join races as races_1
            on (constructors_1.constructorref = races_1.name )
          inner join results as results_1
          on (constructors_1.constructorid = results_1.resultid )
        inner join standings as standings_1
        on (constructors_1.constructorid = standings_1.driverstandingsid )
      inner join races as races_2
      on (races_1.name = races_2.name )
    inner join constructor_standings as constructor_standings_1
      inner join qualifying as qualifying_1
      on (constructor_standings_1.constructorid = qualifying_1.qualifyid )
    on (races_1.date = constructor_standings_1.date )
where standings_1.points <= results_1.milliseconds
limit 40;
select  
  circuits_1.lng, 
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
limit 31;
select  
  standings_1.date, 
  results_1.positionorder
from 
  results as results_1
    inner join standings as standings_1
    on (results_1.position = standings_1.points )
where results_1.resultid is not NULL
limit 20;
select  
  results_1.statusid, 
  drivers_1.driverref, 
  min(
    cast(constructor_results_2.date as "timestamp")), 
  standings_1.driverstandingsid, 
  min(
    cast(drivers_1.nationality as text)), 
  constructor_results_2.constructorid, 
  constructor_results_2.constructorresultsid, 
  constructor_results_1.date, 
  constructor_standings_1.position, 
  max(
    cast(constructor_standings_1.raceid as int8)), 
  min(
    cast(standings_1.driverstandingsid as int8)), 
  standings_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_standings_1.position, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_standings_1.wins, 
  constructor_results_2.date, 
  constructor_standings_2.points, 
  constructor_results_2.date, 
  constructor_standings_2.points, 
  constructor_standings_1.raceid, 
  max(
    cast(results_1.fastestlap as float8)), 
  avg(
    cast(constructor_standings_2.points as float8)), 
  constructor_standings_2.wins
from 
  standings as standings_1
      inner join constructor_standings as constructor_standings_1
        inner join drivers as drivers_1
        on (constructor_standings_1.raceid = drivers_1.driverid )
      on (standings_1.position = drivers_1.driverid )
    inner join constructor_standings as constructor_standings_2
        inner join constructor_results as constructor_results_1
        on (constructor_standings_2.raceid = constructor_results_1.constructorresultsid )
      inner join constructor_results as constructor_results_2
        inner join results as results_1
        on (constructor_results_2.points = results_1.number )
      on (constructor_results_1.constructorid = constructor_results_2.constructorresultsid )
    on (drivers_1.dob = results_1.date )
where constructor_results_2.points is not NULL
group by results_1.statusid, drivers_1.driverref, standings_1.driverstandingsid, constructor_results_2.constructorid, constructor_results_2.constructorresultsid, constructor_results_1.date, constructor_standings_1.position, standings_1.raceid, constructor_results_1.constructorid, constructor_standings_1.position, constructor_results_1.date, constructor_results_1.constructorresultsid, constructor_standings_1.wins, constructor_results_2.date, constructor_standings_2.points, constructor_results_2.date, constructor_standings_2.points, constructor_standings_1.raceid, constructor_standings_2.wins
limit 17;
select  
  races_1.round, 
  circuits_1.circuitref, 
  circuits_1.lng, 
  races_1.raceid, 
  races_1.name, 
  races_1.circuitid, 
  races_2.name, 
  races_2.circuitid, 
  races_1.year, 
  circuits_1.circuitid, 
  races_2.date
from 
  circuits as circuits_1
    inner join races as races_1
      inner join races as races_2
      on (races_1.year = races_2.raceid )
    on (circuits_1.country = races_1.name )
where circuits_1.lat < circuits_1.lng
limit 4;
select  
  min(
    cast(constructor_results_1.date as "timestamp")), 
  constructor_results_1.constructorresultsid, 
  max(
    cast(constructor_results_1.points as float8)), 
  min(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.points, 
  max(
    cast(constructor_results_1.constructorid as int8)), 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.constructorid, constructor_results_1.points, constructor_results_1.points, constructor_results_1.date
limit 15;
select  
  circuits_1.alt, 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
limit 19;
select  
  min(
    cast(races_2.name as text)), 
  races_2.date
from 
  races as races_1
    inner join races as races_2
    on (races_1.circuitid = races_2.raceid )
where races_1.circuitid is not NULL
group by races_2.date
limit 36;
select  
  min(
    cast(drivers_1.forename as text)), 
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
group by drivers_1.driverref
limit 21;
select  
  qualifying_2.raceid, 
  constructors_1.nationality, 
  constructors_1.constructorref
from 
  qualifying as qualifying_1
    inner join constructors as constructors_1
      inner join qualifying as qualifying_2
      on (constructors_1.constructorid = qualifying_2.qualifyid )
    on (qualifying_1.position = qualifying_2.qualifyid )
where constructors_1.constructorid is not NULL
limit 4;
select  
  constructor_standings_1.constructorid, 
  qualifying_1.position
from 
  constructors as constructors_1
    inner join qualifying as qualifying_1
      inner join constructor_standings as constructor_standings_1
      on (qualifying_1.position = constructor_standings_1.constructorstandingsid )
    on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.raceid is not NULL
limit 38;
select  
  circuits_2.circuitref, 
  circuits_1.circuitref, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  count(
    cast(circuits_2.lng as float8)), 
  circuits_1.circuitref, 
  circuits_2.location
from 
  circuits as circuits_1
    inner join circuits as circuits_2
        inner join races as races_1
        on (circuits_2.name = races_1.name )
      inner join constructors as constructors_1
      on (circuits_2.country = constructors_1.constructorref )
    on (circuits_1.name = constructors_1.constructorref )
where constructors_1.constructorid = races_1.raceid
group by circuits_2.circuitref, circuits_1.circuitref, constructors_1.constructorid, constructors_1.constructorid, circuits_1.circuitref, circuits_2.location
limit 11;
select  
  standings_1.date, 
  standings_1.points, 
  standings_1.points
from 
  standings as standings_1
where standings_1.date = standings_1.date
limit 8;
select  
  constructor_standings_1.points, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
limit 21;
select  
  min(
    cast(constructor_standings_1.date as "timestamp")), 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.date, constructor_standings_1.constructorid
limit 31;
select  
  constructor_standings_1.constructorid, 
  results_1.constructorid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  min(
    cast(results_1.driverid as int8)), 
  constructor_standings_1.wins, 
  constructor_standings_1.raceid, 
  results_1.constructorid, 
  results_1.raceid, 
  results_1.position, 
  results_1.grid, 
  constructor_standings_1.points
from 
  results as results_1
    inner join constructor_standings as constructor_standings_1
    on (results_1.grid = constructor_standings_1.constructorstandingsid )
where results_1.raceid is not NULL
group by constructor_standings_1.constructorid, results_1.constructorid, constructor_standings_1.constructorid, constructor_standings_1.wins, constructor_standings_1.constructorid, constructor_standings_1.wins, constructor_standings_1.raceid, results_1.constructorid, results_1.raceid, results_1.position, results_1.grid, constructor_standings_1.points
limit 1;
select  
  constructors_1.nationality, 
  drivers_1.driverref, 
  races_1.raceid, 
  min(
    cast(constructors_1.nationality as text)), 
  drivers_1.forename, 
  constructors_1.constructorref, 
  constructors_1.name, 
  drivers_1.code, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  results_1.grid, 
  min(
    cast(constructors_1.nationality as text)), 
  drivers_1.surname, 
  drivers_1.forename, 
  races_1.year, 
  min(
    cast(races_1.time as text)), 
  sum(
    cast(results_1.rank as float8)), 
  count(*)
from 
  constructors as constructors_1
        inner join races as races_1
        on (constructors_1.name = races_1.name )
      inner join results as results_1
      on (races_1.round = results_1.resultid )
    inner join drivers as drivers_1
    on (races_1.year = drivers_1.driverid )
where drivers_1.driverref is not NULL
group by constructors_1.nationality, drivers_1.driverref, races_1.raceid, drivers_1.forename, constructors_1.constructorref, constructors_1.name, drivers_1.code, constructors_1.constructorid, constructors_1.constructorref, results_1.grid, drivers_1.surname, drivers_1.forename, races_1.year
limit 34;
select  
  constructors_1.nationality, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 37;
select  
  races_1.circuitid, 
  count(
    cast(races_2.name as text)), 
  races_1.name, 
  races_1.year, 
  races_2.year, 
  races_2.time, 
  races_2.round, 
  races_2.round, 
  races_2.name, 
  races_2.round, 
  races_1.circuitid
from 
  races as races_1
    inner join races as races_2
    on (races_1.circuitid = races_2.raceid )
where races_2.date < races_1.date
group by races_1.circuitid, races_1.name, races_1.year, races_2.year, races_2.time, races_2.round, races_2.round, races_2.name, races_2.round, races_1.circuitid
limit 23;
select  
  standings_1.points, 
  standings_1.points, 
  standings_1.position, 
  standings_1.driverstandingsid, 
  standings_1.position, 
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  standings_1.driverid, 
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  avg(
    cast(standings_1.driverid as int8)), 
  standings_1.points, 
  standings_1.date, 
  standings_1.raceid, 
  standings_1.raceid, 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.points >= standings_1.points
group by standings_1.points, standings_1.points, standings_1.position, standings_1.driverstandingsid, standings_1.position, standings_1.driverstandingsid, standings_1.raceid, standings_1.driverid, standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.date, standings_1.raceid, standings_1.raceid, standings_1.driverid
limit 40;
select  
  races_1.name, 
  races_1.name, 
  races_1.time, 
  races_1.year, 
  min(
    cast(races_1.date as "timestamp"))
from 
  races as races_1
where races_1.date < races_1.date
group by races_1.name, races_1.name, races_1.time, races_1.year
limit 16;
select  
  constructors_1.constructorref, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 3;
select  
  drivers_1.code, 
  drivers_1.code, 
  drivers_1.code, 
  drivers_1.nationality, 
  drivers_1.forename, 
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.driverid >= drivers_1.driverid
limit 10;
select  
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.points = constructor_results_1.points
limit 13;
select  
  drivers_1.dob, 
  drivers_1.surname, 
  drivers_1.surname, 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.driverid <= drivers_1.driverid
limit 9;
select  
  standings_1.position, 
  count(*), 
  max(
    cast(standings_1.driverstandingsid as int8)), 
  qualifying_1.raceid, 
  qualifying_1.position, 
  qualifying_1.position, 
  qualifying_1.qualifyid
from 
  standings as standings_1
    inner join qualifying as qualifying_1
    on (standings_1.wins = qualifying_1.qualifyid )
where standings_1.date <= qualifying_1.date
group by standings_1.position, qualifying_1.raceid, qualifying_1.position, qualifying_1.position, qualifying_1.qualifyid
limit 38;
select  
  min(
    cast(circuits_1.country as text)), 
  constructor_standings_1.date
from 
  qualifying as qualifying_1
      inner join constructor_standings as constructor_standings_1
      on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
    inner join constructor_results as constructor_results_1
        inner join constructor_standings as constructor_standings_2
          inner join circuits as circuits_1
          on (constructor_standings_2.constructorid = circuits_1.circuitid )
        on (constructor_results_1.date = constructor_standings_2.date )
      inner join races as races_1
      on (constructor_results_1.constructorid = races_1.raceid )
    on (constructor_standings_1.position = circuits_1.circuitid )
where constructor_standings_2.constructorid is not NULL
group by constructor_standings_1.date
limit 13;
select  
  min(
    cast(circuits_1.country as text)), 
  qualifying_1.date, 
  constructor_results_1.constructorresultsid, 
  max(
    cast(results_1.date as "timestamp")), 
  circuits_1.circuitid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  results_1.number, 
  circuits_1.circuitid
from 
  results as results_1
    inner join qualifying as qualifying_1
      inner join circuits as circuits_1
          inner join constructor_results as constructor_results_1
          on (circuits_1.alt = constructor_results_1.points )
        inner join results as results_2
        on (circuits_1.alt = results_2.number )
      on (qualifying_1.number = results_2.resultid )
    on (results_1.positionorder = circuits_1.circuitid )
where circuits_1.location is not NULL
group by qualifying_1.date, constructor_results_1.constructorresultsid, circuits_1.circuitid, constructor_results_1.constructorresultsid, constructor_results_1.raceid, results_1.number, circuits_1.circuitid
limit 7;
select  
  qualifying_1.number, 
  qualifying_1.qualifyid, 
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 21;
select  
  standings_1.wins, 
  standings_1.wins, 
  max(
    cast(standings_1.date as "timestamp")), 
  standings_1.wins, 
  standings_1.wins, 
  standings_1.points
from 
  standings as standings_1
where standings_1.driverid is not NULL
group by standings_1.wins, standings_1.wins, standings_1.wins, standings_1.wins, standings_1.points
limit 2;
select  
  constructor_standings_1.position, 
  min(
    cast(constructor_standings_1.date as "timestamp")), 
  constructors_1.constructorid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid, 
  constructors_1.constructorid, 
  races_1.circuitid, 
  constructors_1.constructorid, 
  constructor_standings_1.date, 
  races_1.raceid, 
  races_1.year
from 
  races as races_1
      inner join constructors as constructors_1
      on (races_1.raceid = constructors_1.constructorid )
    inner join constructor_standings as constructor_standings_1
    on (races_1.year = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.wins < constructors_1.constructorid
group by constructor_standings_1.position, constructors_1.constructorid, constructor_standings_1.raceid, constructor_standings_1.raceid, constructors_1.constructorid, races_1.circuitid, constructors_1.constructorid, constructor_standings_1.date, races_1.raceid, races_1.year
limit 21;
select  
  standings_1.position, 
  standings_1.raceid, 
  max(
    cast(standings_1.date as "timestamp")), 
  standings_1.date, 
  standings_1.raceid, 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.wins is not NULL
group by standings_1.position, standings_1.raceid, standings_1.date, standings_1.raceid, standings_1.raceid
limit 30;
select  
  standings_1.raceid, 
  standings_1.date
from 
  standings as standings_1
where standings_1.driverstandingsid <= standings_1.position
limit 36;
select  
  min(
    cast(circuits_1.location as text)), 
  circuits_1.location, 
  min(
    cast(circuits_1.location as text))
from 
  circuits as circuits_1
where circuits_1.alt <= circuits_1.lat
group by circuits_1.location
limit 12;
select  
  results_1.statusid, 
  min(
    cast(results_1.resultid as int8)), 
  results_1.grid, 
  results_1.positionorder, 
  results_1.raceid, 
  results_1.raceid, 
  results_1.number
from 
  results as results_1
where results_1.number is not NULL
group by results_1.statusid, results_1.grid, results_1.positionorder, results_1.raceid, results_1.raceid, results_1.number
limit 41;
select  
  qualifying_1.raceid, 
  races_1.name, 
  qualifying_1.number, 
  qualifying_1.constructorid, 
  qualifying_1.raceid, 
  constructor_results_1.constructorresultsid, 
  qualifying_1.number
from 
  races as races_1
    inner join constructor_results as constructor_results_1
      inner join qualifying as qualifying_1
      on (constructor_results_1.constructorid = qualifying_1.qualifyid )
    on (races_1.raceid = constructor_results_1.constructorresultsid )
where constructor_results_1.points is not NULL
limit 35;
select distinct 
  qualifying_1.number, 
  qualifying_1.position, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
limit 36;
select  
  drivers_1.dob, 
  drivers_1.surname, 
  drivers_1.code, 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.driverref < drivers_1.nationality
limit 34;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 6;
select  
  circuits_1.name, 
  constructor_standings_1.position, 
  circuits_1.alt
from 
  constructor_results as constructor_results_1
    inner join constructor_standings as constructor_standings_1
        inner join circuits as circuits_1
        on (constructor_standings_1.raceid = circuits_1.circuitid )
      inner join races as races_1
      on (constructor_standings_1.constructorid = races_1.raceid )
    on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
where circuits_1.location > races_1.name
limit 11;
select  
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points >= constructor_standings_1.points
limit 27;
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins, 
  constructor_standings_1.wins, 
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
limit 39;
select  
  constructors_1.nationality, 
  races_1.name, 
  max(
    cast(constructor_standings_1.points as float8)), 
  constructors_1.nationality, 
  sum(
    cast(standings_1.wins as int8)), 
  constructor_results_1.date, 
  races_1.raceid, 
  races_1.time, 
  races_1.year, 
  constructors_1.constructorref, 
  standings_1.points
from 
  constructor_standings as constructor_standings_1
    inner join constructor_results as constructor_results_1
      inner join constructors as constructors_1
        inner join standings as standings_1
          inner join races as races_1
          on (standings_1.raceid = races_1.raceid )
        on (constructors_1.constructorid = standings_1.driverstandingsid )
      on (constructor_results_1.constructorid = constructors_1.constructorid )
    on (constructor_standings_1.constructorstandingsid = races_1.raceid )
where constructor_results_1.constructorid is not NULL
group by constructors_1.nationality, races_1.name, constructors_1.nationality, constructor_results_1.date, races_1.raceid, races_1.time, races_1.year, constructors_1.constructorref, standings_1.points
limit 39;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid
from 
  drivers as drivers_1
    inner join constructor_results as constructor_results_1
    on (drivers_1.driverid = constructor_results_1.constructorresultsid )
where drivers_1.driverid is not NULL
limit 40;
select  
  qualifying_1.constructorid, 
  qualifying_1.date, 
  qualifying_1.number, 
  qualifying_1.date, 
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  qualifying_1.driverid, 
  qualifying_1.qualifyid, 
  qualifying_1.date, 
  qualifying_1.number, 
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid, 
  qualifying_1.position, 
  qualifying_1.position, 
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
limit 25;
select  
  drivers_1.surname, 
  count(
    cast(drivers_1.driverref as text)), 
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
group by drivers_1.surname, drivers_1.forename
limit 4;
select  
  max(
    cast(results_1.constructorid as int8)), 
  circuits_1.circuitref, 
  circuits_1.name, 
  results_1.milliseconds, 
  results_1.milliseconds, 
  results_1.raceid, 
  sum(
    cast(results_1.grid as int8))
from 
  circuits as circuits_1
    inner join results as results_1
    on (circuits_1.circuitid = results_1.resultid )
where results_1.raceid > results_1.grid
group by circuits_1.circuitref, circuits_1.name, results_1.milliseconds, results_1.milliseconds, results_1.raceid
limit 4;
select  
  standings_1.points
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
limit 7;
select  
  standings_1.driverstandingsid, 
  standings_1.date, 
  standings_1.wins, 
  standings_1.points, 
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  standings_1.position, 
  constructor_standings_1.position, 
  standings_1.driverid, 
  standings_1.date
from 
  standings as standings_1
    inner join constructor_standings as constructor_standings_1
    on (standings_1.points = constructor_standings_1.points )
where constructor_standings_1.constructorid is not NULL
limit 33;
select  
  races_1.time, 
  min(
    cast(races_1.name as text)), 
  races_1.round
from 
  races as races_1
where races_1.year is not NULL
group by races_1.time, races_1.round
limit 8;
select  
  results_1.number
from 
  qualifying as qualifying_1
    inner join results as results_1
    on (qualifying_1.constructorid = results_1.resultid )
where results_1.raceid is not NULL
limit 10;
select  
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 14;
select  
  max(
    cast(constructor_standings_1.date as "timestamp")), 
  constructor_standings_1.points, 
  constructor_standings_1.points
from 
  constructors as constructors_1
    inner join constructor_standings as constructor_standings_1
    on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.points, constructor_standings_1.points
limit 38;
select  
  sum(
    cast(qualifying_1.number as int8))
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 9;
select  
  races_1.raceid
from 
  races as races_1
where races_1.year is not NULL
limit 2;
select  
  results_1.number, 
  circuits_1.lng, 
  avg(
    cast(results_1.points as float8)), 
  results_1.number
from 
  circuits as circuits_1
    inner join results as results_1
    on (circuits_1.alt = results_1.number )
where circuits_1.alt is not NULL
group by results_1.number, circuits_1.lng, results_1.number
limit 37;
select  
  constructor_standings_1.raceid
from 
  circuits as circuits_1
    inner join constructor_standings as constructor_standings_1
    on (circuits_1.lng = constructor_standings_1.points )
where circuits_1.country > circuits_1.location
limit 14;
select  
  qualifying_1.raceid
from 
  qualifying as qualifying_1
    inner join constructor_standings as constructor_standings_1
        inner join races as races_1
        on (constructor_standings_1.constructorid = races_1.raceid )
      inner join races as races_2
        inner join constructor_standings as constructor_standings_2
        on (races_2.circuitid = constructor_standings_2.constructorstandingsid )
      on (races_1.circuitid = constructor_standings_2.constructorstandingsid )
    on (qualifying_1.constructorid = constructor_standings_1.constructorstandingsid )
where races_1.round > constructor_standings_1.constructorid
limit 37;
select  
  constructor_results_1.points, 
  constructors_1.constructorid
from 
  constructor_results as constructor_results_1
        inner join races as races_1
        on (constructor_results_1.constructorresultsid = races_1.raceid )
      inner join constructors as constructors_1
        inner join drivers as drivers_1
        on (constructors_1.nationality = drivers_1.driverref )
      on (constructor_results_1.date = drivers_1.dob )
    inner join results as results_1
    on (races_1.year = results_1.resultid )
where constructors_1.name is not NULL
limit 20;
select  
  results_2.number, 
  count(
    cast(results_1.number as float8)), 
  results_2.rank, 
  results_2.positionorder, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  results_2.number, 
  min(
    cast(constructor_standings_1.date as "timestamp")), 
  sum(
    cast(results_1.number as float8)), 
  results_2.number, 
  results_2.grid, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorid, 
  max(
    cast(results_1.date as "timestamp")), 
  results_1.raceid, 
  results_1.fastestlap, 
  results_1.statusid, 
  results_2.raceid, 
  results_1.laps, 
  max(
    cast(results_2.resultid as int8)), 
  results_1.points, 
  results_2.constructorid, 
  constructor_standings_1.points, 
  results_2.rank, 
  results_1.driverid, 
  results_2.grid, 
  min(
    cast(results_1.statusid as int8)), 
  results_1.constructorid, 
  constructor_standings_1.constructorstandingsid
from 
  results as results_1
    inner join results as results_2
      inner join constructor_standings as constructor_standings_1
      on (results_2.fastestlap = constructor_standings_1.points )
    on (results_1.date = constructor_standings_1.date )
where results_2.number >= results_1.points
group by results_2.number, results_2.rank, results_2.positionorder, constructor_standings_1.position, constructor_standings_1.constructorstandingsid, results_2.number, results_2.number, results_2.grid, constructor_standings_1.points, constructor_standings_1.constructorid, results_1.raceid, results_1.fastestlap, results_1.statusid, results_2.raceid, results_1.laps, results_1.points, results_2.constructorid, constructor_standings_1.points, results_2.rank, results_1.driverid, results_2.grid, results_1.constructorid, constructor_standings_1.constructorstandingsid
limit 32;
select  
  min(
    cast(races_1.name as text)), 
  races_1.circuitid, 
  races_1.raceid, 
  min(
    cast(races_1.date as "timestamp")), 
  races_1.date
from 
  races as races_1
where races_1.date is not NULL
group by races_1.circuitid, races_1.raceid, races_1.date
limit 41;
select  
  max(
    cast(races_1.date as "timestamp")), 
  races_1.time, 
  races_1.circuitid, 
  races_1.date, 
  races_1.date, 
  races_1.circuitid, 
  races_1.round
from 
  races as races_1
where races_1.name > races_1.time
group by races_1.time, races_1.circuitid, races_1.date, races_1.date, races_1.circuitid, races_1.round
limit 1;
select  
  drivers_1.code, 
  drivers_2.code, 
  max(
    cast(drivers_2.dob as "timestamp")), 
  min(
    cast(drivers_1.dob as "timestamp")), 
  drivers_2.nationality, 
  drivers_1.nationality, 
  drivers_1.nationality, 
  drivers_1.dob, 
  drivers_1.surname, 
  max(
    cast(drivers_2.code as text)), 
  drivers_2.forename, 
  min(
    cast(drivers_2.driverid as int8)), 
  drivers_1.forename, 
  drivers_1.nationality
from 
  drivers as drivers_1
    inner join drivers as drivers_2
    on (drivers_1.nationality = drivers_2.driverref )
where drivers_2.code = drivers_1.forename
group by drivers_1.code, drivers_2.code, drivers_2.nationality, drivers_1.nationality, drivers_1.nationality, drivers_1.dob, drivers_1.surname, drivers_2.forename, drivers_1.forename, drivers_1.nationality
limit 30;
select  
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
limit 11;
select  
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 38;
select  
  standings_1.wins, 
  standings_1.position, 
  min(
    cast(standings_1.points as float8)), 
  standings_1.wins
from 
  standings as standings_1
where standings_1.date <= standings_1.date
group by standings_1.wins, standings_1.position, standings_1.wins
limit 30;
select  
  constructor_standings_1.points, 
  constructor_standings_1.points, 
  min(
    cast(constructor_standings_1.date as "timestamp")), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  sum(
    cast(constructor_standings_1.points as float8)), 
  constructor_standings_1.raceid, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points, 
  constructor_standings_1.points, 
  sum(
    cast(constructor_standings_1.points as float8)), 
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  constructor_standings_1.date, 
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.position, 
  avg(
    cast(constructor_standings_1.points as float8)), 
  max(
    cast(constructor_standings_1.constructorid as int8))
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
group by constructor_standings_1.points, constructor_standings_1.points, constructor_standings_1.constructorid, constructor_standings_1.raceid, constructor_standings_1.raceid, constructor_standings_1.position, constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.points, constructor_standings_1.wins, constructor_standings_1.position, constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.constructorid, constructor_standings_1.wins, constructor_standings_1.points, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.position
limit 2;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.points, 
  constructor_standings_1.date, 
  constructor_standings_1.points, 
  constructor_standings_1.date, 
  constructor_standings_1.points, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  max(
    cast(constructor_standings_1.points as float8))
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points >= constructor_standings_1.points
group by constructor_standings_1.constructorid, constructor_standings_1.constructorid, constructor_standings_1.constructorid, constructor_standings_1.points, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.date, constructor_standings_1.constructorstandingsid
limit 2;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  sum(
    cast(constructor_results_1.points as float8)), 
  max(
    cast(constructor_results_1.date as "timestamp")), 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  min(
    cast(constructor_results_1.points as float8))
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorid, constructor_results_1.points, constructor_results_1.constructorid, constructor_results_1.points, constructor_results_1.raceid, constructor_results_1.constructorresultsid
limit 13;
select  
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.name is not NULL
limit 27;
select  
  standings_1.date
from 
  standings as standings_1
where standings_1.date is not NULL
limit 39;
select  
  constructor_results_1.date, 
  constructor_standings_1.position, 
  max(
    cast(constructor_standings_1.date as "timestamp"))
from 
  constructor_standings as constructor_standings_1
    inner join constructor_results as constructor_results_1
    on (constructor_standings_1.position = constructor_results_1.constructorresultsid )
where constructor_standings_1.points is not NULL
group by constructor_results_1.date, constructor_standings_1.position
limit 37;
select  
  count(*), 
  races_2.year, 
  standings_1.driverstandingsid, 
  races_2.circuitid
from 
  qualifying as qualifying_1
      inner join races as races_1
      on (qualifying_1.date = races_1.date )
    inner join races as races_2
      inner join results as results_1
        inner join circuits as circuits_1
          inner join standings as standings_1
          on (circuits_1.lat = standings_1.points )
        on (results_1.fastestlap = standings_1.points )
      on (races_2.circuitid = results_1.resultid )
    on (qualifying_1.position = results_1.resultid )
where races_2.year is not NULL
group by races_2.year, standings_1.driverstandingsid, races_2.circuitid
limit 35;
select  
  standings_1.driverstandingsid
from 
  standings as standings_1
    inner join results as results_1
      inner join constructors as constructors_1
      on (results_1.statusid = constructors_1.constructorid )
    on (standings_1.driverid = results_1.resultid )
where standings_1.driverstandingsid is not NULL
limit 3;
select  
  races_1.date, 
  races_1.circuitid, 
  races_1.name, 
  max(
    cast(races_1.date as "timestamp"))
from 
  races as races_1
where races_1.date is not NULL
group by races_1.date, races_1.circuitid, races_1.name
limit 17;
select  
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.name, 
  max(
    cast(constructors_1.nationality as text)), 
  min(
    cast(constructors_1.constructorid as int8)), 
  sum(
    cast(constructors_1.constructorid as int8)), 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.nationality, constructors_1.name, constructors_1.nationality, constructors_1.constructorid, constructors_1.name, constructors_1.name, constructors_1.constructorid, constructors_1.name, constructors_1.constructorref, constructors_1.constructorref, constructors_1.constructorref, constructors_1.constructorref, constructors_1.constructorid
limit 12;
select  
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
limit 31;
select  
  races_1.time, 
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  races_1.date, 
  min(
    cast(races_1.name as text)), 
  avg(
    cast(constructor_standings_1.position as int8))
from 
  races as races_1
    inner join constructor_standings as constructor_standings_1
    on (races_1.raceid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.points is not NULL
group by races_1.time, constructor_standings_1.date, constructor_standings_1.wins, constructor_standings_1.constructorstandingsid, constructor_standings_1.position, races_1.date
limit 29;
select  
  constructor_standings_1.constructorstandingsid, 
  sum(
    cast(results_1.raceid as int8))
from 
  results as results_1
    inner join standings as standings_1
      inner join constructor_standings as constructor_standings_1
        inner join standings as standings_2
        on (constructor_standings_1.position = standings_2.driverstandingsid )
      on (standings_1.wins = constructor_standings_1.constructorstandingsid )
    on (results_1.points = constructor_standings_1.points )
where results_1.fastestlap = standings_2.points
group by constructor_standings_1.constructorstandingsid
limit 23;
select  
  drivers_1.nationality, 
  max(
    cast(drivers_1.driverref as text)), 
  drivers_1.driverid, 
  drivers_1.driverref, 
  drivers_1.code, 
  min(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
group by drivers_1.nationality, drivers_1.driverid, drivers_1.driverref, drivers_1.code, drivers_1.forename
limit 2;
select  
  results_1.raceid, 
  results_1.milliseconds, 
  results_1.number, 
  results_1.rank, 
  results_1.constructorid, 
  results_1.points
from 
  results as results_1
where results_1.milliseconds is not NULL
limit 6;
select  
  max(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_results_1.date, 
  sum(
    cast(constructor_results_1.constructorresultsid as int8)), 
  constructor_results_1.raceid, 
  avg(
    cast(constructor_results_1.points as float8)), 
  max(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.raceid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.raceid, constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_results_1.points, constructor_results_1.points, constructor_results_1.date, constructor_results_1.raceid, constructor_results_1.raceid, constructor_results_1.date
limit 12;
select  
  qualifying_1.driverid, 
  qualifying_1.raceid, 
  count(*)
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
group by qualifying_1.driverid, qualifying_1.raceid
limit 29;
select  
  qualifying_1.constructorid, 
  qualifying_1.raceid, 
  qualifying_1.qualifyid, 
  qualifying_1.number, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 24;
select  
  races_1.time, 
  constructor_standings_1.points, 
  races_1.year, 
  constructor_standings_1.wins, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid
from 
  races as races_1
    inner join constructor_standings as constructor_standings_1
    on (races_1.year = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.date = races_1.date
limit 2;
select  
  constructor_standings_1.constructorstandingsid, 
  races_1.name, 
  races_1.raceid, 
  constructor_results_1.raceid, 
  races_1.name, 
  races_1.raceid, 
  races_1.time
from 
  constructor_standings as constructor_standings_1
    inner join races as races_1
      inner join constructor_results as constructor_results_1
      on (races_1.year = constructor_results_1.constructorresultsid )
    on (constructor_standings_1.position = constructor_results_1.constructorresultsid )
where races_1.year < races_1.raceid
limit 28;
select  
  constructors_1.nationality, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 30;
select  
  results_1.laps, 
  count(
    cast(results_1.number as float8)), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  results_1.statusid, 
  results_1.raceid, 
  circuits_1.name
from 
  circuits as circuits_1
    inner join constructor_results as constructor_results_1
      inner join results as results_1
      on (constructor_results_1.constructorid = results_1.resultid )
    on (circuits_1.lat = results_1.number )
where results_1.date is not NULL
group by results_1.laps, constructor_results_1.constructorresultsid, constructor_results_1.raceid, results_1.statusid, results_1.raceid, circuits_1.name
limit 27;
select  
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
limit 40;
select  
  qualifying_1.constructorid
from 
  circuits as circuits_1
        inner join qualifying as qualifying_1
        on (circuits_1.circuitid = qualifying_1.qualifyid )
      inner join constructors as constructors_1
      on (circuits_1.name = constructors_1.constructorref )
    inner join circuits as circuits_2
    on (constructors_1.nationality = circuits_2.circuitref )
where qualifying_1.constructorid is not NULL
limit 35;
select  
  min(
    cast(constructor_results_1.date as "timestamp")), 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  qualifying_1.driverid, 
  constructor_standings_3.constructorid
from 
  constructor_standings as constructor_standings_1
      inner join constructor_standings as constructor_standings_2
          inner join qualifying as qualifying_1
          on (constructor_standings_2.constructorstandingsid = qualifying_1.qualifyid )
        inner join constructor_results as constructor_results_1
        on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
      on (constructor_standings_1.points = constructor_results_1.points )
    inner join qualifying as qualifying_2
        inner join constructor_standings as constructor_standings_3
        on (qualifying_2.position = constructor_standings_3.constructorstandingsid )
      inner join constructor_standings as constructor_standings_4
      on (qualifying_2.driverid = constructor_standings_4.constructorstandingsid )
    on (constructor_standings_2.date = constructor_standings_3.date )
where constructor_standings_3.points > constructor_standings_1.points
group by constructor_results_1.raceid, constructor_results_1.raceid, qualifying_1.driverid, constructor_standings_3.constructorid
limit 14;
select  
  constructor_results_2.constructorid, 
  constructors_1.nationality, 
  min(
    cast(constructor_results_2.points as float8)), 
  constructor_results_1.date, 
  constructor_standings_1.raceid, 
  constructor_results_2.raceid, 
  constructor_results_1.points
from 
  constructor_standings as constructor_standings_1
      inner join constructors as constructors_1
        inner join constructor_results as constructor_results_1
        on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
      on (constructor_standings_1.raceid = constructors_1.constructorid )
    inner join constructor_results as constructor_results_2
    on (constructor_results_1.constructorid = constructor_results_2.constructorresultsid )
where constructors_1.constructorref is not NULL
group by constructor_results_2.constructorid, constructors_1.nationality, constructor_results_1.date, constructor_standings_1.raceid, constructor_results_2.raceid, constructor_results_1.points
limit 18;
select  
  results_1.grid, 
  circuits_1.circuitid, 
  circuits_1.alt, 
  max(
    cast(circuits_1.lat as float8)), 
  results_1.fastestlap, 
  count(*), 
  max(
    cast(results_1.milliseconds as float8)), 
  circuits_1.lat, 
  sum(
    cast(results_1.constructorid as int8)), 
  circuits_1.circuitid, 
  min(
    cast(circuits_1.lat as float8)), 
  circuits_1.lat, 
  results_1.statusid, 
  avg(
    cast(circuits_1.lat as float8))
from 
  circuits as circuits_1
      inner join results as results_1
      on (circuits_1.lat = results_1.number )
    inner join constructor_results as constructor_results_1
    on (results_1.driverid = constructor_results_1.constructorresultsid )
where circuits_1.lat is not NULL
group by results_1.grid, circuits_1.circuitid, circuits_1.alt, results_1.fastestlap, circuits_1.lat, circuits_1.circuitid, circuits_1.lat, results_1.statusid
limit 22;
select  
  min(
    cast(constructor_results_1.constructorid as int8)), 
  count(*), 
  standings_1.driverid
from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
      inner join constructors as constructors_1
        inner join drivers as drivers_1
        on (constructors_1.constructorid = drivers_1.driverid )
      on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
    on (standings_1.raceid = constructor_results_1.constructorresultsid )
where drivers_1.code is not NULL
group by standings_1.driverid
limit 34;
select  
  races_1.time, 
  races_1.circuitid, 
  races_1.circuitid, 
  races_1.time, 
  races_1.date
from 
  races as races_1
where races_1.date is not NULL
limit 42;
select  
  drivers_1.surname, 
  drivers_1.forename, 
  drivers_1.driverref, 
  drivers_1.dob, 
  drivers_1.surname, 
  drivers_1.driverid, 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.forename is not NULL
limit 17;
select  
  results_1.constructorid, 
  results_1.rank
from 
  results as results_1
where results_1.constructorid is not NULL
limit 9;
select  
  constructor_standings_1.constructorstandingsid, 
  drivers_1.nationality, 
  results_1.constructorid
from 
  constructor_standings as constructor_standings_1
    inner join results as results_1
      inner join drivers as drivers_1
      on (results_1.constructorid = drivers_1.driverid )
    on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
where drivers_1.nationality is not NULL
limit 15;
select  
  drivers_1.nationality, 
  count(*), 
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
group by drivers_1.nationality, drivers_1.dob
limit 24;
select  
  results_1.constructorid
from 
  circuits as circuits_1
    inner join results as results_1
    on (circuits_1.circuitid = results_1.resultid )
where circuits_1.location is not NULL
limit 20;
select  
  min(
    cast(standings_2.driverid as int8)), 
  standings_1.driverstandingsid, 
  standings_1.wins, 
  drivers_1.surname
from 
  drivers as drivers_1
    inner join standings as standings_1
      inner join races as races_1
        inner join standings as standings_2
        on (races_1.date = standings_2.date )
      on (standings_1.driverstandingsid = races_1.raceid )
    on (drivers_1.code = races_1.name )
where drivers_1.driverid is not NULL
group by standings_1.driverstandingsid, standings_1.wins, drivers_1.surname
limit 27;
select  
  drivers_1.driverref, 
  max(
    cast(drivers_1.code as text))
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
group by drivers_1.driverref
limit 13;
select  
  avg(
    cast(drivers_1.driverid as int8)), 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.surname < drivers_1.driverref
group by drivers_1.surname
limit 10;
select  
  circuits_1.lat, 
  circuits_1.lat
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
limit 2;
select  
  circuits_1.circuitref, 
  max(
    cast(circuits_1.circuitid as int8)), 
  circuits_1.country, 
  circuits_1.circuitref, 
  circuits_1.location, 
  min(
    cast(circuits_1.country as text)), 
  max(
    cast(circuits_1.country as text)), 
  circuits_1.lng, 
  circuits_1.lng, 
  circuits_1.country, 
  circuits_1.location, 
  circuits_1.location, 
  circuits_1.location, 
  circuits_1.lng, 
  circuits_1.location, 
  max(
    cast(circuits_1.lat as float8)), 
  min(
    cast(circuits_1.lng as float8)), 
  circuits_1.alt, 
  circuits_1.alt, 
  circuits_1.location, 
  max(
    cast(circuits_1.circuitid as int8)), 
  max(
    cast(circuits_1.country as text)), 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
group by circuits_1.circuitref, circuits_1.country, circuits_1.circuitref, circuits_1.location, circuits_1.lng, circuits_1.lng, circuits_1.country, circuits_1.location, circuits_1.location, circuits_1.location, circuits_1.lng, circuits_1.location, circuits_1.alt, circuits_1.alt, circuits_1.location, circuits_1.lng
limit 24;
select  
  standings_1.driverstandingsid, 
  max(
    cast(standings_1.date as "timestamp")), 
  standings_1.date
from 
  standings as standings_1
where standings_1.wins is not NULL
group by standings_1.driverstandingsid, standings_1.date
limit 11;
select  
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 10;
select  
  count(*), 
  results_1.rank
from 
  results as results_1
where results_1.statusid is not NULL
group by results_1.rank
limit 15;
select  
  results_1.number, 
  min(
    cast(drivers_1.dob as "timestamp"))
from 
  drivers as drivers_1
    inner join results as results_1
    on (drivers_1.dob = results_1.date )
where results_1.rank < results_1.number
group by results_1.number
limit 25;
select  
  constructor_results_1.constructorresultsid, 
  avg(
    cast(constructor_results_1.constructorresultsid as int8)), 
  constructor_results_1.date, 
  constructor_results_1.points, 
  sum(
    cast(constructor_results_1.constructorresultsid as int8)), 
  constructor_results_1.points, 
  min(
    cast(constructor_results_1.date as "timestamp")), 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  count(
    cast(constructor_results_1.constructorid as int8))
from 
  constructor_results as constructor_results_1
where constructor_results_1.date = constructor_results_1.date
group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.points, constructor_results_1.date, constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.constructorid, constructor_results_1.raceid
limit 41;
select  
  constructors_1.constructorref
from 
  results as results_1
      inner join constructor_standings as constructor_standings_1
      on (results_1.points = constructor_standings_1.points )
    inner join constructors as constructors_1
    on (constructor_standings_1.constructorid = constructors_1.constructorid )
where results_1.fastestlap is not NULL
limit 17;
select  
  results_1.positionorder, 
  results_1.points, 
  results_1.milliseconds, 
  results_1.laps, 
  count(*), 
  results_1.number, 
  results_1.date, 
  results_1.raceid, 
  results_1.points, 
  results_1.number, 
  results_1.position
from 
  results as results_1
where results_1.date is not NULL
group by results_1.positionorder, results_1.points, results_1.milliseconds, results_1.laps, results_1.number, results_1.date, results_1.raceid, results_1.points, results_1.number, results_1.position
limit 11;
select  
  sum(
    cast(circuits_1.alt as float8)), 
  circuits_1.lng
from 
  circuits as circuits_1
    inner join results as results_1
    on (circuits_1.lng = results_1.number )
where circuits_1.lng is not NULL
group by circuits_1.lng
limit 40;
select  
  count(*), 
  drivers_1.nationality, 
  max(
    cast(drivers_1.driverref as text)), 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.driverid > drivers_1.driverid
group by drivers_1.nationality, drivers_1.driverid
limit 25;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 36;
select  
  max(
    cast(constructor_standings_1.constructorid as int8)), 
  max(
    cast(constructor_standings_1.constructorstandingsid as int8)), 
  max(
    cast(constructor_standings_1.date as "timestamp")), 
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date, 
  max(
    cast(constructor_standings_1.date as "timestamp"))
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.points, constructor_standings_1.constructorstandingsid, constructor_standings_1.date
limit 15;
select  
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
limit 40;
select  
  max(
    cast(results_1.date as "timestamp")), 
  min(
    cast(results_1.date as "timestamp")), 
  avg(
    cast(results_1.position as float8))
from 
  results as results_1
where results_1.grid is not NULL
limit 30;
select  
  constructor_results_1.date
from 
  constructors as constructors_1
      inner join constructor_results as constructor_results_1
      on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
    inner join constructor_results as constructor_results_2
    on (constructors_1.constructorid = constructor_results_2.constructorresultsid )
where constructor_results_2.constructorresultsid is not NULL
limit 12;
select  
  constructors_1.constructorid, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.nationality > constructors_1.name
limit 33;
select  
  standings_1.driverstandingsid, 
  max(
    cast(results_1.laps as int8)), 
  standings_1.position, 
  standings_1.driverstandingsid, 
  results_1.statusid
from 
  results as results_1
    inner join standings as standings_1
    on (results_1.grid = standings_1.driverstandingsid )
where results_1.grid is not NULL
group by standings_1.driverstandingsid, standings_1.position, standings_1.driverstandingsid, results_1.statusid
limit 38;
select  
  drivers_1.driverref
from 
  drivers as drivers_1
    inner join qualifying as qualifying_1
    on (drivers_1.dob = qualifying_1.date )
where qualifying_1.driverid is not NULL
limit 5;
select  
  constructors_1.name
from 
  qualifying as qualifying_1
    inner join constructors as constructors_1
      inner join drivers as drivers_1
      on (constructors_1.constructorref = drivers_1.driverref )
    on (qualifying_1.constructorid = constructors_1.constructorid )
where constructors_1.nationality is not NULL
limit 37;
select  
  results_1.raceid, 
  results_1.resultid, 
  results_1.rank, 
  results_1.rank, 
  max(
    cast(results_1.laps as int8)), 
  results_1.points, 
  results_1.grid, 
  results_1.number, 
  results_1.number, 
  results_1.constructorid, 
  results_1.laps, 
  results_1.raceid, 
  results_1.constructorid
from 
  results as results_1
where results_1.number is not NULL
group by results_1.raceid, results_1.resultid, results_1.rank, results_1.rank, results_1.points, results_1.grid, results_1.number, results_1.number, results_1.constructorid, results_1.laps, results_1.raceid, results_1.constructorid
limit 1;
select  
  drivers_1.nationality, 
  drivers_1.surname, 
  drivers_1.forename, 
  drivers_1.nationality, 
  drivers_1.driverid, 
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
limit 18;
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 34;
select  
  max(
    cast(constructors_1.name as text)), 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  max(
    cast(constructors_1.name as text)), 
  max(
    cast(constructors_1.constructorref as text)), 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.constructorid, constructors_1.nationality
limit 25;
select  
  standings_1.date, 
  max(
    cast(standings_1.date as "timestamp")), 
  standings_1.position, 
  standings_1.driverstandingsid, 
  standings_1.position, 
  standings_1.position, 
  standings_1.wins, 
  standings_1.raceid, 
  min(
    cast(standings_1.points as float8)), 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.position is not NULL
group by standings_1.date, standings_1.position, standings_1.driverstandingsid, standings_1.position, standings_1.position, standings_1.wins, standings_1.raceid, standings_1.raceid
limit 42;
select  
  min(
    cast(results_1.fastestlap as float8)), 
  races_1.raceid, 
  results_1.positionorder, 
  results_1.position, 
  races_1.date, 
  results_1.positionorder, 
  min(
    cast(results_1.laps as int8)), 
  races_1.date, 
  results_1.driverid, 
  min(
    cast(races_1.date as "timestamp")), 
  races_1.name, 
  races_1.date, 
  results_1.positionorder, 
  results_1.date, 
  races_1.date, 
  races_1.raceid, 
  races_1.round, 
  results_1.grid, 
  races_1.year
from 
  races as races_1
    inner join results as results_1
    on (races_1.raceid = results_1.resultid )
where races_1.date is not NULL
group by races_1.raceid, results_1.positionorder, results_1.position, races_1.date, results_1.positionorder, races_1.date, results_1.driverid, races_1.name, races_1.date, results_1.positionorder, results_1.date, races_1.date, races_1.raceid, races_1.round, results_1.grid, races_1.year
limit 27;
select  
  standings_1.driverstandingsid, 
  standings_1.driverstandingsid, 
  standings_1.points
from 
  standings as standings_1
where standings_1.date is not NULL
limit 35;
select  
  drivers_1.nationality, 
  drivers_1.surname, 
  avg(
    cast(drivers_1.driverid as int8))
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
group by drivers_1.nationality, drivers_1.surname
limit 34;
select  
  qualifying_1.constructorid
from 
  results as results_1
    inner join qualifying as qualifying_1
    on (results_1.raceid = qualifying_1.qualifyid )
where qualifying_1.date = results_1.date
limit 33;
select distinct 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  min(
    cast(constructors_1.nationality as text)), 
  count(*), 
  min(
    cast(constructors_1.name as text)), 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.name, 
  max(
    cast(constructors_1.constructorref as text))
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.constructorid, constructors_1.nationality, constructors_1.constructorid, constructors_1.name, constructors_1.nationality, constructors_1.name
limit 37;
select  
  results_1.points
from 
  constructor_standings as constructor_standings_1
    inner join results as results_1
      inner join drivers as drivers_1
      on (results_1.grid = drivers_1.driverid )
    on (constructor_standings_1.constructorid = drivers_1.driverid )
where constructor_standings_1.position is not NULL
limit 21;
select  
  min(
    cast(qualifying_1.date as "timestamp")), 
  sum(
    cast(qualifying_1.driverid as int8)), 
  qualifying_1.number, 
  qualifying_1.qualifyid, 
  qualifying_1.date, 
  qualifying_1.driverid, 
  qualifying_1.number, 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
group by qualifying_1.number, qualifying_1.qualifyid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.date
limit 28;
select  
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorid <= constructors_1.constructorid
limit 23;
select  
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  min(
    cast(constructor_results_1.date as "timestamp")), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  max(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid > constructor_results_1.constructorresultsid
group by constructor_results_1.date, constructor_results_1.date, constructor_results_1.raceid, constructor_results_1.points, constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_results_1.points, constructor_results_1.raceid
limit 17;
select  
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
limit 42;
select  
  min(
    cast(circuits_1.circuitref as text)), 
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  constructor_standings_1.points, 
  standings_1.driverstandingsid, 
  circuits_1.lng, 
  drivers_1.dob, 
  constructor_standings_1.position, 
  drivers_1.driverref, 
  qualifying_1.constructorid, 
  standings_1.position, 
  standings_1.driverstandingsid
from 
  drivers as drivers_1
    inner join circuits as circuits_1
        inner join constructor_standings as constructor_standings_1
          inner join standings as standings_1
          on (constructor_standings_1.raceid = standings_1.driverstandingsid )
        on (circuits_1.lat = standings_1.points )
      inner join qualifying as qualifying_1
      on (constructor_standings_1.raceid = qualifying_1.qualifyid )
    on (drivers_1.dob = standings_1.date )
where circuits_1.circuitref is not NULL
group by qualifying_1.position, qualifying_1.qualifyid, constructor_standings_1.points, standings_1.driverstandingsid, circuits_1.lng, drivers_1.dob, constructor_standings_1.position, drivers_1.driverref, qualifying_1.constructorid, standings_1.position, standings_1.driverstandingsid
limit 29;
select  
  races_1.year, 
  races_1.round, 
  races_1.raceid
from 
  races as races_1
where races_1.date is not NULL
limit 2;
select  
  standings_1.points, 
  results_1.position, 
  standings_1.driverid, 
  results_1.driverid, 
  circuits_2.name, 
  circuits_1.lat, 
  circuits_1.lng, 
  sum(
    cast(standings_1.raceid as int8)), 
  standings_2.points, 
  standings_1.points, 
  max(
    cast(results_1.milliseconds as float8)), 
  circuits_2.circuitid, 
  results_1.raceid, 
  circuits_2.name, 
  circuits_1.circuitid, 
  standings_1.wins
from 
  standings as standings_1
    inner join standings as standings_2
          inner join results as results_1
          on (standings_2.raceid = results_1.resultid )
        inner join circuits as circuits_1
        on (results_1.position = circuits_1.lat )
      inner join circuits as circuits_2
      on (standings_2.points = circuits_2.lat )
    on (standings_1.position = circuits_1.circuitid )
where standings_2.points >= circuits_1.lng
group by standings_1.points, results_1.position, standings_1.driverid, results_1.driverid, circuits_2.name, circuits_1.lat, circuits_1.lng, standings_2.points, standings_1.points, circuits_2.circuitid, results_1.raceid, circuits_2.name, circuits_1.circuitid, standings_1.wins
limit 28;
select  
  results_1.statusid, 
  constructor_standings_1.raceid, 
  results_1.points, 
  results_1.number, 
  constructors_1.nationality
from 
  constructor_standings as constructor_standings_1
      inner join results as results_1
      on (constructor_standings_1.raceid = results_1.resultid )
    inner join constructors as constructors_1
    on (constructor_standings_1.raceid = constructors_1.constructorid )
where results_1.positionorder <= results_1.laps
limit 10;
select  
  races_1.name, 
  races_1.date, 
  races_1.date
from 
  races as races_1
where races_1.circuitid is not NULL
limit 17;
select  
  constructors_1.nationality, 
  constructors_1.name
from 
  constructors as constructors_1
    inner join standings as standings_1
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where standings_1.date < standings_1.date
limit 7;
select  
  max(
    cast(races_1.date as "timestamp")), 
  races_1.date, 
  races_1.time, 
  races_1.year, 
  races_1.time, 
  races_1.raceid
from 
  races as races_1
where races_1.name is not NULL
group by races_1.date, races_1.time, races_1.year, races_1.time, races_1.raceid
limit 15;
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  min(
    cast(constructor_results_1.raceid as int8)), 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  max(
    cast(constructor_results_1.date as "timestamp")), 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.raceid, constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.constructorid, constructor_results_1.raceid, constructor_results_1.raceid, constructor_results_1.date, constructor_results_1.constructorid, constructor_results_1.constructorid, constructor_results_1.constructorid, constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.raceid
limit 14;
select  
  qualifying_1.qualifyid, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  max(
    cast(qualifying_1.date as "timestamp"))
from 
  qualifying as qualifying_1
    inner join constructors as constructors_1
    on (qualifying_1.position = constructors_1.constructorid )
where qualifying_1.driverid is not NULL
group by qualifying_1.qualifyid, constructors_1.nationality, constructors_1.nationality, constructors_1.nationality
limit 31;
select  
  constructor_standings_1.raceid, 
  max(
    cast(constructor_standings_1.position as int8)), 
  count(
    cast(constructor_standings_1.points as float8)), 
  constructor_results_1.points, 
  constructor_standings_1.constructorstandingsid, 
  avg(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
    inner join constructor_standings as constructor_standings_1
    on (constructor_results_1.constructorid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.raceid, constructor_results_1.points, constructor_standings_1.constructorstandingsid, constructor_results_1.constructorid
limit 6;
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid
from 
  drivers as drivers_1
    inner join constructor_results as constructor_results_1
    on (drivers_1.driverid = constructor_results_1.constructorresultsid )
where constructor_results_1.date is not NULL
limit 21;
select  
  drivers_1.driverref, 
  constructor_standings_1.date, 
  min(
    cast(drivers_1.nationality as text)), 
  constructor_standings_1.date, 
  circuits_1.location, 
  races_1.name, 
  races_1.raceid, 
  drivers_1.nationality, 
  races_1.time, 
  circuits_1.country, 
  constructor_standings_1.date, 
  circuits_1.name, 
  races_1.date, 
  races_1.circuitid, 
  drivers_1.dob
from 
  drivers as drivers_1
    inner join constructor_standings as constructor_standings_1
      inner join races as races_1
        inner join circuits as circuits_1
        on (races_1.time = circuits_1.circuitref )
      on (constructor_standings_1.date = races_1.date )
    on (drivers_1.driverid = races_1.raceid )
where circuits_1.circuitref is not NULL
group by drivers_1.driverref, constructor_standings_1.date, constructor_standings_1.date, circuits_1.location, races_1.name, races_1.raceid, drivers_1.nationality, races_1.time, circuits_1.country, constructor_standings_1.date, circuits_1.name, races_1.date, races_1.circuitid, drivers_1.dob
limit 31;
select  
  constructors_1.name, 
  sum(
    cast(constructors_1.constructorid as int8))
from 
  constructors as constructors_1
where constructors_1.constructorid <= constructors_1.constructorid
group by constructors_1.name
limit 26;
select  
  races_1.time, 
  races_1.raceid, 
  races_1.name, 
  races_1.time, 
  circuits_1.alt, 
  circuits_1.location, 
  circuits_1.location, 
  races_1.name, 
  races_1.name, 
  max(
    cast(races_1.date as "timestamp"))
from 
  races as races_1
    inner join circuits as circuits_1
    on (races_1.round = circuits_1.circuitid )
where races_1.date is not NULL
group by races_1.time, races_1.raceid, races_1.name, races_1.time, circuits_1.alt, circuits_1.location, circuits_1.location, races_1.name, races_1.name
limit 34;
select  
  qualifying_1.date, 
  qualifying_1.position, 
  qualifying_1.raceid, 
  qualifying_1.constructorid, 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.raceid > qualifying_1.qualifyid
limit 14;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date <= constructor_results_1.date
limit 15;
select  
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  qualifying_1.constructorid, 
  qualifying_1.raceid
from 
  standings as standings_1
      inner join qualifying as qualifying_1
      on (standings_1.driverid = qualifying_1.qualifyid )
    inner join drivers as drivers_1
    on (standings_1.date = drivers_1.dob )
where drivers_1.code > drivers_1.surname
limit 32;
select  
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 12;
select  
  count(
    cast(results_1.constructorid as int8)), 
  standings_1.date, 
  standings_1.driverstandingsid, 
  results_1.date, 
  results_1.rank
from 
  standings as standings_1
    inner join results as results_1
    on (standings_1.points = results_1.number )
where results_1.number is not NULL
group by standings_1.date, standings_1.driverstandingsid, results_1.date, results_1.rank
limit 5;
select  
  constructor_results_1.points, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
limit 22;
select  
  constructor_standings_1.date, 
  constructors_1.constructorref, 
  constructor_standings_3.raceid, 
  results_1.driverid, 
  constructor_standings_3.constructorstandingsid, 
  min(
    cast(constructor_standings_1.wins as int8)), 
  constructor_standings_1.points
from 
  results as results_1
        inner join constructor_standings as constructor_standings_1
        on (results_1.laps = constructor_standings_1.constructorstandingsid )
      inner join constructors as constructors_1
      on (constructor_standings_1.constructorid = constructors_1.constructorid )
    inner join constructor_standings as constructor_standings_2
      inner join constructor_standings as constructor_standings_3
      on (constructor_standings_2.constructorstandingsid = constructor_standings_3.constructorstandingsid )
    on (constructor_standings_1.position = constructor_standings_2.constructorstandingsid )
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.date, constructors_1.constructorref, constructor_standings_3.raceid, results_1.driverid, constructor_standings_3.constructorstandingsid, constructor_standings_1.points
limit 11;
select  
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 6;
select  
  races_1.circuitid, 
  standings_1.raceid, 
  races_1.raceid, 
  races_1.round, 
  standings_1.driverstandingsid, 
  standings_1.driverstandingsid
from 
  standings as standings_1
    inner join races as races_1
    on (standings_1.position = races_1.raceid )
where standings_1.wins is not NULL
limit 39;
select  
  count(
    cast(standings_1.position as int8))
from 
  standings as standings_1
    inner join races as races_1
    on (standings_1.date = races_1.date )
where races_1.round is not NULL
limit 12;
select  
  max(
    cast(constructors_1.nationality as text)), 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  min(
    cast(constructors_1.constructorid as int8))
from 
  constructors as constructors_1
where constructors_1.nationality < constructors_1.name
group by constructors_1.constructorref, constructors_1.constructorid, constructors_1.nationality, constructors_1.constructorid
limit 12;
select  
  min(
    cast(results_1.fastestlap as float8)), 
  results_1.statusid, 
  results_1.resultid, 
  results_1.resultid, 
  results_1.number, 
  results_1.points, 
  results_1.driverid, 
  results_1.milliseconds
from 
  results as results_1
where results_1.date < results_1.date
group by results_1.statusid, results_1.resultid, results_1.resultid, results_1.number, results_1.points, results_1.driverid, results_1.milliseconds
limit 24;
select  
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 6;
select  
  constructors_1.nationality, 
  constructor_results_1.date, 
  count(
    cast(constructor_results_1.points as float8)), 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructor_results_1.constructorid, 
  max(
    cast(constructors_1.constructorref as text)), 
  avg(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
    inner join constructors as constructors_1
    on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
where constructor_results_1.points is not NULL
group by constructors_1.nationality, constructor_results_1.date, constructors_1.constructorid, constructors_1.name, constructor_results_1.constructorid, constructor_results_1.raceid
limit 1;
select  
  constructor_standings_1.date, 
  drivers_1.driverid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_standings_1.position, 
  drivers_1.nationality
from 
  constructor_standings as constructor_standings_1
      inner join drivers as drivers_1
      on (constructor_standings_1.constructorid = drivers_1.driverid )
    inner join constructor_results as constructor_results_1
    on (constructor_standings_1.points = constructor_results_1.points )
where constructor_standings_1.date = constructor_results_1.date
limit 15;
select  
  constructor_standings_1.points, 
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.date, 
  count(
    cast(constructor_standings_1.position as int8)), 
  constructor_standings_1.position, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  max(
    cast(constructor_standings_1.date as "timestamp")), 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.position, 
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  constructor_standings_1.date, 
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  constructor_standings_1.date, 
  constructor_standings_1.raceid, 
  constructor_standings_1.date, 
  max(
    cast(constructor_standings_1.date as "timestamp")), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.raceid, 
  constructor_standings_1.position, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  constructor_standings_1.position, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
group by constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.wins, constructor_standings_1.raceid, constructor_standings_1.raceid, constructor_standings_1.raceid, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.date, constructor_standings_1.constructorid, constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorid, constructor_standings_1.position, constructor_standings_1.date, constructor_standings_1.wins, constructor_standings_1.date, constructor_standings_1.raceid, constructor_standings_1.wins, constructor_standings_1.date, constructor_standings_1.raceid, constructor_standings_1.date, constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.raceid, constructor_standings_1.position, constructor_standings_1.position, constructor_standings_1.constructorstandingsid, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.position, constructor_standings_1.position, constructor_standings_1.constructorid
limit 12;
select  
  circuits_1.location, 
  circuits_1.circuitid, 
  min(
    cast(circuits_1.circuitref as text)), 
  count(
    cast(qualifying_1.constructorid as int8)), 
  circuits_1.country
from 
  circuits as circuits_1
    inner join qualifying as qualifying_1
        inner join circuits as circuits_2
        on (qualifying_1.qualifyid = circuits_2.circuitid )
      inner join drivers as drivers_1
      on (qualifying_1.date = drivers_1.dob )
    on (circuits_1.alt = circuits_2.lat )
where circuits_1.circuitid is not NULL
group by circuits_1.location, circuits_1.circuitid, circuits_1.country
limit 33;
select  
  races_1.raceid, 
  max(
    cast(races_1.circuitid as int8)), 
  sum(
    cast(races_1.round as int8)), 
  races_1.round, 
  races_1.name
from 
  races as races_1
where races_1.round is not NULL
group by races_1.raceid, races_1.round, races_1.name
limit 38;
select  
  max(
    cast(qualifying_1.constructorid as int8))
from 
  races as races_1
      inner join drivers as drivers_1
      on (races_1.date = drivers_1.dob )
    inner join constructors as constructors_1
      inner join drivers as drivers_2
        inner join qualifying as qualifying_1
        on (drivers_2.driverid = qualifying_1.qualifyid )
      on (constructors_1.constructorid = qualifying_1.qualifyid )
    on (drivers_1.dob = qualifying_1.date )
where qualifying_1.driverid < qualifying_1.qualifyid
limit 15;
select  
  standings_1.driverstandingsid, 
  standings_1.points, 
  standings_1.raceid, 
  standings_1.position, 
  standings_1.raceid, 
  standings_1.points, 
  min(
    cast(standings_1.date as "timestamp")), 
  standings_1.date
from 
  standings as standings_1
where standings_1.points > standings_1.points
group by standings_1.driverstandingsid, standings_1.points, standings_1.raceid, standings_1.position, standings_1.raceid, standings_1.points, standings_1.date
limit 23;
select  
  count(*)
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
limit 20;
select  
  circuits_1.lat
from 
  circuits as circuits_1
      inner join constructor_results as constructor_results_1
      on (circuits_1.lng = constructor_results_1.points )
    inner join results as results_1
    on (constructor_results_1.constructorid = results_1.resultid )
where results_1.position is not NULL
limit 33;
select  
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
limit 21;
select  
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 12;
select  
  qualifying_1.driverid, 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
limit 15;
select  
  max(
    cast(constructors_1.constructorref as text)), 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.name, constructors_1.nationality, constructors_1.constructorref
limit 29;
select  
  drivers_1.code, 
  drivers_1.driverid, 
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
limit 27;
select  
  results_1.rank, 
  drivers_1.forename, 
  results_1.grid, 
  drivers_1.driverref, 
  drivers_1.driverref, 
  drivers_1.dob, 
  drivers_1.dob, 
  drivers_1.nationality, 
  drivers_1.nationality, 
  results_1.statusid, 
  drivers_1.nationality
from 
  results as results_1
    inner join drivers as drivers_1
    on (results_1.grid = drivers_1.driverid )
where results_1.rank is not NULL
limit 13;
select  
  races_1.circuitid, 
  races_1.circuitid, 
  races_1.round, 
  races_1.circuitid, 
  races_1.round, 
  races_1.name, 
  races_1.round, 
  min(
    cast(races_1.time as text))
from 
  races as races_1
where races_1.raceid is not NULL
group by races_1.circuitid, races_1.circuitid, races_1.round, races_1.circuitid, races_1.round, races_1.name, races_1.round
limit 25;
select  
  max(
    cast(races_1.time as text)), 
  races_1.date, 
  races_1.year
from 
  constructors as constructors_1
    inner join races as races_1
    on (constructors_1.constructorref = races_1.name )
where races_1.year is not NULL
group by races_1.date, races_1.year
limit 22;
select  
  standings_1.position
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
limit 22;
select  
  standings_1.driverstandingsid, 
  standings_1.driverid, 
  standings_1.points, 
  standings_1.position, 
  standings_1.position
from 
  standings as standings_1
where standings_1.date < standings_1.date
limit 32;
select  
  results_1.rank, 
  standings_1.date, 
  standings_1.position
from 
  standings as standings_1
    inner join results as results_1
    on (standings_1.date = results_1.date )
where standings_1.date is not NULL
limit 3;
select  
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
      inner join results as results_1
      on (constructor_results_1.points = results_1.number )
    inner join results as results_2
      inner join constructor_results as constructor_results_2
      on (results_2.positionorder = constructor_results_2.constructorresultsid )
    on (constructor_results_1.constructorid = results_2.resultid )
where constructor_results_2.constructorresultsid <= results_1.resultid
limit 29;
select  
  constructors_1.nationality, 
  count(
    cast(constructors_1.nationality as text)), 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  max(
    cast(constructors_1.name as text)), 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.nationality, constructors_1.constructorref, constructors_1.constructorid, constructors_1.constructorid, constructors_1.name, constructors_1.constructorref, constructors_1.name
limit 40;
select  
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
limit 12;
select  
  sum(
    cast(circuits_1.alt as float8))
from 
  races as races_1
    inner join circuits as circuits_1
      inner join constructors as constructors_1
      on (circuits_1.circuitref = constructors_1.constructorref )
    on (races_1.raceid = constructors_1.constructorid )
where races_1.time is not NULL
limit 35;
select  
  results_1.rank, 
  results_1.rank, 
  results_1.resultid, 
  results_1.points, 
  results_1.positionorder, 
  results_1.raceid
from 
  results as results_1
where results_1.positionorder is not NULL
limit 5;
select  
  results_1.raceid, 
  qualifying_1.date, 
  min(
    cast(qualifying_1.raceid as int8)), 
  results_1.constructorid, 
  results_1.grid
from 
  results as results_1
    inner join qualifying as qualifying_1
    on (results_1.resultid = qualifying_1.qualifyid )
where qualifying_1.number is not NULL
group by results_1.raceid, qualifying_1.date, results_1.constructorid, results_1.grid
limit 19;
select  
  drivers_1.driverref, 
  drivers_1.dob, 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.code < drivers_1.forename
limit 27;
select  
  max(
    cast(races_1.raceid as int8))
from 
  races as races_1
where races_1.raceid is not NULL
limit 18;
select  
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.dob > drivers_1.dob
limit 30;
select distinct 
  qualifying_1.raceid, 
  results_1.rank, 
  qualifying_1.date, 
  min(
    cast(qualifying_1.qualifyid as int8))
from 
  races as races_1
      inner join results as results_1
      on (races_1.round = results_1.resultid )
    inner join qualifying as qualifying_1
    on (results_1.statusid = qualifying_1.qualifyid )
where results_1.date is not NULL
group by qualifying_1.raceid, results_1.rank, qualifying_1.date
limit 14;
select  
  count(*)
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
limit 27;
select  
  drivers_1.surname, 
  drivers_1.nationality, 
  drivers_1.surname, 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
limit 6;
select  
  standings_1.position, 
  standings_1.points, 
  standings_1.driverstandingsid, 
  standings_1.position, 
  standings_1.driverid, 
  standings_1.points, 
  min(
    cast(standings_1.points as float8)), 
  standings_1.wins, 
  standings_1.position, 
  standings_1.wins
from 
  standings as standings_1
where standings_1.driverid > standings_1.raceid
group by standings_1.position, standings_1.points, standings_1.driverstandingsid, standings_1.position, standings_1.driverid, standings_1.points, standings_1.wins, standings_1.position, standings_1.wins
limit 7;
select  
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 24;
select  
  constructor_standings_1.position, 
  constructor_standings_2.date, 
  sum(
    cast(constructor_standings_1.points as float8)), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_2.points, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
    inner join constructor_standings as constructor_standings_2
    on (constructor_standings_1.raceid = constructor_standings_2.constructorstandingsid )
where constructor_standings_2.position is not NULL
group by constructor_standings_1.position, constructor_standings_2.date, constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_2.points, constructor_standings_1.constructorstandingsid
limit 8;
select  
  min(
    cast(races_2.name as text)), 
  races_2.year, 
  constructors_1.name, 
  min(
    cast(qualifying_2.raceid as int8)), 
  min(
    cast(races_2.time as text)), 
  max(
    cast(qualifying_1.date as "timestamp")), 
  races_1.date, 
  qualifying_2.date, 
  max(
    cast(qualifying_1.date as "timestamp"))
from 
  qualifying as qualifying_1
      inner join constructors as constructors_1
        inner join races as races_1
        on (constructors_1.name = races_1.name )
      on (qualifying_1.qualifyid = constructors_1.constructorid )
    inner join qualifying as qualifying_2
      inner join races as races_2
      on (qualifying_2.number = races_2.raceid )
    on (constructors_1.constructorid = races_2.raceid )
where races_1.date is not NULL
group by races_2.year, constructors_1.name, races_1.date, qualifying_2.date
limit 17;
select  
  qualifying_1.driverid, 
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  qualifying_1.date, 
  qualifying_1.constructorid, 
  qualifying_1.driverid, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
limit 8;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.position, 
  min(
    cast(constructor_standings_1.constructorid as int8)), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.raceid, constructor_standings_1.position, constructor_standings_1.constructorstandingsid, constructor_standings_1.date
limit 2;
select  
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
limit 24;
select  
  standings_1.driverid
from 
  standings as standings_1
where standings_1.points is not NULL
limit 13;
select  
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.circuitid > circuits_1.circuitid
limit 6;
select  
  constructor_standings_1.date, 
  constructors_1.nationality, 
  constructor_standings_1.date
from 
  races as races_1
    inner join constructors as constructors_1
      inner join constructor_standings as constructor_standings_1
      on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
    on (races_1.year = constructors_1.constructorid )
where races_1.circuitid > constructor_standings_1.constructorid
limit 25;
select  
  drivers_1.forename, 
  avg(
    cast(constructor_results_1.points as float8)), 
  races_1.name, 
  drivers_1.nationality
from 
  constructor_results as constructor_results_1
    inner join races as races_1
      inner join drivers as drivers_1
      on (races_1.circuitid = drivers_1.driverid )
    on (constructor_results_1.raceid = races_1.raceid )
where races_1.round is not NULL
group by drivers_1.forename, races_1.name, drivers_1.nationality
limit 29;
select  
  min(
    cast(circuits_1.country as text)), 
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.country is not NULL
group by circuits_1.circuitref
limit 41;
select  
  min(
    cast(constructor_results_1.date as "timestamp")), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  min(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.constructorid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.date, constructor_results_1.raceid, constructor_results_1.date, constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_results_1.date, constructor_results_1.constructorid, constructor_results_1.date
limit 12;
select  
  races_1.circuitid, 
  races_1.time
from 
  races as races_1
where races_1.raceid is not NULL
limit 20;
select  
  max(
    cast(results_1.date as "timestamp")), 
  results_1.raceid, 
  results_1.milliseconds, 
  results_1.milliseconds, 
  results_1.number, 
  results_1.positionorder, 
  sum(
    cast(results_1.points as float8)), 
  results_1.date, 
  results_1.points, 
  results_1.statusid
from 
  results as results_1
where results_1.positionorder is not NULL
group by results_1.raceid, results_1.milliseconds, results_1.milliseconds, results_1.number, results_1.positionorder, results_1.date, results_1.points, results_1.statusid
limit 12;
select  
  results_1.constructorid
from 
  races as races_1
    inner join results as results_1
    on (races_1.year = results_1.resultid )
where races_1.date is not NULL
limit 33;
select  
  max(
    cast(constructor_standings_1.points as float8)), 
  min(
    cast(constructor_standings_1.date as "timestamp")), 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.raceid
limit 3;
select  
  circuits_1.alt, 
  circuits_1.circuitref, 
  min(
    cast(circuits_1.circuitid as int8)), 
  max(
    cast(circuits_1.country as text)), 
  max(
    cast(circuits_1.alt as float8)), 
  circuits_1.country
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
group by circuits_1.alt, circuits_1.circuitref, circuits_1.country
limit 28;
select  
  standings_1.raceid
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
limit 16;
select  
  standings_1.raceid, 
  standings_1.driverstandingsid, 
  standings_1.position
from 
  races as races_1
    inner join standings as standings_1
    on (races_1.raceid = standings_1.driverstandingsid )
where standings_1.driverid is not NULL
limit 15;
select  
  count(*), 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorid >= constructors_1.constructorid
group by constructors_1.nationality
limit 36;
select  
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  avg(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  min(
    cast(constructor_results_1.date as "timestamp"))
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.date, constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.constructorid, constructor_results_1.constructorid, constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid, constructor_results_1.date, constructor_results_1.raceid, constructor_results_1.raceid, constructor_results_1.constructorid
limit 12;
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
limit 35;
select  
  drivers_1.driverid, 
  drivers_1.dob, 
  count(
    cast(drivers_1.driverid as int8)), 
  drivers_1.driverid, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.forename is not NULL
group by drivers_1.driverid, drivers_1.dob, drivers_1.driverid, drivers_1.driverid
limit 13;
select  
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorid >= constructors_1.constructorid
limit 41;
select  
  standings_1.raceid, 
  standings_1.points, 
  min(
    cast(standings_1.points as float8)), 
  max(
    cast(races_1.year as int8)), 
  standings_1.wins, 
  min(
    cast(races_1.date as "timestamp")), 
  standings_1.position, 
  standings_1.position, 
  races_1.year, 
  races_1.round, 
  races_1.time, 
  races_1.date, 
  standings_1.position, 
  standings_1.driverstandingsid, 
  standings_1.position, 
  standings_1.driverid, 
  standings_1.position
from 
  races as races_1
    inner join standings as standings_1
    on (races_1.year = standings_1.driverstandingsid )
where races_1.date is not NULL
group by standings_1.raceid, standings_1.points, standings_1.wins, standings_1.position, standings_1.position, races_1.year, races_1.round, races_1.time, races_1.date, standings_1.position, standings_1.driverstandingsid, standings_1.position, standings_1.driverid, standings_1.position
limit 26;
select  
  min(
    cast(standings_1.date as "timestamp")), 
  standings_1.driverstandingsid, 
  standings_1.points, 
  standings_1.wins, 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.driverid is not NULL
group by standings_1.driverstandingsid, standings_1.points, standings_1.wins, standings_1.raceid
limit 37;
select  
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorid >= constructors_1.constructorid
limit 25;
select  
  circuits_1.lat, 
  circuits_1.lat, 
  circuits_1.circuitref, 
  circuits_1.lat, 
  circuits_1.lng, 
  circuits_1.circuitid, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
limit 25;
select  
  constructor_results_1.raceid, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 24;
select  
  constructors_1.constructorid, 
  count(*), 
  sum(
    cast(constructors_1.constructorid as int8)), 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.nationality, constructors_1.name, constructors_1.constructorref, constructors_1.constructorid
limit 29;
select  
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 1;
select  
  drivers_1.dob, 
  drivers_1.code, 
  drivers_1.dob, 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
limit 24;
select  
  constructor_standings_2.points, 
  constructor_standings_2.constructorstandingsid
from 
  constructor_results as constructor_results_1
    inner join constructor_standings as constructor_standings_1
      inner join constructors as constructors_1
        inner join constructor_standings as constructor_standings_2
        on (constructors_1.constructorid = constructor_standings_2.constructorstandingsid )
      on (constructor_standings_1.raceid = constructor_standings_2.constructorstandingsid )
    on (constructor_results_1.points = constructor_standings_1.points )
where constructor_results_1.points is not NULL
limit 30;
select  
  drivers_1.dob
from 
  drivers as drivers_1
    inner join constructor_results as constructor_results_1
    on (drivers_1.dob = constructor_results_1.date )
where constructor_results_1.constructorresultsid is not NULL
limit 13;
select  
  results_1.number, 
  constructor_results_1.date, 
  avg(
    cast(results_1.points as float8)), 
  constructor_results_1.raceid, 
  results_1.fastestlap, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
    inner join results as results_1
    on (constructor_results_1.constructorresultsid = results_1.resultid )
where results_1.driverid is not NULL
group by results_1.number, constructor_results_1.date, constructor_results_1.raceid, results_1.fastestlap, constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_results_1.constructorid, constructor_results_1.raceid
limit 20;
select  
  circuits_1.name, 
  circuits_1.lng, 
  constructor_results_1.date, 
  circuits_1.lng, 
  circuits_1.circuitref, 
  constructor_results_1.constructorid, 
  circuits_1.name, 
  constructor_results_1.raceid, 
  circuits_1.circuitid, 
  constructor_results_1.points, 
  circuits_1.lat, 
  circuits_1.circuitid, 
  circuits_1.alt
from 
  constructor_results as constructor_results_1
    inner join circuits as circuits_1
    on (constructor_results_1.constructorid = circuits_1.circuitid )
where circuits_1.lng is not NULL
limit 36;
select  
  constructor_standings_1.position, 
  circuits_1.circuitid, 
  avg(
    cast(constructor_standings_1.position as int8)), 
  max(
    cast(results_1.date as "timestamp"))
from 
  results as results_1
      inner join circuits as circuits_1
        inner join constructor_standings as constructor_standings_1
        on (circuits_1.lat = constructor_standings_1.points )
      on (results_1.number = constructor_standings_1.points )
    inner join constructors as constructors_1
      inner join qualifying as qualifying_1
        inner join constructors as constructors_2
        on (qualifying_1.position = constructors_2.constructorid )
      on (constructors_1.constructorid = constructors_2.constructorid )
    on (constructor_standings_1.position = constructors_1.constructorid )
where results_1.fastestlap is not NULL
group by constructor_standings_1.position, circuits_1.circuitid
limit 40;
select  
  qualifying_1.raceid, 
  qualifying_1.constructorid, 
  qualifying_1.driverid, 
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 40;
select  
  standings_1.raceid, 
  sum(
    cast(standings_2.points as float8)), 
  standings_2.wins, 
  max(
    cast(standings_1.points as float8)), 
  standings_1.position
from 
  standings as standings_1
    inner join standings as standings_2
    on (standings_1.driverid = standings_2.driverstandingsid )
where standings_1.date is not NULL
group by standings_1.raceid, standings_2.wins, standings_1.position
limit 28;
select  
  max(
    cast(races_1.date as "timestamp")), 
  races_1.time, 
  races_1.date
from 
  races as races_1
    inner join standings as standings_1
    on (races_1.raceid = standings_1.driverstandingsid )
where races_1.date is not NULL
group by races_1.time, races_1.date
limit 20;
select  
  min(
    cast(constructor_results_1.points as float8))
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
limit 6;
select  
  results_1.number, 
  results_1.laps, 
  results_1.positionorder, 
  results_1.grid, 
  results_1.points
from 
  results as results_1
where results_1.date <= results_1.date
limit 34;
select  
  min(
    cast(drivers_1.dob as "timestamp")), 
  min(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.surname, 
  drivers_1.dob, 
  sum(
    cast(drivers_1.driverid as int8)), 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.driverref <= drivers_1.nationality
group by drivers_1.surname, drivers_1.dob, drivers_1.surname
limit 4;
select  
  max(
    cast(constructor_standings_1.points as float8)), 
  constructor_standings_1.position, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.position, 
  constructor_standings_1.date, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.position, constructor_standings_1.position, constructor_standings_1.constructorstandingsid, constructor_standings_1.wins, constructor_standings_1.constructorid, constructor_standings_1.position, constructor_standings_1.date, constructor_standings_1.date
limit 20;
select  
  results_1.resultid, 
  results_1.grid, 
  results_1.milliseconds, 
  results_1.milliseconds, 
  results_1.position, 
  results_1.points
from 
  results as results_1
where results_1.milliseconds is not NULL
limit 31;
select  
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  sum(
    cast(constructor_results_1.points as float8))
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.date, constructor_results_1.date, constructor_results_1.date
limit 34;
select  
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorid > constructors_1.constructorid
limit 14;
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 4;
select  
  standings_1.driverstandingsid, 
  standings_1.position
from 
  standings as standings_1
where standings_1.raceid is not NULL
limit 17;
select  
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  max(
    cast(standings_1.points as float8)), 
  avg(
    cast(standings_1.points as float8)), 
  standings_1.position, 
  standings_1.raceid, 
  standings_1.date, 
  min(
    cast(standings_1.date as "timestamp")), 
  standings_1.points, 
  max(
    cast(standings_1.date as "timestamp")), 
  standings_1.position
from 
  standings as standings_1
where standings_1.date is not NULL
group by standings_1.driverid, standings_1.driverstandingsid, standings_1.position, standings_1.raceid, standings_1.date, standings_1.points, standings_1.position
limit 24;
select  
  circuits_1.circuitid, 
  circuits_1.circuitref, 
  circuits_1.alt, 
  circuits_1.alt, 
  min(
    cast(races_1.circuitid as int8)), 
  races_1.time
from 
  races as races_1
    inner join circuits as circuits_1
    on (races_1.time = circuits_1.circuitref )
where races_1.date is not NULL
group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.alt, circuits_1.alt, races_1.time
limit 11;
select  
  qualifying_1.qualifyid, 
  max(
    cast(qualifying_1.date as "timestamp"))
from 
  qualifying as qualifying_1
    inner join constructors as constructors_1
    on (qualifying_1.constructorid = constructors_1.constructorid )
where constructors_1.constructorref is not NULL
group by qualifying_1.qualifyid
limit 31;
select  
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 21;
select  
  races_1.time, 
  constructor_standings_1.points, 
  races_1.round, 
  races_1.raceid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.points, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  races_1.name
from 
  races as races_1
    inner join constructor_standings as constructor_standings_1
    on (races_1.raceid = constructor_standings_1.constructorstandingsid )
where races_1.round is not NULL
limit 19;
select  
  races_1.circuitid, 
  races_1.time, 
  races_1.circuitid
from 
  races as races_1
where races_1.date is not NULL
limit 13;
select  
  standings_1.position, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid
from 
  standings as standings_1
      inner join constructor_results as constructor_results_1
      on (standings_1.wins = constructor_results_1.constructorresultsid )
    inner join results as results_1
    on (constructor_results_1.raceid = results_1.resultid )
where constructor_results_1.date is not NULL
limit 33;
select  
  drivers_1.nationality, 
  drivers_1.dob, 
  drivers_1.driverid, 
  drivers_1.forename, 
  max(
    cast(drivers_1.forename as text)), 
  drivers_1.driverid, 
  drivers_1.driverref, 
  min(
    cast(drivers_1.dob as "timestamp"))
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
group by drivers_1.nationality, drivers_1.dob, drivers_1.driverid, drivers_1.forename, drivers_1.driverid, drivers_1.driverref
limit 41;
select distinct 
  standings_1.driverstandingsid, 
  races_1.circuitid
from 
  standings as standings_1
    inner join races as races_1
      inner join qualifying as qualifying_1
      on (races_1.date = qualifying_1.date )
    on (standings_1.wins = races_1.raceid )
where qualifying_1.date <= standings_1.date
limit 10;
select  
  max(
    cast(constructor_results_1.points as float8)), 
  sum(
    cast(constructor_results_1.constructorid as int8)), 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  max(
    cast(constructor_results_1.constructorid as int8)), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  min(
    cast(constructor_results_1.constructorid as int8)), 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.date, 
  max(
    cast(constructor_results_1.constructorresultsid as int8)), 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  avg(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_results_1.constructorresultsid, constructor_results_1.constructorid, constructor_results_1.points, constructor_results_1.points, constructor_results_1.raceid, constructor_results_1.date, constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_results_1.constructorid, constructor_results_1.points, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid, constructor_results_1.constructorid, constructor_results_1.points, constructor_results_1.date, constructor_results_1.date, constructor_results_1.raceid, constructor_results_1.points
limit 22;
select  
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
limit 22;
select  
  circuits_1.country, 
  max(
    cast(circuits_1.circuitref as text)), 
  circuits_1.circuitref, 
  circuits_1.circuitref, 
  circuits_1.name, 
  circuits_1.alt, 
  circuits_1.alt, 
  circuits_1.lat, 
  circuits_1.circuitref, 
  circuits_1.country, 
  circuits_1.name, 
  circuits_1.country, 
  circuits_1.circuitref, 
  avg(
    cast(circuits_1.lat as float8)), 
  circuits_1.circuitid, 
  circuits_1.location, 
  circuits_1.country, 
  circuits_1.circuitref, 
  circuits_1.circuitref, 
  max(
    cast(circuits_1.location as text)), 
  circuits_1.alt, 
  circuits_1.lng, 
  min(
    cast(circuits_1.alt as float8)), 
  circuits_1.circuitid, 
  circuits_1.circuitid, 
  circuits_1.circuitid, 
  circuits_1.circuitid, 
  circuits_1.location, 
  circuits_1.lng, 
  circuits_1.lat, 
  max(
    cast(circuits_1.lng as float8)), 
  circuits_1.alt, 
  circuits_1.country, 
  circuits_1.lat, 
  circuits_1.lat
from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
group by circuits_1.country, circuits_1.circuitref, circuits_1.circuitref, circuits_1.name, circuits_1.alt, circuits_1.alt, circuits_1.lat, circuits_1.circuitref, circuits_1.country, circuits_1.name, circuits_1.country, circuits_1.circuitref, circuits_1.circuitid, circuits_1.location, circuits_1.country, circuits_1.circuitref, circuits_1.circuitref, circuits_1.alt, circuits_1.lng, circuits_1.circuitid, circuits_1.circuitid, circuits_1.circuitid, circuits_1.circuitid, circuits_1.location, circuits_1.lng, circuits_1.lat, circuits_1.alt, circuits_1.country, circuits_1.lat, circuits_1.lat
limit 36;
select  
  qualifying_1.driverid, 
  qualifying_1.number, 
  qualifying_1.position, 
  qualifying_1.driverid, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
limit 20;
select  
  qualifying_1.number, 
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid >= qualifying_1.qualifyid
limit 5;
select  
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 21;
select  
  avg(
    cast(results_1.number as float8))
from 
  results as results_1
where results_1.constructorid is not NULL
limit 27;
select  
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.code > drivers_1.forename
limit 14;
select  
  circuits_1.circuitid, 
  circuits_1.location, 
  circuits_1.location, 
  max(
    cast(circuits_1.location as text)), 
  circuits_1.location, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.location is not NULL
group by circuits_1.circuitid, circuits_1.location, circuits_1.location, circuits_1.location, circuits_1.name
limit 3;
select  
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  count(*), 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.name, 
  min(
    cast(constructors_1.nationality as text)), 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.name, 
  max(
    cast(constructors_1.name as text)), 
  min(
    cast(constructors_1.constructorid as int8)), 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.nationality, constructors_1.nationality, constructors_1.nationality, constructors_1.constructorid, constructors_1.name, constructors_1.nationality, constructors_1.constructorref, constructors_1.constructorid, constructors_1.constructorref, constructors_1.constructorref, constructors_1.name, constructors_1.nationality, constructors_1.constructorid, constructors_1.nationality, constructors_1.constructorref, constructors_1.name, constructors_1.constructorid, constructors_1.constructorid, constructors_1.nationality, constructors_1.constructorid, constructors_1.constructorid, constructors_1.name, constructors_1.constructorref, constructors_1.name, constructors_1.constructorid, constructors_1.constructorid, constructors_1.name, constructors_1.nationality
limit 22;
select  
  constructor_results_1.constructorid, 
  sum(
    cast(constructor_results_1.constructorid as int8)), 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  sum(
    cast(constructor_results_1.constructorid as int8)), 
  max(
    cast(constructor_results_1.constructorid as int8))
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorid, constructor_results_1.raceid, constructor_results_1.constructorid
limit 11;
select  
  circuits_1.circuitref, 
  circuits_1.lat, 
  circuits_1.alt, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.country > circuits_1.location
limit 1;
select  
  results_1.points
from 
  results as results_1
where results_1.positionorder is not NULL
limit 24;
select  
  results_1.positionorder, 
  min(
    cast(results_1.date as "timestamp")), 
  results_1.milliseconds, 
  results_1.number, 
  results_1.raceid, 
  results_1.grid, 
  results_1.constructorid, 
  results_1.milliseconds, 
  results_1.points, 
  results_1.milliseconds
from 
  results as results_1
where results_1.position <= results_1.points
group by results_1.positionorder, results_1.milliseconds, results_1.number, results_1.raceid, results_1.grid, results_1.constructorid, results_1.milliseconds, results_1.points, results_1.milliseconds
limit 28;
select  
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  qualifying_1.raceid, 
  qualifying_1.position, 
  qualifying_1.driverid, 
  qualifying_1.position, 
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  min(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.qualifyid, 
  qualifying_1.constructorid, 
  min(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.qualifyid, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
group by qualifying_1.driverid, qualifying_1.driverid, qualifying_1.raceid, qualifying_1.position, qualifying_1.driverid, qualifying_1.position, qualifying_1.driverid, qualifying_1.driverid, qualifying_1.driverid, qualifying_1.qualifyid, qualifying_1.constructorid, qualifying_1.qualifyid, qualifying_1.raceid
limit 35;
select  
  results_1.constructorid, 
  avg(
    cast(results_1.laps as int8)), 
  results_1.number, 
  results_1.number, 
  results_1.statusid, 
  results_1.milliseconds
from 
  results as results_1
where results_1.date > results_1.date
group by results_1.constructorid, results_1.number, results_1.number, results_1.statusid, results_1.milliseconds
limit 6;
select  
  races_1.circuitid, 
  races_1.round
from 
  races as races_1
      inner join drivers as drivers_1
      on (races_1.raceid = drivers_1.driverid )
    inner join standings as standings_1
      inner join constructors as constructors_1
      on (standings_1.wins = constructors_1.constructorid )
    on (races_1.circuitid = constructors_1.constructorid )
where constructors_1.nationality is not NULL
limit 31;
select  
  constructor_results_1.constructorid
from 
  races as races_1
    inner join constructor_results as constructor_results_1
    on (races_1.circuitid = constructor_results_1.constructorresultsid )
where constructor_results_1.constructorid is not NULL
limit 34;
select  
  min(
    cast(results_1.rank as float8)), 
  results_1.fastestlap, 
  results_1.fastestlap, 
  results_1.rank, 
  max(
    cast(results_1.date as "timestamp")), 
  results_1.fastestlap, 
  results_1.number, 
  results_1.constructorid, 
  results_1.rank
from 
  results as results_1
where results_1.points is not NULL
group by results_1.fastestlap, results_1.fastestlap, results_1.rank, results_1.fastestlap, results_1.number, results_1.constructorid, results_1.rank
limit 3;
select  
  standings_1.points, 
  standings_1.date
from 
  standings as standings_1
where standings_1.points is not NULL
limit 38;
select  
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 5;
select  
  circuits_1.circuitref, 
  constructor_standings_1.date, 
  circuits_1.country, 
  circuits_1.name, 
  min(
    cast(circuits_1.name as text)), 
  circuits_1.lat, 
  max(
    cast(constructor_standings_1.date as "timestamp")), 
  min(
    cast(constructor_standings_1.position as int8)), 
  circuits_1.alt, 
  avg(
    cast(circuits_1.lat as float8))
from 
  circuits as circuits_1
    inner join constructor_standings as constructor_standings_1
    on (circuits_1.lng = constructor_standings_1.points )
where constructor_standings_1.points > circuits_1.alt
group by circuits_1.circuitref, constructor_standings_1.date, circuits_1.country, circuits_1.name, circuits_1.lat, circuits_1.alt
limit 33;
select  
  results_1.points, 
  constructor_standings_2.date, 
  constructor_standings_1.raceid, 
  constructor_standings_2.points, 
  min(
    cast(standings_1.date as "timestamp")), 
  standings_1.date
from 
  constructors as constructors_1
      inner join constructor_standings as constructor_standings_1
          inner join standings as standings_1
          on (constructor_standings_1.position = standings_1.driverstandingsid )
        inner join results as results_1
          inner join drivers as drivers_1
          on (results_1.resultid = drivers_1.driverid )
        on (constructor_standings_1.constructorstandingsid = results_1.resultid )
      on (constructors_1.constructorid = drivers_1.driverid )
    inner join constructor_standings as constructor_standings_2
      inner join circuits as circuits_1
      on (constructor_standings_2.constructorstandingsid = circuits_1.circuitid )
    on (standings_1.raceid = circuits_1.circuitid )
where circuits_1.alt is not NULL
group by results_1.points, constructor_standings_2.date, constructor_standings_1.raceid, constructor_standings_2.points, standings_1.date
limit 27;
select  
  circuits_3.lat, 
  circuits_2.alt
from 
  constructor_standings as constructor_standings_1
        inner join drivers as drivers_1
            inner join qualifying as qualifying_1
            on (drivers_1.dob = qualifying_1.date )
          inner join circuits as circuits_1
          on (drivers_1.forename = circuits_1.circuitref )
        on (constructor_standings_1.points = circuits_1.lat )
      inner join results as results_1
      on (qualifying_1.position = results_1.resultid )
    inner join circuits as circuits_2
        inner join races as races_1
        on (circuits_2.circuitid = races_1.raceid )
      inner join circuits as circuits_3
      on (races_1.year = circuits_3.circuitid )
    on (qualifying_1.position = circuits_2.circuitid )
where drivers_1.dob is not NULL
limit 26;
select  
  qualifying_1.raceid, 
  qualifying_1.qualifyid, 
  drivers_1.nationality, 
  drivers_1.driverid, 
  qualifying_1.position, 
  min(
    cast(qualifying_1.number as int8)), 
  drivers_1.nationality, 
  drivers_1.dob, 
  qualifying_1.constructorid, 
  qualifying_1.date, 
  min(
    cast(qualifying_1.qualifyid as int8))
from 
  drivers as drivers_1
    inner join qualifying as qualifying_1
    on (drivers_1.driverid = qualifying_1.qualifyid )
where qualifying_1.qualifyid <= qualifying_1.driverid
group by qualifying_1.raceid, qualifying_1.qualifyid, drivers_1.nationality, drivers_1.driverid, qualifying_1.position, drivers_1.nationality, drivers_1.dob, qualifying_1.constructorid, qualifying_1.date
limit 15;
select  
  constructors_1.nationality, 
  results_1.statusid, 
  max(
    cast(results_1.milliseconds as float8)), 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  results_1.positionorder, 
  results_1.positionorder, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.nationality, 
  count(*), 
  max(
    cast(results_1.date as "timestamp")), 
  max(
    cast(results_1.date as "timestamp")), 
  max(
    cast(results_1.date as "timestamp")), 
  results_1.resultid
from 
  constructors as constructors_1
    inner join results as results_1
    on (constructors_1.constructorid = results_1.resultid )
where results_1.fastestlap is not NULL
group by constructors_1.nationality, results_1.statusid, constructors_1.name, constructors_1.constructorref, constructors_1.nationality, results_1.positionorder, results_1.positionorder, constructors_1.name, constructors_1.name, constructors_1.nationality, results_1.resultid
limit 27;
select  
  count(*), 
  results_1.rank
from 
  circuits as circuits_1
    inner join results as results_1
    on (circuits_1.circuitid = results_1.resultid )
where circuits_1.circuitid = results_1.statusid
group by results_1.rank
limit 34;
select  
  circuits_1.location, 
  circuits_1.circuitref
from 
  races as races_1
    inner join circuits as circuits_1
    on (races_1.circuitid = circuits_1.circuitid )
where circuits_1.lat > circuits_1.lng
limit 11;
select  
  constructor_results_1.date, 
  avg(
    cast(results_1.points as float8)), 
  results_1.driverid, 
  results_1.points, 
  results_1.milliseconds, 
  min(
    cast(results_1.constructorid as int8)), 
  constructor_results_1.constructorid, 
  results_1.points, 
  results_1.number, 
  results_1.rank, 
  constructor_results_1.constructorid, 
  results_1.resultid, 
  results_1.position, 
  results_1.driverid, 
  results_1.positionorder, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid
from 
  results as results_1
    inner join constructor_results as constructor_results_1
    on (results_1.rank = constructor_results_1.points )
where constructor_results_1.points is not NULL
group by constructor_results_1.date, results_1.driverid, results_1.points, results_1.milliseconds, constructor_results_1.constructorid, results_1.points, results_1.number, results_1.rank, constructor_results_1.constructorid, results_1.resultid, results_1.position, results_1.driverid, results_1.positionorder, constructor_results_1.constructorresultsid, constructor_results_1.raceid
limit 8;
select  
  races_1.name, 
  standings_1.wins, 
  races_1.round, 
  constructors_1.nationality, 
  max(
    cast(races_1.time as text)), 
  standings_1.wins, 
  results_1.driverid, 
  standings_1.wins, 
  constructors_1.name, 
  constructors_1.constructorid, 
  races_1.circuitid, 
  results_1.number
from 
  constructors as constructors_1
    inner join races as races_1
        inner join standings as standings_1
        on (races_1.raceid = standings_1.driverstandingsid )
      inner join results as results_1
      on (races_1.circuitid = results_1.resultid )
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where results_1.raceid is not NULL
group by races_1.name, standings_1.wins, races_1.round, constructors_1.nationality, standings_1.wins, results_1.driverid, standings_1.wins, constructors_1.name, constructors_1.constructorid, races_1.circuitid, results_1.number
limit 40;
select  
  races_1.circuitid, 
  races_1.circuitid, 
  races_1.circuitid, 
  races_1.round, 
  races_1.year, 
  races_1.round, 
  races_1.year, 
  races_1.raceid, 
  races_1.raceid, 
  max(
    cast(races_1.date as "timestamp")), 
  races_1.time, 
  max(
    cast(races_1.name as text)), 
  races_1.circuitid, 
  races_1.name, 
  races_1.time, 
  races_1.round, 
  races_1.raceid, 
  races_1.round, 
  races_1.circuitid, 
  races_1.name, 
  max(
    cast(races_1.date as "timestamp")), 
  races_1.time, 
  races_1.round
from 
  races as races_1
where races_1.time is not NULL
group by races_1.circuitid, races_1.circuitid, races_1.circuitid, races_1.round, races_1.year, races_1.round, races_1.year, races_1.raceid, races_1.raceid, races_1.time, races_1.circuitid, races_1.name, races_1.time, races_1.round, races_1.raceid, races_1.round, races_1.circuitid, races_1.name, races_1.time, races_1.round
limit 2;
select  
  standings_3.date, 
  races_1.raceid, 
  standings_1.position, 
  min(
    cast(races_1.time as text)), 
  standings_1.driverstandingsid, 
  races_1.date, 
  min(
    cast(standings_1.points as float8)), 
  min(
    cast(races_1.name as text))
from 
  races as races_1
        inner join standings as standings_1
        on (races_1.raceid = standings_1.driverstandingsid )
      inner join standings as standings_2
      on (races_1.raceid = standings_2.driverstandingsid )
    inner join standings as standings_3
    on (standings_1.points = standings_3.points )
where standings_3.date <= standings_1.date
group by standings_3.date, races_1.raceid, standings_1.position, standings_1.driverstandingsid, races_1.date
limit 14;
select  
  circuits_1.lat
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
limit 17;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
limit 24;
select  
  races_1.date, 
  races_1.name, 
  races_1.name, 
  min(
    cast(races_1.name as text)), 
  races_1.name
from 
  races as races_1
where races_1.circuitid is not NULL
group by races_1.date, races_1.name, races_1.name, races_1.name
limit 1;
select  
  races_1.time, 
  min(
    cast(races_1.date as "timestamp")), 
  races_1.year, 
  min(
    cast(races_1.name as text))
from 
  races as races_1
where races_1.round is not NULL
group by races_1.time, races_1.year
limit 3;
select  
  max(
    cast(results_1.constructorid as int8)), 
  results_1.constructorid, 
  drivers_1.driverid, 
  results_2.statusid, 
  circuits_2.alt, 
  circuits_2.location
from 
  races as races_1
      inner join circuits as circuits_1
        inner join results as results_1
        on (circuits_1.circuitid = results_1.resultid )
      on (races_1.raceid = results_1.resultid )
    inner join results as results_2
        inner join circuits as circuits_2
            inner join constructor_standings as constructor_standings_1
            on (circuits_2.alt = constructor_standings_1.points )
          inner join drivers as drivers_1
          on (circuits_2.name = drivers_1.driverref )
        on (results_2.points = circuits_2.lat )
      inner join constructor_standings as constructor_standings_2
      on (constructor_standings_1.wins = constructor_standings_2.constructorstandingsid )
    on (races_1.raceid = results_2.resultid )
where circuits_1.lat is not NULL
group by results_1.constructorid, drivers_1.driverid, results_2.statusid, circuits_2.alt, circuits_2.location
limit 33;
select  
  standings_1.raceid, 
  constructor_results_1.date, 
  constructors_1.name, 
  max(
    cast(standings_1.date as "timestamp"))
from 
  constructor_results as constructor_results_1
      inner join constructor_standings as constructor_standings_1
      on (constructor_results_1.raceid = constructor_standings_1.constructorstandingsid )
    inner join standings as standings_1
      inner join constructors as constructors_1
        inner join constructors as constructors_2
          inner join circuits as circuits_1
          on (constructors_2.nationality = circuits_1.circuitref )
        on (constructors_1.constructorref = constructors_2.constructorref )
      on (standings_1.position = constructors_1.constructorid )
    on (constructor_standings_1.wins = constructors_1.constructorid )
where circuits_1.lat >= standings_1.points
group by standings_1.raceid, constructor_results_1.date, constructors_1.name
limit 25;
select  
  max(
    cast(constructor_standings_1.constructorstandingsid as int8)), 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.date, constructor_standings_1.constructorstandingsid
limit 7;
select  
  min(
    cast(qualifying_1.position as int8)), 
  qualifying_1.qualifyid, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
group by qualifying_1.qualifyid, qualifying_1.constructorid
limit 13;
select  
  results_1.milliseconds, 
  circuits_1.lng, 
  results_1.constructorid, 
  circuits_1.location, 
  count(*), 
  max(
    cast(results_1.number as float8)), 
  results_1.rank, 
  results_1.milliseconds, 
  results_1.rank
from 
  results as results_1
    inner join circuits as circuits_1
    on (results_1.grid = circuits_1.circuitid )
where circuits_1.location is not NULL
group by results_1.milliseconds, circuits_1.lng, results_1.constructorid, circuits_1.location, results_1.rank, results_1.milliseconds, results_1.rank
limit 24;
select  
  standings_1.points, 
  standings_1.position, 
  standings_1.position
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
limit 19;
select  
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date <= constructor_results_1.date
limit 8;
select  
  circuits_1.circuitref, 
  qualifying_1.position, 
  count(*), 
  circuits_1.location, 
  qualifying_1.number
from 
  circuits as circuits_1
    inner join qualifying as qualifying_1
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where circuits_1.lat is not NULL
group by circuits_1.circuitref, qualifying_1.position, circuits_1.location, qualifying_1.number
limit 26;
select  
  drivers_1.driverid, 
  drivers_1.forename, 
  drivers_1.dob, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
limit 41;
select  
  qualifying_1.number, 
  qualifying_2.driverid, 
  qualifying_1.constructorid, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
    inner join qualifying as qualifying_2
    on (qualifying_1.raceid = qualifying_2.qualifyid )
where qualifying_2.qualifyid < qualifying_2.driverid
limit 5;
select  
  max(
    cast(standings_1.date as "timestamp")), 
  qualifying_1.number, 
  min(
    cast(standings_1.date as "timestamp"))
from 
  results as results_1
      inner join standings as standings_1
        inner join qualifying as qualifying_1
        on (standings_1.raceid = qualifying_1.qualifyid )
      on (results_1.raceid = standings_1.driverstandingsid )
    inner join races as races_1
    on (results_1.laps = races_1.raceid )
where races_1.date is not NULL
group by qualifying_1.number
limit 5;
select  
  count(*), 
  results_1.date, 
  max(
    cast(results_1.date as "timestamp")), 
  results_1.points, 
  results_1.raceid, 
  results_1.driverid, 
  results_1.rank, 
  results_1.points, 
  count(*), 
  count(
    cast(results_1.grid as int8))
from 
  results as results_1
where results_1.milliseconds > results_1.rank
group by results_1.date, results_1.points, results_1.raceid, results_1.driverid, results_1.rank, results_1.points
limit 35;
select  
  results_1.milliseconds, 
  results_1.rank, 
  results_1.driverid, 
  results_1.points, 
  results_1.raceid, 
  results_1.date, 
  min(
    cast(results_1.date as "timestamp"))
from 
  results as results_1
where results_1.laps is not NULL
group by results_1.milliseconds, results_1.rank, results_1.driverid, results_1.points, results_1.raceid, results_1.date
limit 28;
select  
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  standings_1.date, 
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  count(*), 
  standings_1.points, 
  standings_1.raceid, 
  standings_1.driverstandingsid, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.name, 
  standings_1.date, 
  constructors_1.constructorref
from 
  standings as standings_1
    inner join constructors as constructors_1
    on (standings_1.driverstandingsid = constructors_1.constructorid )
where standings_1.position is not NULL
group by constructors_1.name, constructors_1.nationality, constructors_1.nationality, constructors_1.constructorref, standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.raceid, standings_1.driverstandingsid, constructors_1.constructorid, constructors_1.nationality, constructors_1.name, standings_1.date, constructors_1.constructorref
limit 7;
select  
  qualifying_1.position, 
  constructors_1.name, 
  circuits_1.location, 
  max(
    cast(races_1.round as int8)), 
  min(
    cast(constructors_1.constructorref as text)), 
  races_1.raceid, 
  results_1.driverid, 
  results_1.milliseconds, 
  count(
    cast(races_1.year as int8)), 
  results_1.number, 
  constructors_1.name, 
  qualifying_1.position
from 
  races as races_1
        inner join constructors as constructors_1
        on (races_1.time = constructors_1.constructorref )
      inner join results as results_1
        inner join circuits as circuits_1
        on (results_1.position = circuits_1.lat )
      on (constructors_1.constructorid = circuits_1.circuitid )
    inner join qualifying as qualifying_1
    on (races_1.raceid = qualifying_1.qualifyid )
where circuits_1.lat > results_1.rank
group by qualifying_1.position, constructors_1.name, circuits_1.location, races_1.raceid, results_1.driverid, results_1.milliseconds, results_1.number, constructors_1.name, qualifying_1.position
limit 22;
select  
  min(
    cast(results_1.date as "timestamp")), 
  results_1.points, 
  max(
    cast(results_1.points as float8))
from 
  results as results_1
where results_1.resultid is not NULL
group by results_1.points
limit 1;
select  
  qualifying_1.driverid, 
  qualifying_1.raceid, 
  qualifying_1.raceid, 
  qualifying_1.constructorid, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.position >= qualifying_1.raceid
limit 33;
select  
  standings_1.position, 
  drivers_1.code, 
  drivers_1.driverid, 
  drivers_1.nationality, 
  standings_1.points, 
  drivers_1.forename, 
  standings_1.wins, 
  standings_1.position
from 
  standings as standings_1
    inner join drivers as drivers_1
    on (standings_1.raceid = drivers_1.driverid )
where standings_1.points is not NULL
limit 16;
select  
  min(
    cast(races_1.raceid as int8)), 
  races_1.time, 
  min(
    cast(races_1.date as "timestamp")), 
  races_1.year, 
  races_1.year, 
  races_1.year, 
  races_1.circuitid, 
  min(
    cast(races_1.time as text)), 
  races_1.date, 
  max(
    cast(races_1.round as int8)), 
  races_1.time, 
  races_1.year
from 
  races as races_1
where races_1.round is not NULL
group by races_1.time, races_1.year, races_1.year, races_1.year, races_1.circuitid, races_1.date, races_1.time, races_1.year
limit 27;
select  
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date < constructor_standings_1.date
limit 15;
select  
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.dob < drivers_1.dob
limit 18;
select  
  standings_1.driverid, 
  standings_1.wins, 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.points > standings_1.points
limit 20;
select  
  max(
    cast(constructor_standings_1.points as float8)), 
  constructors_1.constructorref, 
  min(
    cast(constructors_1.name as text)), 
  constructor_standings_1.wins, 
  avg(
    cast(constructors_1.constructorid as int8)), 
  constructor_standings_1.constructorstandingsid, 
  qualifying_1.number, 
  constructor_standings_1.position, 
  qualifying_1.raceid, 
  constructors_1.constructorref
from 
  constructor_standings as constructor_standings_1
      inner join qualifying as qualifying_1
      on (constructor_standings_1.wins = qualifying_1.qualifyid )
    inner join constructors as constructors_1
    on (constructor_standings_1.position = constructors_1.constructorid )
where constructors_1.name is not NULL
group by constructors_1.constructorref, constructor_standings_1.wins, constructor_standings_1.constructorstandingsid, qualifying_1.number, constructor_standings_1.position, qualifying_1.raceid, constructors_1.constructorref
limit 42;
select  
  results_1.statusid, 
  standings_2.date
from 
  standings as standings_1
      inner join standings as standings_2
        inner join results as results_1
        on (standings_2.points = results_1.number )
      on (standings_1.points = results_1.number )
    inner join circuits as circuits_1
    on (standings_1.raceid = circuits_1.circuitid )
where standings_1.wins is not NULL
limit 32;
select  
  constructors_1.name, 
  constructors_1.constructorref, 
  min(
    cast(constructors_1.name as text))
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.name, constructors_1.constructorref
limit 36;
select  
  qualifying_1.number, 
  avg(
    cast(qualifying_1.position as int8))
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
group by qualifying_1.number
limit 26;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  races_1.time, 
  constructor_results_1.constructorresultsid, 
  circuits_1.circuitid, 
  circuits_1.circuitref, 
  races_1.date, 
  min(
    cast(circuits_1.name as text)), 
  races_1.year, 
  races_1.raceid, 
  constructor_results_1.points, 
  avg(
    cast(circuits_1.lng as float8)), 
  races_1.name
from 
  races as races_1
      inner join constructor_results as constructor_results_1
      on (races_1.year = constructor_results_1.constructorresultsid )
    inner join circuits as circuits_1
    on (races_1.time = circuits_1.circuitref )
where races_1.circuitid is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.points, races_1.time, constructor_results_1.constructorresultsid, circuits_1.circuitid, circuits_1.circuitref, races_1.date, races_1.year, races_1.raceid, constructor_results_1.points, races_1.name
limit 29;
select  
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  races_1.name
from 
  races as races_1
    inner join qualifying as qualifying_1
    on (races_1.year = qualifying_1.qualifyid )
where qualifying_1.number is not NULL
limit 20;
select  
  avg(
    cast(races_1.year as int8)), 
  constructor_results_1.constructorresultsid, 
  races_1.round, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  sum(
    cast(constructor_results_1.points as float8)), 
  max(
    cast(races_1.date as "timestamp")), 
  races_1.date, 
  constructor_results_1.constructorresultsid, 
  max(
    cast(constructor_results_1.points as float8)), 
  races_1.raceid, 
  races_1.circuitid
from 
  races as races_1
    inner join constructor_results as constructor_results_1
    on (races_1.raceid = constructor_results_1.constructorresultsid )
where constructor_results_1.points > constructor_results_1.points
group by constructor_results_1.constructorresultsid, races_1.round, constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, constructor_results_1.constructorid, constructor_results_1.raceid, races_1.date, constructor_results_1.constructorresultsid, races_1.raceid, races_1.circuitid
limit 27;
select  
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
limit 1;
select  
  qualifying_1.qualifyid, 
  qualifying_1.position, 
  qualifying_1.raceid, 
  qualifying_1.number, 
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  min(
    cast(qualifying_1.raceid as int8)), 
  qualifying_1.number, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
group by qualifying_1.qualifyid, qualifying_1.position, qualifying_1.raceid, qualifying_1.number, qualifying_1.constructorid, qualifying_1.constructorid, qualifying_1.number, qualifying_1.raceid
limit 22;
select  
  results_1.laps, 
  max(
    cast(qualifying_1.constructorid as int8)), 
  qualifying_1.number, 
  max(
    cast(results_1.rank as float8)), 
  qualifying_1.position, 
  results_1.rank, 
  qualifying_1.constructorid, 
  qualifying_1.number, 
  results_1.fastestlap, 
  results_1.position, 
  results_1.position
from 
  qualifying as qualifying_1
    inner join results as results_1
    on (qualifying_1.position = results_1.resultid )
where qualifying_1.constructorid is not NULL
group by results_1.laps, qualifying_1.number, qualifying_1.position, results_1.rank, qualifying_1.constructorid, qualifying_1.number, results_1.fastestlap, results_1.position, results_1.position
limit 40;
select  
  sum(
    cast(qualifying_1.driverid as int8)), 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.position, 
  min(
    cast(constructor_standings_1.points as float8)), 
  constructor_standings_1.points, 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
    inner join qualifying as qualifying_1
    on (constructor_standings_1.position = qualifying_1.qualifyid )
where constructor_standings_1.date >= qualifying_1.date
group by constructor_standings_1.raceid, constructor_standings_1.constructorid, constructor_standings_1.position, constructor_standings_1.points, constructor_standings_1.wins
limit 31;
select  
  constructors_1.name
from 
  standings as standings_1
      inner join constructors as constructors_1
      on (standings_1.driverid = constructors_1.constructorid )
    inner join drivers as drivers_1
      inner join circuits as circuits_1
        inner join results as results_1
        on (circuits_1.lat = results_1.number )
      on (drivers_1.driverid = results_1.resultid )
    on (constructors_1.nationality = drivers_1.driverref )
where circuits_1.location = drivers_1.surname
limit 13;
select  
  min(
    cast(drivers_1.surname as text)), 
  constructor_results_1.date, 
  sum(
    cast(results_1.driverid as int8)), 
  drivers_1.dob, 
  drivers_1.nationality
from 
  drivers as drivers_1
    inner join constructor_results as constructor_results_1
      inner join results as results_1
      on (constructor_results_1.constructorresultsid = results_1.resultid )
    on (drivers_1.driverid = constructor_results_1.constructorresultsid )
where drivers_1.driverid is not NULL
group by constructor_results_1.date, drivers_1.dob, drivers_1.nationality
limit 42;
select  
  drivers_1.dob, 
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.nationality >= drivers_1.surname
limit 41;
select  
  sum(
    cast(constructor_standings_1.wins as int8)), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.points, 
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.points, constructor_standings_1.points
limit 42;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.points <= constructor_results_1.points
limit 2;
select  
  min(
    cast(constructor_standings_1.raceid as int8)), 
  constructor_standings_1.position, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.position, constructor_standings_1.constructorid, constructor_standings_1.position, constructor_standings_1.constructorid
limit 24;
select  
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 13;
select  
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 38;
select  
  qualifying_1.constructorid, 
  constructor_standings_1.points, 
  min(
    cast(constructor_standings_1.date as "timestamp")), 
  qualifying_1.driverid, 
  constructor_standings_1.wins, 
  qualifying_1.position
from 
  qualifying as qualifying_1
    inner join constructor_standings as constructor_standings_1
    on (qualifying_1.constructorid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.raceid is not NULL
group by qualifying_1.constructorid, constructor_standings_1.points, qualifying_1.driverid, constructor_standings_1.wins, qualifying_1.position
limit 23;
select  
  min(
    cast(qualifying_1.date as "timestamp")), 
  max(
    cast(qualifying_1.date as "timestamp")), 
  standings_1.date, 
  standings_1.driverstandingsid, 
  qualifying_1.date, 
  qualifying_1.raceid, 
  standings_1.date, 
  standings_1.position, 
  circuits_1.circuitref, 
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  circuits_1.lat, 
  standings_1.wins, 
  min(
    cast(circuits_1.country as text)), 
  circuits_1.circuitref, 
  qualifying_1.position, 
  standings_1.driverid, 
  circuits_1.name, 
  qualifying_1.date, 
  circuits_1.alt
from 
  standings as standings_1
    inner join qualifying as qualifying_1
      inner join circuits as circuits_1
      on (qualifying_1.qualifyid = circuits_1.circuitid )
    on (standings_1.points = circuits_1.lat )
where qualifying_1.date <= standings_1.date
group by standings_1.date, standings_1.driverstandingsid, qualifying_1.date, qualifying_1.raceid, standings_1.date, standings_1.position, circuits_1.circuitref, standings_1.driverid, standings_1.driverstandingsid, circuits_1.lat, standings_1.wins, circuits_1.circuitref, qualifying_1.position, standings_1.driverid, circuits_1.name, qualifying_1.date, circuits_1.alt
limit 10;
select  
  standings_1.raceid, 
  standings_1.raceid, 
  standings_1.raceid, 
  standings_1.driverstandingsid, 
  avg(
    cast(standings_1.points as float8)), 
  standings_1.position, 
  sum(
    cast(standings_1.points as float8)), 
  standings_1.points, 
  standings_1.points
from 
  standings as standings_1
where standings_1.points is not NULL
group by standings_1.raceid, standings_1.raceid, standings_1.raceid, standings_1.driverstandingsid, standings_1.position, standings_1.points, standings_1.points
limit 35;
select  
  drivers_1.nationality, 
  drivers_1.nationality, 
  max(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.driverref, 
  min(
    cast(qualifying_1.date as "timestamp"))
from 
  drivers as drivers_1
    inner join qualifying as qualifying_1
      inner join constructors as constructors_1
      on (qualifying_1.number = constructors_1.constructorid )
    on (drivers_1.forename = constructors_1.constructorref )
where constructors_1.constructorref is not NULL
group by drivers_1.nationality, drivers_1.nationality, drivers_1.driverref
limit 3;
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
limit 15;
select  
  results_1.date, 
  max(
    cast(results_1.rank as float8)), 
  results_1.positionorder
from 
  results as results_1
where results_1.statusid is not NULL
group by results_1.date, results_1.positionorder
limit 12;
select  
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  count(
    cast(constructor_results_1.raceid as int8)), 
  constructor_results_1.points, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  avg(
    cast(constructor_results_1.raceid as int8)), 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date >= constructor_results_1.date
group by constructor_results_1.date, constructor_results_1.date, constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.date, constructor_results_1.date, constructor_results_1.raceid, constructor_results_1.date, constructor_results_1.raceid, constructor_results_1.constructorresultsid
limit 29;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_standings_1.position, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_standings_1.constructorid, 
  constructor_results_1.points, 
  constructor_standings_1.position, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_standings_1.date, 
  constructor_results_1.raceid, 
  max(
    cast(constructor_standings_1.date as "timestamp"))
from 
  constructor_results as constructor_results_1
    inner join constructor_standings as constructor_standings_1
    on (constructor_results_1.constructorid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.wins is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_standings_1.position, constructor_results_1.date, constructor_results_1.date, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.date, constructor_standings_1.constructorid, constructor_results_1.points, constructor_standings_1.position, constructor_results_1.date, constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, constructor_results_1.constructorid, constructor_standings_1.date, constructor_results_1.raceid
limit 9;
select  
  min(
    cast(standings_1.position as int8)), 
  constructor_standings_1.points, 
  constructor_standings_1.date, 
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  standings_1.position, 
  standings_1.wins, 
  standings_1.driverstandingsid, 
  constructor_standings_2.date, 
  constructor_standings_2.constructorstandingsid, 
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
      inner join standings as standings_1
        inner join constructor_standings as constructor_standings_2
        on (standings_1.position = constructor_standings_2.constructorstandingsid )
      on (constructor_standings_1.wins = constructor_standings_2.constructorstandingsid )
    inner join qualifying as qualifying_1
    on (constructor_standings_1.raceid = qualifying_1.qualifyid )
where qualifying_1.number is not NULL
group by constructor_standings_1.points, constructor_standings_1.date, qualifying_1.position, qualifying_1.qualifyid, standings_1.position, standings_1.wins, standings_1.driverstandingsid, constructor_standings_2.date, constructor_standings_2.constructorstandingsid, constructor_standings_1.points
limit 17;
select  
  constructor_standings_1.raceid, 
  min(
    cast(constructor_standings_1.date as "timestamp"))
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points = constructor_standings_1.points
group by constructor_standings_1.raceid
limit 12;
select  
  circuits_1.lng, 
  circuits_1.circuitref, 
  circuits_1.alt, 
  circuits_1.alt, 
  circuits_1.lat, 
  circuits_1.circuitid, 
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
limit 30;
select  
  qualifying_1.number, 
  constructor_results_2.constructorresultsid, 
  count(
    cast(constructors_2.constructorref as text)), 
  qualifying_1.driverid, 
  min(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.driverid, 
  constructor_results_1.date, 
  results_1.rank, 
  constructors_1.nationality, 
  max(
    cast(constructors_2.name as text)), 
  constructor_results_2.constructorresultsid, 
  qualifying_1.qualifyid, 
  qualifying_1.position, 
  constructor_results_1.raceid, 
  constructors_1.constructorid, 
  qualifying_1.date, 
  max(
    cast(constructor_results_1.date as "timestamp")), 
  constructor_results_2.constructorresultsid, 
  constructor_results_2.points
from 
  results as results_1
    inner join constructors as constructors_1
            inner join qualifying as qualifying_1
            on (constructors_1.constructorid = qualifying_1.qualifyid )
          inner join constructors as constructors_2
          on (constructors_1.name = constructors_2.constructorref )
        inner join constructor_results as constructor_results_1
        on (qualifying_1.position = constructor_results_1.constructorresultsid )
      inner join constructor_results as constructor_results_2
      on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
    on (results_1.statusid = constructor_results_2.constructorresultsid )
where constructors_1.nationality is not NULL
group by qualifying_1.number, constructor_results_2.constructorresultsid, qualifying_1.driverid, qualifying_1.driverid, constructor_results_1.date, results_1.rank, constructors_1.nationality, constructor_results_2.constructorresultsid, qualifying_1.qualifyid, qualifying_1.position, constructor_results_1.raceid, constructors_1.constructorid, qualifying_1.date, constructor_results_2.constructorresultsid, constructor_results_2.points
limit 26;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 36;
select  
  constructor_standings_1.raceid, 
  count(*), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.raceid, constructor_standings_1.constructorstandingsid, constructor_standings_1.position
limit 1;
select  
  circuits_1.circuitid, 
  circuits_1.location, 
  circuits_1.lat, 
  circuits_1.alt, 
  min(
    cast(circuits_1.country as text)), 
  circuits_1.circuitid, 
  circuits_1.alt, 
  sum(
    cast(circuits_1.circuitid as int8)), 
  count(
    cast(circuits_1.circuitref as text)), 
  circuits_1.alt, 
  circuits_1.circuitid, 
  count(*), 
  count(*), 
  circuits_1.name, 
  circuits_1.alt, 
  circuits_1.lat, 
  circuits_1.lng, 
  circuits_1.name, 
  circuits_1.circuitref, 
  circuits_1.location, 
  circuits_1.lng, 
  max(
    cast(circuits_1.name as text))
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
group by circuits_1.circuitid, circuits_1.location, circuits_1.lat, circuits_1.alt, circuits_1.circuitid, circuits_1.alt, circuits_1.alt, circuits_1.circuitid, circuits_1.name, circuits_1.alt, circuits_1.lat, circuits_1.lng, circuits_1.name, circuits_1.circuitref, circuits_1.location, circuits_1.lng
limit 19;
select  
  races_1.circuitid, 
  constructors_1.constructorid
from 
  races as races_1
    inner join constructors as constructors_1
    on (races_1.raceid = constructors_1.constructorid )
where constructors_1.constructorid is not NULL
limit 32;
select  
  circuits_1.circuitref, 
  circuits_1.circuitref, 
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.circuitid >= circuits_1.circuitid
limit 3;
select  
  min(
    cast(qualifying_1.date as "timestamp"))
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
limit 14;
select  
  circuits_2.alt, 
  qualifying_1.driverid
from 
  circuits as circuits_1
      inner join qualifying as qualifying_1
      on (circuits_1.circuitid = qualifying_1.qualifyid )
    inner join circuits as circuits_2
    on (qualifying_1.constructorid = circuits_2.circuitid )
where circuits_2.name is not NULL
limit 22;
select  
  drivers_1.dob, 
  drivers_1.driverref, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
limit 20;
select  
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.nationality = constructors_1.name
limit 31;
select  
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 3;
select  
  drivers_1.nationality, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
limit 35;
select  
  circuits_1.lat, 
  max(
    cast(races_1.date as "timestamp")), 
  circuits_1.location, 
  constructors_1.nationality, 
  results_1.constructorid, 
  min(
    cast(circuits_1.country as text)), 
  results_1.date, 
  results_1.statusid, 
  races_1.date, 
  races_1.year, 
  circuits_1.lng, 
  races_1.round, 
  constructors_1.nationality
from 
  constructors as constructors_1
      inner join races as races_1
        inner join results as results_1
        on (races_1.year = results_1.resultid )
      on (constructors_1.nationality = races_1.name )
    inner join circuits as circuits_1
    on (constructors_1.nationality = circuits_1.circuitref )
where races_1.circuitid is not NULL
group by circuits_1.lat, circuits_1.location, constructors_1.nationality, results_1.constructorid, results_1.date, results_1.statusid, races_1.date, races_1.year, circuits_1.lng, races_1.round, constructors_1.nationality
limit 26;
select  
  drivers_2.dob, 
  drivers_2.driverref
from 
  drivers as drivers_1
    inner join drivers as drivers_2
    on (drivers_1.forename = drivers_2.driverref )
where drivers_1.dob is not NULL
limit 3;
select  
  min(
    cast(races_1.raceid as int8)), 
  drivers_1.driverref
from 
  drivers as drivers_1
      inner join races as races_1
      on (drivers_1.forename = races_1.name )
    inner join races as races_2
    on (races_1.raceid = races_2.raceid )
where drivers_1.surname is not NULL
group by drivers_1.driverref
limit 3;
select  
  constructor_standings_1.date, 
  constructor_standings_1.date, 
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
limit 6;
select  
  standings_1.points
from 
  drivers as drivers_1
      inner join drivers as drivers_2
      on (drivers_1.dob = drivers_2.dob )
    inner join standings as standings_1
    on (drivers_2.driverid = standings_1.driverstandingsid )
where drivers_1.driverid >= standings_1.raceid
limit 38;
select  
  min(
    cast(circuits_1.circuitref as text)), 
  qualifying_1.position, 
  qualifying_1.number
from 
  circuits as circuits_1
    inner join qualifying as qualifying_1
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where circuits_1.circuitid is not NULL
group by qualifying_1.position, qualifying_1.number
limit 20;
select  
  results_1.points, 
  circuits_1.name, 
  results_1.positionorder, 
  results_1.milliseconds, 
  max(
    cast(circuits_1.country as text)), 
  results_1.fastestlap, 
  circuits_1.lng, 
  results_1.raceid, 
  results_1.driverid, 
  circuits_1.alt
from 
  circuits as circuits_1
    inner join results as results_1
    on (circuits_1.lat = results_1.number )
where circuits_1.circuitref is not NULL
group by results_1.points, circuits_1.name, results_1.positionorder, results_1.milliseconds, results_1.fastestlap, circuits_1.lng, results_1.raceid, results_1.driverid, circuits_1.alt
limit 27;
select  
  constructors_1.name
from 
  circuits as circuits_1
        inner join standings as standings_1
        on (circuits_1.lng = standings_1.points )
      inner join standings as standings_2
        inner join races as races_1
          inner join constructor_results as constructor_results_1
          on (races_1.raceid = constructor_results_1.constructorresultsid )
        on (standings_2.wins = races_1.raceid )
      on (circuits_1.lng = standings_2.points )
    inner join constructors as constructors_1
    on (standings_1.wins = constructors_1.constructorid )
where constructors_1.constructorid is not NULL
limit 17;
select  
  count(*), 
  circuits_1.circuitref, 
  circuits_1.country, 
  circuits_1.lng, 
  circuits_1.lat, 
  circuits_1.circuitref, 
  circuits_1.country, 
  circuits_1.name, 
  circuits_1.alt, 
  circuits_1.lng, 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
group by circuits_1.circuitref, circuits_1.country, circuits_1.lng, circuits_1.lat, circuits_1.circuitref, circuits_1.country, circuits_1.name, circuits_1.alt, circuits_1.lng, circuits_1.alt
limit 15;
select  
  max(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date > constructor_results_1.date
group by constructor_results_1.date, constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.constructorid
limit 2;
select  
  results_1.points, 
  min(
    cast(results_1.rank as float8)), 
  circuits_1.country, 
  circuits_1.circuitid, 
  results_1.grid
from 
  results as results_1
    inner join qualifying as qualifying_1
      inner join circuits as circuits_1
        inner join standings as standings_1
        on (circuits_1.lng = standings_1.points )
      on (qualifying_1.constructorid = circuits_1.circuitid )
    on (results_1.fastestlap = standings_1.points )
where circuits_1.lng = circuits_1.alt
group by results_1.points, circuits_1.country, circuits_1.circuitid, results_1.grid
limit 6;
select  
  circuits_1.circuitref, 
  circuits_1.location, 
  sum(
    cast(circuits_1.circuitid as int8)), 
  circuits_1.lng, 
  circuits_1.circuitref, 
  circuits_1.lat, 
  circuits_1.name, 
  circuits_1.name, 
  circuits_1.circuitid, 
  circuits_1.name, 
  circuits_1.name, 
  circuits_1.lng, 
  circuits_1.lng, 
  min(
    cast(circuits_1.circuitid as int8)), 
  circuits_1.circuitid, 
  circuits_1.circuitref, 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.name is not NULL
group by circuits_1.circuitref, circuits_1.location, circuits_1.lng, circuits_1.circuitref, circuits_1.lat, circuits_1.name, circuits_1.name, circuits_1.circuitid, circuits_1.name, circuits_1.name, circuits_1.lng, circuits_1.lng, circuits_1.circuitid, circuits_1.circuitref, circuits_1.lng
limit 20;
select  
  qualifying_1.date, 
  qualifying_1.position, 
  qualifying_1.position
from 
  races as races_1
    inner join qualifying as qualifying_1
    on (races_1.round = qualifying_1.qualifyid )
where qualifying_1.qualifyid is not NULL
limit 23;
select  
  drivers_1.driverid, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
    inner join drivers as drivers_1
    on (qualifying_1.qualifyid = drivers_1.driverid )
where qualifying_1.constructorid is not NULL
limit 32;
select  
  max(
    cast(drivers_1.nationality as text)), 
  min(
    cast(constructor_results_1.constructorresultsid as int8)), 
  constructor_results_1.constructorresultsid, 
  constructor_standings_1.points, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
      inner join constructors as constructors_1
      on (constructor_results_1.raceid = constructors_1.constructorid )
    inner join constructor_standings as constructor_standings_1
      inner join drivers as drivers_1
      on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
    on (constructors_1.constructorref = drivers_1.driverref )
where constructor_standings_1.raceid is not NULL
group by constructor_results_1.constructorresultsid, constructor_standings_1.points, constructor_results_1.constructorresultsid
limit 35;
select  
  constructor_standings_1.constructorid, 
  results_1.raceid
from 
  qualifying as qualifying_1
      inner join results as results_1
        inner join constructor_standings as constructor_standings_1
        on (results_1.raceid = constructor_standings_1.constructorstandingsid )
      on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
    inner join standings as standings_1
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where constructor_standings_1.points = results_1.position
limit 30;
select  
  circuits_1.alt, 
  standings_1.wins, 
  constructor_results_1.raceid, 
  circuits_1.name, 
  standings_1.driverstandingsid, 
  circuits_1.name, 
  drivers_1.driverref
from 
  standings as standings_1
    inner join circuits as circuits_1
        inner join constructor_results as constructor_results_1
        on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
      inner join drivers as drivers_1
      on (constructor_results_1.constructorid = drivers_1.driverid )
    on (standings_1.driverstandingsid = drivers_1.driverid )
where circuits_1.location <= drivers_1.code
limit 37;
select  
  constructors_2.constructorid, 
  constructors_2.name, 
  constructors_1.constructorid
from 
  results as results_1
      inner join constructors as constructors_1
      on (results_1.constructorid = constructors_1.constructorid )
    inner join constructors as constructors_2
    on (results_1.laps = constructors_2.constructorid )
where results_1.points is not NULL
limit 36;
select  
  results_1.driverid, 
  results_1.fastestlap, 
  results_1.points, 
  results_1.raceid, 
  results_1.driverid, 
  avg(
    cast(results_1.grid as int8)), 
  results_1.grid
from 
  results as results_1
where results_1.positionorder is not NULL
group by results_1.driverid, results_1.fastestlap, results_1.points, results_1.raceid, results_1.driverid, results_1.grid
limit 35;
select  
  constructors_1.constructorid, 
  circuits_1.lat
from 
  constructors as constructors_1
    inner join circuits as circuits_1
    on (constructors_1.constructorref = circuits_1.circuitref )
where constructors_1.nationality is not NULL
limit 30;
select  
  results_1.constructorid
from 
  results as results_1
where results_1.raceid is not NULL
limit 42;
select  
  qualifying_1.driverid, 
  qualifying_1.number, 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.position < qualifying_1.constructorid
limit 1;
select  
  results_1.grid, 
  circuits_1.lat, 
  results_1.driverid, 
  results_1.resultid, 
  circuits_1.lat, 
  circuits_1.circuitref
from 
  circuits as circuits_1
    inner join results as results_1
    on (circuits_1.alt = results_1.number )
where results_1.fastestlap < results_1.milliseconds
limit 37;
select  
  min(
    cast(circuits_1.name as text))
from 
  circuits as circuits_1
where circuits_1.name is not NULL
limit 39;
select  
  circuits_1.alt, 
  circuits_1.circuitref, 
  circuits_1.country
from 
  circuits as circuits_1
where circuits_1.country is not NULL
limit 39;
select  
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  max(
    cast(constructors_1.name as text)), 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.constructorref, constructors_1.nationality, constructors_1.name, constructors_1.nationality, constructors_1.constructorref, constructors_1.name
limit 21;
select  
  drivers_1.surname
from 
  constructor_standings as constructor_standings_1
    inner join drivers as drivers_1
    on (constructor_standings_1.position = drivers_1.driverid )
where constructor_standings_1.points is not NULL
limit 14;
select  
  drivers_1.code, 
  drivers_1.nationality, 
  drivers_1.nationality, 
  drivers_1.code, 
  drivers_1.driverref, 
  drivers_1.code, 
  drivers_1.driverid, 
  min(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.driverid, 
  drivers_1.code, 
  drivers_1.forename, 
  drivers_1.nationality, 
  drivers_1.code, 
  drivers_1.surname, 
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
group by drivers_1.code, drivers_1.nationality, drivers_1.nationality, drivers_1.code, drivers_1.driverref, drivers_1.code, drivers_1.driverid, drivers_1.driverid, drivers_1.code, drivers_1.forename, drivers_1.nationality, drivers_1.code, drivers_1.surname, drivers_1.forename
limit 10;
select  
  count(*), 
  circuits_1.circuitref, 
  circuits_1.circuitref, 
  circuits_1.alt, 
  max(
    cast(circuits_1.country as text)), 
  circuits_1.country, 
  circuits_1.location, 
  circuits_1.location, 
  avg(
    cast(circuits_1.alt as float8)), 
  circuits_1.lng, 
  circuits_1.country, 
  circuits_1.circuitid, 
  circuits_1.location, 
  min(
    cast(circuits_1.lat as float8)), 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.location >= circuits_1.name
group by circuits_1.circuitref, circuits_1.circuitref, circuits_1.alt, circuits_1.country, circuits_1.location, circuits_1.location, circuits_1.lng, circuits_1.country, circuits_1.circuitid, circuits_1.location, circuits_1.location
limit 39;
select  
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 15;
select  
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.constructorid, 
  max(
    cast(constructors_1.name as text)), 
  constructors_1.constructorid, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorid = constructors_1.constructorid
group by constructors_1.constructorref, constructors_1.constructorid, constructors_1.name, constructors_1.constructorid, constructors_1.constructorid, constructors_1.constructorref
limit 40;
select  
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.date = qualifying_1.date
limit 18;
select  
  sum(
    cast(standings_1.driverid as int8)), 
  standings_1.driverid, 
  standings_1.position, 
  min(
    cast(standings_1.points as float8)), 
  standings_1.raceid, 
  standings_1.date
from 
  standings as standings_1
where standings_1.points is not NULL
group by standings_1.driverid, standings_1.position, standings_1.raceid, standings_1.date
limit 7;
select  
  constructor_results_1.points, 
  constructor_results_3.raceid, 
  constructor_standings_1.position, 
  qualifying_1.position, 
  constructor_standings_1.date, 
  constructor_results_2.points, 
  min(
    cast(drivers_1.surname as text)), 
  constructor_results_2.constructorresultsid, 
  drivers_1.dob, 
  constructor_results_2.points, 
  qualifying_1.position, 
  drivers_1.surname, 
  qualifying_2.qualifyid, 
  constructor_results_3.points, 
  constructor_results_1.constructorresultsid, 
  avg(
    cast(qualifying_1.raceid as int8)), 
  qualifying_1.qualifyid, 
  qualifying_1.date, 
  qualifying_1.position, 
  constructor_results_2.date, 
  drivers_1.nationality, 
  drivers_1.forename, 
  qualifying_1.driverid, 
  constructor_results_2.constructorresultsid
from 
  qualifying as qualifying_1
          inner join qualifying as qualifying_2
          on (qualifying_1.position = qualifying_2.qualifyid )
        inner join constructor_results as constructor_results_1
        on (qualifying_2.driverid = constructor_results_1.constructorresultsid )
      inner join constructor_standings as constructor_standings_1
        inner join drivers as drivers_1
        on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
      on (qualifying_2.driverid = constructor_standings_1.constructorstandingsid )
    inner join constructor_results as constructor_results_2
      inner join constructor_results as constructor_results_3
      on (constructor_results_2.raceid = constructor_results_3.constructorresultsid )
    on (qualifying_1.date = constructor_results_2.date )
where qualifying_2.driverid is not NULL
group by constructor_results_1.points, constructor_results_3.raceid, constructor_standings_1.position, qualifying_1.position, constructor_standings_1.date, constructor_results_2.points, constructor_results_2.constructorresultsid, drivers_1.dob, constructor_results_2.points, qualifying_1.position, drivers_1.surname, qualifying_2.qualifyid, constructor_results_3.points, constructor_results_1.constructorresultsid, qualifying_1.qualifyid, qualifying_1.date, qualifying_1.position, constructor_results_2.date, drivers_1.nationality, drivers_1.forename, qualifying_1.driverid, constructor_results_2.constructorresultsid
limit 36;
select  
  constructor_standings_1.constructorstandingsid, 
  count(
    cast(constructor_standings_1.points as float8)), 
  constructor_standings_1.position, 
  constructor_standings_1.position, 
  count(
    cast(constructor_standings_1.constructorstandingsid as int8)), 
  avg(
    cast(constructor_standings_1.points as float8)), 
  constructor_standings_1.points, 
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  avg(
    cast(constructor_standings_1.constructorid as int8))
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.position, constructor_standings_1.position, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.raceid, constructor_standings_1.points, constructor_standings_1.constructorstandingsid
limit 33;
select  
  standings_1.position, 
  standings_1.wins
from 
  standings as standings_1
where standings_1.driverid is not NULL
limit 16;
select  
  circuits_1.location, 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.alt is not NULL
limit 38;
select  
  count(*), 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date > constructor_results_1.date
group by constructor_results_1.constructorid
limit 6;
select  
  races_1.date, 
  races_1.round, 
  races_1.year, 
  races_1.name
from 
  races as races_1
where races_1.name is not NULL
limit 14;
select  
  standings_1.wins, 
  standings_1.driverstandingsid, 
  count(
    cast(standings_1.driverid as int8)), 
  standings_1.date, 
  max(
    cast(standings_1.points as float8)), 
  standings_1.points, 
  standings_1.driverid, 
  standings_1.position
from 
  standings as standings_1
where standings_1.wins > standings_1.driverid
group by standings_1.wins, standings_1.driverstandingsid, standings_1.date, standings_1.points, standings_1.driverid, standings_1.position
limit 13;
select  
  circuits_1.lng, 
  circuits_1.circuitid, 
  circuits_1.alt, 
  circuits_1.location, 
  circuits_1.circuitref, 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
limit 37;
select  
  qualifying_1.driverid, 
  qualifying_1.number, 
  sum(
    cast(qualifying_1.constructorid as int8)), 
  qualifying_1.driverid, 
  qualifying_1.constructorid, 
  max(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.number, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.driverid, qualifying_1.number, qualifying_1.driverid, qualifying_1.constructorid, qualifying_1.number, qualifying_1.constructorid
limit 30;
select  
  sum(
    cast(results_1.position as float8))
from 
  results as results_1
where results_1.points is not NULL
limit 12;
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
limit 11;
select  
  constructors_1.nationality, 
  min(
    cast(races_1.date as "timestamp")), 
  races_1.name, 
  races_1.name, 
  max(
    cast(races_1.year as int8)), 
  constructors_1.nationality, 
  constructors_2.nationality, 
  races_1.round
from 
  constructors as constructors_1
      inner join constructors as constructors_2
      on (constructors_1.nationality = constructors_2.constructorref )
    inner join races as races_1
    on (constructors_1.nationality = races_1.name )
where races_1.name is not NULL
group by constructors_1.nationality, races_1.name, races_1.name, constructors_1.nationality, constructors_2.nationality, races_1.round
limit 38;
select  
  min(
    cast(constructors_2.constructorref as text))
from 
  constructors as constructors_1
    inner join constructors as constructors_2
      inner join constructor_standings as constructor_standings_1
      on (constructors_2.constructorid = constructor_standings_1.constructorstandingsid )
    on (constructors_1.constructorref = constructors_2.constructorref )
where constructor_standings_1.raceid is not NULL
limit 14;
select  
  drivers_1.driverref, 
  avg(
    cast(drivers_1.driverid as int8)), 
  drivers_1.forename, 
  drivers_1.driverref, 
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.code = drivers_1.surname
group by drivers_1.driverref, drivers_1.forename, drivers_1.driverref, drivers_1.dob
limit 14;
select  
  standings_1.raceid
from 
  circuits as circuits_1
    inner join standings as standings_1
    on (circuits_1.lng = standings_1.points )
where circuits_1.location is not NULL
limit 1;
select  
  standings_1.date, 
  max(
    cast(qualifying_1.date as "timestamp")), 
  results_1.position, 
  constructor_results_1.date, 
  standings_1.raceid, 
  sum(
    cast(results_1.fastestlap as float8)), 
  results_1.position, 
  constructor_results_1.constructorresultsid, 
  qualifying_1.qualifyid, 
  qualifying_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  standings_1.driverid, 
  results_1.laps, 
  constructor_results_1.raceid, 
  sum(
    cast(results_1.laps as int8)), 
  max(
    cast(results_1.raceid as int8)), 
  constructor_results_1.points, 
  min(
    cast(qualifying_1.date as "timestamp")), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date, 
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  constructor_standings_1.date, 
  avg(
    cast(constructor_standings_1.raceid as int8))
from 
  results as results_1
      inner join constructor_results as constructor_results_1
          inner join constructor_standings as constructor_standings_1
          on (constructor_results_1.points = constructor_standings_1.points )
        inner join standings as standings_1
        on (constructor_results_1.constructorid = standings_1.driverstandingsid )
      on (results_1.date = constructor_results_1.date )
    inner join qualifying as qualifying_1
    on (standings_1.driverstandingsid = qualifying_1.qualifyid )
where results_1.grid is not NULL
group by standings_1.date, results_1.position, constructor_results_1.date, standings_1.raceid, results_1.position, constructor_results_1.constructorresultsid, qualifying_1.qualifyid, qualifying_1.constructorid, constructor_results_1.constructorresultsid, standings_1.driverid, results_1.laps, constructor_results_1.raceid, constructor_results_1.points, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, standings_1.driverid, standings_1.driverstandingsid, constructor_standings_1.date
limit 16;
select  
  drivers_2.code
from 
  standings as standings_1
    inner join drivers as drivers_1
      inner join drivers as drivers_2
      on (drivers_1.surname = drivers_2.driverref )
    on (standings_1.wins = drivers_1.driverid )
where drivers_1.surname is not NULL
limit 38;
select  
  drivers_1.driverref, 
  drivers_1.nationality
from 
  constructors as constructors_1
      inner join drivers as drivers_1
      on (constructors_1.constructorid = drivers_1.driverid )
    inner join constructor_results as constructor_results_1
    on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
where drivers_1.driverref is not NULL
limit 11;
select  
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  count(*)
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.raceid, constructor_results_1.raceid
limit 2;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  max(
    cast(constructor_results_1.points as float8))
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid
limit 29;
select  
  circuits_1.circuitid, 
  circuits_1.lng, 
  circuits_1.alt, 
  circuits_1.lng, 
  circuits_1.country, 
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.lat = circuits_1.lng
limit 31;
select  
  min(
    cast(constructors_1.constructorref as text)), 
  constructors_1.nationality, 
  constructors_1.name, 
  max(
    cast(constructors_1.name as text)), 
  min(
    cast(constructors_1.constructorref as text)), 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  max(
    cast(constructors_1.name as text)), 
  constructors_1.name, 
  max(
    cast(constructors_1.name as text)), 
  constructors_1.nationality, 
  max(
    cast(constructors_1.constructorid as int8))
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.nationality, constructors_1.name, constructors_1.name, constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 21;
select  
  qualifying_1.driverid, 
  qualifying_1.constructorid, 
  qualifying_1.driverid, 
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 8;
select  
  drivers_1.nationality, 
  min(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.dob, 
  drivers_1.driverid, 
  drivers_1.driverref, 
  drivers_1.nationality, 
  max(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.driverid, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
group by drivers_1.nationality, drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.nationality, drivers_1.driverid, drivers_1.driverid
limit 11;
select  
  results_1.milliseconds, 
  sum(
    cast(results_1.points as float8)), 
  results_1.date, 
  results_1.constructorid, 
  results_1.points
from 
  results as results_1
where results_1.fastestlap <= results_1.points
group by results_1.milliseconds, results_1.date, results_1.constructorid, results_1.points
limit 19;
select  
  drivers_1.driverid, 
  drivers_1.driverref, 
  drivers_1.driverid, 
  max(
    cast(drivers_1.dob as "timestamp"))
from 
  constructors as constructors_1
      inner join constructor_results as constructor_results_1
      on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
    inner join drivers as drivers_1
      inner join constructors as constructors_2
      on (drivers_1.driverid = constructors_2.constructorid )
    on (constructor_results_1.constructorresultsid = constructors_2.constructorid )
where constructors_1.nationality is not NULL
group by drivers_1.driverid, drivers_1.driverref, drivers_1.driverid
limit 12;
select  
  qualifying_1.date, 
  qualifying_1.raceid, 
  qualifying_1.qualifyid, 
  qualifying_1.number, 
  qualifying_1.constructorid, 
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  qualifying_1.number, 
  qualifying_1.position, 
  qualifying_1.number, 
  qualifying_1.constructorid, 
  qualifying_1.driverid, 
  max(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
group by qualifying_1.date, qualifying_1.raceid, qualifying_1.qualifyid, qualifying_1.number, qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.number, qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.constructorid, qualifying_1.constructorid, qualifying_1.qualifyid, qualifying_1.raceid, qualifying_1.driverid
limit 3;
select  
  standings_1.driverid, 
  avg(
    cast(standings_1.points as float8)), 
  standings_1.date, 
  standings_1.points, 
  standings_1.wins, 
  standings_1.points
from 
  standings as standings_1
where standings_1.driverid is not NULL
group by standings_1.driverid, standings_1.date, standings_1.points, standings_1.wins, standings_1.points
limit 14;
select  
  max(
    cast(races_1.time as text)), 
  races_1.time, 
  races_1.date
from 
  races as races_1
where races_1.name <= races_1.time
group by races_1.time, races_1.date
limit 18;
select  
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 7;
select  
  results_1.position, 
  qualifying_1.date, 
  qualifying_1.number, 
  results_1.milliseconds, 
  constructor_results_1.raceid, 
  min(
    cast(constructor_results_1.date as "timestamp"))
from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
      inner join results as results_1
        inner join qualifying as qualifying_1
        on (results_1.date = qualifying_1.date )
      on (constructor_results_1.date = qualifying_1.date )
    on (standings_1.position = constructor_results_1.constructorresultsid )
where results_1.fastestlap is not NULL
group by results_1.position, qualifying_1.date, qualifying_1.number, results_1.milliseconds, constructor_results_1.raceid
limit 23;
select  
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
limit 3;
select  
  max(
    cast(races_1.name as text)), 
  count(
    cast(races_1.date as "timestamp")), 
  races_1.raceid, 
  min(
    cast(races_1.name as text)), 
  sum(
    cast(races_1.round as int8)), 
  max(
    cast(races_1.date as "timestamp")), 
  races_1.raceid, 
  races_1.year, 
  races_1.circuitid, 
  count(
    cast(races_1.raceid as int8)), 
  races_1.raceid, 
  races_1.round, 
  races_1.time, 
  races_1.raceid, 
  races_1.name, 
  races_1.date, 
  max(
    cast(races_1.date as "timestamp")), 
  races_1.year, 
  races_1.time, 
  races_1.year, 
  races_1.date, 
  races_1.round, 
  races_1.round, 
  races_1.name, 
  races_1.date
from 
  races as races_1
where races_1.round >= races_1.circuitid
group by races_1.raceid, races_1.raceid, races_1.year, races_1.circuitid, races_1.raceid, races_1.round, races_1.time, races_1.raceid, races_1.name, races_1.date, races_1.year, races_1.time, races_1.year, races_1.date, races_1.round, races_1.round, races_1.name, races_1.date
limit 11;
select  
  constructor_standings_1.points, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins, 
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
limit 26;
select  
  standings_1.driverstandingsid, 
  qualifying_1.number, 
  qualifying_2.constructorid, 
  min(
    cast(circuits_1.name as text))
from 
  standings as standings_1
    inner join circuits as circuits_1
      inner join qualifying as qualifying_1
        inner join qualifying as qualifying_2
        on (qualifying_1.driverid = qualifying_2.qualifyid )
      on (circuits_1.circuitid = qualifying_2.qualifyid )
    on (standings_1.raceid = qualifying_2.qualifyid )
where qualifying_1.driverid is not NULL
group by standings_1.driverstandingsid, qualifying_1.number, qualifying_2.constructorid
limit 41;
select  
  drivers_1.dob, 
  results_1.resultid, 
  drivers_1.driverref, 
  min(
    cast(results_1.statusid as int8)), 
  drivers_1.code, 
  max(
    cast(drivers_1.dob as "timestamp")), 
  count(*), 
  drivers_1.driverref
from 
  results as results_1
    inner join drivers as drivers_1
    on (results_1.date = drivers_1.dob )
where results_1.points <= results_1.fastestlap
group by drivers_1.dob, results_1.resultid, drivers_1.driverref, drivers_1.code, drivers_1.driverref
limit 38;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid > constructor_results_1.raceid
limit 39;
select distinct 
  drivers_2.nationality, 
  constructor_results_1.raceid, 
  drivers_1.forename, 
  drivers_2.surname, 
  constructor_results_1.raceid, 
  drivers_2.code
from 
  drivers as drivers_1
    inner join constructor_results as constructor_results_1
      inner join drivers as drivers_2
      on (constructor_results_1.date = drivers_2.dob )
    on (drivers_1.driverref = drivers_2.driverref )
where constructor_results_1.raceid is not NULL
limit 31;
select  
  drivers_3.forename, 
  drivers_2.driverid, 
  constructor_standings_1.wins, 
  drivers_3.forename, 
  constructor_standings_1.date, 
  avg(
    cast(constructor_standings_1.points as float8)), 
  min(
    cast(drivers_2.code as text)), 
  constructors_1.constructorid, 
  drivers_1.forename
from 
  drivers as drivers_1
        inner join drivers as drivers_2
        on (drivers_1.surname = drivers_2.driverref )
      inner join constructors as constructors_1
      on (drivers_2.forename = constructors_1.constructorref )
    inner join constructor_standings as constructor_standings_1
      inner join drivers as drivers_3
      on (constructor_standings_1.date = drivers_3.dob )
    on (drivers_1.dob = constructor_standings_1.date )
where constructors_1.constructorid is not NULL
group by drivers_3.forename, drivers_2.driverid, constructor_standings_1.wins, drivers_3.forename, constructor_standings_1.date, constructors_1.constructorid, drivers_1.forename
limit 33;
select  
  max(
    cast(qualifying_1.qualifyid as int8)), 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
group by qualifying_1.constructorid
limit 34;
select  
  circuits_1.location, 
  min(
    cast(circuits_2.location as text)), 
  races_1.date, 
  avg(
    cast(circuits_2.lng as float8)), 
  circuits_2.alt, 
  circuits_2.lat, 
  circuits_2.circuitid, 
  circuits_1.circuitref, 
  races_1.circuitid, 
  circuits_1.name
from 
  circuits as circuits_1
    inner join races as races_1
      inner join circuits as circuits_2
      on (races_1.circuitid = circuits_2.circuitid )
    on (circuits_1.alt = circuits_2.lat )
where races_1.name is not NULL
group by circuits_1.location, races_1.date, circuits_2.alt, circuits_2.lat, circuits_2.circuitid, circuits_1.circuitref, races_1.circuitid, circuits_1.name
limit 40;
select  
  races_1.name, 
  races_1.circuitid, 
  races_1.year
from 
  races as races_1
where races_1.raceid is not NULL
limit 26;
select  
  results_1.grid, 
  results_1.laps, 
  results_1.resultid, 
  results_1.date, 
  results_1.position, 
  max(
    cast(results_1.fastestlap as float8)), 
  results_1.constructorid, 
  results_1.position, 
  results_1.rank, 
  results_1.date
from 
  results as results_1
where results_1.number is not NULL
group by results_1.grid, results_1.laps, results_1.resultid, results_1.date, results_1.position, results_1.constructorid, results_1.position, results_1.rank, results_1.date
limit 33;
select  
  results_1.positionorder
from 
  results as results_1
where results_1.date >= results_1.date
limit 2;
select  
  qualifying_1.position, 
  qualifying_1.date, 
  qualifying_1.number, 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid, 
  qualifying_1.driverid, 
  qualifying_1.constructorid, 
  qualifying_1.position, 
  qualifying_1.raceid, 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
limit 31;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid > constructor_standings_1.raceid
limit 39;
select  
  drivers_1.code, 
  drivers_1.driverid, 
  drivers_1.driverid, 
  drivers_1.dob, 
  drivers_1.surname, 
  drivers_1.surname, 
  min(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.code, 
  min(
    cast(drivers_1.driverid as int8)), 
  drivers_1.driverref, 
  drivers_1.nationality, 
  max(
    cast(drivers_1.code as text))
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
group by drivers_1.code, drivers_1.driverid, drivers_1.driverid, drivers_1.dob, drivers_1.surname, drivers_1.surname, drivers_1.code, drivers_1.driverref, drivers_1.nationality
limit 31;
select  
  count(*), 
  drivers_1.surname, 
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
group by drivers_1.surname, drivers_1.forename
limit 24;
select  
  races_1.raceid, 
  races_1.name, 
  drivers_1.driverref, 
  count(
    cast(drivers_1.surname as text)), 
  races_1.name, 
  races_1.year
from 
  races as races_1
    inner join drivers as drivers_1
    on (races_1.year = drivers_1.driverid )
where drivers_1.dob is not NULL
group by races_1.raceid, races_1.name, drivers_1.driverref, races_1.name, races_1.year
limit 28;
select  
  results_1.positionorder, 
  results_1.position
from 
  results as results_1
    inner join circuits as circuits_1
    on (results_1.positionorder = circuits_1.circuitid )
where results_1.date = results_1.date
limit 5;
select  
  results_1.driverid, 
  results_1.grid, 
  results_1.resultid, 
  results_1.fastestlap, 
  count(*), 
  results_1.date, 
  results_1.resultid
from 
  results as results_1
where results_1.points < results_1.position
group by results_1.driverid, results_1.grid, results_1.resultid, results_1.fastestlap, results_1.date, results_1.resultid
limit 37;
select  
  drivers_1.dob, 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.code < drivers_1.nationality
limit 11;
select  
  sum(
    cast(results_1.positionorder as int8))
from 
  results as results_1
where results_1.constructorid <= results_1.positionorder
limit 33;
select  
  min(
    cast(constructor_standings_1.points as float8))
from 
  drivers as drivers_1
    inner join qualifying as qualifying_1
      inner join drivers as drivers_2
        inner join constructor_standings as constructor_standings_1
          inner join qualifying as qualifying_2
          on (constructor_standings_1.raceid = qualifying_2.qualifyid )
        on (drivers_2.driverid = qualifying_2.qualifyid )
      on (qualifying_1.qualifyid = qualifying_2.qualifyid )
    on (drivers_1.nationality = drivers_2.driverref )
where drivers_2.code is not NULL
limit 5;
select  
  circuits_2.circuitid
from 
  constructor_standings as constructor_standings_1
    inner join circuits as circuits_1
      inner join circuits as circuits_2
        inner join constructor_results as constructor_results_1
            inner join circuits as circuits_3
            on (constructor_results_1.constructorresultsid = circuits_3.circuitid )
          inner join results as results_1
          on (constructor_results_1.raceid = results_1.resultid )
        on (circuits_2.circuitref = circuits_3.circuitref )
      on (circuits_1.circuitref = circuits_3.circuitref )
    on (constructor_standings_1.points = results_1.number )
where circuits_2.alt is not NULL
limit 42;
select  
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructors_1.name
from 
  constructor_results as constructor_results_1
    inner join constructors as constructors_1
    on (constructor_results_1.constructorid = constructors_1.constructorid )
where constructors_1.nationality < constructors_1.name
limit 28;
select  
  standings_1.date, 
  avg(
    cast(results_1.driverid as int8)), 
  results_1.raceid, 
  max(
    cast(results_1.laps as int8)), 
  results_1.driverid, 
  results_1.statusid
from 
  standings as standings_1
    inner join results as results_1
      inner join constructor_standings as constructor_standings_1
      on (results_1.position = constructor_standings_1.points )
    on (standings_1.raceid = results_1.resultid )
where standings_1.raceid is not NULL
group by standings_1.date, results_1.raceid, results_1.driverid, results_1.statusid
limit 6;
select  
  standings_1.raceid, 
  standings_1.wins, 
  sum(
    cast(standings_1.wins as int8)), 
  standings_1.wins, 
  standings_1.driverstandingsid, 
  standings_1.driverid
from 
  constructor_results as constructor_results_1
    inner join standings as standings_1
    on (constructor_results_1.points = standings_1.points )
where standings_1.driverid is not NULL
group by standings_1.raceid, standings_1.wins, standings_1.wins, standings_1.driverstandingsid, standings_1.driverid
limit 16;
select  
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  max(
    cast(constructor_results_1.raceid as int8)), 
  count(*), 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid = constructor_results_1.constructorid
group by constructor_results_1.date, constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.constructorid, constructor_results_1.constructorid, constructor_results_1.raceid
limit 40;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
limit 33;
select  
  races_1.raceid, 
  races_1.circuitid, 
  races_1.year, 
  races_1.date, 
  races_1.name, 
  max(
    cast(races_1.time as text)), 
  races_1.time, 
  races_1.time, 
  races_1.year, 
  races_1.time, 
  races_1.time, 
  max(
    cast(races_1.date as "timestamp")), 
  races_1.circuitid, 
  max(
    cast(races_1.time as text)), 
  races_1.name, 
  races_1.year, 
  races_1.raceid, 
  races_1.circuitid, 
  races_1.raceid, 
  races_1.year, 
  races_1.name, 
  races_1.name, 
  races_1.year
from 
  races as races_1
where races_1.date <= races_1.date
group by races_1.raceid, races_1.circuitid, races_1.year, races_1.date, races_1.name, races_1.time, races_1.time, races_1.year, races_1.time, races_1.time, races_1.circuitid, races_1.name, races_1.year, races_1.raceid, races_1.circuitid, races_1.raceid, races_1.year, races_1.name, races_1.name, races_1.year
limit 28;
select  
  races_1.name, 
  standings_1.driverstandingsid, 
  standings_1.date, 
  standings_1.driverstandingsid, 
  qualifying_1.number, 
  races_1.round, 
  standings_1.wins, 
  qualifying_1.driverid, 
  qualifying_1.position, 
  standings_1.points, 
  races_1.year, 
  qualifying_1.qualifyid, 
  standings_1.wins
from 
  standings as standings_1
    inner join races as races_1
      inner join qualifying as qualifying_1
      on (races_1.raceid = qualifying_1.qualifyid )
    on (standings_1.raceid = qualifying_1.qualifyid )
where standings_1.position is not NULL
limit 37;
select  
  constructor_standings_1.constructorid, 
  avg(
    cast(constructor_standings_1.points as float8)), 
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.raceid, constructor_standings_1.wins, constructor_standings_1.constructorid
limit 28;
select  
  min(
    cast(drivers_1.surname as text)), 
  drivers_1.nationality, 
  drivers_1.forename, 
  sum(
    cast(drivers_1.driverid as int8)), 
  drivers_1.driverref, 
  drivers_1.forename, 
  max(
    cast(drivers_1.surname as text)), 
  drivers_1.forename, 
  drivers_1.driverid, 
  min(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.forename, 
  drivers_1.nationality, 
  min(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
group by drivers_1.nationality, drivers_1.forename, drivers_1.driverref, drivers_1.forename, drivers_1.forename, drivers_1.driverid, drivers_1.forename, drivers_1.nationality, drivers_1.dob
limit 33;
select  
  drivers_1.forename, 
  drivers_1.driverid, 
  drivers_1.forename, 
  drivers_1.code, 
  drivers_1.code, 
  drivers_1.surname, 
  drivers_1.surname, 
  min(
    cast(drivers_1.driverid as int8)), 
  drivers_1.driverid, 
  drivers_1.driverid, 
  drivers_1.driverid, 
  avg(
    cast(drivers_1.driverid as int8))
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
group by drivers_1.forename, drivers_1.driverid, drivers_1.forename, drivers_1.code, drivers_1.code, drivers_1.surname, drivers_1.surname, drivers_1.driverid, drivers_1.driverid, drivers_1.driverid
limit 3;
select  
  constructor_standings_1.date
from 
  qualifying as qualifying_1
    inner join constructor_standings as constructor_standings_1
    on (qualifying_1.date = constructor_standings_1.date )
where constructor_standings_1.position is not NULL
limit 8;
select  
  results_1.number
from 
  results as results_1
where results_1.resultid is not NULL
limit 15;
select  
  constructor_standings_1.position, 
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid > constructor_standings_1.constructorid
limit 2;
select  
  standings_1.driverid, 
  standings_1.position, 
  constructors_1.constructorref, 
  sum(
    cast(standings_1.points as float8)), 
  standings_1.raceid, 
  standings_1.points, 
  constructors_1.name, 
  min(
    cast(standings_1.driverstandingsid as int8)), 
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  count(
    cast(standings_1.position as int8))
from 
  constructors as constructors_1
    inner join standings as standings_1
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where standings_1.points < standings_1.points
group by standings_1.driverid, standings_1.position, constructors_1.constructorref, standings_1.raceid, standings_1.points, constructors_1.name, standings_1.driverstandingsid, standings_1.raceid
limit 38;
select  
  results_1.rank, 
  max(
    cast(results_1.date as "timestamp")), 
  avg(
    cast(results_1.positionorder as int8))
from 
  results as results_1
where results_1.date <= results_1.date
group by results_1.rank
limit 8;
select  
  standings_1.position, 
  constructors_1.constructorref, 
  standings_1.position, 
  standings_1.position, 
  max(
    cast(constructors_1.name as text)), 
  standings_1.driverid, 
  min(
    cast(standings_1.date as "timestamp")), 
  constructors_1.name, 
  standings_1.driverstandingsid
from 
  constructors as constructors_1
    inner join standings as standings_1
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where standings_1.raceid is not NULL
group by standings_1.position, constructors_1.constructorref, standings_1.position, standings_1.position, standings_1.driverid, constructors_1.name, standings_1.driverstandingsid
limit 42;
select  
  drivers_1.surname, 
  drivers_1.driverref, 
  circuits_1.country, 
  max(
    cast(circuits_1.circuitref as text)), 
  drivers_1.driverid
from 
  constructor_standings as constructor_standings_1
    inner join drivers as drivers_1
      inner join circuits as circuits_1
      on (drivers_1.driverref = circuits_1.circuitref )
    on (constructor_standings_1.points = circuits_1.lat )
where circuits_1.lng is not NULL
group by drivers_1.surname, drivers_1.driverref, circuits_1.country, drivers_1.driverid
limit 4;
select  
  races_1.name, 
  max(
    cast(races_1.circuitid as int8)), 
  races_1.time, 
  standings_1.date, 
  standings_1.driverstandingsid
from 
  standings as standings_1
    inner join races as races_1
    on (standings_1.wins = races_1.raceid )
where races_1.name = races_1.time
group by races_1.name, races_1.time, standings_1.date, standings_1.driverstandingsid
limit 13;
select  
  constructors_1.nationality, 
  min(
    cast(constructors_1.nationality as text)), 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.nationality, constructors_1.nationality, constructors_1.name, constructors_1.constructorid, constructors_1.constructorid, constructors_1.constructorid, constructors_1.nationality, constructors_1.constructorid, constructors_1.constructorid
limit 13;
select  
  standings_1.position, 
  standings_1.position, 
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.date < standings_1.date
limit 31;
select  
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 32;
select  
  races_1.raceid, 
  races_1.time, 
  races_1.raceid, 
  races_1.year, 
  races_1.round
from 
  races as races_1
where races_1.name >= races_1.time
limit 31;
select  
  races_1.date, 
  races_1.name, 
  races_1.year, 
  races_1.round, 
  min(
    cast(races_1.time as text)), 
  races_1.circuitid, 
  races_1.year, 
  races_1.circuitid, 
  races_1.date, 
  races_1.round, 
  races_1.year, 
  races_1.round, 
  races_1.raceid, 
  max(
    cast(races_1.name as text)), 
  races_1.time, 
  count(
    cast(races_1.round as int8))
from 
  races as races_1
where races_1.round is not NULL
group by races_1.date, races_1.name, races_1.year, races_1.round, races_1.circuitid, races_1.year, races_1.circuitid, races_1.date, races_1.round, races_1.year, races_1.round, races_1.raceid, races_1.time
limit 6;
select  
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
limit 21;
select  
  constructors_1.constructorid
from 
  results as results_1
    inner join constructors as constructors_1
    on (results_1.driverid = constructors_1.constructorid )
where results_1.number is not NULL
limit 20;
select  
  constructor_standings_1.wins
from 
  circuits as circuits_1
      inner join standings as standings_1
        inner join constructor_standings as constructor_standings_1
          inner join constructor_standings as constructor_standings_2
          on (constructor_standings_1.constructorid = constructor_standings_2.constructorstandingsid )
        on (standings_1.wins = constructor_standings_1.constructorstandingsid )
      on (circuits_1.lat = standings_1.points )
    inner join qualifying as qualifying_1
    on (standings_1.position = qualifying_1.qualifyid )
where circuits_1.alt is not NULL
limit 39;
select  
  min(
    cast(races_1.round as int8)), 
  races_1.name, 
  races_1.time, 
  races_1.time, 
  races_1.time, 
  races_1.name
from 
  races as races_1
where races_1.circuitid is not NULL
group by races_1.name, races_1.time, races_1.time, races_1.time, races_1.name
limit 32;
select  
  constructors_1.name, 
  constructor_results_1.constructorresultsid, 
  constructors_1.constructorref, 
  constructors_1.constructorref
from 
  constructor_results as constructor_results_1
    inner join constructors as constructors_1
    on (constructor_results_1.raceid = constructors_1.constructorid )
where constructor_results_1.constructorresultsid is not NULL
limit 39;
select  
  results_1.fastestlap, 
  results_2.points
from 
  results as results_1
    inner join constructors as constructors_1
        inner join results as results_2
        on (constructors_1.constructorid = results_2.resultid )
      inner join races as races_1
      on (constructors_1.name = races_1.name )
    on (results_1.grid = races_1.raceid )
where results_2.number is not NULL
limit 10;
select  
  results_1.milliseconds, 
  results_1.resultid, 
  results_1.milliseconds, 
  results_1.fastestlap, 
  count(
    cast(results_1.resultid as int8)), 
  results_1.statusid, 
  results_1.positionorder, 
  results_1.constructorid, 
  results_1.fastestlap, 
  results_1.raceid, 
  results_1.positionorder
from 
  results as results_1
where results_1.constructorid is not NULL
group by results_1.milliseconds, results_1.resultid, results_1.milliseconds, results_1.fastestlap, results_1.statusid, results_1.positionorder, results_1.constructorid, results_1.fastestlap, results_1.raceid, results_1.positionorder
limit 18;
select  
  max(
    cast(constructors_1.nationality as text)), 
  constructors_1.nationality, 
  count(
    cast(constructors_1.nationality as text)), 
  constructors_1.constructorid, 
  min(
    cast(constructors_1.nationality as text)), 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.nationality, constructors_1.constructorid, constructors_1.name
limit 1;
select  
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 10;
select  
  min(
    cast(qualifying_1.constructorid as int8)), 
  constructor_results_1.constructorid, 
  qualifying_1.number, 
  constructor_standings_1.raceid, 
  qualifying_1.constructorid
from 
  constructor_results as constructor_results_1
    inner join qualifying as qualifying_1
      inner join constructor_standings as constructor_standings_1
      on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
    on (constructor_results_1.constructorid = qualifying_1.qualifyid )
where constructor_standings_1.position is not NULL
group by constructor_results_1.constructorid, qualifying_1.number, constructor_standings_1.raceid, qualifying_1.constructorid
limit 24;
select  
  sum(
    cast(constructor_standings_1.points as float8)), 
  constructor_standings_1.position, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  drivers_1.surname, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  drivers_1.surname, 
  drivers_1.nationality
from 
  constructor_standings as constructor_standings_1
    inner join drivers as drivers_1
    on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
where drivers_1.dob < constructor_standings_1.date
group by constructor_standings_1.position, constructor_standings_1.constructorid, constructor_standings_1.wins, constructor_standings_1.constructorstandingsid, drivers_1.surname, constructor_standings_1.raceid, constructor_standings_1.constructorstandingsid, drivers_1.surname, drivers_1.nationality
limit 16;
select  
  drivers_1.driverref, 
  drivers_1.driverid
from 
  drivers as drivers_1
    inner join constructor_results as constructor_results_1
      inner join constructor_results as constructor_results_2
      on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
    on (drivers_1.driverid = constructor_results_2.constructorresultsid )
where constructor_results_1.points < constructor_results_2.points
limit 8;
select  
  constructors_1.name, 
  max(
    cast(constructors_1.name as text)), 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.name, 
  min(
    cast(constructors_1.nationality as text)), 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.name, constructors_1.constructorid, constructors_1.constructorid, constructors_1.constructorid, constructors_1.name, constructors_1.name, constructors_1.constructorid
limit 28;
select  
  drivers_1.driverid, 
  drivers_1.dob, 
  min(
    cast(drivers_1.dob as "timestamp")), 
  count(
    cast(drivers_1.driverid as int8))
from 
  circuits as circuits_1
      inner join circuits as circuits_2
      on (circuits_1.circuitid = circuits_2.circuitid )
    inner join drivers as drivers_1
    on (circuits_2.circuitref = drivers_1.driverref )
where drivers_1.forename > circuits_2.name
group by drivers_1.driverid, drivers_1.dob
limit 23;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid <= constructor_results_1.constructorid
limit 20;
select  
  drivers_1.dob, 
  min(
    cast(drivers_1.driverref as text))
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
group by drivers_1.dob
limit 41;
select  
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructor_standings_1.wins, 
  constructor_standings_1.wins, 
  results_1.constructorid
from 
  constructor_standings as constructor_standings_1
      inner join constructors as constructors_1
      on (constructor_standings_1.raceid = constructors_1.constructorid )
    inner join results as results_1
    on (constructor_standings_1.date = results_1.date )
where constructor_standings_1.position is not NULL
limit 12;
select  
  constructor_results_1.raceid, 
  results_1.resultid, 
  constructor_results_1.date, 
  min(
    cast(constructor_results_1.date as "timestamp")), 
  constructor_standings_1.points
from 
  races as races_1
        inner join constructor_results as constructor_results_1
        on (races_1.circuitid = constructor_results_1.constructorresultsid )
      inner join drivers as drivers_1
          inner join constructors as constructors_1
          on (drivers_1.surname = constructors_1.constructorref )
        inner join results as results_1
        on (drivers_1.driverid = results_1.resultid )
      on (races_1.name = constructors_1.constructorref )
    inner join constructor_standings as constructor_standings_1
    on (races_1.year = constructor_standings_1.constructorstandingsid )
where constructor_results_1.points is not NULL
group by constructor_results_1.raceid, results_1.resultid, constructor_results_1.date, constructor_standings_1.points
limit 12;
select  
  constructors_1.constructorref, 
  avg(
    cast(results_2.points as float8)), 
  count(*), 
  constructors_1.constructorref, 
  results_2.milliseconds, 
  results_1.points, 
  results_2.date, 
  results_2.number, 
  results_1.grid
from 
  results as results_1
    inner join constructors as constructors_1
      inner join results as results_2
        inner join constructors as constructors_2
        on (results_2.constructorid = constructors_2.constructorid )
      on (constructors_1.constructorref = constructors_2.constructorref )
    on (results_1.grid = constructors_2.constructorid )
where constructors_2.constructorref is not NULL
group by constructors_1.constructorref, constructors_1.constructorref, results_2.milliseconds, results_1.points, results_2.date, results_2.number, results_1.grid
limit 25;
select  
  qualifying_1.raceid, 
  qualifying_1.number, 
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.date > qualifying_1.date
limit 3;
select  
  min(
    cast(drivers_1.nationality as text))
from 
  drivers as drivers_1
        inner join results as results_1
        on (drivers_1.dob = results_1.date )
      inner join constructor_results as constructor_results_1
        inner join drivers as drivers_2
          inner join constructor_results as constructor_results_2
          on (drivers_2.driverid = constructor_results_2.constructorresultsid )
        on (constructor_results_1.points = constructor_results_2.points )
      on (results_1.statusid = constructor_results_2.constructorresultsid )
    inner join constructors as constructors_1
    on (constructor_results_2.raceid = constructors_1.constructorid )
where constructor_results_2.raceid is not NULL
limit 23;
select  
  races_1.circuitid, 
  races_1.raceid, 
  races_1.circuitid, 
  races_1.time, 
  min(
    cast(races_1.date as "timestamp")), 
  min(
    cast(races_1.raceid as int8)), 
  min(
    cast(races_1.raceid as int8))
from 
  races as races_1
where races_1.round is not NULL
group by races_1.circuitid, races_1.raceid, races_1.circuitid, races_1.time
limit 29;
select  
  races_1.raceid
from 
  races as races_1
where races_1.name is not NULL
limit 28;
select  
  standings_1.wins, 
  constructor_standings_1.position, 
  standings_1.points, 
  constructor_standings_1.points, 
  standings_1.points
from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
      inner join constructor_standings as constructor_standings_1
      on (constructor_results_1.raceid = constructor_standings_1.constructorstandingsid )
    on (standings_1.driverid = constructor_results_1.constructorresultsid )
where constructor_standings_1.position is not NULL
limit 32;
select  
  results_1.positionorder, 
  results_1.milliseconds, 
  results_1.milliseconds, 
  results_1.milliseconds
from 
  results as results_1
where results_1.rank <= results_1.points
limit 40;
select  
  races_1.round
from 
  races as races_1
where races_1.year is not NULL
limit 14;
select  
  standings_1.points, 
  standings_1.position, 
  sum(
    cast(standings_1.position as int8)), 
  standings_1.raceid, 
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  standings_1.date, 
  standings_1.position, 
  standings_1.points
from 
  standings as standings_1
where standings_1.wins is not NULL
group by standings_1.points, standings_1.position, standings_1.raceid, standings_1.driverid, standings_1.driverstandingsid, standings_1.date, standings_1.position, standings_1.points
limit 12;
select  
  constructor_results_1.points, 
  count(*), 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  min(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.points, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.points, constructor_results_1.raceid, constructor_results_1.constructorid, constructor_results_1.raceid, constructor_results_1.points, constructor_results_1.points
limit 37;
select  
  standings_1.wins, 
  standings_1.driverstandingsid, 
  standings_1.points, 
  standings_1.wins, 
  min(
    cast(standings_1.position as int8))
from 
  standings as standings_1
where standings_1.position = standings_1.raceid
group by standings_1.wins, standings_1.driverstandingsid, standings_1.points, standings_1.wins
limit 40;
select  
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.driverid >= drivers_1.driverid
limit 28;
select  
  count(*), 
  constructors_1.constructorid, 
  min(
    cast(constructor_standings_1.date as "timestamp")), 
  min(
    cast(qualifying_1.date as "timestamp")), 
  constructors_1.constructorref, 
  qualifying_1.constructorid, 
  constructor_standings_1.points, 
  constructor_standings_1.points, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  min(
    cast(qualifying_1.number as int8)), 
  standings_1.wins, 
  constructor_standings_1.constructorstandingsid
from 
  constructors as constructors_1
    inner join constructor_standings as constructor_standings_1
      inner join standings as standings_1
        inner join qualifying as qualifying_1
        on (standings_1.wins = qualifying_1.qualifyid )
      on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where standings_1.wins is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, qualifying_1.constructorid, constructor_standings_1.points, constructor_standings_1.points, constructors_1.constructorid, constructors_1.constructorid, standings_1.wins, constructor_standings_1.constructorstandingsid
limit 28;
select  
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid > constructor_standings_1.wins
limit 23;
select  
  constructors_1.constructorref, 
  qualifying_3.raceid
from 
  qualifying as qualifying_1
    inner join constructors as constructors_1
        inner join constructor_results as constructor_results_1
            inner join constructor_results as constructor_results_2
            on (constructor_results_1.constructorid = constructor_results_2.constructorresultsid )
          inner join qualifying as qualifying_2
          on (constructor_results_1.date = qualifying_2.date )
        on (constructors_1.constructorid = constructor_results_2.constructorresultsid )
      inner join circuits as circuits_1
        inner join qualifying as qualifying_3
        on (circuits_1.circuitid = qualifying_3.qualifyid )
      on (qualifying_2.position = circuits_1.circuitid )
    on (qualifying_1.constructorid = constructor_results_1.constructorresultsid )
where circuits_1.lat >= circuits_1.lng
limit 14;
select  
  standings_1.position, 
  constructors_1.name
from 
  standings as standings_1
    inner join constructors as constructors_1
    on (standings_1.driverstandingsid = constructors_1.constructorid )
where constructors_1.nationality is not NULL
limit 1;
select  
  count(
    cast(qualifying_1.position as int8)), 
  races_1.name, 
  circuits_1.circuitid, 
  qualifying_2.date
from 
  results as results_1
          inner join qualifying as qualifying_1
          on (results_1.laps = qualifying_1.qualifyid )
        inner join circuits as circuits_1
        on (results_1.constructorid = circuits_1.circuitid )
      inner join qualifying as qualifying_2
        inner join races as races_1
        on (qualifying_2.raceid = races_1.raceid )
      on (results_1.grid = qualifying_2.qualifyid )
    inner join constructor_standings as constructor_standings_1
      inner join constructor_results as constructor_results_1
      on (constructor_standings_1.date = constructor_results_1.date )
    on (qualifying_2.position = constructor_results_1.constructorresultsid )
where qualifying_2.date is not NULL
group by races_1.name, circuits_1.circuitid, qualifying_2.date
limit 17;
select  
  constructor_results_1.points, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid <= constructor_results_1.raceid
limit 40;
select  
  max(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.driverref, 
  drivers_1.driverref, 
  drivers_1.dob, 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.driverid >= drivers_1.driverid
group by drivers_1.driverref, drivers_1.driverref, drivers_1.dob, drivers_1.nationality
limit 8;
select  
  min(
    cast(qualifying_1.date as "timestamp")), 
  min(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.raceid, 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
group by qualifying_1.raceid, qualifying_1.driverid
limit 37;
select  
  results_1.rank, 
  results_1.number, 
  count(
    cast(results_1.milliseconds as float8)), 
  results_1.number, 
  results_1.date, 
  results_1.milliseconds, 
  results_1.number, 
  results_1.driverid, 
  min(
    cast(results_1.points as float8)), 
  results_1.rank, 
  results_1.date
from 
  results as results_1
where results_1.constructorid > results_1.raceid
group by results_1.rank, results_1.number, results_1.number, results_1.date, results_1.milliseconds, results_1.number, results_1.driverid, results_1.rank, results_1.date
limit 20;
select  
  qualifying_1.number, 
  qualifying_1.driverid, 
  qualifying_1.qualifyid, 
  constructor_results_1.constructorid, 
  qualifying_1.number, 
  constructor_results_1.constructorid, 
  qualifying_1.raceid, 
  constructor_results_1.date, 
  qualifying_1.date, 
  constructor_results_1.constructorid
from 
  qualifying as qualifying_1
    inner join constructor_results as constructor_results_1
    on (qualifying_1.date = constructor_results_1.date )
where constructor_results_1.constructorresultsid is not NULL
limit 23;
select  
  avg(
    cast(constructor_standings_1.wins as int8)), 
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date, 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
group by constructor_standings_1.points, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.wins
limit 3;
select  
  results_1.grid, 
  max(
    cast(results_1.positionorder as int8)), 
  results_1.raceid, 
  races_1.round, 
  results_1.rank, 
  results_1.fastestlap
from 
  results as results_1
    inner join races as races_1
    on (results_1.driverid = races_1.raceid )
where results_1.statusid is not NULL
group by results_1.grid, results_1.raceid, races_1.round, results_1.rank, results_1.fastestlap
limit 25;
select  
  standings_1.wins, 
  standings_1.driverstandingsid, 
  standings_1.points, 
  standings_1.date, 
  standings_1.driverid, 
  standings_1.wins, 
  standings_1.date, 
  avg(
    cast(standings_1.driverid as int8)), 
  standings_1.raceid, 
  standings_1.wins, 
  standings_1.driverid, 
  count(*), 
  standings_1.wins, 
  count(
    cast(standings_1.position as int8)), 
  standings_1.points
from 
  standings as standings_1
where standings_1.raceid is not NULL
group by standings_1.wins, standings_1.driverstandingsid, standings_1.points, standings_1.date, standings_1.driverid, standings_1.wins, standings_1.date, standings_1.raceid, standings_1.wins, standings_1.driverid, standings_1.wins, standings_1.points
limit 10;
select  
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 9;
select  
  qualifying_1.date, 
  drivers_1.code, 
  qualifying_1.constructorid, 
  min(
    cast(results_1.number as float8)), 
  drivers_1.dob, 
  min(
    cast(results_2.date as "timestamp")), 
  drivers_1.surname, 
  drivers_1.forename, 
  constructors_1.constructorid, 
  constructors_1.constructorid
from 
  drivers as drivers_1
      inner join qualifying as qualifying_1
        inner join results as results_1
          inner join results as results_2
          on (results_1.constructorid = results_2.resultid )
        on (qualifying_1.raceid = results_2.resultid )
      on (drivers_1.dob = results_1.date )
    inner join constructors as constructors_1
    on (results_1.driverid = constructors_1.constructorid )
where drivers_1.forename is not NULL
group by qualifying_1.date, drivers_1.code, qualifying_1.constructorid, drivers_1.dob, drivers_1.surname, drivers_1.forename, constructors_1.constructorid, constructors_1.constructorid
limit 14;
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 17;
select  
  circuits_1.circuitid, 
  circuits_1.name, 
  count(*), 
  circuits_1.alt, 
  count(*), 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
group by circuits_1.circuitid, circuits_1.name, circuits_1.alt, circuits_1.lng
limit 5;
select  
  qualifying_1.driverid, 
  qualifying_1.qualifyid, 
  circuits_1.country, 
  qualifying_1.position, 
  qualifying_1.driverid, 
  qualifying_1.qualifyid, 
  circuits_1.country, 
  circuits_1.location, 
  qualifying_1.date, 
  qualifying_1.position, 
  circuits_1.lat
from 
  circuits as circuits_1
    inner join qualifying as qualifying_1
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where circuits_1.lat < circuits_1.alt
limit 4;
select  
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.date > qualifying_1.date
limit 31;
select  
  races_1.name, 
  drivers_1.driverref, 
  constructor_standings_1.constructorid, 
  count(*), 
  constructor_results_1.date, 
  constructor_standings_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid
from 
  constructor_standings as constructor_standings_1
    inner join drivers as drivers_1
      inner join constructor_results as constructor_results_1
        inner join races as races_1
        on (constructor_results_1.constructorresultsid = races_1.raceid )
      on (drivers_1.forename = races_1.name )
    on (constructor_standings_1.position = drivers_1.driverid )
where constructor_standings_1.position = drivers_1.driverid
group by races_1.name, drivers_1.driverref, constructor_standings_1.constructorid, constructor_results_1.date, constructor_standings_1.constructorid, constructor_results_1.raceid, constructor_results_1.points, constructor_results_1.constructorid
limit 5;
select  
  drivers_1.forename, 
  min(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.dob, 
  count(
    cast(drivers_1.nationality as text)), 
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.forename is not NULL
group by drivers_1.forename, drivers_1.dob, drivers_1.dob
limit 35;
select  
  races_1.name, 
  standings_1.points, 
  min(
    cast(standings_1.points as float8))
from 
  standings as standings_1
    inner join races as races_1
    on (standings_1.position = races_1.raceid )
where races_1.name is not NULL
group by races_1.name, standings_1.points
limit 21;
select  
  drivers_1.driverref
from 
  drivers as drivers_1
    inner join standings as standings_1
    on (drivers_1.dob = standings_1.date )
where standings_1.raceid = standings_1.wins
limit 14;
select  
  min(
    cast(standings_1.points as float8)), 
  standings_1.driverid, 
  standings_1.points, 
  standings_1.position, 
  standings_1.date, 
  standings_1.driverstandingsid, 
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.position is not NULL
group by standings_1.driverid, standings_1.points, standings_1.position, standings_1.date, standings_1.driverstandingsid, standings_1.driverstandingsid
limit 14;
select  
  drivers_1.code, 
  avg(
    cast(drivers_1.driverid as int8)), 
  drivers_1.surname, 
  drivers_1.code, 
  drivers_1.forename, 
  drivers_1.driverid, 
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
group by drivers_1.code, drivers_1.surname, drivers_1.code, drivers_1.forename, drivers_1.driverid, drivers_1.driverref
limit 23;
select  
  sum(
    cast(constructor_results_1.raceid as int8))
from 
  qualifying as qualifying_1
        inner join constructor_results as constructor_results_1
        on (qualifying_1.constructorid = constructor_results_1.constructorresultsid )
      inner join qualifying as qualifying_2
        inner join constructor_results as constructor_results_2
        on (qualifying_2.raceid = constructor_results_2.constructorresultsid )
      on (constructor_results_1.constructorid = qualifying_2.qualifyid )
    inner join circuits as circuits_1
          inner join results as results_1
          on (circuits_1.lng = results_1.number )
        inner join constructor_standings as constructor_standings_1
        on (results_1.resultid = constructor_standings_1.constructorstandingsid )
      inner join drivers as drivers_1
      on (constructor_standings_1.position = drivers_1.driverid )
    on (qualifying_1.date = drivers_1.dob )
where constructor_results_1.constructorid <= qualifying_1.constructorid
limit 6;
select  
  qualifying_1.number, 
  qualifying_1.position
from 
  qualifying as qualifying_1
    inner join drivers as drivers_1
    on (qualifying_1.driverid = drivers_1.driverid )
where qualifying_1.qualifyid is not NULL
limit 12;
select  
  max(
    cast(constructor_results_1.date as "timestamp")), 
  constructors_2.constructorid, 
  constructors_2.constructorid, 
  constructors_2.nationality, 
  sum(
    cast(results_1.laps as int8)), 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
          inner join constructors as constructors_1
          on (qualifying_1.qualifyid = constructors_1.constructorid )
        inner join results as results_1
          inner join constructors as constructors_2
          on (results_1.resultid = constructors_2.constructorid )
        on (qualifying_1.number = results_1.resultid )
      inner join constructor_results as constructor_results_1
      on (qualifying_1.driverid = constructor_results_1.constructorresultsid )
    inner join standings as standings_1
    on (results_1.statusid = standings_1.driverstandingsid )
where standings_1.date >= constructor_results_1.date
group by constructors_2.constructorid, constructors_2.constructorid, constructors_2.nationality, qualifying_1.raceid
limit 13;
select  
  constructor_results_1.constructorid
from 
  constructors as constructors_1
    inner join results as results_1
        inner join constructor_results as constructor_results_1
        on (results_1.raceid = constructor_results_1.constructorresultsid )
      inner join standings as standings_1
      on (results_1.constructorid = standings_1.driverstandingsid )
    on (constructors_1.constructorid = results_1.resultid )
where constructors_1.name is not NULL
limit 41;
select  
  circuits_1.country, 
  constructors_1.name, 
  constructors_1.name, 
  circuits_1.circuitid, 
  constructors_1.constructorid, 
  circuits_1.country, 
  circuits_1.circuitid, 
  constructors_1.name, 
  circuits_1.lng, 
  circuits_1.country, 
  circuits_1.name, 
  count(
    cast(constructors_1.constructorid as int8)), 
  constructors_1.constructorref, 
  circuits_1.alt, 
  circuits_1.country, 
  circuits_1.lng, 
  count(
    cast(circuits_1.alt as float8)), 
  circuits_1.circuitref, 
  circuits_1.lat, 
  circuits_1.circuitid, 
  circuits_1.alt
from 
  circuits as circuits_1
    inner join constructors as constructors_1
    on (circuits_1.country = constructors_1.constructorref )
where circuits_1.circuitid is not NULL
group by circuits_1.country, constructors_1.name, constructors_1.name, circuits_1.circuitid, constructors_1.constructorid, circuits_1.country, circuits_1.circuitid, constructors_1.name, circuits_1.lng, circuits_1.country, circuits_1.name, constructors_1.constructorref, circuits_1.alt, circuits_1.country, circuits_1.lng, circuits_1.circuitref, circuits_1.lat, circuits_1.circuitid, circuits_1.alt
limit 4;
select  
  results_1.date, 
  results_1.number, 
  results_1.date, 
  results_1.driverid, 
  results_1.milliseconds, 
  results_1.date, 
  results_1.milliseconds, 
  avg(
    cast(results_1.raceid as int8)), 
  results_1.driverid, 
  min(
    cast(results_1.date as "timestamp")), 
  results_1.resultid, 
  results_1.constructorid, 
  max(
    cast(results_1.date as "timestamp")), 
  results_1.rank, 
  max(
    cast(results_1.laps as int8)), 
  max(
    cast(results_1.number as float8)), 
  count(*), 
  results_1.date, 
  results_1.constructorid, 
  results_1.fastestlap, 
  results_1.milliseconds, 
  results_1.laps, 
  results_1.rank, 
  results_1.rank
from 
  results as results_1
where results_1.rank is not NULL
group by results_1.date, results_1.number, results_1.date, results_1.driverid, results_1.milliseconds, results_1.date, results_1.milliseconds, results_1.driverid, results_1.resultid, results_1.constructorid, results_1.rank, results_1.date, results_1.constructorid, results_1.fastestlap, results_1.milliseconds, results_1.laps, results_1.rank, results_1.rank
limit 4;
select  
  max(
    cast(drivers_1.code as text)), 
  constructor_results_1.raceid
from 
  circuits as circuits_1
        inner join constructor_results as constructor_results_1
        on (circuits_1.lng = constructor_results_1.points )
      inner join drivers as drivers_1
      on (constructor_results_1.constructorresultsid = drivers_1.driverid )
    inner join qualifying as qualifying_1
    on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
where circuits_1.circuitref is not NULL
group by constructor_results_1.raceid
limit 1;
select  
  constructors_1.constructorref, 
  constructor_standings_1.position, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
        inner join constructor_standings as constructor_standings_1
        on (qualifying_1.driverid = constructor_standings_1.constructorstandingsid )
      inner join constructors as constructors_1
      on (constructor_standings_1.wins = constructors_1.constructorid )
    inner join constructor_standings as constructor_standings_2
      inner join qualifying as qualifying_2
      on (constructor_standings_2.date = qualifying_2.date )
    on (constructor_standings_1.position = qualifying_2.qualifyid )
where constructors_1.nationality is not NULL
limit 41;
select  
  circuits_1.circuitref, 
  constructors_1.name, 
  constructor_standings_1.wins, 
  standings_1.driverid, 
  max(
    cast(constructors_1.constructorref as text))
from 
  constructors as constructors_1
        inner join constructor_standings as constructor_standings_1
        on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
      inner join circuits as circuits_1
      on (constructors_1.name = circuits_1.circuitref )
    inner join standings as standings_1
    on (circuits_1.lat = standings_1.points )
where constructors_1.constructorid is not NULL
group by circuits_1.circuitref, constructors_1.name, constructor_standings_1.wins, standings_1.driverid
limit 40;
select  
  sum(
    cast(results_1.constructorid as int8)), 
  results_1.number, 
  results_1.grid, 
  results_1.positionorder, 
  results_1.number, 
  results_1.points, 
  results_1.driverid, 
  min(
    cast(results_1.date as "timestamp")), 
  results_1.driverid, 
  results_1.positionorder, 
  results_1.positionorder, 
  results_1.number
from 
  results as results_1
where results_1.positionorder is not NULL
group by results_1.number, results_1.grid, results_1.positionorder, results_1.number, results_1.points, results_1.driverid, results_1.driverid, results_1.positionorder, results_1.positionorder, results_1.number
limit 33;
select  
  races_1.year, 
  races_1.circuitid, 
  races_1.name, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid, 
  count(
    cast(races_2.circuitid as int8)), 
  races_2.circuitid
from 
  races as races_1
      inner join races as races_2
      on (races_1.time = races_2.name )
    inner join constructor_standings as constructor_standings_1
    on (races_2.raceid = constructor_standings_1.constructorstandingsid )
where races_2.raceid is not NULL
group by races_1.year, races_1.circuitid, races_1.name, constructor_standings_1.date, constructor_standings_1.constructorid, races_2.circuitid
limit 11;
select  
  races_1.year, 
  races_1.round, 
  races_1.circuitid, 
  races_1.date, 
  races_1.raceid, 
  races_1.name, 
  races_1.circuitid, 
  races_1.round, 
  races_1.name, 
  races_1.raceid
from 
  races as races_1
where races_1.date is not NULL
limit 35;
select  
  sum(
    cast(constructor_standings_1.constructorstandingsid as int8))
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 24;
select  
  standings_1.raceid, 
  standings_1.date
from 
  standings as standings_1
where standings_1.wins is not NULL
limit 35;
select  
  races_1.year
from 
  races as races_1
where races_1.year is not NULL
limit 14;
select  
  drivers_1.surname, 
  races_1.date, 
  drivers_1.driverid
from 
  drivers as drivers_1
    inner join races as races_1
    on (drivers_1.code = races_1.name )
where drivers_1.driverid is not NULL
limit 40;
select  
  drivers_1.driverid, 
  races_1.time
from 
  results as results_1
    inner join circuits as circuits_1
        inner join races as races_1
        on (circuits_1.circuitid = races_1.raceid )
      inner join drivers as drivers_1
      on (circuits_1.name = drivers_1.driverref )
    on (results_1.fastestlap = circuits_1.lat )
where circuits_1.name is not NULL
limit 29;
select  
  qualifying_1.qualifyid, 
  qualifying_2.number, 
  qualifying_1.raceid, 
  min(
    cast(qualifying_2.constructorid as int8)), 
  avg(
    cast(qualifying_2.qualifyid as int8)), 
  min(
    cast(qualifying_2.qualifyid as int8))
from 
  qualifying as qualifying_1
    inner join qualifying as qualifying_2
    on (qualifying_1.driverid = qualifying_2.qualifyid )
where qualifying_2.date >= qualifying_1.date
group by qualifying_1.qualifyid, qualifying_2.number, qualifying_1.raceid
limit 17;
select  
  min(
    cast(circuits_1.lat as float8)), 
  circuits_1.country
from 
  constructor_standings as constructor_standings_1
    inner join constructor_standings as constructor_standings_2
      inner join circuits as circuits_1
      on (constructor_standings_2.raceid = circuits_1.circuitid )
    on (constructor_standings_1.raceid = circuits_1.circuitid )
where constructor_standings_2.date is not NULL
group by circuits_1.country
limit 41;
select  
  max(
    cast(qualifying_1.raceid as int8))
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
limit 25;
select  
  results_1.fastestlap, 
  results_1.driverid, 
  results_1.grid, 
  results_1.position, 
  max(
    cast(results_1.number as float8)), 
  results_1.raceid, 
  results_1.fastestlap, 
  results_1.number, 
  results_1.fastestlap, 
  results_1.statusid, 
  results_1.rank, 
  results_1.grid, 
  results_1.fastestlap, 
  results_1.statusid, 
  results_1.milliseconds
from 
  results as results_1
where results_1.number is not NULL
group by results_1.fastestlap, results_1.driverid, results_1.grid, results_1.position, results_1.raceid, results_1.fastestlap, results_1.number, results_1.fastestlap, results_1.statusid, results_1.rank, results_1.grid, results_1.fastestlap, results_1.statusid, results_1.milliseconds
limit 13;
select  
  max(
    cast(drivers_1.driverid as int8)), 
  drivers_1.nationality, 
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
group by drivers_1.nationality, drivers_1.code
limit 27;
select  
  qualifying_1.position
from 
  qualifying as qualifying_1
    inner join races as races_1
    on (qualifying_1.date = races_1.date )
where races_1.round is not NULL
limit 17;
select  
  count(*), 
  circuits_1.country, 
  drivers_1.driverid, 
  drivers_1.driverref
from 
  circuits as circuits_1
    inner join constructor_results as constructor_results_1
      inner join drivers as drivers_1
      on (constructor_results_1.date = drivers_1.dob )
    on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
where drivers_1.surname > circuits_1.country
group by circuits_1.country, drivers_1.driverid, drivers_1.driverref
limit 39;
select  
  drivers_1.dob, 
  drivers_1.nationality, 
  drivers_1.surname, 
  drivers_1.driverid, 
  drivers_1.surname, 
  drivers_1.nationality, 
  max(
    cast(drivers_1.forename as text)), 
  drivers_1.code, 
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.dob > drivers_1.dob
group by drivers_1.dob, drivers_1.nationality, drivers_1.surname, drivers_1.driverid, drivers_1.surname, drivers_1.nationality, drivers_1.code, drivers_1.dob
limit 22;
select  
  count(*)
from 
  constructor_results as constructor_results_1
where constructor_results_1.points <= constructor_results_1.points
limit 37;
select  
  races_1.name, 
  races_1.name, 
  races_1.time, 
  races_1.time, 
  races_1.circuitid, 
  races_1.name
from 
  races as races_1
where races_1.time is not NULL
limit 2;
select  
  circuits_1.lat
from 
  circuits as circuits_1
where circuits_1.circuitid > circuits_1.circuitid
limit 7;
select  
  standings_1.driverid, 
  standings_1.date, 
  standings_1.position, 
  min(
    cast(standings_1.raceid as int8)), 
  standings_1.driverid, 
  standings_1.position
from 
  standings as standings_1
where standings_1.wins is not NULL
group by standings_1.driverid, standings_1.date, standings_1.position, standings_1.driverid, standings_1.position
limit 23;
select  
  min(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.constructorid, 
  max(
    cast(constructors_1.name as text))
from 
  qualifying as qualifying_1
    inner join constructors as constructors_1
    on (qualifying_1.raceid = constructors_1.constructorid )
where qualifying_1.date = qualifying_1.date
group by qualifying_1.constructorid
limit 33;
select  
  results_1.grid
from 
  results as results_1
where results_1.grid is not NULL
limit 25;
select  
  qualifying_1.driverid, 
  qualifying_1.date, 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  qualifying_1.date, 
  min(
    cast(qualifying_1.date as "timestamp"))
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
group by qualifying_1.driverid, qualifying_1.date, qualifying_1.constructorid, qualifying_1.qualifyid, qualifying_1.date
limit 3;
select  
  count(*), 
  avg(
    cast(circuits_1.alt as float8))
from 
  races as races_1
    inner join drivers as drivers_1
      inner join qualifying as qualifying_1
        inner join circuits as circuits_1
        on (qualifying_1.driverid = circuits_1.circuitid )
      on (drivers_1.surname = circuits_1.circuitref )
    on (races_1.round = circuits_1.circuitid )
where circuits_1.lng < circuits_1.alt
limit 3;
select  
  circuits_1.lng, 
  circuits_1.country, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.alt < circuits_1.lat
limit 20;
select  
  min(
    cast(results_1.date as "timestamp")), 
  results_1.position, 
  results_1.date
from 
  constructors as constructors_1
    inner join results as results_1
    on (constructors_1.constructorid = results_1.resultid )
where constructors_1.constructorref is not NULL
group by results_1.position, results_1.date
limit 9;
select  
  drivers_1.driverid, 
  drivers_1.driverref, 
  drivers_2.surname, 
  drivers_2.code, 
  results_1.statusid, 
  drivers_1.driverref, 
  drivers_2.driverref, 
  drivers_1.driverid, 
  drivers_1.driverref, 
  results_1.position, 
  results_1.date, 
  drivers_2.code, 
  drivers_1.surname, 
  results_1.statusid, 
  drivers_2.code, 
  results_1.date
from 
  drivers as drivers_1
      inner join drivers as drivers_2
      on (drivers_1.driverref = drivers_2.driverref )
    inner join results as results_1
    on (drivers_1.driverid = results_1.resultid )
where drivers_1.surname is not NULL
limit 29;
select  
  results_1.laps, 
  results_1.statusid, 
  results_1.milliseconds
from 
  results as results_1
where results_1.date is not NULL
limit 6;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  min(
    cast(constructor_results_1.date as "timestamp")), 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  min(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid > constructor_results_1.constructorid
group by constructor_results_1.constructorresultsid, constructor_results_1.constructorid, constructor_results_1.constructorid, constructor_results_1.points, constructor_results_1.raceid, constructor_results_1.constructorid, constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date
limit 6;
select  
  standings_1.raceid, 
  standings_1.date, 
  standings_1.wins, 
  standings_1.driverid, 
  standings_1.position, 
  standings_1.date, 
  max(
    cast(standings_1.points as float8)), 
  standings_1.wins, 
  standings_1.wins, 
  standings_1.driverstandingsid, 
  standings_1.date, 
  standings_1.position, 
  standings_1.date, 
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.wins is not NULL
group by standings_1.raceid, standings_1.date, standings_1.wins, standings_1.driverid, standings_1.position, standings_1.date, standings_1.wins, standings_1.wins, standings_1.driverstandingsid, standings_1.date, standings_1.position, standings_1.date, standings_1.driverstandingsid
limit 15;
select  
  races_1.round
from 
  races as races_1
where races_1.raceid is not NULL
limit 4;
select  
  circuits_1.name, 
  circuits_1.circuitid, 
  circuits_1.alt, 
  circuits_1.country, 
  min(
    cast(circuits_1.name as text)), 
  circuits_1.circuitref, 
  circuits_1.country, 
  avg(
    cast(circuits_1.alt as float8)), 
  circuits_1.alt, 
  circuits_1.location, 
  circuits_1.alt, 
  circuits_1.lat, 
  count(*), 
  circuits_1.alt, 
  min(
    cast(circuits_1.name as text)), 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
group by circuits_1.name, circuits_1.circuitid, circuits_1.alt, circuits_1.country, circuits_1.circuitref, circuits_1.country, circuits_1.alt, circuits_1.location, circuits_1.alt, circuits_1.lat, circuits_1.alt, circuits_1.circuitid
limit 25;
select  
  standings_1.driverid, 
  count(
    cast(standings_1.points as float8))
from 
  standings as standings_1
where standings_1.raceid is not NULL
group by standings_1.driverid
limit 42;
select  
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid, 
  min(
    cast(qualifying_1.date as "timestamp"))
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
group by qualifying_1.qualifyid, qualifying_1.qualifyid
limit 22;
select  
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  min(
    cast(constructors_1.name as text)), 
  constructors_1.nationality, 
  constructors_1.nationality, 
  min(
    cast(constructors_1.name as text))
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.constructorref, constructors_1.name, constructors_1.nationality, constructors_1.constructorid, constructors_1.nationality, constructors_1.nationality
limit 9;
select  
  qualifying_1.constructorid, 
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 5;
select  
  standings_1.raceid, 
  standings_1.points, 
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.position is not NULL
limit 39;
select  
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 3;
select  
  min(
    cast(drivers_1.driverid as int8)), 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
group by drivers_1.driverid
limit 3;
select  
  min(
    cast(races_2.time as text)), 
  races_1.raceid, 
  races_1.time, 
  min(
    cast(races_1.name as text)), 
  races_2.date, 
  races_2.raceid, 
  min(
    cast(races_1.time as text)), 
  races_2.raceid, 
  races_1.round, 
  races_1.date, 
  avg(
    cast(races_1.year as int8)), 
  races_1.time, 
  races_1.date, 
  sum(
    cast(races_2.raceid as int8)), 
  races_2.circuitid, 
  races_1.round, 
  races_1.raceid, 
  max(
    cast(races_1.year as int8)), 
  races_2.name
from 
  races as races_1
    inner join races as races_2
    on (races_1.circuitid = races_2.raceid )
where races_1.name > races_2.name
group by races_1.raceid, races_1.time, races_2.date, races_2.raceid, races_2.raceid, races_1.round, races_1.date, races_1.time, races_1.date, races_2.circuitid, races_1.round, races_1.raceid, races_2.name
limit 19;
select  
  drivers_1.surname, 
  drivers_1.driverid, 
  drivers_1.surname, 
  drivers_1.forename, 
  sum(
    cast(drivers_1.driverid as int8)), 
  min(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.surname, 
  drivers_1.forename, 
  min(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.driverref, 
  max(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.driverid, 
  drivers_1.driverid, 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.dob <= drivers_1.dob
group by drivers_1.surname, drivers_1.driverid, drivers_1.surname, drivers_1.forename, drivers_1.surname, drivers_1.forename, drivers_1.driverref, drivers_1.driverid, drivers_1.driverid, drivers_1.surname
limit 24;
select  
  constructor_results_1.points, 
  max(
    cast(races_1.name as text)), 
  max(
    cast(standings_1.driverstandingsid as int8))
from 
  constructor_results as constructor_results_1
    inner join constructor_standings as constructor_standings_1
      inner join standings as standings_1
        inner join races as races_1
        on (standings_1.position = races_1.raceid )
      on (constructor_standings_1.raceid = standings_1.driverstandingsid )
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.points
limit 25;
select  
  results_1.fastestlap, 
  results_1.positionorder, 
  results_1.rank, 
  results_1.fastestlap, 
  results_1.date, 
  results_1.points, 
  results_1.resultid
from 
  results as results_1
where results_1.statusid is not NULL
limit 9;
select  
  constructors_1.name, 
  max(
    cast(constructors_1.constructorid as int8)), 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.nationality, 
  count(
    cast(constructors_1.constructorref as text))
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.name, constructors_1.name, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 4;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
limit 4;
select  
  constructors_1.constructorref, 
  constructors_1.nationality, 
  results_1.raceid, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  results_1.rank, 
  results_2.rank, 
  constructors_1.constructorref, 
  max(
    cast(circuits_1.lng as float8))
from 
  results as results_1
    inner join constructors as constructors_1
        inner join circuits as circuits_1
        on (constructors_1.constructorid = circuits_1.circuitid )
      inner join results as results_2
      on (constructors_1.constructorid = results_2.resultid )
    on (results_1.statusid = results_2.resultid )
where constructors_1.constructorref is not NULL
group by constructors_1.constructorref, constructors_1.nationality, results_1.raceid, constructors_1.constructorid, constructors_1.constructorref, results_1.rank, results_2.rank, constructors_1.constructorref
limit 1;
select  
  results_1.points, 
  results_1.laps, 
  sum(
    cast(results_1.fastestlap as float8)), 
  results_1.points, 
  results_1.fastestlap, 
  results_1.position, 
  results_1.statusid, 
  results_1.position
from 
  results as results_1
where results_1.number is not NULL
group by results_1.points, results_1.laps, results_1.points, results_1.fastestlap, results_1.position, results_1.statusid, results_1.position
limit 28;
select  
  circuits_1.circuitref, 
  circuits_1.location, 
  circuits_1.circuitref, 
  circuits_1.lng, 
  circuits_1.circuitid, 
  count(*), 
  min(
    cast(circuits_1.circuitid as int8)), 
  circuits_1.name, 
  circuits_1.circuitref, 
  circuits_1.location, 
  max(
    cast(circuits_1.circuitid as int8))
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
group by circuits_1.circuitref, circuits_1.location, circuits_1.circuitref, circuits_1.lng, circuits_1.circuitid, circuits_1.name, circuits_1.circuitref, circuits_1.location
limit 37;
select  
  max(
    cast(races_1.date as "timestamp")), 
  races_1.raceid
from 
  races as races_1
where races_1.time < races_1.name
group by races_1.raceid
limit 1;
select  
  constructors_2.nationality, 
  constructors_2.constructorid, 
  constructors_2.constructorref
from 
  constructors as constructors_1
    inner join constructors as constructors_2
    on (constructors_1.constructorref = constructors_2.constructorref )
where constructors_1.name is not NULL
limit 42;
select  
  drivers_1.surname, 
  drivers_1.surname, 
  drivers_1.dob, 
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
limit 29;
select  
  avg(
    cast(results_1.number as float8)), 
  results_1.grid, 
  results_1.constructorid, 
  results_1.number, 
  max(
    cast(results_1.rank as float8)), 
  results_1.raceid, 
  results_1.position, 
  results_1.resultid, 
  results_1.fastestlap, 
  results_1.grid, 
  results_1.date, 
  results_1.position, 
  min(
    cast(results_1.date as "timestamp"))
from 
  results as results_1
where results_1.date is not NULL
group by results_1.grid, results_1.constructorid, results_1.number, results_1.raceid, results_1.position, results_1.resultid, results_1.fastestlap, results_1.grid, results_1.date, results_1.position
limit 15;
select  
  races_1.raceid, 
  races_1.year, 
  min(
    cast(races_1.name as text)), 
  races_1.raceid, 
  races_1.raceid, 
  races_1.name, 
  races_1.raceid, 
  races_1.round, 
  races_1.raceid, 
  races_1.raceid
from 
  races as races_1
where races_1.round is not NULL
group by races_1.raceid, races_1.year, races_1.raceid, races_1.raceid, races_1.name, races_1.raceid, races_1.round, races_1.raceid, races_1.raceid
limit 39;
select  
  races_1.date
from 
  races as races_1
where races_1.year is not NULL
limit 25;
select  
  results_1.statusid, 
  races_1.round
from 
  races as races_1
      inner join constructor_results as constructor_results_1
      on (races_1.year = constructor_results_1.constructorresultsid )
    inner join results as results_1
    on (constructor_results_1.constructorid = results_1.resultid )
where results_1.position = results_1.milliseconds
limit 6;
select  
  results_1.grid, 
  standings_1.driverid, 
  drivers_1.nationality, 
  sum(
    cast(results_1.milliseconds as float8)), 
  standings_1.driverid, 
  min(
    cast(drivers_1.dob as "timestamp"))
from 
  standings as standings_1
      inner join results as results_1
      on (standings_1.wins = results_1.resultid )
    inner join constructors as constructors_1
        inner join results as results_2
        on (constructors_1.constructorid = results_2.resultid )
      inner join drivers as drivers_1
      on (results_2.resultid = drivers_1.driverid )
    on (standings_1.raceid = results_2.resultid )
where results_2.milliseconds is not NULL
group by results_1.grid, standings_1.driverid, drivers_1.nationality, standings_1.driverid
limit 18;
select  
  qualifying_2.date, 
  avg(
    cast(results_1.number as float8)), 
  constructor_results_1.constructorresultsid, 
  results_1.positionorder, 
  qualifying_1.position, 
  sum(
    cast(results_1.number as float8)), 
  min(
    cast(qualifying_2.position as int8)), 
  results_1.statusid, 
  results_1.driverid
from 
  qualifying as qualifying_1
        inner join qualifying as qualifying_2
        on (qualifying_1.constructorid = qualifying_2.qualifyid )
      inner join constructor_results as constructor_results_1
      on (qualifying_2.driverid = constructor_results_1.constructorresultsid )
    inner join results as results_1
    on (qualifying_2.constructorid = results_1.resultid )
where qualifying_2.driverid <= qualifying_1.driverid
group by qualifying_2.date, constructor_results_1.constructorresultsid, results_1.positionorder, qualifying_1.position, results_1.statusid, results_1.driverid
limit 27;
select  
  races_1.time, 
  races_1.name, 
  circuits_1.circuitref, 
  circuits_1.location, 
  constructor_results_2.constructorresultsid, 
  constructor_results_1.points, 
  drivers_1.code, 
  races_1.year, 
  drivers_1.surname, 
  drivers_1.code, 
  constructor_results_2.constructorresultsid, 
  races_1.date, 
  races_1.time
from 
  races as races_1
      inner join constructor_results as constructor_results_1
        inner join constructor_results as constructor_results_2
        on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
      on (races_1.raceid = constructor_results_2.constructorresultsid )
    inner join drivers as drivers_1
        inner join circuits as circuits_1
        on (drivers_1.surname = circuits_1.circuitref )
      inner join standings as standings_1
      on (circuits_1.lng = standings_1.points )
    on (constructor_results_1.raceid = standings_1.driverstandingsid )
where circuits_1.country is not NULL
limit 17;
select  
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 8;
select  
  qualifying_1.position, 
  qualifying_2.constructorid, 
  qualifying_1.position, 
  qualifying_2.position, 
  constructors_1.constructorid
from 
  qualifying as qualifying_1
    inner join qualifying as qualifying_2
        inner join constructors as constructors_1
        on (qualifying_2.qualifyid = constructors_1.constructorid )
      inner join constructors as constructors_2
      on (qualifying_2.number = constructors_2.constructorid )
    on (qualifying_1.raceid = qualifying_2.qualifyid )
where qualifying_2.position is not NULL
limit 5;
select  
  races_1.date, 
  races_1.raceid, 
  races_1.round, 
  races_1.date, 
  min(
    cast(races_1.circuitid as int8)), 
  races_1.raceid, 
  races_1.raceid
from 
  races as races_1
where races_1.time is not NULL
group by races_1.date, races_1.raceid, races_1.round, races_1.date, races_1.raceid, races_1.raceid
limit 42;
select  
  constructor_standings_1.position, 
  count(*), 
  constructor_standings_1.raceid, 
  constructor_standings_1.position, 
  sum(
    cast(constructor_standings_1.position as int8)), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  constructor_standings_1.date, 
  max(
    cast(constructor_standings_1.date as "timestamp")), 
  constructor_standings_1.constructorid, 
  max(
    cast(constructor_standings_1.date as "timestamp")), 
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  max(
    cast(constructor_standings_1.date as "timestamp")), 
  avg(
    cast(constructor_standings_1.constructorstandingsid as int8)), 
  max(
    cast(constructor_standings_1.date as "timestamp")), 
  constructor_standings_1.points, 
  constructor_standings_1.points, 
  constructor_standings_1.position, 
  constructor_standings_1.date, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  max(
    cast(constructor_standings_1.points as float8)), 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.position, constructor_standings_1.constructorid, constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.wins, constructor_standings_1.date, constructor_standings_1.constructorid, constructor_standings_1.position, constructor_standings_1.wins, constructor_standings_1.points, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.date, constructor_standings_1.date, constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorid
limit 34;
select  
  qualifying_1.date, 
  qualifying_1.date, 
  avg(
    cast(qualifying_1.number as int8))
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
group by qualifying_1.date, qualifying_1.date
limit 28;
select  
  standings_1.date, 
  standings_1.date
from 
  standings as standings_1
where standings_1.driverid is not NULL
limit 23;
select  
  results_1.points, 
  max(
    cast(results_1.date as "timestamp")), 
  max(
    cast(results_1.fastestlap as float8))
from 
  results as results_1
where results_1.raceid < results_1.statusid
group by results_1.points
limit 41;
select  
  results_1.raceid, 
  results_1.statusid, 
  min(
    cast(results_1.date as "timestamp")), 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  results_1.position, 
  avg(
    cast(standings_1.driverid as int8)), 
  standings_1.points
from 
  constructors as constructors_1
    inner join results as results_1
      inner join standings as standings_1
      on (results_1.laps = standings_1.driverstandingsid )
    on (constructors_1.constructorid = results_1.resultid )
where standings_1.date <= results_1.date
group by results_1.raceid, results_1.statusid, constructors_1.nationality, constructors_1.constructorref, results_1.position, standings_1.points
limit 30;
select  
  races_1.time, 
  races_1.raceid, 
  races_1.circuitid, 
  races_1.time, 
  races_1.name, 
  races_1.circuitid, 
  races_1.circuitid, 
  races_1.time, 
  races_1.time, 
  races_1.circuitid, 
  min(
    cast(races_1.name as text)), 
  races_1.date, 
  races_1.raceid, 
  races_1.circuitid, 
  max(
    cast(races_1.date as "timestamp")), 
  races_1.circuitid
from 
  races as races_1
where races_1.round is not NULL
group by races_1.time, races_1.raceid, races_1.circuitid, races_1.time, races_1.name, races_1.circuitid, races_1.circuitid, races_1.time, races_1.time, races_1.circuitid, races_1.date, races_1.raceid, races_1.circuitid, races_1.circuitid
limit 6;
select  
  results_1.rank, 
  results_1.raceid
from 
  results as results_1
where results_1.date is not NULL
limit 31;
select  
  constructors_1.constructorid, 
  max(
    cast(standings_1.date as "timestamp")), 
  standings_1.date, 
  constructors_1.constructorref, 
  count(*), 
  constructors_1.nationality, 
  standings_1.date, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  standings_1.driverid
from 
  constructors as constructors_1
    inner join standings as standings_1
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where constructors_1.constructorid is not NULL
group by constructors_1.constructorid, standings_1.date, constructors_1.constructorref, constructors_1.nationality, standings_1.date, constructors_1.constructorref, constructors_1.nationality, standings_1.driverid
limit 11;
select  
  races_1.round, 
  races_1.date, 
  sum(
    cast(races_1.raceid as int8)), 
  races_1.circuitid, 
  races_1.circuitid, 
  races_1.year
from 
  races as races_1
where races_1.round < races_1.year
group by races_1.round, races_1.date, races_1.circuitid, races_1.circuitid, races_1.year
limit 30;
select  
  circuits_2.country, 
  constructor_standings_1.points, 
  count(*)
from 
  standings as standings_1
      inner join constructor_standings as constructor_standings_1
          inner join standings as standings_2
          on (constructor_standings_1.constructorid = standings_2.driverstandingsid )
        inner join circuits as circuits_1
          inner join qualifying as qualifying_1
          on (circuits_1.circuitid = qualifying_1.qualifyid )
        on (constructor_standings_1.raceid = qualifying_1.qualifyid )
      on (standings_1.position = constructor_standings_1.constructorstandingsid )
    inner join drivers as drivers_1
      inner join circuits as circuits_2
      on (drivers_1.surname = circuits_2.circuitref )
    on (standings_2.driverid = circuits_2.circuitid )
where standings_2.position is not NULL
group by circuits_2.country, constructor_standings_1.points
limit 1;
select  
  min(
    cast(constructors_1.nationality as text)), 
  standings_1.driverstandingsid, 
  drivers_1.dob, 
  standings_1.driverid, 
  drivers_1.driverid, 
  drivers_1.driverid, 
  drivers_1.nationality, 
  standings_1.points, 
  min(
    cast(standings_1.driverstandingsid as int8)), 
  standings_1.raceid, 
  drivers_1.nationality, 
  drivers_1.dob
from 
  standings as standings_1
    inner join constructors as constructors_1
      inner join drivers as drivers_1
      on (constructors_1.constructorid = drivers_1.driverid )
    on (standings_1.position = drivers_1.driverid )
where standings_1.date is not NULL
group by standings_1.driverstandingsid, drivers_1.dob, standings_1.driverid, drivers_1.driverid, drivers_1.driverid, drivers_1.nationality, standings_1.points, standings_1.raceid, drivers_1.nationality, drivers_1.dob
limit 36;
select  
  qualifying_1.raceid, 
  qualifying_1.constructorid, 
  qualifying_1.position, 
  avg(
    cast(qualifying_1.constructorid as int8)), 
  qualifying_1.date, 
  qualifying_1.driverid, 
  max(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.driverid, 
  qualifying_1.qualifyid, 
  qualifying_1.number, 
  min(
    cast(qualifying_1.raceid as int8))
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
group by qualifying_1.raceid, qualifying_1.constructorid, qualifying_1.position, qualifying_1.date, qualifying_1.driverid, qualifying_1.driverid, qualifying_1.qualifyid, qualifying_1.number
limit 6;
select  
  standings_1.raceid, 
  min(
    cast(standings_1.date as "timestamp")), 
  max(
    cast(standings_1.date as "timestamp")), 
  standings_1.wins, 
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.driverid is not NULL
group by standings_1.raceid, standings_1.wins, standings_1.driverstandingsid
limit 5;
select  
  standings_1.date, 
  standings_1.raceid, 
  constructor_results_1.points, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  standings_1.driverstandingsid, 
  max(
    cast(constructor_standings_1.date as "timestamp")), 
  sum(
    cast(constructor_results_1.constructorid as int8)), 
  constructor_standings_1.constructorstandingsid, 
  standings_1.position, 
  standings_1.date, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  max(
    cast(constructor_results_1.date as "timestamp")), 
  min(
    cast(constructor_standings_1.raceid as int8))
from 
  constructor_results as constructor_results_1
    inner join constructor_standings as constructor_standings_1
      inner join standings as standings_1
      on (constructor_standings_1.position = standings_1.driverstandingsid )
    on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
where constructor_standings_1.constructorstandingsid is not NULL
group by standings_1.date, standings_1.raceid, constructor_results_1.points, constructor_standings_1.points, constructor_standings_1.constructorstandingsid, standings_1.driverstandingsid, constructor_standings_1.constructorstandingsid, standings_1.position, standings_1.date, constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid
limit 20;
select  
  standings_1.driverstandingsid, 
  circuits_1.name, 
  races_1.year, 
  races_1.circuitid, 
  standings_1.points, 
  standings_1.raceid, 
  constructors_1.constructorid, 
  races_1.time, 
  constructors_1.nationality, 
  standings_1.points
from 
  constructors as constructors_1
    inner join standings as standings_1
        inner join races as races_1
        on (standings_1.wins = races_1.raceid )
      inner join circuits as circuits_1
      on (races_1.circuitid = circuits_1.circuitid )
    on (constructors_1.constructorid = races_1.raceid )
where races_1.circuitid is not NULL
limit 6;
select  
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 4;
select  
  circuits_1.circuitref, 
  circuits_1.circuitid, 
  circuits_1.name, 
  circuits_1.country, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.name is not NULL
limit 32;
select  
  races_1.year, 
  races_1.round, 
  max(
    cast(races_1.date as "timestamp")), 
  races_1.time
from 
  races as races_1
where races_1.circuitid is not NULL
group by races_1.year, races_1.round, races_1.time
limit 39;
select  
  count(
    cast(constructor_standings_1.wins as int8)), 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.date, constructor_standings_1.constructorstandingsid, constructor_standings_1.raceid, constructor_standings_1.raceid, constructor_standings_1.wins
limit 37;
select  
  constructor_standings_1.date, 
  constructor_standings_1.date, 
  constructor_standings_1.raceid, 
  count(*), 
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  constructor_standings_1.date, 
  constructor_standings_1.date, 
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  max(
    cast(constructor_standings_1.points as float8)), 
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  avg(
    cast(constructor_standings_1.constructorid as int8)), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorid, 
  max(
    cast(constructor_standings_1.date as "timestamp")), 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
group by constructor_standings_1.date, constructor_standings_1.date, constructor_standings_1.raceid, constructor_standings_1.date, constructor_standings_1.wins, constructor_standings_1.date, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.points, constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.points, constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.constructorid, constructor_standings_1.constructorid, constructor_standings_1.raceid
limit 10;
select  
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 40;
select  
  constructor_standings_1.position, 
  constructor_standings_1.raceid
from 
  constructors as constructors_1
    inner join constructor_standings as constructor_standings_1
      inner join constructors as constructors_2
      on (constructor_standings_1.wins = constructors_2.constructorid )
    on (constructors_1.constructorref = constructors_2.constructorref )
where constructor_standings_1.wins >= constructor_standings_1.constructorstandingsid
limit 1;
select  
  standings_1.driverid, 
  drivers_1.forename, 
  drivers_1.code
from 
  standings as standings_1
    inner join drivers as drivers_1
    on (standings_1.position = drivers_1.driverid )
where standings_1.driverstandingsid is not NULL
limit 19;
select  
  races_1.circuitid, 
  races_1.round, 
  min(
    cast(races_1.time as text))
from 
  races as races_1
where races_1.time = races_1.name
group by races_1.circuitid, races_1.round
limit 11;
select  
  results_1.number, 
  results_1.laps, 
  sum(
    cast(results_1.points as float8))
from 
  results as results_1
where results_1.grid is not NULL
group by results_1.number, results_1.laps
limit 11;
select  
  qualifying_1.constructorid, 
  standings_1.position, 
  standings_1.date, 
  standings_1.position, 
  qualifying_1.position, 
  standings_1.raceid, 
  standings_1.wins, 
  qualifying_1.position, 
  qualifying_1.date, 
  standings_1.position, 
  standings_1.driverid
from 
  qualifying as qualifying_1
    inner join standings as standings_1
    on (qualifying_1.constructorid = standings_1.driverstandingsid )
where qualifying_1.raceid >= qualifying_1.position
limit 22;
select  
  circuits_1.circuitid, 
  races_1.name, 
  results_2.rank, 
  results_2.resultid, 
  races_1.name, 
  constructor_standings_1.wins, 
  min(
    cast(circuits_1.location as text)), 
  results_2.fastestlap, 
  count(
    cast(constructor_standings_1.points as float8)), 
  results_2.raceid, 
  max(
    cast(results_1.date as "timestamp")), 
  circuits_1.circuitref
from 
  results as results_1
        inner join races as races_1
        on (results_1.constructorid = races_1.raceid )
      inner join circuits as circuits_1
      on (results_1.milliseconds = circuits_1.lat )
    inner join results as results_2
        inner join constructors as constructors_1
        on (results_2.resultid = constructors_1.constructorid )
      inner join constructor_standings as constructor_standings_1
      on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
    on (races_1.raceid = constructor_standings_1.constructorstandingsid )
where results_1.points is not NULL
group by circuits_1.circuitid, races_1.name, results_2.rank, results_2.resultid, races_1.name, constructor_standings_1.wins, results_2.fastestlap, results_2.raceid, circuits_1.circuitref
limit 17;
select  
  max(
    cast(drivers_1.surname as text)), 
  standings_1.driverid, 
  constructors_1.constructorref, 
  drivers_1.driverref, 
  standings_1.raceid, 
  circuits_1.alt, 
  constructor_standings_1.constructorstandingsid, 
  drivers_2.driverref, 
  standings_1.driverid, 
  max(
    cast(constructors_1.constructorref as text)), 
  drivers_1.nationality, 
  count(*), 
  drivers_1.forename, 
  drivers_2.surname, 
  circuits_1.name, 
  min(
    cast(drivers_2.code as text)), 
  avg(
    cast(circuits_1.lat as float8)), 
  circuits_1.location, 
  constructors_1.name, 
  constructors_1.constructorref, 
  standings_1.date, 
  standings_1.wins, 
  drivers_1.driverid, 
  circuits_1.country, 
  circuits_1.name, 
  circuits_1.lat
from 
  circuits as circuits_1
        inner join drivers as drivers_1
          inner join standings as standings_1
          on (drivers_1.driverid = standings_1.driverstandingsid )
        on (circuits_1.circuitref = drivers_1.driverref )
      inner join constructors as constructors_1
        inner join constructor_standings as constructor_standings_1
        on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
      on (circuits_1.lng = constructor_standings_1.points )
    inner join drivers as drivers_2
    on (constructors_1.name = drivers_2.driverref )
where circuits_1.lat < constructor_standings_1.points
group by standings_1.driverid, constructors_1.constructorref, drivers_1.driverref, standings_1.raceid, circuits_1.alt, constructor_standings_1.constructorstandingsid, drivers_2.driverref, standings_1.driverid, drivers_1.nationality, drivers_1.forename, drivers_2.surname, circuits_1.name, circuits_1.location, constructors_1.name, constructors_1.constructorref, standings_1.date, standings_1.wins, drivers_1.driverid, circuits_1.country, circuits_1.name, circuits_1.lat
limit 32;
select  
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 2;
select  
  constructor_standings_1.date, 
  avg(
    cast(constructor_standings_1.position as int8)), 
  sum(
    cast(constructor_standings_1.raceid as int8)), 
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
group by constructor_standings_1.date, constructor_standings_1.raceid, constructor_standings_1.wins, constructor_standings_1.wins, constructor_standings_1.constructorid, constructor_standings_1.raceid
limit 29;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.position, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
    inner join qualifying as qualifying_1
    on (constructor_standings_1.date = qualifying_1.date )
where constructor_standings_1.date is not NULL
limit 9;
select  
  races_1.round
from 
  races as races_1
where races_1.round is not NULL
limit 5;
select  
  races_1.circuitid, 
  constructor_standings_1.wins, 
  max(
    cast(drivers_1.nationality as text)), 
  count(*), 
  drivers_1.forename, 
  constructor_standings_1.constructorstandingsid, 
  constructor_results_1.date, 
  constructor_standings_1.points, 
  races_1.raceid, 
  max(
    cast(races_2.date as "timestamp"))
from 
  constructor_standings as constructor_standings_1
    inner join races as races_1
        inner join races as races_2
        on (races_1.name = races_2.name )
      inner join drivers as drivers_1
        inner join constructor_results as constructor_results_1
        on (drivers_1.driverid = constructor_results_1.constructorresultsid )
      on (races_1.year = drivers_1.driverid )
    on (constructor_standings_1.raceid = races_1.raceid )
where constructor_results_1.points is not NULL
group by races_1.circuitid, constructor_standings_1.wins, drivers_1.forename, constructor_standings_1.constructorstandingsid, constructor_results_1.date, constructor_standings_1.points, races_1.raceid
limit 35;
select  
  qualifying_1.qualifyid, 
  constructor_standings_1.points, 
  qualifying_1.raceid
from 
  constructor_standings as constructor_standings_1
    inner join qualifying as qualifying_1
      inner join drivers as drivers_1
      on (qualifying_1.driverid = drivers_1.driverid )
    on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
where drivers_1.code is not NULL
limit 29;
select  
  drivers_1.driverid, 
  results_1.resultid, 
  results_1.laps, 
  drivers_1.code, 
  drivers_1.driverid
from 
  results as results_1
      inner join races as races_1
      on (results_1.constructorid = races_1.raceid )
    inner join drivers as drivers_1
    on (races_1.time = drivers_1.driverref )
where results_1.points > results_1.position
limit 22;
select  
  results_1.statusid, 
  results_1.date, 
  results_1.driverid, 
  max(
    cast(results_1.raceid as int8)), 
  results_1.date, 
  results_1.position, 
  count(*)
from 
  results as results_1
where results_1.number >= results_1.rank
group by results_1.statusid, results_1.date, results_1.driverid, results_1.date, results_1.position
limit 6;
select  
  drivers_1.dob, 
  drivers_1.code, 
  drivers_1.driverref, 
  drivers_1.surname, 
  drivers_1.driverid, 
  max(
    cast(drivers_1.dob as "timestamp")), 
  max(
    cast(drivers_1.driverref as text)), 
  drivers_1.surname, 
  drivers_1.nationality, 
  count(*), 
  drivers_1.dob, 
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.forename = drivers_1.code
group by drivers_1.dob, drivers_1.code, drivers_1.driverref, drivers_1.surname, drivers_1.driverid, drivers_1.surname, drivers_1.nationality, drivers_1.dob, drivers_1.dob
limit 28;
select  
  constructors_1.name, 
  constructors_1.constructorref, 
  constructor_standings_1.constructorstandingsid, 
  constructors_1.nationality, 
  constructor_standings_1.constructorstandingsid, 
  constructors_1.constructorid, 
  max(
    cast(constructor_standings_1.points as float8)), 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructor_standings_1.date, 
  constructors_1.constructorid, 
  constructors_1.nationality
from 
  constructor_standings as constructor_standings_1
    inner join constructors as constructors_1
    on (constructor_standings_1.constructorid = constructors_1.constructorid )
where constructor_standings_1.date is not NULL
group by constructors_1.name, constructors_1.constructorref, constructor_standings_1.constructorstandingsid, constructors_1.nationality, constructor_standings_1.constructorstandingsid, constructors_1.constructorid, constructors_1.constructorref, constructors_1.constructorid, constructor_standings_1.date, constructors_1.constructorid, constructors_1.nationality
limit 9;
select  
  constructor_standings_1.date, 
  constructors_1.nationality, 
  min(
    cast(results_1.resultid as int8)), 
  constructors_1.constructorref
from 
  constructor_standings as constructor_standings_1
      inner join results as results_1
      on (constructor_standings_1.wins = results_1.resultid )
    inner join constructors as constructors_1
    on (results_1.resultid = constructors_1.constructorid )
where constructor_standings_1.date < results_1.date
group by constructor_standings_1.date, constructors_1.nationality, constructors_1.constructorref
limit 1;
select  
  constructor_standings_1.date, 
  avg(
    cast(constructor_standings_1.points as float8)), 
  constructor_standings_1.points, 
  constructor_standings_1.position, 
  sum(
    cast(constructor_standings_1.position as int8)), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.constructorstandingsid, constructor_standings_1.wins
limit 3;
select  
  sum(
    cast(results_1.position as float8)), 
  constructors_1.name, 
  results_1.points, 
  standings_1.date, 
  results_1.grid, 
  results_1.points, 
  results_1.date
from 
  results as results_1
        inner join standings as standings_1
        on (results_1.constructorid = standings_1.driverstandingsid )
      inner join circuits as circuits_1
      on (results_1.position = circuits_1.lat )
    inner join constructors as constructors_1
    on (standings_1.driverstandingsid = constructors_1.constructorid )
where constructors_1.constructorid is not NULL
group by constructors_1.name, results_1.points, standings_1.date, results_1.grid, results_1.points, results_1.date
limit 19;
select  
  results_1.number, 
  results_1.laps, 
  count(*), 
  results_1.laps, 
  results_1.points, 
  results_1.fastestlap, 
  max(
    cast(results_1.date as "timestamp")), 
  results_1.grid, 
  results_1.points, 
  avg(
    cast(results_1.fastestlap as float8))
from 
  results as results_1
where results_1.date < results_1.date
group by results_1.number, results_1.laps, results_1.laps, results_1.points, results_1.fastestlap, results_1.grid, results_1.points
limit 16;
select  
  qualifying_1.raceid, 
  min(
    cast(races_1.round as int8)), 
  max(
    cast(qualifying_1.date as "timestamp")), 
  races_1.year, 
  races_1.year, 
  circuits_1.lat, 
  qualifying_1.constructorid
from 
  races as races_1
    inner join qualifying as qualifying_1
      inner join circuits as circuits_1
      on (qualifying_1.constructorid = circuits_1.circuitid )
    on (races_1.name = circuits_1.circuitref )
where circuits_1.name is not NULL
group by qualifying_1.raceid, races_1.year, races_1.year, circuits_1.lat, qualifying_1.constructorid
limit 10;
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points, 
  max(
    cast(constructor_standings_1.date as "timestamp"))
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points = constructor_standings_1.points
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.points
limit 2;
select  
  max(
    cast(constructors_2.constructorref as text)), 
  constructors_2.constructorref, 
  qualifying_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructors_2.nationality, 
  qualifying_1.number, 
  constructors_2.name, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructors_2.constructorref
from 
  constructor_results as constructor_results_1
        inner join constructors as constructors_1
        on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
      inner join qualifying as qualifying_1
      on (constructor_results_1.constructorid = qualifying_1.qualifyid )
    inner join constructors as constructors_2
    on (qualifying_1.driverid = constructors_2.constructorid )
where qualifying_1.position > qualifying_1.qualifyid
group by constructors_2.constructorref, qualifying_1.constructorid, constructor_results_1.constructorresultsid, constructors_2.nationality, qualifying_1.number, constructors_2.name, constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructors_2.constructorref
limit 24;
select distinct 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.name, 
  count(
    cast(constructors_1.constructorref as text)), 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  count(*), 
  constructors_1.constructorid, 
  count(*), 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  count(
    cast(constructors_1.name as text))
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.name, constructors_1.name, constructors_1.constructorref, constructors_1.name, constructors_1.constructorref, constructors_1.constructorid, constructors_1.constructorid, constructors_1.constructorid, constructors_1.constructorref, constructors_1.constructorid, constructors_1.constructorid, constructors_1.constructorid, constructors_1.constructorref, constructors_1.constructorref, constructors_1.name, constructors_1.nationality, constructors_1.constructorid
limit 35;
select  
  max(
    cast(constructor_standings_1.position as int8)), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.points, 
  min(
    cast(constructor_standings_1.constructorid as int8)), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.points, 
  max(
    cast(constructor_standings_1.date as "timestamp"))
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.raceid, constructor_standings_1.points, constructor_standings_1.constructorid, constructor_standings_1.points
limit 20;
select  
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 32;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.points <= constructor_results_1.points
limit 25;
select  
  min(
    cast(standings_1.points as float8)), 
  races_1.name, 
  standings_1.position, 
  min(
    cast(standings_1.points as float8)), 
  races_1.date, 
  standings_2.raceid, 
  sum(
    cast(standings_1.points as float8)), 
  standings_1.wins, 
  max(
    cast(standings_1.date as "timestamp")), 
  sum(
    cast(standings_1.points as float8)), 
  min(
    cast(races_1.name as text)), 
  races_1.time
from 
  races as races_1
    inner join standings as standings_1
      inner join standings as standings_2
      on (standings_1.driverstandingsid = standings_2.driverstandingsid )
    on (races_1.year = standings_1.driverstandingsid )
where races_1.round is not NULL
group by races_1.name, standings_1.position, races_1.date, standings_2.raceid, standings_1.wins, races_1.time
limit 29;
select  
  qualifying_1.number, 
  qualifying_1.number, 
  min(
    cast(races_1.circuitid as int8)), 
  constructor_results_1.date, 
  races_1.round, 
  constructor_results_1.constructorresultsid, 
  races_1.date, 
  constructor_results_1.points, 
  races_1.time, 
  min(
    cast(qualifying_1.date as "timestamp")), 
  results_1.driverid, 
  constructor_results_1.points
from 
  qualifying as qualifying_1
    inner join constructor_results as constructor_results_1
      inner join races as races_1
        inner join results as results_1
        on (races_1.circuitid = results_1.resultid )
      on (constructor_results_1.constructorresultsid = races_1.raceid )
    on (qualifying_1.constructorid = results_1.resultid )
where results_1.laps is not NULL
group by qualifying_1.number, qualifying_1.number, constructor_results_1.date, races_1.round, constructor_results_1.constructorresultsid, races_1.date, constructor_results_1.points, races_1.time, results_1.driverid, constructor_results_1.points
limit 33;
select  
  standings_1.date
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
limit 17;
select  
  results_1.rank
from 
  results as results_1
where results_1.driverid is not NULL
limit 29;
select  
  standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points, 
  standings_1.driverstandingsid, 
  standings_1.wins, 
  standings_1.driverstandingsid, 
  standings_1.driverid, 
  standings_1.raceid, 
  standings_1.points, 
  standings_1.driverstandingsid, 
  standings_1.wins
from 
  constructor_standings as constructor_standings_1
    inner join standings as standings_1
    on (constructor_standings_1.points = standings_1.points )
where standings_1.raceid is not NULL
limit 13;
select  
  races_1.time, 
  circuits_1.lng, 
  circuits_1.name, 
  circuits_1.location, 
  count(
    cast(races_1.raceid as int8)), 
  max(
    cast(races_1.raceid as int8)), 
  circuits_1.lat, 
  circuits_1.lat
from 
  races as races_1
    inner join circuits as circuits_1
    on (races_1.year = circuits_1.circuitid )
where circuits_1.lat > circuits_1.lng
group by races_1.time, circuits_1.lng, circuits_1.name, circuits_1.location, circuits_1.lat, circuits_1.lat
limit 15;
select  
  constructor_standings_2.constructorstandingsid, 
  constructor_standings_1.points, 
  constructor_standings_1.raceid
from 
  results as results_1
    inner join constructor_standings as constructor_standings_1
      inner join constructor_standings as constructor_standings_2
      on (constructor_standings_1.constructorid = constructor_standings_2.constructorstandingsid )
    on (results_1.fastestlap = constructor_standings_1.points )
where constructor_standings_2.points is not NULL
limit 9;
select  
  constructor_results_1.points, 
  standings_1.raceid, 
  qualifying_1.date
from 
  constructor_results as constructor_results_1
      inner join circuits as circuits_1
      on (constructor_results_1.points = circuits_1.lat )
    inner join standings as standings_1
      inner join qualifying as qualifying_1
      on (standings_1.date = qualifying_1.date )
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where standings_1.wins is not NULL
limit 23;
select  
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
limit 1;
select  
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
limit 17;
select  
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  count(*), 
  min(
    cast(constructors_1.constructorid as int8))
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorref, constructors_1.constructorid
limit 12;
select  
  drivers_1.nationality, 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.code is not NULL
limit 4;
select  
  constructor_standings_1.points, 
  constructor_standings_1.points, 
  constructor_standings_1.position
from 
  qualifying as qualifying_1
    inner join constructor_standings as constructor_standings_1
      inner join circuits as circuits_1
      on (constructor_standings_1.points = circuits_1.lat )
    on (qualifying_1.number = circuits_1.circuitid )
where qualifying_1.date is not NULL
limit 22;
select  
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.dob >= drivers_1.dob
limit 34;
select  
  results_1.number, 
  results_1.fastestlap, 
  results_1.raceid, 
  max(
    cast(results_1.date as "timestamp")), 
  results_1.raceid, 
  results_1.number, 
  results_1.fastestlap, 
  results_1.statusid
from 
  results as results_1
where results_1.fastestlap is not NULL
group by results_1.number, results_1.fastestlap, results_1.raceid, results_1.raceid, results_1.number, results_1.fastestlap, results_1.statusid
limit 34;
select  
  drivers_1.driverid, 
  min(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.surname, 
  drivers_1.driverid, 
  drivers_1.driverref, 
  drivers_1.forename, 
  drivers_1.dob, 
  drivers_1.driverid, 
  drivers_1.dob, 
  drivers_1.nationality, 
  drivers_1.surname, 
  avg(
    cast(drivers_1.driverid as int8)), 
  sum(
    cast(drivers_1.driverid as int8))
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
group by drivers_1.driverid, drivers_1.surname, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.dob, drivers_1.driverid, drivers_1.dob, drivers_1.nationality, drivers_1.surname
limit 33;
select  
  drivers_1.dob, 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
limit 4;
select  
  drivers_1.dob, 
  races_1.name, 
  drivers_1.code, 
  drivers_1.surname, 
  max(
    cast(drivers_1.dob as "timestamp")), 
  races_1.round, 
  races_1.time, 
  min(
    cast(races_1.circuitid as int8)), 
  races_1.date, 
  drivers_1.driverref
from 
  races as races_1
    inner join drivers as drivers_1
    on (races_1.date = drivers_1.dob )
where races_1.time is not NULL
group by drivers_1.dob, races_1.name, drivers_1.code, drivers_1.surname, races_1.round, races_1.time, races_1.date, drivers_1.driverref
limit 6;
select  
  circuits_1.name, 
  constructor_standings_2.points, 
  constructor_standings_2.constructorid, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_2.constructorid
from 
  constructor_standings as constructor_standings_1
    inner join circuits as circuits_1
      inner join constructor_standings as constructor_standings_2
      on (circuits_1.lng = constructor_standings_2.points )
    on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
where circuits_1.alt is not NULL
limit 39;
select  
  min(
    cast(constructors_1.constructorref as text)), 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.nationality, constructors_1.nationality, constructors_1.constructorref, constructors_1.nationality
limit 42;
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  min(
    cast(constructor_standings_1.date as "timestamp"))
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points >= constructor_standings_1.points
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.wins, constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorid, constructor_standings_1.constructorid, constructor_standings_1.raceid, constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid
limit 3;
select  
  constructors_1.constructorref, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorid = constructors_1.constructorid
limit 25;
select  
  constructor_results_1.raceid, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.points <= constructor_results_1.points
limit 12;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins, 
  min(
    cast(constructor_standings_1.date as "timestamp"))
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
group by constructor_standings_1.wins, constructor_standings_1.points, constructor_standings_1.points, constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.wins
limit 2;
select distinct 
  standings_2.raceid, 
  circuits_1.lat, 
  standings_2.driverstandingsid, 
  results_1.positionorder, 
  standings_1.position, 
  circuits_1.lng, 
  standings_1.raceid, 
  constructor_results_1.raceid, 
  standings_1.position
from 
  standings as standings_1
    inner join standings as standings_2
          inner join results as results_1
          on (standings_2.points = results_1.number )
        inner join constructor_results as constructor_results_1
        on (results_1.points = constructor_results_1.points )
      inner join circuits as circuits_1
      on (constructor_results_1.constructorid = circuits_1.circuitid )
    on (standings_1.driverstandingsid = circuits_1.circuitid )
where standings_2.position is not NULL
limit 1;
select  
  drivers_1.dob, 
  drivers_1.driverid, 
  drivers_1.code, 
  drivers_1.driverid, 
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.code is not NULL
limit 15;
select  
  standings_1.driverid, 
  standings_1.wins, 
  max(
    cast(standings_1.date as "timestamp")), 
  min(
    cast(standings_1.points as float8)), 
  standings_1.driverid, 
  avg(
    cast(standings_1.position as int8)), 
  standings_1.driverstandingsid, 
  max(
    cast(standings_1.raceid as int8)), 
  standings_1.driverid, 
  standings_1.position
from 
  standings as standings_1
where standings_1.position is not NULL
group by standings_1.driverid, standings_1.wins, standings_1.driverid, standings_1.driverstandingsid, standings_1.driverid, standings_1.position
limit 9;
select  
  results_1.raceid, 
  results_1.positionorder, 
  sum(
    cast(results_1.raceid as int8)), 
  results_1.fastestlap, 
  results_1.position, 
  results_1.points, 
  avg(
    cast(results_1.rank as float8))
from 
  results as results_1
where results_1.number is not NULL
group by results_1.raceid, results_1.positionorder, results_1.fastestlap, results_1.position, results_1.points
limit 6;
select  
  max(
    cast(circuits_1.circuitref as text)), 
  circuits_1.lat, 
  circuits_1.lat, 
  circuits_1.alt, 
  circuits_1.name, 
  circuits_1.alt, 
  circuits_1.lat, 
  circuits_1.name, 
  circuits_1.location, 
  max(
    cast(circuits_1.alt as float8))
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
group by circuits_1.lat, circuits_1.lat, circuits_1.alt, circuits_1.name, circuits_1.alt, circuits_1.lat, circuits_1.name, circuits_1.location
limit 42;
select  
  drivers_1.driverid, 
  min(
    cast(drivers_1.dob as "timestamp")), 
  constructors_1.name, 
  max(
    cast(drivers_1.nationality as text)), 
  min(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.forename, 
  drivers_1.forename
from 
  constructors as constructors_1
    inner join drivers as drivers_1
    on (constructors_1.nationality = drivers_1.driverref )
where constructors_1.constructorid is not NULL
group by drivers_1.driverid, constructors_1.name, drivers_1.forename, drivers_1.forename
limit 26;
select  
  constructors_2.constructorref, 
  constructors_1.name, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid
from 
  constructors as constructors_1
    inner join constructors as constructors_2
      inner join constructor_results as constructor_results_1
      on (constructors_2.constructorid = constructor_results_1.constructorresultsid )
    on (constructors_1.constructorref = constructors_2.constructorref )
where constructor_results_1.date < constructor_results_1.date
limit 20;
select  
  constructors_1.name, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 42;
select  
  drivers_1.surname, 
  constructors_1.constructorref, 
  qualifying_1.qualifyid, 
  drivers_1.dob, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  qualifying_1.number, 
  qualifying_1.number, 
  count(
    cast(constructors_1.constructorid as int8)), 
  qualifying_1.position, 
  max(
    cast(constructors_1.constructorref as text)), 
  drivers_1.driverid
from 
  constructors as constructors_1
    inner join qualifying as qualifying_1
      inner join drivers as drivers_1
      on (qualifying_1.date = drivers_1.dob )
    on (constructors_1.constructorref = drivers_1.driverref )
where drivers_1.nationality is not NULL
group by drivers_1.surname, constructors_1.constructorref, qualifying_1.qualifyid, drivers_1.dob, constructors_1.constructorid, constructors_1.nationality, qualifying_1.number, qualifying_1.number, qualifying_1.position, drivers_1.driverid
limit 7;
select  
  drivers_1.forename, 
  drivers_1.dob, 
  drivers_1.surname, 
  drivers_1.forename, 
  drivers_1.surname, 
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
limit 4;
select  
  standings_2.position, 
  standings_1.position, 
  standings_1.wins, 
  min(
    cast(standings_1.date as "timestamp")), 
  standings_2.driverid, 
  standings_1.driverstandingsid, 
  standings_1.points, 
  standings_1.raceid, 
  standings_1.driverstandingsid, 
  standings_2.position, 
  standings_2.position, 
  count(*)
from 
  standings as standings_1
    inner join standings as standings_2
    on (standings_1.raceid = standings_2.driverstandingsid )
where standings_2.driverid is not NULL
group by standings_2.position, standings_1.position, standings_1.wins, standings_2.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.raceid, standings_1.driverstandingsid, standings_2.position, standings_2.position
limit 36;
select  
  standings_1.driverstandingsid, 
  standings_1.points, 
  standings_1.position, 
  standings_1.position, 
  standings_1.position, 
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.points = standings_1.points
limit 23;
select  
  races_1.round, 
  races_1.round, 
  circuits_1.circuitid
from 
  circuits as circuits_1
    inner join races as races_1
    on (circuits_1.circuitref = races_1.name )
where races_1.date <= races_1.date
limit 11;
select  
  constructors_1.constructorref, 
  max(
    cast(constructors_1.constructorref as text)), 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.constructorref, constructors_1.constructorref
limit 20;
select  
  min(
    cast(circuits_1.lat as float8))
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
limit 15;
select  
  standings_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_2.raceid, 
  constructor_standings_2.raceid
from 
  standings as standings_1
      inner join constructor_standings as constructor_standings_1
      on (standings_1.raceid = constructor_standings_1.constructorstandingsid )
    inner join constructor_standings as constructor_standings_2
    on (constructor_standings_1.raceid = constructor_standings_2.constructorstandingsid )
where constructor_standings_1.points is not NULL
limit 15;
select distinct 
  drivers_2.nationality, 
  sum(
    cast(drivers_2.driverid as int8)), 
  drivers_1.driverid, 
  drivers_2.driverref
from 
  drivers as drivers_1
    inner join drivers as drivers_2
    on (drivers_1.nationality = drivers_2.driverref )
where drivers_2.driverref is not NULL
group by drivers_2.nationality, drivers_1.driverid, drivers_2.driverref
limit 28;
select  
  qualifying_1.qualifyid, 
  qualifying_1.number, 
  qualifying_1.number, 
  qualifying_1.qualifyid, 
  max(
    cast(qualifying_1.qualifyid as int8)), 
  qualifying_1.number, 
  qualifying_1.number, 
  qualifying_1.number, 
  qualifying_1.driverid, 
  qualifying_1.number, 
  qualifying_1.position, 
  qualifying_1.driverid, 
  avg(
    cast(qualifying_1.raceid as int8)), 
  qualifying_1.qualifyid, 
  qualifying_1.position, 
  qualifying_1.driverid, 
  qualifying_1.raceid, 
  avg(
    cast(qualifying_1.constructorid as int8)), 
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
group by qualifying_1.qualifyid, qualifying_1.number, qualifying_1.number, qualifying_1.qualifyid, qualifying_1.number, qualifying_1.number, qualifying_1.number, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.driverid, qualifying_1.qualifyid, qualifying_1.position, qualifying_1.driverid, qualifying_1.raceid, qualifying_1.position
limit 42;
select  
  qualifying_1.position, 
  qualifying_1.date, 
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.raceid = qualifying_1.position
limit 31;
select  
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.date = qualifying_1.date
limit 42;
select  
  qualifying_1.driverid, 
  drivers_1.code, 
  drivers_1.dob, 
  qualifying_1.number, 
  drivers_1.nationality, 
  max(
    cast(qualifying_1.date as "timestamp")), 
  drivers_1.driverid, 
  qualifying_1.constructorid, 
  drivers_1.driverid, 
  drivers_1.dob, 
  drivers_1.nationality, 
  qualifying_1.position, 
  qualifying_1.driverid, 
  drivers_1.forename, 
  drivers_1.code, 
  qualifying_1.number, 
  drivers_1.dob, 
  drivers_1.surname, 
  qualifying_1.position, 
  qualifying_1.driverid, 
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  max(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.raceid, 
  qualifying_1.qualifyid, 
  drivers_1.code
from 
  drivers as drivers_1
    inner join qualifying as qualifying_1
    on (drivers_1.dob = qualifying_1.date )
where drivers_1.code is not NULL
group by qualifying_1.driverid, drivers_1.code, drivers_1.dob, qualifying_1.number, drivers_1.nationality, drivers_1.driverid, qualifying_1.constructorid, drivers_1.driverid, drivers_1.dob, drivers_1.nationality, qualifying_1.position, qualifying_1.driverid, drivers_1.forename, drivers_1.code, qualifying_1.number, drivers_1.dob, drivers_1.surname, qualifying_1.position, qualifying_1.driverid, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid, qualifying_1.qualifyid, drivers_1.code
limit 30;
select  
  races_1.time, 
  races_1.round, 
  max(
    cast(races_1.circuitid as int8)), 
  races_1.circuitid, 
  races_1.date, 
  races_1.date
from 
  races as races_1
where races_1.raceid is not NULL
group by races_1.time, races_1.round, races_1.circuitid, races_1.date, races_1.date
limit 29;
select distinct 
  standings_1.points
from 
  standings as standings_1
where standings_1.driverid <= standings_1.raceid
limit 5;
select  
  constructors_1.constructorref
from 
  results as results_1
      inner join qualifying as qualifying_1
      on (results_1.laps = qualifying_1.qualifyid )
    inner join races as races_1
      inner join constructors as constructors_1
      on (races_1.circuitid = constructors_1.constructorid )
    on (qualifying_1.qualifyid = constructors_1.constructorid )
where results_1.positionorder is not NULL
limit 37;
select  
  races_1.name, 
  races_1.raceid, 
  races_1.round, 
  races_1.raceid, 
  races_1.time
from 
  races as races_1
where races_1.time is not NULL
limit 27;
select  
  drivers_1.forename, 
  drivers_1.dob, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
    inner join drivers as drivers_1
      inner join constructor_results as constructor_results_1
      on (drivers_1.dob = constructor_results_1.date )
    on (qualifying_1.constructorid = drivers_1.driverid )
where drivers_1.driverid is not NULL
limit 24;
select distinct 
  min(
    cast(qualifying_1.position as int8)), 
  qualifying_2.driverid, 
  qualifying_1.number, 
  qualifying_1.constructorid, 
  min(
    cast(qualifying_1.date as "timestamp"))
from 
  qualifying as qualifying_1
    inner join qualifying as qualifying_2
    on (qualifying_1.driverid = qualifying_2.qualifyid )
where qualifying_2.qualifyid is not NULL
group by qualifying_2.driverid, qualifying_1.number, qualifying_1.constructorid
limit 31;
select  
  drivers_1.driverid, 
  circuits_1.circuitid, 
  drivers_1.surname, 
  circuits_1.location, 
  drivers_1.driverref
from 
  circuits as circuits_1
    inner join drivers as drivers_1
      inner join constructors as constructors_1
      on (drivers_1.driverref = constructors_1.constructorref )
    on (circuits_1.country = constructors_1.constructorref )
where circuits_1.name is not NULL
limit 1;
select  
  constructors_1.constructorid, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorid > constructors_1.constructorid
limit 30;
select  
  sum(
    cast(constructors_1.constructorid as int8)), 
  constructors_1.constructorid, 
  sum(
    cast(constructors_1.constructorid as int8)), 
  constructors_1.nationality, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorid, constructors_1.nationality, constructors_1.nationality
limit 40;
select  
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  constructor_standings_1.wins, 
  constructor_standings_1.wins, 
  constructor_standings_1.raceid, 
  max(
    cast(constructor_standings_1.date as "timestamp")), 
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date, 
  avg(
    cast(constructor_standings_1.constructorid as int8)), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid < constructor_standings_1.wins
group by constructor_standings_1.position, constructor_standings_1.wins, constructor_standings_1.points, constructor_standings_1.wins, constructor_standings_1.wins, constructor_standings_1.raceid, constructor_standings_1.wins, constructor_standings_1.points, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.constructorid, constructor_standings_1.raceid
limit 9;
select  
  max(
    cast(constructor_results_1.constructorid as int8)), 
  constructor_results_2.constructorid, 
  min(
    cast(constructor_results_2.constructorresultsid as int8)), 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_2.raceid, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
    inner join constructor_results as constructor_results_2
    on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
where constructor_results_2.date < constructor_results_1.date
group by constructor_results_2.constructorid, constructor_results_1.points, constructor_results_1.constructorid, constructor_results_2.raceid, constructor_results_1.points
limit 29;
select  
  races_1.raceid, 
  min(
    cast(races_1.time as text)), 
  drivers_1.dob, 
  races_1.time, 
  circuits_1.location, 
  drivers_1.surname, 
  drivers_1.forename, 
  avg(
    cast(races_1.year as int8)), 
  circuits_1.circuitref, 
  drivers_1.nationality, 
  min(
    cast(drivers_1.dob as "timestamp")), 
  circuits_1.country, 
  drivers_1.driverref, 
  races_1.name, 
  circuits_1.circuitref, 
  races_1.name, 
  circuits_1.lng
from 
  circuits as circuits_1
      inner join races as races_1
      on (circuits_1.location = races_1.name )
    inner join drivers as drivers_1
    on (races_1.raceid = drivers_1.driverid )
where drivers_1.forename is not NULL
group by races_1.raceid, drivers_1.dob, races_1.time, circuits_1.location, drivers_1.surname, drivers_1.forename, circuits_1.circuitref, drivers_1.nationality, circuits_1.country, drivers_1.driverref, races_1.name, circuits_1.circuitref, races_1.name, circuits_1.lng
limit 35;
select  
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  qualifying_1.position, 
  qualifying_1.date, 
  qualifying_1.constructorid, 
  qualifying_1.raceid, 
  qualifying_1.raceid, 
  qualifying_1.driverid, 
  qualifying_1.qualifyid, 
  qualifying_1.date, 
  count(
    cast(qualifying_1.number as int8)), 
  qualifying_1.driverid, 
  qualifying_1.position, 
  qualifying_1.driverid, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.qualifyid, qualifying_1.raceid, qualifying_1.position, qualifying_1.date, qualifying_1.constructorid, qualifying_1.raceid, qualifying_1.raceid, qualifying_1.driverid, qualifying_1.qualifyid, qualifying_1.date, qualifying_1.driverid, qualifying_1.position, qualifying_1.driverid, qualifying_1.qualifyid
limit 15;
select  
  races_1.round, 
  circuits_1.lat, 
  circuits_1.lat, 
  circuits_1.circuitref, 
  races_1.time, 
  races_1.date, 
  races_1.raceid, 
  races_1.name, 
  races_1.date, 
  races_1.circuitid, 
  races_1.raceid, 
  circuits_1.circuitid
from 
  circuits as circuits_1
    inner join races as races_1
    on (circuits_1.location = races_1.name )
where circuits_1.circuitref is not NULL
limit 3;
select  
  circuits_2.location
from 
  constructor_standings as constructor_standings_1
        inner join circuits as circuits_1
        on (constructor_standings_1.constructorid = circuits_1.circuitid )
      inner join constructors as constructors_1
      on (constructor_standings_1.wins = constructors_1.constructorid )
    inner join constructor_results as constructor_results_1
      inner join circuits as circuits_2
      on (constructor_results_1.points = circuits_2.lat )
    on (constructors_1.nationality = circuits_2.circuitref )
where constructor_standings_1.wins is not NULL
limit 28;
select  
  circuits_1.lat, 
  circuits_1.circuitref, 
  circuits_1.location, 
  circuits_1.name, 
  circuits_1.name, 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.location is not NULL
limit 23;
select  
  constructor_results_1.date, 
  results_1.points, 
  constructor_results_1.points
from 
  results as results_1
    inner join constructor_results as constructor_results_1
    on (results_1.milliseconds = constructor_results_1.points )
where results_1.positionorder is not NULL
limit 4;
select  
  qualifying_1.number, 
  qualifying_1.constructorid, 
  qualifying_1.date, 
  drivers_1.driverid, 
  drivers_1.forename, 
  count(
    cast(drivers_1.nationality as text)), 
  sum(
    cast(drivers_1.driverid as int8)), 
  drivers_1.dob
from 
  qualifying as qualifying_1
    inner join drivers as drivers_1
    on (qualifying_1.qualifyid = drivers_1.driverid )
where drivers_1.code is not NULL
group by qualifying_1.number, qualifying_1.constructorid, qualifying_1.date, drivers_1.driverid, drivers_1.forename, drivers_1.dob
limit 28;
select  
  circuits_1.location, 
  max(
    cast(races_1.date as "timestamp"))
from 
  races as races_1
    inner join circuits as circuits_1
    on (races_1.round = circuits_1.circuitid )
where races_1.time is not NULL
group by circuits_1.location
limit 1;
select  
  constructors_1.name, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 9;
select  
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 2;
select  
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.dob < drivers_1.dob
limit 13;
select  
  qualifying_1.driverid, 
  max(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.position, 
  qualifying_1.position, 
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.driverid, qualifying_1.position, qualifying_1.position, qualifying_1.position
limit 15;
select  
  min(
    cast(qualifying_1.qualifyid as int8))
from 
  races as races_1
        inner join races as races_2
          inner join drivers as drivers_1
          on (races_2.date = drivers_1.dob )
        on (races_1.date = drivers_1.dob )
      inner join constructor_results as constructor_results_1
      on (races_1.date = constructor_results_1.date )
    inner join constructor_standings as constructor_standings_1
          inner join qualifying as qualifying_1
          on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
        inner join results as results_1
          inner join results as results_2
          on (results_1.date = results_2.date )
        on (constructor_standings_1.constructorid = results_1.resultid )
      inner join constructor_standings as constructor_standings_2
      on (results_2.fastestlap = constructor_standings_2.points )
    on (races_2.circuitid = results_2.resultid )
where constructor_standings_2.raceid is not NULL
limit 18;
select  
  max(
    cast(results_2.date as "timestamp")), 
  sum(
    cast(results_2.points as float8)), 
  avg(
    cast(results_3.fastestlap as float8)), 
  results_1.number, 
  min(
    cast(results_1.positionorder as int8)), 
  results_3.fastestlap, 
  results_1.positionorder, 
  results_2.grid, 
  results_3.driverid, 
  min(
    cast(results_3.date as "timestamp")), 
  results_1.laps, 
  results_3.laps, 
  results_1.milliseconds, 
  results_1.raceid, 
  results_1.points, 
  max(
    cast(results_2.date as "timestamp")), 
  results_3.resultid, 
  results_1.date, 
  max(
    cast(results_3.positionorder as int8)), 
  results_3.positionorder, 
  results_3.positionorder
from 
  results as results_1
      inner join results as results_2
      on (results_1.laps = results_2.resultid )
    inner join results as results_3
    on (results_2.positionorder = results_3.resultid )
where results_1.date is not NULL
group by results_1.number, results_3.fastestlap, results_1.positionorder, results_2.grid, results_3.driverid, results_1.laps, results_3.laps, results_1.milliseconds, results_1.raceid, results_1.points, results_3.resultid, results_1.date, results_3.positionorder, results_3.positionorder
limit 10;
select  
  races_1.raceid, 
  max(
    cast(races_1.name as text)), 
  races_1.date, 
  races_1.round, 
  races_1.circuitid
from 
  races as races_1
where races_1.circuitid is not NULL
group by races_1.raceid, races_1.date, races_1.round, races_1.circuitid
limit 17;
select  
  qualifying_1.raceid, 
  qualifying_1.position, 
  qualifying_1.driverid, 
  qualifying_1.number, 
  sum(
    cast(qualifying_1.driverid as int8)), 
  count(*), 
  count(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
group by qualifying_1.raceid, qualifying_1.position, qualifying_1.driverid, qualifying_1.number, qualifying_1.position
limit 1;
select  
  standings_1.driverid, 
  standings_1.date
from 
  constructor_standings as constructor_standings_1
    inner join standings as standings_1
    on (constructor_standings_1.raceid = standings_1.driverstandingsid )
where constructor_standings_1.points = standings_1.points
limit 21;
select  
  circuits_1.circuitid, 
  circuits_1.country
from 
  standings as standings_1
          inner join constructors as constructors_1
          on (standings_1.driverstandingsid = constructors_1.constructorid )
        inner join races as races_1
        on (constructors_1.constructorref = races_1.name )
      inner join constructor_standings as constructor_standings_1
        inner join qualifying as qualifying_1
        on (constructor_standings_1.position = qualifying_1.qualifyid )
      on (standings_1.date = constructor_standings_1.date )
    inner join circuits as circuits_1
    on (constructors_1.constructorref = circuits_1.circuitref )
where races_1.date > standings_1.date
limit 5;
select  
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  min(
    cast(constructor_results_1.date as "timestamp")), 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.date, 
  max(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.raceid, 
  max(
    cast(constructor_results_1.date as "timestamp")), 
  min(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.points, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_results_1.date, constructor_results_1.date, constructor_results_1.points, constructor_results_1.date, constructor_results_1.raceid, constructor_results_1.points
limit 13;
select  
  avg(
    cast(standings_1.points as float8)), 
  standings_1.raceid, 
  standings_1.date, 
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
group by standings_1.raceid, standings_1.date, standings_1.driverstandingsid
limit 26;
select  
  standings_1.points, 
  min(
    cast(constructors_1.constructorid as int8)), 
  max(
    cast(standings_1.date as "timestamp")), 
  standings_1.driverstandingsid, 
  results_1.grid, 
  results_1.raceid, 
  standings_1.driverid, 
  standings_1.raceid, 
  results_1.driverid
from 
  results as results_1
    inner join standings as standings_1
      inner join constructors as constructors_1
      on (standings_1.driverid = constructors_1.constructorid )
    on (results_1.date = standings_1.date )
where results_1.position is not NULL
group by standings_1.points, standings_1.driverstandingsid, results_1.grid, results_1.raceid, standings_1.driverid, standings_1.raceid, results_1.driverid
limit 40;
select  
  max(
    cast(drivers_1.surname as text)), 
  drivers_1.nationality, 
  drivers_1.driverid, 
  max(
    cast(drivers_1.nationality as text)), 
  min(
    cast(drivers_1.driverref as text)), 
  drivers_1.driverref, 
  drivers_1.forename, 
  min(
    cast(drivers_1.surname as text)), 
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
group by drivers_1.nationality, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.code
limit 22;
select  
  drivers_1.driverref, 
  drivers_1.surname, 
  drivers_1.dob, 
  count(
    cast(drivers_1.driverid as int8)), 
  drivers_1.dob, 
  min(
    cast(drivers_1.dob as "timestamp"))
from 
  drivers as drivers_1
where drivers_1.driverid <= drivers_1.driverid
group by drivers_1.driverref, drivers_1.surname, drivers_1.dob, drivers_1.dob
limit 6;
select  
  races_1.name
from 
  races as races_1
      inner join qualifying as qualifying_1
      on (races_1.raceid = qualifying_1.qualifyid )
    inner join standings as standings_1
    on (qualifying_1.constructorid = standings_1.driverstandingsid )
where races_1.raceid is not NULL
limit 23;
select  
  qualifying_1.constructorid, 
  constructor_standings_1.position, 
  drivers_1.driverid, 
  constructors_1.name, 
  drivers_1.driverid, 
  constructor_standings_1.wins, 
  circuits_1.alt, 
  circuits_1.circuitref, 
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid, 
  constructors_1.constructorid, 
  min(
    cast(drivers_1.dob as "timestamp")), 
  constructor_results_1.raceid, 
  constructor_standings_1.wins, 
  count(*), 
  drivers_1.driverid, 
  constructor_standings_1.position
from 
  constructor_results as constructor_results_1
    inner join qualifying as qualifying_1
      inner join drivers as drivers_1
        inner join circuits as circuits_1
          inner join constructors as constructors_1
            inner join constructor_standings as constructor_standings_1
            on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
          on (circuits_1.lat = constructor_standings_1.points )
        on (drivers_1.dob = constructor_standings_1.date )
      on (qualifying_1.position = constructor_standings_1.constructorstandingsid )
    on (constructor_results_1.constructorid = constructors_1.constructorid )
where qualifying_1.number is not NULL
group by qualifying_1.constructorid, constructor_standings_1.position, drivers_1.driverid, constructors_1.name, drivers_1.driverid, constructor_standings_1.wins, circuits_1.alt, circuits_1.circuitref, constructor_standings_1.raceid, constructor_standings_1.raceid, constructors_1.constructorid, constructor_results_1.raceid, constructor_standings_1.wins, drivers_1.driverid, constructor_standings_1.position
limit 42;
select  
  drivers_1.code, 
  drivers_1.surname, 
  drivers_1.surname, 
  drivers_1.driverid, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
limit 21;
select  
  results_1.milliseconds, 
  results_1.statusid, 
  results_1.raceid, 
  results_1.positionorder, 
  results_1.driverid, 
  results_1.position, 
  results_1.raceid, 
  results_1.position, 
  results_1.resultid, 
  results_1.constructorid, 
  min(
    cast(results_1.points as float8)), 
  results_1.raceid
from 
  results as results_1
where results_1.laps is not NULL
group by results_1.milliseconds, results_1.statusid, results_1.raceid, results_1.positionorder, results_1.driverid, results_1.position, results_1.raceid, results_1.position, results_1.resultid, results_1.constructorid, results_1.raceid
limit 38;
select  
  max(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.date, 
  min(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
group by qualifying_1.date, qualifying_1.position
limit 17;
select  
  standings_1.raceid, 
  standings_1.driverid, 
  standings_1.wins
from 
  standings as standings_1
where standings_1.raceid is not NULL
limit 8;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  constructor_results_1.date, 
  constructor_standings_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  min(
    cast(constructor_standings_1.date as "timestamp")), 
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  constructor_results_1.points, 
  count(
    cast(constructor_results_1.constructorresultsid as int8)), 
  count(*), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  sum(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.raceid, 
  constructor_standings_1.date, 
  constructor_standings_1.position, 
  avg(
    cast(constructor_standings_1.position as int8)), 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
    inner join constructor_results as constructor_results_1
    on (constructor_standings_1.position = constructor_results_1.constructorresultsid )
where constructor_results_1.date is not NULL
group by constructor_standings_1.wins, constructor_standings_1.points, constructor_results_1.date, constructor_standings_1.points, constructor_results_1.constructorid, constructor_results_1.date, constructor_standings_1.points, constructor_standings_1.raceid, constructor_results_1.points, constructor_results_1.constructorresultsid, constructor_results_1.constructorid, constructor_results_1.raceid, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.wins
limit 33;
select  
  qualifying_1.number, 
  constructor_results_1.date, 
  qualifying_1.raceid, 
  constructor_results_1.points, 
  qualifying_2.raceid, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
    inner join qualifying as qualifying_2
      inner join constructor_results as constructor_results_1
      on (qualifying_2.driverid = constructor_results_1.constructorresultsid )
    on (qualifying_1.date = qualifying_2.date )
where qualifying_1.date > constructor_results_1.date
limit 8;
select  
  races_1.year
from 
  races as races_1
where races_1.raceid is not NULL
limit 15;
select  
  count(
    cast(constructors_1.nationality as text)), 
  circuits_1.name, 
  min(
    cast(results_1.date as "timestamp")), 
  circuits_1.circuitref, 
  results_1.constructorid, 
  circuits_1.country
from 
  results as results_1
    inner join circuits as circuits_1
      inner join constructors as constructors_1
      on (circuits_1.circuitref = constructors_1.constructorref )
    on (results_1.resultid = circuits_1.circuitid )
where results_1.constructorid is not NULL
group by circuits_1.name, circuits_1.circuitref, results_1.constructorid, circuits_1.country
limit 18;
select  
  results_1.number
from 
  races as races_1
    inner join drivers as drivers_1
      inner join results as results_1
      on (drivers_1.driverid = results_1.resultid )
    on (races_1.raceid = drivers_1.driverid )
where drivers_1.nationality is not NULL
limit 34;
select  
  sum(
    cast(circuits_1.alt as float8)), 
  circuits_1.country, 
  standings_1.driverstandingsid, 
  circuits_1.alt, 
  max(
    cast(circuits_1.name as text)), 
  circuits_1.location, 
  count(
    cast(circuits_1.alt as float8))
from 
  circuits as circuits_1
    inner join standings as standings_1
    on (circuits_1.circuitid = standings_1.driverstandingsid )
where circuits_1.lng <= standings_1.points
group by circuits_1.country, standings_1.driverstandingsid, circuits_1.alt, circuits_1.location
limit 36;
select  
  avg(
    cast(results_2.resultid as int8)), 
  avg(
    cast(results_1.fastestlap as float8)), 
  races_1.circuitid, 
  results_2.grid, 
  races_1.date, 
  sum(
    cast(results_2.rank as float8)), 
  circuits_1.alt, 
  results_1.rank
from 
  results as results_1
    inner join circuits as circuits_1
        inner join races as races_1
        on (circuits_1.country = races_1.name )
      inner join results as results_2
      on (races_1.year = results_2.resultid )
    on (results_1.positionorder = circuits_1.circuitid )
where circuits_1.alt is not NULL
group by races_1.circuitid, results_2.grid, races_1.date, circuits_1.alt, results_1.rank
limit 40;
select  
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.country is not NULL
limit 22;
select  
  results_1.rank, 
  max(
    cast(results_1.date as "timestamp")), 
  results_1.positionorder, 
  results_1.resultid, 
  results_1.date, 
  results_1.fastestlap, 
  max(
    cast(results_1.date as "timestamp")), 
  results_1.date, 
  results_1.raceid, 
  results_1.raceid, 
  results_1.raceid, 
  results_1.grid, 
  results_1.points, 
  results_1.raceid, 
  results_1.raceid
from 
  results as results_1
where results_1.fastestlap is not NULL
group by results_1.rank, results_1.positionorder, results_1.resultid, results_1.date, results_1.fastestlap, results_1.date, results_1.raceid, results_1.raceid, results_1.raceid, results_1.grid, results_1.points, results_1.raceid, results_1.raceid
limit 11;
select  
  constructor_results_1.raceid, 
  min(
    cast(constructor_results_1.date as "timestamp"))
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.raceid
limit 15;
select  
  circuits_1.lng, 
  max(
    cast(races_1.time as text)), 
  constructor_standings_1.raceid, 
  circuits_1.name, 
  constructor_standings_1.wins
from 
  races as races_1
    inner join circuits as circuits_1
      inner join constructor_standings as constructor_standings_1
      on (circuits_1.alt = constructor_standings_1.points )
    on (races_1.year = constructor_standings_1.constructorstandingsid )
where circuits_1.lat is not NULL
group by circuits_1.lng, constructor_standings_1.raceid, circuits_1.name, constructor_standings_1.wins
limit 6;
select  
  qualifying_1.date, 
  qualifying_1.date, 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.date = qualifying_1.date
limit 7;
select  
  standings_1.date, 
  standings_1.driverstandingsid, 
  standings_1.wins, 
  standings_1.date, 
  standings_1.date, 
  standings_1.raceid, 
  min(
    cast(standings_1.date as "timestamp")), 
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  max(
    cast(standings_1.points as float8)), 
  standings_1.points, 
  standings_1.raceid, 
  standings_1.position, 
  sum(
    cast(standings_1.points as float8)), 
  standings_1.points, 
  standings_1.wins
from 
  standings as standings_1
where standings_1.position is not NULL
group by standings_1.date, standings_1.driverstandingsid, standings_1.wins, standings_1.date, standings_1.date, standings_1.raceid, standings_1.driverstandingsid, standings_1.raceid, standings_1.points, standings_1.raceid, standings_1.position, standings_1.points, standings_1.wins
limit 31;
select  
  results_1.laps
from 
  qualifying as qualifying_1
    inner join results as results_1
    on (qualifying_1.qualifyid = results_1.resultid )
where results_1.laps is not NULL
limit 23;
select  
  qualifying_1.constructorid, 
  qualifying_1.number, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
limit 39;
select  
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
limit 15;
select  
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
    inner join standings as standings_1
      inner join constructor_results as constructor_results_1
      on (standings_1.raceid = constructor_results_1.constructorresultsid )
    on (constructor_standings_1.raceid = standings_1.driverstandingsid )
where constructor_results_1.constructorid is not NULL
limit 16;
select  
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  min(
    cast(constructor_results_1.date as "timestamp")), 
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid = constructor_results_1.raceid
group by constructor_results_1.date, constructor_results_1.constructorid, constructor_results_1.points, constructor_results_1.points, constructor_results_1.points, constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.raceid
limit 23;
select  
  drivers_1.nationality, 
  constructor_results_1.constructorid, 
  drivers_1.dob, 
  count(*)
from 
  constructor_results as constructor_results_1
    inner join drivers as drivers_1
    on (constructor_results_1.date = drivers_1.dob )
where drivers_1.driverid > constructor_results_1.raceid
group by drivers_1.nationality, constructor_results_1.constructorid, drivers_1.dob
limit 2;
select  
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date > constructor_standings_1.date
limit 13;
select  
  results_1.number, 
  results_1.statusid, 
  results_1.positionorder, 
  results_1.laps, 
  results_1.date, 
  results_1.laps
from 
  results as results_1
where results_1.driverid is not NULL
limit 27;
select  
  standings_1.wins, 
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.date > standings_1.date
limit 7;
select  
  min(
    cast(drivers_1.surname as text))
from 
  qualifying as qualifying_1
    inner join drivers as drivers_1
    on (qualifying_1.position = drivers_1.driverid )
where drivers_1.nationality is not NULL
limit 22;
select distinct 
  qualifying_1.date, 
  min(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
group by qualifying_1.date, qualifying_1.number
limit 30;
select  
  min(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.constructorid, 
  qualifying_1.date, 
  qualifying_1.qualifyid, 
  constructors_1.nationality
from 
  qualifying as qualifying_1
    inner join constructors as constructors_1
    on (qualifying_1.constructorid = constructors_1.constructorid )
where qualifying_1.qualifyid >= qualifying_1.raceid
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.qualifyid, constructors_1.nationality
limit 39;
select  
  drivers_1.surname, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
limit 30;
select  
  results_1.resultid, 
  results_1.rank, 
  results_1.date, 
  min(
    cast(results_1.rank as float8)), 
  min(
    cast(results_1.date as "timestamp")), 
  results_1.raceid, 
  max(
    cast(results_1.driverid as int8)), 
  results_1.number
from 
  results as results_1
where results_1.date is not NULL
group by results_1.resultid, results_1.rank, results_1.date, results_1.raceid, results_1.number
limit 11;
select  
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 17;
select  
  drivers_1.driverid, 
  qualifying_1.constructorid
from 
  constructor_standings as constructor_standings_1
    inner join qualifying as qualifying_1
        inner join constructor_results as constructor_results_1
        on (qualifying_1.raceid = constructor_results_1.constructorresultsid )
      inner join drivers as drivers_1
      on (constructor_results_1.date = drivers_1.dob )
    on (constructor_standings_1.raceid = drivers_1.driverid )
where constructor_results_1.points > constructor_standings_1.points
limit 42;
select  
  results_1.driverid, 
  constructors_1.nationality, 
  results_1.grid, 
  races_1.circuitid
from 
  constructors as constructors_1
      inner join races as races_1
      on (constructors_1.nationality = races_1.name )
    inner join races as races_2
      inner join results as results_1
      on (races_2.date = results_1.date )
    on (races_1.year = results_1.resultid )
where results_1.date <= races_1.date
limit 25;
select  
  qualifying_1.qualifyid, 
  standings_1.date, 
  constructor_standings_1.points, 
  results_1.milliseconds, 
  races_1.circuitid, 
  avg(
    cast(constructor_standings_1.points as float8)), 
  standings_1.position, 
  races_1.circuitid, 
  constructor_standings_1.wins, 
  races_1.name, 
  qualifying_1.raceid, 
  qualifying_1.date, 
  count(*), 
  drivers_1.forename, 
  min(
    cast(standings_1.date as "timestamp"))
from 
  standings as standings_1
      inner join drivers as drivers_1
        inner join results as results_1
          inner join constructor_standings as constructor_standings_1
          on (results_1.driverid = constructor_standings_1.constructorstandingsid )
        on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
      on (standings_1.position = drivers_1.driverid )
    inner join races as races_1
      inner join qualifying as qualifying_1
      on (races_1.date = qualifying_1.date )
    on (drivers_1.forename = races_1.name )
where qualifying_1.date <= constructor_standings_1.date
group by qualifying_1.qualifyid, standings_1.date, constructor_standings_1.points, results_1.milliseconds, races_1.circuitid, standings_1.position, races_1.circuitid, constructor_standings_1.wins, races_1.name, qualifying_1.raceid, qualifying_1.date, drivers_1.forename
limit 9;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 37;
select  
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 4;
select  
  drivers_1.driverref, 
  drivers_1.surname, 
  constructor_results_1.date, 
  races_1.name, 
  constructor_results_1.constructorresultsid, 
  max(
    cast(circuits_1.name as text)), 
  circuits_1.lng, 
  drivers_1.driverid, 
  circuits_1.circuitref, 
  constructor_results_1.constructorid, 
  races_1.time, 
  circuits_1.location
from 
  circuits as circuits_1
      inner join drivers as drivers_1
        inner join races as races_1
        on (drivers_1.surname = races_1.name )
      on (circuits_1.name = races_1.name )
    inner join constructor_results as constructor_results_1
    on (races_1.circuitid = constructor_results_1.constructorresultsid )
where races_1.raceid = races_1.circuitid
group by drivers_1.driverref, drivers_1.surname, constructor_results_1.date, races_1.name, constructor_results_1.constructorresultsid, circuits_1.lng, drivers_1.driverid, circuits_1.circuitref, constructor_results_1.constructorid, races_1.time, circuits_1.location
limit 19;
select  
  standings_1.position, 
  standings_1.driverid, 
  count(*), 
  standings_1.raceid, 
  standings_1.date, 
  standings_1.driverstandingsid, 
  standings_1.driverstandingsid, 
  standings_1.points
from 
  standings as standings_1
where standings_1.raceid is not NULL
group by standings_1.position, standings_1.driverid, standings_1.raceid, standings_1.date, standings_1.driverstandingsid, standings_1.driverstandingsid, standings_1.points
limit 8;
select  
  results_1.number
from 
  results as results_1
where results_1.grid <= results_1.positionorder
limit 4;
select  
  constructor_results_1.date, 
  results_1.number, 
  constructor_results_2.points
from 
  constructor_results as constructor_results_1
        inner join constructor_standings as constructor_standings_1
        on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
      inner join races as races_1
        inner join constructor_results as constructor_results_2
        on (races_1.date = constructor_results_2.date )
      on (constructor_results_1.date = constructor_results_2.date )
    inner join races as races_2
      inner join results as results_1
        inner join circuits as circuits_1
        on (results_1.statusid = circuits_1.circuitid )
      on (races_2.time = circuits_1.circuitref )
    on (constructor_standings_1.constructorid = races_2.raceid )
where constructor_results_1.constructorid is not NULL
limit 2;
select  
  standings_1.position, 
  standings_1.wins, 
  standings_1.driverstandingsid, 
  standings_1.date, 
  max(
    cast(standings_1.date as "timestamp")), 
  standings_1.date
from 
  standings as standings_1
where standings_1.date = standings_1.date
group by standings_1.position, standings_1.wins, standings_1.driverstandingsid, standings_1.date, standings_1.date
limit 18;
select  
  standings_1.position, 
  standings_1.points, 
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.points is not NULL
limit 21;
select  
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.constructorid, 
  max(
    cast(constructors_1.nationality as text)), 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.nationality, 
  min(
    cast(constructors_1.constructorid as int8)), 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.name, 
  min(
    cast(constructors_1.nationality as text)), 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorref, constructors_1.name, constructors_1.constructorid, constructors_1.nationality, constructors_1.name, constructors_1.constructorref, constructors_1.name, constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.constructorid, constructors_1.name, constructors_1.name, constructors_1.nationality, constructors_1.nationality, constructors_1.nationality, constructors_1.constructorid, constructors_1.nationality, constructors_1.name, constructors_1.constructorref, constructors_1.name, constructors_1.name, constructors_1.constructorref, constructors_1.constructorref
limit 7;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  sum(
    cast(constructor_results_1.raceid as int8)), 
  max(
    cast(constructor_results_1.date as "timestamp"))
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid >= constructor_results_1.constructorresultsid
group by constructor_results_1.constructorresultsid, constructor_results_1.date
limit 15;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.date, 
  min(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.points <= constructor_results_1.points
group by constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid, constructor_results_1.raceid, constructor_results_1.constructorid, constructor_results_1.points
limit 20;
select  
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 24;
select  
  circuits_1.lat, 
  count(*), 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
group by circuits_1.lat, circuits_1.location
limit 30;
select  
  races_1.year, 
  races_1.name, 
  races_1.year, 
  races_1.raceid
from 
  races as races_1
where races_1.year <= races_1.round
limit 36;
select  
  min(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.qualifyid, 
  qualifying_1.number, 
  qualifying_1.number, 
  count(*)
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
group by qualifying_1.qualifyid, qualifying_1.number, qualifying_1.number
limit 14;
select  
  drivers_1.dob, 
  constructors_1.name, 
  constructors_1.name, 
  min(
    cast(races_1.date as "timestamp")), 
  count(*), 
  constructors_1.name, 
  drivers_1.surname, 
  max(
    cast(races_1.time as text)), 
  drivers_1.forename
from 
  races as races_1
    inner join constructors as constructors_1
      inner join drivers as drivers_1
      on (constructors_1.constructorid = drivers_1.driverid )
    on (races_1.circuitid = constructors_1.constructorid )
where constructors_1.constructorid <= races_1.year
group by drivers_1.dob, constructors_1.name, constructors_1.name, constructors_1.name, drivers_1.surname, drivers_1.forename
limit 23;
select  
  drivers_1.surname, 
  count(*)
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
group by drivers_1.surname
limit 11;
select  
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.nationality, 
  avg(
    cast(constructors_1.constructorid as int8)), 
  constructors_1.constructorid, 
  count(
    cast(constructors_1.nationality as text)), 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.constructorref, constructors_1.name, constructors_1.nationality, constructors_1.constructorref, constructors_1.name, constructors_1.nationality, constructors_1.constructorid, constructors_1.constructorid, constructors_1.constructorid, constructors_1.constructorid
limit 27;
select  
  qualifying_1.raceid, 
  qualifying_1.number, 
  qualifying_1.raceid, 
  qualifying_1.position, 
  qualifying_1.number, 
  qualifying_1.date, 
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
limit 25;
select  
  races_1.name, 
  min(
    cast(races_1.time as text)), 
  races_1.round, 
  min(
    cast(races_1.date as "timestamp")), 
  circuits_1.circuitid
from 
  circuits as circuits_1
    inner join races as races_1
    on (circuits_1.circuitref = races_1.name )
where races_1.year > races_1.round
group by races_1.name, races_1.round, circuits_1.circuitid
limit 33;
select  
  results_1.driverid, 
  results_1.fastestlap, 
  results_1.statusid, 
  circuits_1.location, 
  results_1.raceid, 
  min(
    cast(circuits_1.lat as float8)), 
  results_1.grid, 
  avg(
    cast(results_1.positionorder as int8))
from 
  circuits as circuits_1
    inner join results as results_1
    on (circuits_1.lng = results_1.number )
where results_1.date >= results_1.date
group by results_1.driverid, results_1.fastestlap, results_1.statusid, circuits_1.location, results_1.raceid, results_1.grid
limit 36;
select  
  drivers_1.dob, 
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
limit 32;
select  
  drivers_1.driverref, 
  drivers_1.driverref, 
  drivers_1.driverid, 
  drivers_1.code, 
  count(*), 
  drivers_1.surname, 
  drivers_1.driverref, 
  drivers_1.surname, 
  drivers_1.dob, 
  drivers_1.dob, 
  min(
    cast(drivers_1.driverid as int8))
from 
  drivers as drivers_1
where drivers_1.code is not NULL
group by drivers_1.driverref, drivers_1.driverref, drivers_1.driverid, drivers_1.code, drivers_1.surname, drivers_1.driverref, drivers_1.surname, drivers_1.dob, drivers_1.dob
limit 34;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.date
from 
  results as results_1
      inner join constructor_standings as constructor_standings_1
      on (results_1.resultid = constructor_standings_1.constructorstandingsid )
    inner join qualifying as qualifying_1
      inner join qualifying as qualifying_2
      on (qualifying_1.number = qualifying_2.qualifyid )
    on (results_1.constructorid = qualifying_2.qualifyid )
where results_1.grid is not NULL
limit 4;
select  
  constructor_standings_1.points, 
  count(
    cast(constructor_standings_1.constructorstandingsid as int8)), 
  constructor_standings_1.wins, 
  max(
    cast(constructor_standings_1.constructorid as int8)), 
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.points, constructor_standings_1.wins, constructor_standings_1.points
limit 19;
select  
  standings_1.driverstandingsid
from 
  races as races_1
    inner join standings as standings_1
    on (races_1.year = standings_1.driverstandingsid )
where standings_1.wins is not NULL
limit 30;
select  
  min(
    cast(constructors_1.constructorref as text)), 
  constructors_1.nationality, 
  constructor_standings_1.date, 
  qualifying_1.constructorid, 
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  constructors_1.constructorid, 
  qualifying_1.number, 
  qualifying_1.date, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
    inner join constructors as constructors_1
      inner join qualifying as qualifying_1
      on (constructors_1.constructorid = qualifying_1.qualifyid )
    on (constructor_standings_1.position = constructors_1.constructorid )
where constructor_standings_1.raceid is not NULL
group by constructors_1.nationality, constructor_standings_1.date, qualifying_1.constructorid, qualifying_1.position, qualifying_1.qualifyid, constructors_1.constructorid, qualifying_1.number, qualifying_1.date, constructor_standings_1.position
limit 9;
select  
  drivers_1.driverid, 
  qualifying_1.number
from 
  qualifying as qualifying_1
    inner join drivers as drivers_1
    on (qualifying_1.qualifyid = drivers_1.driverid )
where drivers_1.driverid is not NULL
limit 7;
select  
  max(
    cast(standings_1.wins as int8)), 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.raceid is not NULL
group by standings_1.driverid
limit 13;
select  
  circuits_1.location, 
  circuits_1.lng, 
  avg(
    cast(circuits_1.circuitid as int8)), 
  circuits_1.lat, 
  max(
    cast(circuits_1.alt as float8)), 
  circuits_1.lng, 
  circuits_1.location, 
  max(
    cast(circuits_1.circuitref as text)), 
  circuits_1.circuitid, 
  circuits_1.location, 
  circuits_1.location, 
  circuits_1.country, 
  circuits_1.name, 
  count(
    cast(circuits_1.circuitref as text)), 
  circuits_1.circuitref, 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.location is not NULL
group by circuits_1.location, circuits_1.lng, circuits_1.lat, circuits_1.lng, circuits_1.location, circuits_1.circuitid, circuits_1.location, circuits_1.location, circuits_1.country, circuits_1.name, circuits_1.circuitref, circuits_1.alt
limit 14;
select  
  results_1.grid, 
  races_1.time, 
  results_1.date, 
  races_1.year, 
  count(
    cast(results_1.statusid as int8)), 
  races_1.round, 
  results_1.points
from 
  results as results_1
    inner join races as races_1
    on (results_1.date = races_1.date )
where results_1.number is not NULL
group by results_1.grid, races_1.time, results_1.date, races_1.year, races_1.round, results_1.points
limit 15;
select  
  circuits_1.location, 
  circuits_1.country, 
  circuits_1.location, 
  max(
    cast(circuits_1.country as text)), 
  circuits_1.country, 
  circuits_1.lat
from 
  circuits as circuits_1
where circuits_1.lng > circuits_1.lat
group by circuits_1.location, circuits_1.country, circuits_1.location, circuits_1.country, circuits_1.lat
limit 36;
select  
  min(
    cast(races_1.date as "timestamp")), 
  races_1.date, 
  min(
    cast(races_1.date as "timestamp")), 
  sum(
    cast(races_1.circuitid as int8))
from 
  races as races_1
    inner join drivers as drivers_1
    on (races_1.name = drivers_1.driverref )
where races_1.circuitid is not NULL
group by races_1.date
limit 14;
select  
  circuits_1.circuitref, 
  drivers_1.surname
from 
  drivers as drivers_1
    inner join circuits as circuits_1
    on (drivers_1.nationality = circuits_1.circuitref )
where drivers_1.driverref is not NULL
limit 29;
select  
  circuits_1.circuitref, 
  circuits_1.alt
from 
  drivers as drivers_1
    inner join circuits as circuits_1
    on (drivers_1.surname = circuits_1.circuitref )
where drivers_1.driverid is not NULL
limit 3;
select  
  drivers_1.driverid, 
  min(
    cast(drivers_1.nationality as text)), 
  drivers_1.forename
from 
  drivers as drivers_1
    inner join constructor_standings as constructor_standings_1
    on (drivers_1.dob = constructor_standings_1.date )
where constructor_standings_1.date is not NULL
group by drivers_1.driverid, drivers_1.forename
limit 21;
select  
  min(
    cast(circuits_1.alt as float8)), 
  max(
    cast(circuits_1.circuitid as int8)), 
  max(
    cast(results_1.date as "timestamp")), 
  results_1.raceid, 
  circuits_1.location, 
  results_1.grid, 
  results_1.statusid, 
  results_1.resultid, 
  results_1.laps, 
  results_1.number, 
  results_1.number, 
  results_1.number, 
  results_1.number, 
  sum(
    cast(results_1.grid as int8)), 
  circuits_1.alt, 
  circuits_1.lat, 
  circuits_1.country, 
  avg(
    cast(results_1.number as float8)), 
  circuits_1.lng, 
  results_1.statusid, 
  circuits_1.alt
from 
  results as results_1
    inner join circuits as circuits_1
    on (results_1.position = circuits_1.lat )
where results_1.position is not NULL
group by results_1.raceid, circuits_1.location, results_1.grid, results_1.statusid, results_1.resultid, results_1.laps, results_1.number, results_1.number, results_1.number, results_1.number, circuits_1.alt, circuits_1.lat, circuits_1.country, circuits_1.lng, results_1.statusid, circuits_1.alt
limit 34;
select  
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 37;
select  
  circuits_1.lng
from 
  circuits as circuits_1
    inner join races as races_1
    on (circuits_1.circuitid = races_1.raceid )
where races_1.time is not NULL
limit 12;
select  
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  avg(
    cast(standings_1.wins as int8)), 
  max(
    cast(standings_1.points as float8)), 
  standings_1.driverstandingsid, 
  standings_1.position, 
  standings_1.points, 
  standings_1.wins
from 
  standings as standings_1
where standings_1.points >= standings_1.points
group by standings_1.driverid, standings_1.driverstandingsid, standings_1.driverstandingsid, standings_1.position, standings_1.points, standings_1.wins
limit 40;
select  
  results_1.raceid, 
  results_1.driverid, 
  min(
    cast(results_1.date as "timestamp"))
from 
  results as results_1
where results_1.date >= results_1.date
group by results_1.raceid, results_1.driverid
limit 6;
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid, 
  races_1.year, 
  races_1.date
from 
  races as races_1
    inner join constructor_standings as constructor_standings_1
      inner join circuits as circuits_1
      on (constructor_standings_1.position = circuits_1.circuitid )
    on (races_1.round = circuits_1.circuitid )
where circuits_1.country is not NULL
limit 8;
select  
  results_1.milliseconds, 
  results_1.raceid, 
  results_1.date, 
  results_1.number, 
  races_1.round, 
  results_1.raceid, 
  races_1.round, 
  races_1.year, 
  races_1.name, 
  standings_1.driverid
from 
  standings as standings_1
      inner join races as races_1
      on (standings_1.wins = races_1.raceid )
    inner join results as results_1
    on (standings_1.wins = results_1.resultid )
where races_1.name is not NULL
limit 21;
select  
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.date = qualifying_1.date
limit 2;
select  
  results_1.points, 
  constructor_results_1.date, 
  races_1.date, 
  races_1.time, 
  races_2.time, 
  qualifying_1.number, 
  constructor_results_2.raceid, 
  constructor_results_2.raceid, 
  races_2.raceid, 
  races_1.name
from 
  races as races_1
      inner join races as races_2
        inner join results as results_1
        on (races_2.year = results_1.resultid )
      on (races_1.raceid = races_2.raceid )
    inner join constructor_results as constructor_results_1
        inner join constructor_results as constructor_results_2
        on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
      inner join races as races_3
        inner join qualifying as qualifying_1
        on (races_3.year = qualifying_1.qualifyid )
      on (constructor_results_2.constructorresultsid = qualifying_1.qualifyid )
    on (races_2.circuitid = races_3.raceid )
where races_3.round is not NULL
limit 15;
select  
  count(
    cast(constructors_1.name as text)), 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  sum(
    cast(constructors_1.constructorid as int8)), 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.name, 
  max(
    cast(constructors_1.constructorid as int8)), 
  constructors_1.constructorid, 
  sum(
    cast(constructors_1.constructorid as int8)), 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.nationality, constructors_1.constructorid, constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality, constructors_1.constructorref, constructors_1.constructorref, constructors_1.constructorref, constructors_1.constructorref, constructors_1.constructorref, constructors_1.name, constructors_1.nationality, constructors_1.name, constructors_1.constructorid, constructors_1.constructorid, constructors_1.nationality, constructors_1.nationality, constructors_1.constructorid, constructors_1.constructorref, constructors_1.constructorref, constructors_1.constructorref
limit 40;
select  
  standings_1.points, 
  standings_1.wins, 
  standings_1.points, 
  standings_1.date, 
  standings_1.raceid, 
  standings_1.driverid, 
  standings_1.points, 
  standings_1.wins, 
  standings_1.date
from 
  standings as standings_1
where standings_1.driverid is not NULL
limit 3;
select  
  results_1.grid
from 
  races as races_1
    inner join constructor_results as constructor_results_1
      inner join results as results_1
      on (constructor_results_1.constructorresultsid = results_1.resultid )
    on (races_1.date = constructor_results_1.date )
where results_1.position <= results_1.points
limit 33;
select  
  count(
    cast(standings_1.wins as int8)), 
  standings_1.wins, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.name, 
  standings_1.points, 
  count(*), 
  constructors_1.nationality, 
  avg(
    cast(standings_1.points as float8))
from 
  constructors as constructors_1
    inner join standings as standings_1
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where constructors_1.name <= constructors_1.constructorref
group by standings_1.wins, constructors_1.constructorref, constructors_1.name, constructors_1.name, standings_1.points, constructors_1.nationality
limit 28;
select  
  constructor_results_1.constructorresultsid
from 
  races as races_1
    inner join constructor_results as constructor_results_1
    on (races_1.circuitid = constructor_results_1.constructorresultsid )
where races_1.date > constructor_results_1.date
limit 18;
select  
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 18;
select  
  circuits_1.location, 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.name is not NULL
limit 3;
select  
  races_1.name, 
  races_1.raceid, 
  races_1.year, 
  races_1.round, 
  races_1.name
from 
  races as races_1
where races_1.raceid >= races_1.year
limit 33;
select  
  constructor_standings_1.position, 
  constructor_standings_2.wins
from 
  constructor_standings as constructor_standings_1
    inner join constructor_standings as constructor_standings_2
    on (constructor_standings_1.position = constructor_standings_2.constructorstandingsid )
where constructor_standings_1.points >= constructor_standings_2.points
limit 15;
select  
  races_1.circuitid, 
  min(
    cast(races_1.raceid as int8)), 
  races_1.year, 
  min(
    cast(races_1.time as text)), 
  races_1.time
from 
  races as races_1
where races_1.year is not NULL
group by races_1.circuitid, races_1.year, races_1.time
limit 13;
select  
  results_1.grid
from 
  results as results_1
where results_1.date > results_1.date
limit 40;
select  
  constructor_standings_1.wins, 
  avg(
    cast(constructor_standings_1.points as float8)), 
  constructor_standings_1.raceid, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.wins, constructor_standings_1.raceid, constructor_standings_1.points, constructor_standings_1.constructorstandingsid
limit 23;
select  
  circuits_1.alt, 
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.country is not NULL
limit 27;
select  
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 34;
select  
  constructor_results_1.constructorresultsid
from 
  circuits as circuits_1
      inner join constructor_results as constructor_results_1
      on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
    inner join races as races_1
        inner join drivers as drivers_1
        on (races_1.name = drivers_1.driverref )
      inner join races as races_2
            inner join constructor_results as constructor_results_2
            on (races_2.year = constructor_results_2.constructorresultsid )
          inner join drivers as drivers_2
          on (races_2.date = drivers_2.dob )
        inner join constructor_results as constructor_results_3
        on (races_2.date = constructor_results_3.date )
      on (races_1.round = constructor_results_2.constructorresultsid )
    on (constructor_results_1.raceid = drivers_2.driverid )
where races_1.time >= races_1.name
limit 3;
select  
  races_1.circuitid, 
  races_1.round, 
  races_1.time, 
  races_1.raceid, 
  races_1.year, 
  races_1.name, 
  races_1.time, 
  races_1.raceid, 
  races_1.date, 
  races_1.name, 
  races_1.year, 
  races_1.round, 
  min(
    cast(races_1.name as text)), 
  races_1.name, 
  races_1.round
from 
  races as races_1
where races_1.date >= races_1.date
group by races_1.circuitid, races_1.round, races_1.time, races_1.raceid, races_1.year, races_1.name, races_1.time, races_1.raceid, races_1.date, races_1.name, races_1.year, races_1.round, races_1.name, races_1.round
limit 29;
select  
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  results_1.statusid, 
  constructor_results_1.raceid, 
  max(
    cast(constructor_results_1.date as "timestamp"))
from 
  results as results_1
    inner join constructor_results as constructor_results_1
    on (results_1.points = constructor_results_1.points )
where constructor_results_1.constructorid > results_1.statusid
group by constructor_results_1.date, constructor_results_1.constructorid, constructor_results_1.date, results_1.statusid, constructor_results_1.raceid
limit 9;
select  
  max(
    cast(circuits_2.location as text))
from 
  races as races_1
        inner join circuits as circuits_1
        on (races_1.year = circuits_1.circuitid )
      inner join circuits as circuits_2
      on (circuits_1.alt = circuits_2.lat )
    inner join circuits as circuits_3
    on (circuits_2.circuitref = circuits_3.circuitref )
where circuits_1.country is not NULL
limit 35;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
limit 25;
select  
  count(*), 
  races_1.round, 
  races_1.name
from 
  races as races_1
where races_1.name <= races_1.time
group by races_1.round, races_1.name
limit 9;
select  
  constructor_results_2.constructorresultsid, 
  constructor_results_2.raceid, 
  constructor_results_2.date, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
    inner join constructor_results as constructor_results_2
    on (constructor_results_1.raceid = constructor_results_2.constructorresultsid )
where constructor_results_2.points is not NULL
limit 29;
select  
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date = constructor_results_1.date
limit 40;
select  
  drivers_1.dob, 
  drivers_1.forename, 
  drivers_1.forename, 
  drivers_1.code, 
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.forename = drivers_1.nationality
limit 37;
select  
  races_1.raceid, 
  max(
    cast(races_1.time as text)), 
  results_1.constructorid, 
  races_1.name
from 
  results as results_1
    inner join races as races_1
    on (results_1.grid = races_1.raceid )
where results_1.laps is not NULL
group by races_1.raceid, results_1.constructorid, races_1.name
limit 28;
select  
  races_1.time, 
  races_1.round
from 
  races as races_1
where races_1.circuitid > races_1.raceid
limit 32;
select  
  races_1.raceid, 
  races_1.round, 
  max(
    cast(races_1.circuitid as int8)), 
  races_1.raceid
from 
  races as races_1
    inner join races as races_2
    on (races_1.time = races_2.name )
where races_2.circuitid is not NULL
group by races_1.raceid, races_1.round, races_1.raceid
limit 25;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.date, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
limit 7;
select  
  standings_1.wins, 
  standings_1.raceid, 
  standings_1.date, 
  qualifying_1.raceid, 
  qualifying_1.constructorid, 
  standings_1.wins, 
  qualifying_1.date, 
  standings_1.points, 
  standings_1.driverstandingsid, 
  min(
    cast(qualifying_1.date as "timestamp")), 
  avg(
    cast(standings_1.points as float8)), 
  qualifying_1.constructorid, 
  qualifying_1.number
from 
  qualifying as qualifying_1
    inner join standings as standings_1
    on (qualifying_1.raceid = standings_1.driverstandingsid )
where standings_1.raceid is not NULL
group by standings_1.wins, standings_1.raceid, standings_1.date, qualifying_1.raceid, qualifying_1.constructorid, standings_1.wins, qualifying_1.date, standings_1.points, standings_1.driverstandingsid, qualifying_1.constructorid, qualifying_1.number
limit 20;
select  
  min(
    cast(constructor_standings_2.date as "timestamp")), 
  constructor_standings_2.position, 
  constructor_standings_1.constructorid, 
  max(
    cast(constructor_standings_1.date as "timestamp"))
from 
  constructor_standings as constructor_standings_1
    inner join constructor_standings as constructor_standings_2
    on (constructor_standings_1.date = constructor_standings_2.date )
where constructor_standings_1.points is not NULL
group by constructor_standings_2.position, constructor_standings_1.constructorid
limit 17;
select  
  drivers_1.forename, 
  constructor_standings_1.points, 
  constructor_standings_1.points, 
  drivers_1.dob, 
  max(
    cast(constructor_standings_1.date as "timestamp"))
from 
  drivers as drivers_1
      inner join constructors as constructors_1
      on (drivers_1.code = constructors_1.constructorref )
    inner join drivers as drivers_2
      inner join constructor_standings as constructor_standings_1
      on (drivers_2.dob = constructor_standings_1.date )
    on (drivers_1.code = drivers_2.driverref )
where drivers_2.dob is not NULL
group by drivers_1.forename, constructor_standings_1.points, constructor_standings_1.points, drivers_1.dob
limit 3;
select  
  circuits_1.name, 
  circuits_1.lat, 
  circuits_1.name, 
  circuits_1.circuitid, 
  circuits_1.country, 
  circuits_1.name, 
  circuits_1.circuitref, 
  circuits_1.name, 
  max(
    cast(circuits_1.lng as float8)), 
  circuits_1.name, 
  circuits_1.circuitref, 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.name is not NULL
group by circuits_1.name, circuits_1.lat, circuits_1.name, circuits_1.circuitid, circuits_1.country, circuits_1.name, circuits_1.circuitref, circuits_1.name, circuits_1.name, circuits_1.circuitref, circuits_1.location
limit 35;
select  
  drivers_1.forename
from 
  drivers as drivers_1
    inner join constructor_results as constructor_results_1
      inner join circuits as circuits_1
      on (constructor_results_1.raceid = circuits_1.circuitid )
    on (drivers_1.code = circuits_1.circuitref )
where constructor_results_1.constructorresultsid >= circuits_1.circuitid
limit 10;
select  
  results_1.fastestlap, 
  drivers_1.surname, 
  results_1.position, 
  results_1.milliseconds, 
  results_1.rank, 
  drivers_1.driverref
from 
  results as results_1
      inner join qualifying as qualifying_1
      on (results_1.raceid = qualifying_1.qualifyid )
    inner join drivers as drivers_1
    on (qualifying_1.constructorid = drivers_1.driverid )
where drivers_1.nationality is not NULL
limit 36;
select  
  max(
    cast(constructors_1.nationality as text)), 
  constructors_1.constructorref, 
  max(
    cast(constructor_standings_1.points as float8)), 
  constructor_results_1.constructorresultsid, 
  constructors_1.name, 
  standings_1.driverstandingsid, 
  max(
    cast(constructor_results_1.date as "timestamp")), 
  min(
    cast(constructors_1.constructorref as text)), 
  constructors_1.constructorid, 
  min(
    cast(constructors_1.name as text)), 
  constructor_results_1.date, 
  constructors_1.nationality, 
  constructors_1.name, 
  max(
    cast(standings_1.date as "timestamp")), 
  constructor_results_1.raceid, 
  sum(
    cast(standings_1.position as int8))
from 
  constructor_results as constructor_results_1
      inner join standings as standings_1
        inner join constructor_standings as constructor_standings_1
        on (standings_1.raceid = constructor_standings_1.constructorstandingsid )
      on (constructor_results_1.points = standings_1.points )
    inner join constructors as constructors_1
    on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
where constructor_results_1.constructorresultsid is not NULL
group by constructors_1.constructorref, constructor_results_1.constructorresultsid, constructors_1.name, standings_1.driverstandingsid, constructors_1.constructorid, constructor_results_1.date, constructors_1.nationality, constructors_1.name, constructor_results_1.raceid
limit 40;
select  
  constructor_results_1.date, 
  max(
    cast(constructor_results_1.constructorresultsid as int8)), 
  constructor_results_1.date, 
  count(*)
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.date, constructor_results_1.date
limit 1;
select  
  constructor_results_1.date, 
  constructor_results_1.date
from 
  constructors as constructors_1
    inner join results as results_1
      inner join constructor_results as constructor_results_1
        inner join standings as standings_1
        on (constructor_results_1.date = standings_1.date )
      on (results_1.position = standings_1.points )
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where constructor_results_1.constructorresultsid is not NULL
limit 32;
select  
  drivers_1.dob, 
  drivers_1.forename, 
  drivers_1.surname, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.code is not NULL
limit 32;
select  
  standings_1.driverid, 
  standings_1.raceid, 
  standings_1.date, 
  standings_1.position, 
  count(*), 
  min(
    cast(standings_1.date as "timestamp")), 
  standings_1.position, 
  standings_1.points
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
group by standings_1.driverid, standings_1.raceid, standings_1.date, standings_1.position, standings_1.position, standings_1.points
limit 36;
select  
  results_1.raceid
from 
  races as races_1
    inner join results as results_1
    on (races_1.circuitid = results_1.resultid )
where races_1.name < races_1.time
limit 21;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  constructor_standings_1.points, 
  constructor_standings_1.date, 
  constructor_standings_1.points, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
limit 36;
select  
  max(
    cast(results_1.date as "timestamp")), 
  constructors_1.constructorref, 
  results_1.grid, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  results_1.date, 
  results_1.raceid
from 
  results as results_1
    inner join constructors as constructors_1
    on (results_1.laps = constructors_1.constructorid )
where results_1.fastestlap is not NULL
group by constructors_1.constructorref, results_1.grid, constructors_1.name, constructors_1.nationality, constructors_1.nationality, results_1.date, results_1.raceid
limit 24;
select  
  drivers_1.dob, 
  drivers_1.driverref, 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.driverid = drivers_1.driverid
limit 9;
select  
  results_1.grid
from 
  drivers as drivers_1
    inner join results as results_1
    on (drivers_1.driverid = results_1.resultid )
where drivers_1.driverid is not NULL
limit 19;
select  
  standings_1.driverid, 
  standings_1.wins
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
limit 29;
select  
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  qualifying_1.constructorid, 
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  min(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.driverid, 
  qualifying_1.position, 
  max(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  min(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.constructorid, 
  qualifying_1.position, 
  qualifying_1.driverid, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.constructorid, qualifying_1.qualifyid, qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.driverid, qualifying_1.driverid, qualifying_1.position, qualifying_1.driverid, qualifying_1.driverid, qualifying_1.constructorid, qualifying_1.position, qualifying_1.driverid, qualifying_1.constructorid
limit 31;
select  
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date <= constructor_results_1.date
limit 31;
select  
  qualifying_1.driverid, 
  qualifying_1.raceid, 
  sum(
    cast(qualifying_1.qualifyid as int8)), 
  qualifying_1.raceid, 
  qualifying_1.number, 
  qualifying_1.position, 
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
group by qualifying_1.driverid, qualifying_1.raceid, qualifying_1.raceid, qualifying_1.number, qualifying_1.position, qualifying_1.number
limit 15;
select  
  count(*), 
  constructors_1.constructorid, 
  results_2.constructorid
from 
  results as results_1
      inner join constructor_results as constructor_results_1
        inner join results as results_2
        on (constructor_results_1.raceid = results_2.resultid )
      on (results_1.rank = constructor_results_1.points )
    inner join constructors as constructors_1
    on (results_1.laps = constructors_1.constructorid )
where constructors_1.nationality is not NULL
group by constructors_1.constructorid, results_2.constructorid
limit 36;
select  
  races_1.round, 
  races_1.time, 
  races_1.round, 
  races_1.round, 
  races_1.round, 
  races_1.year, 
  races_1.time, 
  races_1.year
from 
  races as races_1
where races_1.date > races_1.date
limit 42;
select  
  min(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
group by qualifying_1.number
limit 26;
select  
  constructor_standings_1.points, 
  avg(
    cast(constructor_results_1.points as float8)), 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructor_standings_1.position, 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
    inner join constructors as constructors_1
      inner join constructor_results as constructor_results_1
      on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
    on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
where constructors_1.nationality is not NULL
group by constructor_standings_1.points, constructors_1.nationality, constructors_1.nationality, constructor_standings_1.position, constructor_standings_1.raceid
limit 4;
select  
  constructors_1.constructorref, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.date, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  avg(
    cast(constructor_results_1.points as float8)), 
  constructors_1.name, 
  constructor_results_1.constructorid, 
  min(
    cast(constructor_results_1.date as "timestamp")), 
  constructor_results_1.constructorid, 
  max(
    cast(constructors_1.constructorref as text)), 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
    inner join constructors as constructors_1
    on (constructor_results_1.constructorid = constructors_1.constructorid )
where constructor_results_1.points < constructor_results_1.points
group by constructors_1.constructorref, constructor_results_1.date, constructor_results_1.points, constructor_results_1.date, constructors_1.name, constructors_1.constructorref, constructors_1.constructorid, constructors_1.name, constructor_results_1.constructorid, constructor_results_1.constructorid, constructor_results_1.raceid, constructor_results_1.points, constructor_results_1.points, constructor_results_1.date
limit 38;
select  
  qualifying_1.constructorid, 
  results_1.raceid, 
  results_1.rank, 
  qualifying_1.position, 
  qualifying_1.date, 
  qualifying_1.date, 
  qualifying_1.date
from 
  results as results_1
    inner join qualifying as qualifying_1
    on (results_1.constructorid = qualifying_1.qualifyid )
where results_1.grid is not NULL
limit 2;
select  
  standings_1.points, 
  standings_1.wins, 
  standings_1.points
from 
  standings as standings_1
where standings_1.wins is not NULL
limit 1;
select  
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 15;
select  
  circuits_1.circuitref, 
  count(
    cast(circuits_1.name as text)), 
  circuits_1.lng, 
  max(
    cast(circuits_1.circuitid as int8)), 
  circuits_1.lng, 
  circuits_1.lng, 
  circuits_1.lat, 
  circuits_1.lat, 
  circuits_1.location, 
  circuits_1.country, 
  circuits_1.location, 
  circuits_1.lat, 
  circuits_1.country
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
group by circuits_1.circuitref, circuits_1.lng, circuits_1.lng, circuits_1.lng, circuits_1.lat, circuits_1.lat, circuits_1.location, circuits_1.country, circuits_1.location, circuits_1.lat, circuits_1.country
limit 31;
select  
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
limit 6;
select  
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 25;
select  
  qualifying_1.date, 
  qualifying_1.date, 
  qualifying_1.constructorid, 
  qualifying_1.date, 
  qualifying_1.driverid, 
  qualifying_1.constructorid, 
  qualifying_1.number, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
limit 42;
select  
  max(
    cast(results_1.number as float8)), 
  results_1.position
from 
  results as results_1
    inner join races as races_1
    on (results_1.grid = races_1.raceid )
where results_1.date is not NULL
group by results_1.position
limit 34;
select distinct 
  constructors_1.constructorref, 
  max(
    cast(results_1.date as "timestamp")), 
  count(
    cast(results_1.fastestlap as float8)), 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  qualifying_1.number, 
  min(
    cast(constructors_1.constructorref as text))
from 
  qualifying as qualifying_1
    inner join constructors as constructors_1
      inner join results as results_1
      on (constructors_1.constructorid = results_1.resultid )
    on (qualifying_1.raceid = constructors_1.constructorid )
where qualifying_1.number is not NULL
group by constructors_1.constructorref, constructors_1.nationality, constructors_1.constructorid, qualifying_1.number
limit 32;
select  
  drivers_1.surname, 
  drivers_1.dob, 
  drivers_1.surname, 
  max(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.driverref, 
  drivers_1.driverref, 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.code is not NULL
group by drivers_1.surname, drivers_1.dob, drivers_1.surname, drivers_1.driverref, drivers_1.driverref, drivers_1.surname
limit 6;
select  
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorid >= constructors_1.constructorid
limit 28;
select  
  drivers_1.code, 
  drivers_1.forename, 
  min(
    cast(drivers_1.driverid as int8)), 
  drivers_1.driverid, 
  max(
    cast(drivers_1.driverid as int8)), 
  drivers_1.nationality, 
  drivers_1.code, 
  drivers_1.code, 
  sum(
    cast(drivers_1.driverid as int8)), 
  drivers_1.driverref, 
  max(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.driverid, 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
group by drivers_1.code, drivers_1.forename, drivers_1.driverid, drivers_1.nationality, drivers_1.code, drivers_1.code, drivers_1.driverref, drivers_1.driverid, drivers_1.surname
limit 3;
select  
  constructors_1.nationality, 
  qualifying_1.driverid, 
  qualifying_1.date, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.name, 
  drivers_1.driverref, 
  max(
    cast(qualifying_1.number as int8)), 
  drivers_1.dob, 
  count(
    cast(qualifying_1.qualifyid as int8)), 
  constructors_1.constructorid, 
  qualifying_1.raceid, 
  max(
    cast(qualifying_1.date as "timestamp")), 
  min(
    cast(drivers_1.code as text)), 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  drivers_1.forename, 
  avg(
    cast(qualifying_1.driverid as int8))
from 
  qualifying as qualifying_1
    inner join drivers as drivers_1
      inner join constructors as constructors_1
      on (drivers_1.nationality = constructors_1.constructorref )
    on (qualifying_1.qualifyid = drivers_1.driverid )
where qualifying_1.number is not NULL
group by constructors_1.nationality, qualifying_1.driverid, qualifying_1.date, constructors_1.constructorid, constructors_1.constructorid, constructors_1.name, drivers_1.driverref, drivers_1.dob, constructors_1.constructorid, qualifying_1.raceid, constructors_1.nationality, constructors_1.constructorref, qualifying_1.constructorid, qualifying_1.constructorid, drivers_1.forename
limit 38;
select  
  max(
    cast(results_1.date as "timestamp")), 
  results_1.laps, 
  results_1.milliseconds, 
  results_1.points, 
  results_1.driverid, 
  results_1.milliseconds, 
  results_1.points, 
  results_1.grid, 
  results_1.position, 
  results_1.date, 
  results_1.grid, 
  results_1.points, 
  results_1.raceid, 
  results_1.statusid
from 
  results as results_1
where results_1.number is not NULL
group by results_1.laps, results_1.milliseconds, results_1.points, results_1.driverid, results_1.milliseconds, results_1.points, results_1.grid, results_1.position, results_1.date, results_1.grid, results_1.points, results_1.raceid, results_1.statusid
limit 3;
select  
  drivers_1.driverid, 
  qualifying_1.number, 
  qualifying_1.driverid, 
  drivers_1.driverid, 
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  qualifying_1.number, 
  qualifying_1.position, 
  qualifying_1.number, 
  qualifying_1.number, 
  drivers_1.driverref
from 
  drivers as drivers_1
    inner join qualifying as qualifying_1
    on (drivers_1.driverid = qualifying_1.qualifyid )
where qualifying_1.date is not NULL
limit 24;
select  
  races_1.year, 
  races_1.raceid, 
  races_1.circuitid, 
  races_1.name, 
  races_1.round, 
  races_1.time, 
  races_1.circuitid, 
  races_1.name, 
  races_1.round
from 
  races as races_1
where races_1.round is not NULL
limit 29;
select  
  constructors_1.name, 
  min(
    cast(constructors_1.name as text)), 
  max(
    cast(races_1.raceid as int8)), 
  races_1.circuitid
from 
  races as races_1
    inner join constructors as constructors_1
    on (races_1.name = constructors_1.constructorref )
where constructors_1.constructorid is not NULL
group by constructors_1.name, races_1.circuitid
limit 29;
select  
  results_1.constructorid, 
  results_1.positionorder, 
  results_1.rank
from 
  results as results_1
where results_1.raceid is not NULL
limit 29;
select  
  races_1.time, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  max(
    cast(races_1.time as text)), 
  min(
    cast(constructor_results_1.raceid as int8)), 
  constructor_results_1.constructorresultsid
from 
  races as races_1
    inner join constructor_results as constructor_results_1
    on (races_1.date = constructor_results_1.date )
where constructor_results_1.constructorresultsid is not NULL
group by races_1.time, constructor_results_1.date, constructor_results_1.raceid, constructor_results_1.constructorresultsid
limit 4;
select  
  results_1.fastestlap, 
  results_1.resultid
from 
  results as results_1
    inner join constructors as constructors_1
      inner join results as results_2
      on (constructors_1.constructorid = results_2.resultid )
    on (results_1.positionorder = constructors_1.constructorid )
where results_1.raceid is not NULL
limit 24;
select  
  results_1.rank, 
  sum(
    cast(results_1.position as float8)), 
  results_1.laps, 
  results_1.milliseconds, 
  results_1.milliseconds, 
  results_1.constructorid, 
  results_1.raceid, 
  min(
    cast(results_1.positionorder as int8)), 
  results_1.number, 
  results_1.laps, 
  sum(
    cast(results_1.raceid as int8))
from 
  results as results_1
where results_1.points <= results_1.rank
group by results_1.rank, results_1.laps, results_1.milliseconds, results_1.milliseconds, results_1.constructorid, results_1.raceid, results_1.number, results_1.laps
limit 24;
select  
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.country is not NULL
limit 18;
select  
  drivers_1.dob, 
  drivers_1.driverref, 
  drivers_1.driverref, 
  drivers_1.dob, 
  count(*), 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
group by drivers_1.dob, drivers_1.driverref, drivers_1.driverref, drivers_1.dob, drivers_1.nationality
limit 39;
select  
  standings_1.driverid, 
  standings_1.wins, 
  standings_1.driverstandingsid, 
  standings_1.points, 
  standings_1.position, 
  sum(
    cast(standings_1.points as float8)), 
  standings_1.driverid, 
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  standings_1.driverid, 
  standings_1.wins, 
  standings_1.position, 
  standings_1.points, 
  standings_1.raceid, 
  standings_1.points, 
  standings_1.raceid, 
  standings_1.raceid, 
  sum(
    cast(standings_1.points as float8)), 
  standings_1.driverstandingsid, 
  standings_1.wins, 
  standings_1.wins, 
  standings_1.raceid, 
  standings_1.driverid, 
  standings_1.wins, 
  standings_1.raceid, 
  standings_1.position
from 
  standings as standings_1
where standings_1.points is not NULL
group by standings_1.driverid, standings_1.wins, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.driverid, standings_1.driverid, standings_1.driverstandingsid, standings_1.driverid, standings_1.wins, standings_1.position, standings_1.points, standings_1.raceid, standings_1.points, standings_1.raceid, standings_1.raceid, standings_1.driverstandingsid, standings_1.wins, standings_1.wins, standings_1.raceid, standings_1.driverid, standings_1.wins, standings_1.raceid, standings_1.position
limit 38;
select  
  races_1.raceid, 
  races_1.round, 
  races_1.name, 
  races_1.circuitid
from 
  races as races_1
where races_1.round is not NULL
limit 19;
select  
  sum(
    cast(races_1.round as int8))
from 
  races as races_1
where races_1.round is not NULL
limit 26;
select  
  circuits_1.name, 
  drivers_1.driverid, 
  sum(
    cast(circuits_1.alt as float8)), 
  constructors_1.name, 
  circuits_1.name, 
  circuits_1.alt, 
  drivers_1.dob, 
  drivers_1.code, 
  min(
    cast(circuits_1.lng as float8))
from 
  drivers as drivers_1
      inner join constructors as constructors_1
      on (drivers_1.driverid = constructors_1.constructorid )
    inner join circuits as circuits_1
    on (constructors_1.constructorid = circuits_1.circuitid )
where drivers_1.surname >= constructors_1.constructorref
group by circuits_1.name, drivers_1.driverid, constructors_1.name, circuits_1.name, circuits_1.alt, drivers_1.dob, drivers_1.code
limit 34;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid <= constructor_results_1.constructorresultsid
limit 9;
select  
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.name >= constructors_1.nationality
limit 19;
select  
  qualifying_1.raceid
from 
  qualifying as qualifying_1
    inner join results as results_1
    on (qualifying_1.qualifyid = results_1.resultid )
where qualifying_1.number <= results_1.raceid
limit 34;
select  
  results_1.laps, 
  results_1.position, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  results_1.positionorder
from 
  results as results_1
    inner join constructor_standings as constructor_standings_1
    on (results_1.position = constructor_standings_1.points )
where constructor_standings_1.date < results_1.date
limit 4;
select  
  drivers_1.forename, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  drivers_1.surname, 
  min(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  drivers_1.dob, 
  drivers_1.nationality, 
  min(
    cast(drivers_1.surname as text)), 
  drivers_1.nationality, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  min(
    cast(constructor_results_1.date as "timestamp")), 
  min(
    cast(constructor_results_1.points as float8)), 
  min(
    cast(drivers_1.nationality as text)), 
  drivers_1.driverid
from 
  drivers as drivers_1
    inner join constructor_results as constructor_results_1
    on (drivers_1.driverid = constructor_results_1.constructorresultsid )
where constructor_results_1.constructorid is not NULL
group by drivers_1.forename, constructor_results_1.raceid, constructor_results_1.raceid, drivers_1.surname, constructor_results_1.date, constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_results_1.constructorid, drivers_1.dob, drivers_1.nationality, drivers_1.nationality, constructor_results_1.constructorid, constructor_results_1.constructorresultsid, drivers_1.driverid
limit 35;
select  
  circuits_1.location, 
  circuits_1.lng, 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.alt is not NULL
limit 2;
select  
  constructors_1.nationality, 
  standings_1.position, 
  constructors_1.nationality, 
  min(
    cast(constructors_1.constructorid as int8)), 
  circuits_1.circuitref
from 
  standings as standings_1
        inner join constructor_results as constructor_results_1
        on (standings_1.position = constructor_results_1.constructorresultsid )
      inner join standings as standings_2
      on (constructor_results_1.points = standings_2.points )
    inner join constructors as constructors_1
        inner join circuits as circuits_1
        on (constructors_1.constructorref = circuits_1.circuitref )
      inner join constructor_standings as constructor_standings_1
      on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
    on (standings_2.wins = circuits_1.circuitid )
where circuits_1.country >= circuits_1.circuitref
group by constructors_1.nationality, standings_1.position, constructors_1.nationality, circuits_1.circuitref
limit 8;
select  
  circuits_1.country, 
  circuits_1.circuitid, 
  circuits_1.alt, 
  circuits_1.alt, 
  max(
    cast(circuits_1.circuitid as int8))
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
group by circuits_1.country, circuits_1.circuitid, circuits_1.alt, circuits_1.alt
limit 42;
select  
  constructor_standings_1.position, 
  circuits_1.circuitref, 
  constructor_standings_2.raceid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.points, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  circuits_1.circuitref, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.raceid, 
  circuits_1.name
from 
  constructor_standings as constructor_standings_1
      inner join constructor_standings as constructor_standings_2
      on (constructor_standings_1.raceid = constructor_standings_2.constructorstandingsid )
    inner join circuits as circuits_1
    on (constructor_standings_1.position = circuits_1.circuitid )
where circuits_1.country is not NULL
limit 13;
select  
  constructor_standings_1.wins, 
  min(
    cast(constructor_standings_1.points as float8)), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
group by constructor_standings_1.wins, constructor_standings_1.constructorstandingsid, constructor_standings_1.date
limit 2;
select  
  qualifying_1.date, 
  count(*)
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
group by qualifying_1.date
limit 17;
select  
  qualifying_1.date, 
  min(
    cast(qualifying_1.date as "timestamp")), 
  count(
    cast(qualifying_1.raceid as int8)), 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.date, qualifying_1.driverid
limit 5;
select  
  standings_1.raceid, 
  max(
    cast(races_1.name as text))
from 
  standings as standings_1
    inner join qualifying as qualifying_1
      inner join races as races_1
      on (qualifying_1.raceid = races_1.raceid )
    on (standings_1.position = races_1.raceid )
where standings_1.points > standings_1.points
group by standings_1.raceid
limit 17;
select  
  results_1.number, 
  results_1.driverid, 
  results_1.rank, 
  count(
    cast(results_1.resultid as int8)), 
  results_1.points, 
  results_1.laps, 
  results_1.points, 
  results_1.points, 
  results_1.milliseconds, 
  results_1.fastestlap, 
  results_1.points, 
  max(
    cast(results_1.position as float8)), 
  results_1.position, 
  avg(
    cast(results_1.rank as float8))
from 
  results as results_1
where results_1.positionorder <= results_1.raceid
group by results_1.number, results_1.driverid, results_1.rank, results_1.points, results_1.laps, results_1.points, results_1.points, results_1.milliseconds, results_1.fastestlap, results_1.points, results_1.position
limit 36;
select  
  constructor_results_1.raceid, 
  max(
    cast(constructor_results_1.date as "timestamp")), 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.raceid, constructor_results_1.raceid, constructor_results_1.raceid, constructor_results_1.constructorresultsid
limit 24;
select  
  races_1.year, 
  qualifying_1.date, 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
    inner join races as races_1
    on (qualifying_1.position = races_1.raceid )
where qualifying_1.qualifyid is not NULL
limit 31;
select  
  qualifying_2.qualifyid, 
  standings_1.wins, 
  sum(
    cast(qualifying_2.number as int8)), 
  qualifying_2.raceid, 
  constructor_results_1.raceid, 
  qualifying_1.position, 
  standings_1.wins, 
  drivers_1.driverid, 
  qualifying_1.constructorid, 
  constructor_results_1.date, 
  min(
    cast(constructors_1.constructorref as text))
from 
  results as results_1
        inner join constructors as constructors_1
        on (results_1.grid = constructors_1.constructorid )
      inner join drivers as drivers_1
          inner join qualifying as qualifying_1
          on (drivers_1.dob = qualifying_1.date )
        inner join constructor_results as constructor_results_1
        on (qualifying_1.number = constructor_results_1.constructorresultsid )
      on (constructors_1.constructorref = drivers_1.driverref )
    inner join standings as standings_1
      inner join qualifying as qualifying_2
      on (standings_1.driverstandingsid = qualifying_2.qualifyid )
    on (constructor_results_1.raceid = standings_1.driverstandingsid )
where qualifying_1.date < qualifying_2.date
group by qualifying_2.qualifyid, standings_1.wins, qualifying_2.raceid, constructor_results_1.raceid, qualifying_1.position, standings_1.wins, drivers_1.driverid, qualifying_1.constructorid, constructor_results_1.date
limit 17;
select  
  qualifying_1.driverid, 
  qualifying_1.number, 
  qualifying_1.constructorid, 
  standings_1.position
from 
  standings as standings_1
    inner join qualifying as qualifying_1
        inner join constructor_results as constructor_results_1
        on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
      inner join drivers as drivers_1
      on (qualifying_1.position = drivers_1.driverid )
    on (standings_1.wins = constructor_results_1.constructorresultsid )
where qualifying_1.date >= standings_1.date
limit 12;
select  
  drivers_2.driverid, 
  drivers_1.code
from 
  drivers as drivers_1
    inner join drivers as drivers_2
    on (drivers_1.forename = drivers_2.driverref )
where drivers_2.code is not NULL
limit 23;
select  
  standings_1.raceid, 
  races_1.year, 
  constructor_results_1.constructorresultsid
from 
  standings as standings_1
    inner join standings as standings_2
        inner join results as results_1
            inner join races as races_1
            on (results_1.statusid = races_1.raceid )
          inner join standings as standings_3
          on (results_1.grid = standings_3.driverstandingsid )
        on (standings_2.driverid = standings_3.driverstandingsid )
      inner join results as results_2
        inner join constructor_results as constructor_results_1
        on (results_2.points = constructor_results_1.points )
      on (results_1.statusid = results_2.resultid )
    on (standings_1.date = standings_2.date )
where constructor_results_1.points is not NULL
limit 3;
select  
  drivers_1.code, 
  drivers_1.nationality, 
  drivers_1.nationality, 
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.dob < drivers_1.dob
limit 8;
select  
  constructor_results_1.date, 
  results_1.positionorder, 
  results_1.constructorid, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
    inner join results as results_1
    on (constructor_results_1.points = results_1.number )
where results_1.number is not NULL
limit 17;
select  
  standings_1.date, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorstandingsid, 
  min(
    cast(standings_1.date as "timestamp")), 
  avg(
    cast(constructor_standings_1.points as float8)), 
  standings_1.date, 
  standings_1.date, 
  constructor_standings_1.date, 
  standings_1.date, 
  standings_1.points, 
  constructor_standings_1.raceid, 
  constructor_standings_1.date, 
  constructor_standings_1.position, 
  standings_1.date, 
  standings_1.wins, 
  standings_1.wins, 
  standings_1.position, 
  standings_1.wins, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins, 
  standings_1.wins, 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
    inner join standings as standings_1
    on (constructor_standings_1.constructorid = standings_1.driverstandingsid )
where standings_1.wins is not NULL
group by standings_1.date, constructor_standings_1.date, constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorstandingsid, standings_1.date, standings_1.date, constructor_standings_1.date, standings_1.date, standings_1.points, constructor_standings_1.raceid, constructor_standings_1.date, constructor_standings_1.position, standings_1.date, standings_1.wins, standings_1.wins, standings_1.position, standings_1.wins, constructor_standings_1.constructorid, constructor_standings_1.wins, standings_1.wins, constructor_standings_1.raceid
limit 26;
select  
  races_1.date, 
  races_1.round, 
  races_1.time, 
  races_1.raceid, 
  races_1.raceid
from 
  races as races_1
where races_1.raceid is not NULL
limit 2;
select  
  constructors_1.name, 
  min(
    cast(constructor_results_1.points as float8)), 
  constructors_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructors_1.constructorref
from 
  constructor_results as constructor_results_1
    inner join constructors as constructors_1
    on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
where constructors_1.constructorid > constructor_results_1.raceid
group by constructors_1.name, constructors_1.constructorid, constructor_results_1.constructorresultsid, constructors_1.constructorref
limit 6;
select  
  results_1.date
from 
  results as results_1
where results_1.number is not NULL
limit 13;
select  
  standings_1.points, 
  standings_1.driverstandingsid, 
  standings_1.date, 
  standings_1.driverstandingsid, 
  standings_1.date, 
  standings_1.position, 
  max(
    cast(standings_1.date as "timestamp")), 
  standings_1.date
from 
  standings as standings_1
where standings_1.driverid is not NULL
group by standings_1.points, standings_1.driverstandingsid, standings_1.date, standings_1.driverstandingsid, standings_1.date, standings_1.position, standings_1.date
limit 20;
select  
  standings_1.driverstandingsid, 
  min(
    cast(standings_1.raceid as int8)), 
  standings_1.raceid, 
  max(
    cast(standings_1.points as float8))
from 
  standings as standings_1
where standings_1.date = standings_1.date
group by standings_1.driverstandingsid, standings_1.raceid
limit 14;
select  
  max(
    cast(results_1.date as "timestamp")), 
  results_1.constructorid, 
  results_1.points, 
  results_1.fastestlap, 
  results_1.fastestlap
from 
  results as results_1
where results_1.laps is not NULL
group by results_1.constructorid, results_1.points, results_1.fastestlap, results_1.fastestlap
limit 27;
select  
  circuits_1.lat, 
  circuits_1.alt, 
  constructor_results_1.constructorresultsid
from 
  circuits as circuits_1
    inner join constructor_results as constructor_results_1
    on (circuits_1.lat = constructor_results_1.points )
where constructor_results_1.date is not NULL
limit 32;
select  
  constructor_standings_1.position, 
  qualifying_1.raceid, 
  constructor_results_2.points
from 
  constructor_standings as constructor_standings_1
        inner join constructor_results as constructor_results_1
        on (constructor_standings_1.raceid = constructor_results_1.constructorresultsid )
      inner join qualifying as qualifying_1
        inner join constructor_results as constructor_results_2
        on (qualifying_1.date = constructor_results_2.date )
      on (constructor_results_1.constructorid = qualifying_1.qualifyid )
    inner join constructor_standings as constructor_standings_2
    on (constructor_results_1.raceid = constructor_standings_2.constructorstandingsid )
where qualifying_1.position is not NULL
limit 28;
select  
  constructor_results_2.constructorid
from 
  constructor_results as constructor_results_1
    inner join constructor_results as constructor_results_2
    on (constructor_results_1.raceid = constructor_results_2.constructorresultsid )
where constructor_results_1.points < constructor_results_2.points
limit 40;
select  
  drivers_1.dob, 
  drivers_1.forename, 
  drivers_1.surname, 
  drivers_1.driverid, 
  drivers_1.driverref, 
  drivers_1.surname, 
  min(
    cast(drivers_1.driverid as int8)), 
  min(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.nationality, 
  drivers_1.dob, 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.driverid = drivers_1.driverid
group by drivers_1.dob, drivers_1.forename, drivers_1.surname, drivers_1.driverid, drivers_1.driverref, drivers_1.surname, drivers_1.nationality, drivers_1.dob, drivers_1.surname
limit 5;
select  
  circuits_1.lng
from 
  circuits as circuits_1
    inner join constructors as constructors_1
    on (circuits_1.name = constructors_1.constructorref )
where constructors_1.constructorid is not NULL
limit 9;
select  
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
    inner join drivers as drivers_1
    on (qualifying_1.qualifyid = drivers_1.driverid )
where qualifying_1.qualifyid < qualifying_1.number
limit 15;
select  
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  max(
    cast(constructors_1.constructorref as text)), 
  avg(
    cast(constructors_1.constructorid as int8)), 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.nationality, 
  avg(
    cast(constructors_1.constructorid as int8)), 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.constructorref, constructors_1.nationality, constructors_1.constructorref, constructors_1.name, constructors_1.name, constructors_1.constructorref, constructors_1.constructorref, constructors_1.name, constructors_1.name, constructors_1.nationality, constructors_1.nationality, constructors_1.name, constructors_1.constructorref, constructors_1.constructorref
limit 19;
select  
  count(
    cast(results_1.grid as int8)), 
  results_1.rank, 
  standings_1.position, 
  results_1.laps, 
  standings_1.wins
from 
  standings as standings_1
    inner join results as results_1
    on (standings_1.points = results_1.number )
where results_1.date is not NULL
group by results_1.rank, standings_1.position, results_1.laps, standings_1.wins
limit 7;
select  
  qualifying_1.number, 
  drivers_1.dob, 
  qualifying_1.raceid
from 
  drivers as drivers_1
    inner join qualifying as qualifying_1
    on (drivers_1.dob = qualifying_1.date )
where qualifying_1.qualifyid is not NULL
limit 19;
select  
  drivers_1.nationality, 
  min(
    cast(drivers_1.dob as "timestamp")), 
  qualifying_1.position
from 
  drivers as drivers_1
    inner join qualifying as qualifying_1
    on (drivers_1.dob = qualifying_1.date )
where drivers_1.nationality is not NULL
group by drivers_1.nationality, qualifying_1.position
limit 8;
select  
  drivers_1.surname, 
  drivers_1.code
from 
  drivers as drivers_1
    inner join constructor_results as constructor_results_1
    on (drivers_1.dob = constructor_results_1.date )
where drivers_1.driverref is not NULL
limit 22;
select  
  results_1.resultid, 
  results_1.position, 
  results_1.date, 
  results_1.resultid
from 
  results as results_1
where results_1.resultid is not NULL
limit 23;
select  
  drivers_1.driverref, 
  min(
    cast(drivers_1.driverref as text)), 
  drivers_1.driverref, 
  drivers_1.driverref, 
  drivers_1.surname, 
  drivers_1.nationality, 
  drivers_1.dob, 
  min(
    cast(drivers_1.forename as text)), 
  drivers_1.driverref, 
  drivers_1.dob, 
  drivers_1.driverref, 
  drivers_1.nationality, 
  min(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.driverref, 
  drivers_1.driverref, 
  drivers_1.nationality, 
  drivers_1.driverid, 
  drivers_1.code, 
  drivers_1.code, 
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
group by drivers_1.driverref, drivers_1.driverref, drivers_1.driverref, drivers_1.surname, drivers_1.nationality, drivers_1.dob, drivers_1.driverref, drivers_1.dob, drivers_1.driverref, drivers_1.nationality, drivers_1.driverref, drivers_1.driverref, drivers_1.nationality, drivers_1.driverid, drivers_1.code, drivers_1.code, drivers_1.forename
limit 34;
select  
  constructor_standings_1.points, 
  constructor_standings_1.wins
from 
  constructors as constructors_1
      inner join constructor_standings as constructor_standings_1
        inner join standings as standings_1
        on (constructor_standings_1.constructorid = standings_1.driverstandingsid )
      on (constructors_1.constructorid = standings_1.driverstandingsid )
    inner join constructors as constructors_2
    on (standings_1.driverstandingsid = constructors_2.constructorid )
where constructor_standings_1.date >= standings_1.date
limit 39;
select  
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
      inner join drivers as drivers_1
      on (constructor_standings_1.position = drivers_1.driverid )
    inner join constructor_standings as constructor_standings_2
    on (drivers_1.dob = constructor_standings_2.date )
where constructor_standings_2.constructorid is not NULL
limit 11;
select  
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 21;
select  
  min(
    cast(standings_1.date as "timestamp")), 
  standings_1.raceid, 
  standings_1.raceid, 
  standings_1.position, 
  standings_1.position, 
  standings_1.driverstandingsid, 
  standings_1.driverid, 
  standings_1.wins, 
  standings_1.position, 
  standings_1.points, 
  standings_1.raceid, 
  standings_1.position, 
  sum(
    cast(standings_1.points as float8))
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
group by standings_1.raceid, standings_1.raceid, standings_1.position, standings_1.position, standings_1.driverstandingsid, standings_1.driverid, standings_1.wins, standings_1.position, standings_1.points, standings_1.raceid, standings_1.position
limit 12;
select  
  max(
    cast(constructor_results_2.points as float8))
from 
  drivers as drivers_1
    inner join constructor_results as constructor_results_1
      inner join constructor_results as constructor_results_2
      on (constructor_results_1.raceid = constructor_results_2.constructorresultsid )
    on (drivers_1.driverid = constructor_results_2.constructorresultsid )
where drivers_1.dob is not NULL
limit 12;
select  
  standings_3.points, 
  standings_1.date, 
  standings_3.raceid, 
  sum(
    cast(standings_1.driverstandingsid as int8))
from 
  standings as standings_1
      inner join standings as standings_2
      on (standings_1.raceid = standings_2.driverstandingsid )
    inner join standings as standings_3
    on (standings_1.date = standings_3.date )
where standings_1.points is not NULL
group by standings_3.points, standings_1.date, standings_3.raceid
limit 37;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  min(
    cast(constructor_results_1.date as "timestamp")), 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.date, constructor_results_1.points, constructor_results_1.points, constructor_results_1.points, constructor_results_1.raceid, constructor_results_1.raceid, constructor_results_1.constructorresultsid
limit 14;
select  
  races_1.round, 
  constructors_1.name, 
  avg(
    cast(standings_1.points as float8)), 
  standings_1.driverid, 
  max(
    cast(races_1.date as "timestamp")), 
  races_1.round, 
  standings_1.driverid, 
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorid, 
  max(
    cast(standings_1.points as float8)), 
  constructor_results_1.raceid, 
  standings_1.driverid, 
  constructor_standings_1.position, 
  constructors_1.constructorref, 
  constructors_1.name
from 
  constructor_standings as constructor_standings_1
        inner join constructors as constructors_1
        on (constructor_standings_1.raceid = constructors_1.constructorid )
      inner join standings as standings_1
      on (constructors_1.constructorid = standings_1.driverstandingsid )
    inner join constructor_results as constructor_results_1
      inner join races as races_1
      on (constructor_results_1.constructorid = races_1.raceid )
    on (constructors_1.name = races_1.name )
where standings_1.points is not NULL
group by races_1.round, constructors_1.name, standings_1.driverid, races_1.round, standings_1.driverid, constructor_standings_1.wins, constructor_standings_1.position, constructor_standings_1.constructorid, constructor_results_1.raceid, standings_1.driverid, constructor_standings_1.position, constructors_1.constructorref, constructors_1.name
limit 28;
select  
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  max(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.points, constructor_results_1.raceid, constructor_results_1.raceid, constructor_results_1.raceid, constructor_results_1.points, constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid
limit 42;
select  
  races_1.year, 
  races_1.circuitid, 
  avg(
    cast(races_1.circuitid as int8)), 
  races_1.date, 
  races_1.name, 
  min(
    cast(races_1.round as int8)), 
  min(
    cast(races_1.date as "timestamp")), 
  races_1.year, 
  races_1.round, 
  max(
    cast(races_1.circuitid as int8)), 
  races_1.circuitid, 
  races_1.name
from 
  races as races_1
where races_1.date is not NULL
group by races_1.year, races_1.circuitid, races_1.date, races_1.name, races_1.year, races_1.round, races_1.circuitid, races_1.name
limit 13;
select  
  results_1.grid
from 
  results as results_1
where results_1.raceid is not NULL
limit 25;
select  
  constructors_1.constructorref, 
  constructors_1.constructorid
from 
  circuits as circuits_1
    inner join constructors as constructors_1
    on (circuits_1.circuitid = constructors_1.constructorid )
where constructors_1.name = constructors_1.constructorref
limit 21;
select  
  races_1.time, 
  races_1.circuitid, 
  min(
    cast(races_1.name as text)), 
  constructor_results_1.raceid, 
  max(
    cast(races_1.name as text)), 
  constructor_results_1.raceid, 
  max(
    cast(races_1.name as text))
from 
  races as races_1
    inner join constructor_results as constructor_results_1
    on (races_1.year = constructor_results_1.constructorresultsid )
where races_1.name is not NULL
group by races_1.time, races_1.circuitid, constructor_results_1.raceid, constructor_results_1.raceid
limit 9;
select  
  drivers_1.code, 
  drivers_1.dob, 
  drivers_1.code, 
  drivers_1.nationality, 
  drivers_1.dob, 
  drivers_1.nationality, 
  drivers_1.forename, 
  drivers_1.driverid, 
  drivers_1.code, 
  drivers_1.driverid, 
  drivers_1.driverref, 
  drivers_1.nationality, 
  drivers_1.nationality, 
  drivers_1.driverref, 
  max(
    cast(drivers_1.driverref as text)), 
  drivers_1.forename, 
  drivers_1.dob, 
  drivers_1.driverref, 
  drivers_1.nationality, 
  drivers_1.code, 
  drivers_1.dob, 
  drivers_1.nationality, 
  drivers_1.code, 
  drivers_1.code, 
  drivers_1.forename, 
  min(
    cast(drivers_1.dob as "timestamp"))
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.code, drivers_1.nationality, drivers_1.dob, drivers_1.nationality, drivers_1.forename, drivers_1.driverid, drivers_1.code, drivers_1.driverid, drivers_1.driverref, drivers_1.nationality, drivers_1.nationality, drivers_1.driverref, drivers_1.forename, drivers_1.dob, drivers_1.driverref, drivers_1.nationality, drivers_1.code, drivers_1.dob, drivers_1.nationality, drivers_1.code, drivers_1.code, drivers_1.forename
limit 29;
select  
  circuits_1.location, 
  circuits_1.lng, 
  circuits_1.lng, 
  circuits_1.country, 
  circuits_1.lng, 
  circuits_1.location, 
  circuits_1.lat, 
  circuits_1.country, 
  circuits_1.location, 
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.alt is not NULL
limit 30;
select  
  max(
    cast(constructor_results_1.constructorid as int8)), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.constructorid
limit 20;
select  
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.points >= constructor_results_1.points
limit 2;
select  
  drivers_1.code, 
  avg(
    cast(drivers_1.driverid as int8)), 
  count(*), 
  drivers_1.driverref, 
  count(
    cast(drivers_1.driverid as int8)), 
  count(*), 
  drivers_1.dob, 
  drivers_1.code, 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
group by drivers_1.code, drivers_1.driverref, drivers_1.dob, drivers_1.code, drivers_1.nationality
limit 13;
select  
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  constructor_standings_1.date, 
  constructor_standings_1.points, 
  constructor_standings_1.wins, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid, 
  min(
    cast(constructor_standings_1.raceid as int8)), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date, 
  constructor_standings_1.position, 
  constructor_standings_1.points, 
  min(
    cast(constructor_standings_1.points as float8)), 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date <= constructor_standings_1.date
group by constructor_standings_1.points, constructor_standings_1.constructorstandingsid, constructor_standings_1.position, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.wins, constructor_standings_1.date, constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.points, constructor_standings_1.wins, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.date, constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.wins
limit 27;
select  
  results_1.raceid, 
  circuits_1.country, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
    inner join circuits as circuits_1
      inner join results as results_1
      on (circuits_1.alt = results_1.number )
    on (constructor_results_1.constructorid = results_1.resultid )
where constructor_results_1.points is not NULL
limit 23;
select  
  constructors_2.nationality, 
  constructors_1.nationality, 
  sum(
    cast(constructors_1.constructorid as int8)), 
  constructors_2.nationality, 
  min(
    cast(constructors_2.constructorid as int8))
from 
  constructors as constructors_1
    inner join constructors as constructors_2
    on (constructors_1.constructorref = constructors_2.constructorref )
where constructors_1.name is not NULL
group by constructors_2.nationality, constructors_1.nationality, constructors_2.nationality
limit 40;
select  
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 36;
select  
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
limit 42;
select  
  min(
    cast(drivers_1.code as text))
from 
  drivers as drivers_1
where drivers_1.code is not NULL
limit 7;
select  
  races_1.round, 
  qualifying_1.driverid, 
  races_1.name, 
  races_1.name, 
  qualifying_1.qualifyid, 
  min(
    cast(qualifying_1.date as "timestamp")), 
  races_1.time, 
  races_1.circuitid, 
  qualifying_1.date, 
  min(
    cast(races_1.date as "timestamp"))
from 
  races as races_1
    inner join qualifying as qualifying_1
    on (races_1.year = qualifying_1.qualifyid )
where races_1.raceid is not NULL
group by races_1.round, qualifying_1.driverid, races_1.name, races_1.name, qualifying_1.qualifyid, races_1.time, races_1.circuitid, qualifying_1.date
limit 2;
select  
  races_1.name, 
  races_1.date, 
  races_1.time, 
  races_1.year, 
  races_1.name, 
  max(
    cast(races_1.time as text)), 
  races_1.date, 
  min(
    cast(races_1.time as text)), 
  races_1.date, 
  races_1.round
from 
  races as races_1
where races_1.time is not NULL
group by races_1.name, races_1.date, races_1.time, races_1.year, races_1.name, races_1.date, races_1.date, races_1.round
limit 23;
select  
  constructors_1.name, 
  max(
    cast(constructors_1.constructorref as text)), 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  min(
    cast(constructors_1.nationality as text)), 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.name, constructors_1.constructorid, constructors_1.nationality, constructors_1.constructorref
limit 12;
select  
  constructor_results_1.constructorid, 
  max(
    cast(constructor_results_1.date as "timestamp"))
from 
  constructors as constructors_1
    inner join constructor_results as constructor_results_1
    on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.constructorid
limit 13;
select  
  standings_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  standings_1.position, 
  min(
    cast(constructor_results_1.points as float8)), 
  sum(
    cast(qualifying_1.constructorid as int8)), 
  standings_1.position, 
  qualifying_1.number, 
  standings_1.points, 
  qualifying_1.driverid, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  standings_1.wins, 
  avg(
    cast(standings_1.wins as int8)), 
  standings_1.raceid, 
  constructor_results_1.raceid, 
  count(
    cast(qualifying_1.number as int8)), 
  standings_1.raceid
from 
  qualifying as qualifying_1
      inner join standings as standings_1
      on (qualifying_1.date = standings_1.date )
    inner join constructor_results as constructor_results_1
    on (standings_1.wins = constructor_results_1.constructorresultsid )
where standings_1.points is not NULL
group by standings_1.date, constructor_results_1.raceid, constructor_results_1.constructorid, standings_1.position, standings_1.position, qualifying_1.number, standings_1.points, qualifying_1.driverid, constructor_results_1.date, constructor_results_1.date, standings_1.wins, standings_1.raceid, constructor_results_1.raceid, standings_1.raceid
limit 9;
select  
  circuits_1.circuitid, 
  circuits_1.country, 
  circuits_1.country, 
  avg(
    cast(circuits_1.lat as float8)), 
  circuits_1.lng, 
  avg(
    cast(circuits_1.lat as float8))
from 
  circuits as circuits_1
where circuits_1.country >= circuits_1.name
group by circuits_1.circuitid, circuits_1.country, circuits_1.country, circuits_1.lng
limit 25;
select  
  constructor_standings_1.constructorstandingsid, 
  drivers_1.surname, 
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  drivers_1.code, 
  max(
    cast(drivers_1.driverid as int8)), 
  drivers_1.code, 
  drivers_1.driverref
from 
  constructor_standings as constructor_standings_1
    inner join drivers as drivers_1
    on (constructor_standings_1.constructorid = drivers_1.driverid )
where drivers_1.dob = constructor_standings_1.date
group by constructor_standings_1.constructorstandingsid, drivers_1.surname, constructor_standings_1.points, constructor_standings_1.raceid, drivers_1.code, drivers_1.code, drivers_1.driverref
limit 34;
select  
  drivers_1.driverid
from 
  drivers as drivers_1
    inner join constructors as constructors_1
    on (drivers_1.code = constructors_1.constructorref )
where drivers_1.surname is not NULL
limit 3;
select  
  circuits_1.alt, 
  avg(
    cast(circuits_1.circuitid as int8)), 
  circuits_1.circuitid, 
  circuits_1.country, 
  max(
    cast(circuits_1.circuitref as text)), 
  circuits_1.lat, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.circuitid = circuits_1.circuitid
group by circuits_1.alt, circuits_1.circuitid, circuits_1.country, circuits_1.lat, circuits_1.name
limit 8;
select  
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  max(
    cast(constructors_1.nationality as text)), 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.constructorref, constructors_1.nationality, constructors_1.constructorid, constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.name, constructors_1.constructorref, constructors_1.nationality, constructors_1.nationality, constructors_1.nationality, constructors_1.constructorid, constructors_1.constructorref, constructors_1.constructorid, constructors_1.constructorref
limit 40;
select  
  circuits_1.circuitref, 
  circuits_1.country, 
  max(
    cast(circuits_1.circuitid as int8)), 
  circuits_1.alt, 
  circuits_1.alt, 
  circuits_1.circuitref, 
  circuits_1.location, 
  circuits_1.circuitid, 
  circuits_1.alt, 
  max(
    cast(circuits_1.lng as float8)), 
  circuits_1.alt, 
  max(
    cast(circuits_1.name as text)), 
  circuits_1.location, 
  count(
    cast(circuits_1.alt as float8)), 
  circuits_1.name, 
  circuits_1.lng, 
  min(
    cast(circuits_1.country as text)), 
  circuits_1.location, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
group by circuits_1.circuitref, circuits_1.country, circuits_1.alt, circuits_1.alt, circuits_1.circuitref, circuits_1.location, circuits_1.circuitid, circuits_1.alt, circuits_1.alt, circuits_1.location, circuits_1.name, circuits_1.lng, circuits_1.location, circuits_1.name
limit 18;
select  
  standings_1.points, 
  standings_1.wins, 
  standings_2.driverid, 
  standings_2.driverid, 
  standings_2.date, 
  standings_2.points, 
  standings_2.wins, 
  standings_2.raceid, 
  standings_2.position, 
  count(*), 
  standings_1.position, 
  max(
    cast(standings_2.position as int8)), 
  standings_2.raceid, 
  standings_1.driverstandingsid, 
  standings_2.date, 
  standings_2.driverid, 
  standings_1.driverid, 
  max(
    cast(standings_1.date as "timestamp")), 
  standings_1.date, 
  standings_1.position, 
  standings_2.driverstandingsid
from 
  standings as standings_1
    inner join standings as standings_2
    on (standings_1.raceid = standings_2.driverstandingsid )
where standings_1.raceid = standings_2.position
group by standings_1.points, standings_1.wins, standings_2.driverid, standings_2.driverid, standings_2.date, standings_2.points, standings_2.wins, standings_2.raceid, standings_2.position, standings_1.position, standings_2.raceid, standings_1.driverstandingsid, standings_2.date, standings_2.driverid, standings_1.driverid, standings_1.date, standings_1.position, standings_2.driverstandingsid
limit 3;
select  
  circuits_1.country, 
  circuits_1.lat, 
  circuits_1.lng, 
  circuits_1.location, 
  circuits_1.lat, 
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
limit 9;
select  
  sum(
    cast(constructor_results_1.raceid as int8)), 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  count(*), 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.constructorresultsid, constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.constructorid, constructor_results_1.raceid, constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_results_1.date, constructor_results_1.points
limit 36;
select  
  standings_1.position, 
  standings_1.wins, 
  standings_1.raceid, 
  standings_1.points, 
  avg(
    cast(standings_1.points as float8)), 
  standings_1.date, 
  standings_1.driverid, 
  standings_1.raceid, 
  min(
    cast(standings_1.driverid as int8)), 
  standings_1.date, 
  standings_1.points, 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.points <= standings_1.points
group by standings_1.position, standings_1.wins, standings_1.raceid, standings_1.points, standings_1.date, standings_1.driverid, standings_1.raceid, standings_1.date, standings_1.points, standings_1.raceid
limit 26;
select  
  constructors_1.constructorref, 
  max(
    cast(constructors_1.constructorid as int8)), 
  constructors_1.constructorref, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.constructorref, constructors_1.constructorref, constructors_1.nationality
limit 36;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  max(
    cast(constructor_results_1.date as "timestamp"))
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid = constructor_results_1.raceid
group by constructor_results_1.constructorid, constructor_results_1.date
limit 9;
select  
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.country = circuits_1.circuitref
limit 14;
select  
  results_1.positionorder, 
  drivers_1.nationality, 
  races_1.year, 
  drivers_1.surname, 
  constructors_1.constructorref
from 
  races as races_1
    inner join constructors as constructors_1
          inner join results as results_1
          on (constructors_1.constructorid = results_1.resultid )
        inner join drivers as drivers_1
        on (constructors_1.nationality = drivers_1.driverref )
      inner join circuits as circuits_1
      on (constructors_1.name = circuits_1.circuitref )
    on (races_1.date = drivers_1.dob )
where drivers_1.dob is not NULL
limit 8;
select  
  results_1.resultid
from 
  results as results_1
where results_1.positionorder is not NULL
limit 39;
select  
  circuits_1.name, 
  circuits_1.lat, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.alt is not NULL
limit 1;
select  
  min(
    cast(results_1.date as "timestamp")), 
  results_1.statusid, 
  min(
    cast(results_1.date as "timestamp"))
from 
  results as results_1
where results_1.grid is not NULL
group by results_1.statusid
limit 12;
select  
  count(
    cast(results_1.laps as int8)), 
  results_1.laps, 
  results_1.statusid, 
  sum(
    cast(results_1.number as float8)), 
  results_1.date, 
  results_1.positionorder, 
  results_1.grid, 
  results_1.rank, 
  min(
    cast(results_1.constructorid as int8)), 
  results_1.rank, 
  results_1.statusid
from 
  results as results_1
where results_1.constructorid is not NULL
group by results_1.laps, results_1.statusid, results_1.date, results_1.positionorder, results_1.grid, results_1.rank, results_1.rank, results_1.statusid
limit 18;
select  
  min(
    cast(constructor_standings_1.date as "timestamp")), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorstandingsid, 
  max(
    cast(constructor_standings_1.date as "timestamp"))
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date > constructor_standings_1.date
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorstandingsid
limit 32;
select  
  drivers_1.dob, 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.code is not NULL
limit 17;
select  
  qualifying_1.driverid, 
  drivers_1.forename, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
    inner join drivers as drivers_1
    on (qualifying_1.number = drivers_1.driverid )
where qualifying_1.qualifyid is not NULL
limit 12;
select  
  constructor_results_1.constructorresultsid
from 
  races as races_1
    inner join constructor_results as constructor_results_1
    on (races_1.date = constructor_results_1.date )
where constructor_results_1.raceid is not NULL
limit 21;
select  
  races_2.date, 
  races_1.date
from 
  circuits as circuits_1
    inner join races as races_1
        inner join races as races_2
        on (races_1.round = races_2.raceid )
      inner join results as results_1
      on (races_2.year = results_1.resultid )
    on (circuits_1.alt = results_1.number )
where races_2.name is not NULL
limit 26;
select  
  max(
    cast(drivers_1.dob as "timestamp")), 
  max(
    cast(results_1.number as float8)), 
  results_1.points, 
  drivers_1.code
from 
  drivers as drivers_1
    inner join results as results_1
    on (drivers_1.driverid = results_1.resultid )
where results_1.date is not NULL
group by results_1.points, drivers_1.code
limit 19;
select  
  results_1.constructorid, 
  results_1.positionorder, 
  results_1.raceid, 
  results_1.grid, 
  results_1.points, 
  results_1.position, 
  avg(
    cast(results_1.raceid as int8)), 
  results_1.driverid, 
  results_1.position, 
  results_1.driverid, 
  results_1.position, 
  results_1.laps, 
  results_1.raceid
from 
  results as results_1
where results_1.constructorid is not NULL
group by results_1.constructorid, results_1.positionorder, results_1.raceid, results_1.grid, results_1.points, results_1.position, results_1.driverid, results_1.position, results_1.driverid, results_1.position, results_1.laps, results_1.raceid
limit 19;
select  
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
limit 30;
select  
  min(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.raceid, 
  max(
    cast(qualifying_1.date as "timestamp")), 
  max(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid <= qualifying_1.constructorid
group by qualifying_1.raceid, qualifying_1.constructorid
limit 40;
select  
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.date < qualifying_1.date
limit 10;
select  
  max(
    cast(standings_1.date as "timestamp")), 
  standings_1.date
from 
  standings as standings_1
    inner join races as races_1
    on (standings_1.position = races_1.raceid )
where standings_1.raceid is not NULL
group by standings_1.date
limit 39;
select  
  count(
    cast(qualifying_1.raceid as int8))
from 
  qualifying as qualifying_1
    inner join constructors as constructors_1
          inner join constructor_results as constructor_results_1
          on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
        inner join races as races_1
        on (constructors_1.constructorid = races_1.raceid )
      inner join results as results_1
      on (races_1.date = results_1.date )
    on (qualifying_1.position = races_1.raceid )
where results_1.points <= results_1.position
limit 39;
select  
  results_2.statusid, 
  results_1.driverid, 
  avg(
    cast(qualifying_1.driverid as int8)), 
  standings_1.position, 
  count(
    cast(results_2.grid as int8)), 
  results_2.driverid, 
  results_1.laps, 
  qualifying_1.raceid, 
  standings_1.position, 
  results_2.position, 
  standings_1.raceid, 
  count(*)
from 
  standings as standings_1
      inner join results as results_1
      on (standings_1.raceid = results_1.resultid )
    inner join results as results_2
      inner join qualifying as qualifying_1
      on (results_2.raceid = qualifying_1.qualifyid )
    on (results_1.positionorder = qualifying_1.qualifyid )
where results_2.constructorid < results_1.grid
group by results_2.statusid, results_1.driverid, standings_1.position, results_2.driverid, results_1.laps, qualifying_1.raceid, standings_1.position, results_2.position, standings_1.raceid
limit 13;
select  
  qualifying_1.driverid, 
  circuits_1.location, 
  min(
    cast(races_1.time as text)), 
  qualifying_1.number, 
  circuits_1.lat, 
  races_1.year, 
  circuits_1.lng, 
  races_1.round, 
  constructor_standings_1.date, 
  min(
    cast(races_1.raceid as int8))
from 
  qualifying as qualifying_1
      inner join constructor_standings as constructor_standings_1
      on (qualifying_1.raceid = constructor_standings_1.constructorstandingsid )
    inner join circuits as circuits_1
      inner join races as races_1
      on (circuits_1.name = races_1.name )
    on (constructor_standings_1.position = circuits_1.circuitid )
where circuits_1.country is not NULL
group by qualifying_1.driverid, circuits_1.location, qualifying_1.number, circuits_1.lat, races_1.year, circuits_1.lng, races_1.round, constructor_standings_1.date
limit 19;
select  
  constructors_1.nationality, 
  count(*), 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.nationality, constructors_1.nationality, constructors_1.name, constructors_1.constructorref, constructors_1.name
limit 15;
select  
  standings_1.raceid, 
  results_2.driverid, 
  results_1.points, 
  results_2.laps, 
  results_2.date, 
  results_2.driverid, 
  results_2.raceid, 
  results_2.raceid, 
  results_2.position
from 
  results as results_1
      inner join results as results_2
      on (results_1.constructorid = results_2.resultid )
    inner join standings as standings_1
    on (results_2.milliseconds = standings_1.points )
where results_2.date < results_1.date
limit 28;
select  
  races_1.date, 
  max(
    cast(races_1.date as "timestamp")), 
  races_1.circuitid, 
  races_1.date, 
  min(
    cast(races_1.date as "timestamp")), 
  races_1.year, 
  races_1.circuitid, 
  races_1.raceid, 
  races_1.round, 
  races_1.year, 
  races_1.raceid, 
  races_1.raceid, 
  races_1.year, 
  races_1.circuitid, 
  races_1.circuitid, 
  races_1.date, 
  races_1.time, 
  count(
    cast(races_1.year as int8)), 
  min(
    cast(races_1.name as text)), 
  races_1.circuitid, 
  races_1.time, 
  races_1.year, 
  races_1.raceid, 
  races_1.year, 
  races_1.round, 
  races_1.round, 
  races_1.circuitid, 
  races_1.round, 
  races_1.circuitid, 
  races_1.time, 
  races_1.year, 
  races_1.time, 
  races_1.name, 
  min(
    cast(races_1.time as text))
from 
  races as races_1
where races_1.round is not NULL
group by races_1.date, races_1.circuitid, races_1.date, races_1.year, races_1.circuitid, races_1.raceid, races_1.round, races_1.year, races_1.raceid, races_1.raceid, races_1.year, races_1.circuitid, races_1.circuitid, races_1.date, races_1.time, races_1.circuitid, races_1.time, races_1.year, races_1.raceid, races_1.year, races_1.round, races_1.round, races_1.circuitid, races_1.round, races_1.circuitid, races_1.time, races_1.year, races_1.time, races_1.name
limit 34;
select  
  drivers_1.dob, 
  avg(
    cast(drivers_1.driverid as int8)), 
  drivers_1.driverid, 
  constructor_results_1.raceid, 
  drivers_1.forename
from 
  drivers as drivers_1
    inner join constructor_results as constructor_results_1
      inner join drivers as drivers_2
      on (constructor_results_1.raceid = drivers_2.driverid )
    on (drivers_1.driverid = drivers_2.driverid )
where drivers_2.nationality is not NULL
group by drivers_1.dob, drivers_1.driverid, constructor_results_1.raceid, drivers_1.forename
limit 25;
select  
  standings_1.raceid, 
  min(
    cast(standings_1.date as "timestamp")), 
  standings_1.driverstandingsid, 
  standings_1.wins, 
  standings_1.position, 
  standings_1.driverstandingsid, 
  standings_1.driverstandingsid, 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
group by standings_1.raceid, standings_1.driverstandingsid, standings_1.wins, standings_1.position, standings_1.driverstandingsid, standings_1.driverstandingsid, standings_1.driverid
limit 10;
select  
  drivers_1.driverid, 
  constructors_1.name, 
  constructors_1.name, 
  min(
    cast(drivers_1.driverid as int8))
from 
  drivers as drivers_1
    inner join constructors as constructors_1
    on (drivers_1.driverid = constructors_1.constructorid )
where drivers_1.driverref is not NULL
group by drivers_1.driverid, constructors_1.name, constructors_1.name
limit 39;
select  
  races_1.year, 
  races_1.year, 
  races_1.circuitid, 
  max(
    cast(races_1.name as text))
from 
  races as races_1
where races_1.name is not NULL
group by races_1.year, races_1.year, races_1.circuitid
limit 3;
select  
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  max(
    cast(constructors_1.constructorid as int8)), 
  min(
    cast(constructors_1.constructorref as text)), 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.nationality, constructors_1.constructorid, constructors_1.constructorid, constructors_1.constructorid, constructors_1.constructorid, constructors_1.constructorid, constructors_1.name, constructors_1.constructorref, constructors_1.name, constructors_1.constructorref
limit 13;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.raceid, 
  constructor_standings_1.position, 
  max(
    cast(constructor_standings_1.points as float8)), 
  constructor_standings_1.points, 
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  constructor_standings_1.date, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
group by constructor_standings_1.wins, constructor_standings_1.raceid, constructor_standings_1.position, constructor_standings_1.points, constructor_standings_1.wins, constructor_standings_1.position, constructor_standings_1.date, constructor_standings_1.position
limit 41;
select  
  sum(
    cast(constructor_results_1.raceid as int8)), 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  max(
    cast(constructor_results_1.date as "timestamp")), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  max(
    cast(constructor_results_1.date as "timestamp")), 
  constructor_results_1.constructorresultsid, 
  count(*), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  max(
    cast(constructor_results_1.date as "timestamp")), 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.raceid, constructor_results_1.date, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.raceid
limit 10;
select  
  results_1.rank, 
  results_1.date, 
  max(
    cast(results_1.number as float8)), 
  results_1.number, 
  results_1.resultid
from 
  results as results_1
where results_1.resultid is not NULL
group by results_1.rank, results_1.date, results_1.number, results_1.resultid
limit 18;
select  
  min(
    cast(races_1.circuitid as int8)), 
  races_1.circuitid, 
  races_1.date, 
  races_1.name
from 
  races as races_1
where races_1.round is not NULL
group by races_1.circuitid, races_1.date, races_1.name
limit 17;
select  
  constructor_results_1.constructorresultsid, 
  constructor_standings_1.date, 
  constructor_results_1.raceid, 
  constructor_standings_1.constructorid, 
  max(
    cast(constructor_standings_1.date as "timestamp"))
from 
  constructor_results as constructor_results_1
    inner join constructor_standings as constructor_standings_1
    on (constructor_results_1.points = constructor_standings_1.points )
where constructor_standings_1.date = constructor_results_1.date
group by constructor_results_1.constructorresultsid, constructor_standings_1.date, constructor_results_1.raceid, constructor_standings_1.constructorid
limit 3;
select  
  constructors_1.constructorref
from 
  results as results_1
    inner join constructors as constructors_1
    on (results_1.statusid = constructors_1.constructorid )
where results_1.position = results_1.number
limit 26;
select  
  constructor_results_1.date, 
  min(
    cast(constructor_standings_1.raceid as int8)), 
  constructor_standings_1.position, 
  constructor_standings_2.position, 
  constructor_standings_2.position, 
  constructor_standings_2.date, 
  count(*), 
  constructor_results_1.constructorid, 
  max(
    cast(constructor_standings_1.date as "timestamp")), 
  avg(
    cast(constructor_standings_2.points as float8)), 
  constructor_standings_2.date
from 
  constructor_results as constructor_results_1
    inner join constructor_standings as constructor_standings_1
      inner join constructor_standings as constructor_standings_2
      on (constructor_standings_1.wins = constructor_standings_2.constructorstandingsid )
    on (constructor_results_1.constructorid = constructor_standings_2.constructorstandingsid )
where constructor_standings_1.constructorstandingsid > constructor_standings_2.constructorid
group by constructor_results_1.date, constructor_standings_1.position, constructor_standings_2.position, constructor_standings_2.position, constructor_standings_2.date, constructor_results_1.constructorid, constructor_standings_2.date
limit 21;
select  
  races_1.name, 
  qualifying_1.date
from 
  qualifying as qualifying_1
            inner join races as races_1
            on (qualifying_1.constructorid = races_1.raceid )
          inner join standings as standings_1
          on (races_1.raceid = standings_1.driverstandingsid )
        inner join standings as standings_2
          inner join circuits as circuits_1
          on (standings_2.driverstandingsid = circuits_1.circuitid )
        on (standings_1.driverid = standings_2.driverstandingsid )
      inner join constructor_standings as constructor_standings_1
      on (races_1.round = constructor_standings_1.constructorstandingsid )
    inner join drivers as drivers_1
    on (standings_1.position = drivers_1.driverid )
where qualifying_1.position is not NULL
limit 28;
select  
  races_1.name
from 
  races as races_1
where races_1.date < races_1.date
limit 39;
select  
  max(
    cast(circuits_1.country as text)), 
  circuits_1.location, 
  circuits_1.country, 
  circuits_1.country, 
  circuits_1.circuitid, 
  circuits_1.circuitid, 
  circuits_1.alt, 
  circuits_1.circuitid, 
  circuits_1.circuitref, 
  circuits_1.country, 
  max(
    cast(circuits_1.name as text)), 
  circuits_1.lng, 
  circuits_1.lat
from 
  circuits as circuits_1
where circuits_1.name is not NULL
group by circuits_1.location, circuits_1.country, circuits_1.country, circuits_1.circuitid, circuits_1.circuitid, circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lng, circuits_1.lat
limit 12;
select  
  standings_1.wins, 
  standings_1.points
from 
  standings as standings_1
where standings_1.position is not NULL
limit 36;
select  
  standings_1.position
from 
  results as results_1
    inner join standings as standings_1
    on (results_1.grid = standings_1.driverstandingsid )
where results_1.milliseconds is not NULL
limit 26;
select  
  constructor_results_1.points, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  min(
    cast(constructor_results_1.raceid as int8)), 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.points, constructor_results_1.date, constructor_results_1.constructorid, constructor_results_1.raceid, constructor_results_1.points, constructor_results_1.date
limit 33;
select  
  qualifying_1.date
from 
  constructors as constructors_1
      inner join qualifying as qualifying_1
      on (constructors_1.constructorid = qualifying_1.qualifyid )
    inner join qualifying as qualifying_2
    on (qualifying_1.position = qualifying_2.qualifyid )
where constructors_1.constructorref = constructors_1.name
limit 40;
select  
  qualifying_2.position, 
  qualifying_1.constructorid, 
  qualifying_2.raceid, 
  qualifying_1.raceid, 
  qualifying_1.constructorid, 
  qualifying_1.number, 
  qualifying_2.raceid, 
  qualifying_2.qualifyid, 
  qualifying_2.qualifyid, 
  qualifying_1.raceid, 
  qualifying_1.date, 
  qualifying_2.date, 
  qualifying_2.qualifyid, 
  qualifying_1.raceid, 
  qualifying_2.date, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
    inner join qualifying as qualifying_2
    on (qualifying_1.date = qualifying_2.date )
where qualifying_1.raceid is not NULL
limit 33;
select  
  results_1.number, 
  avg(
    cast(results_1.statusid as int8))
from 
  results as results_1
    inner join standings as standings_1
    on (results_1.driverid = standings_1.driverstandingsid )
where standings_1.position is not NULL
group by results_1.number
limit 6;
select  
  standings_1.driverid, 
  standings_1.driverid, 
  standings_1.position, 
  standings_1.date, 
  max(
    cast(standings_1.points as float8))
from 
  standings as standings_1
where standings_1.raceid is not NULL
group by standings_1.driverid, standings_1.driverid, standings_1.position, standings_1.date
limit 36;
select distinct 
  min(
    cast(constructor_results_1.points as float8)), 
  avg(
    cast(constructor_results_1.points as float8)), 
  races_1.circuitid, 
  constructors_1.constructorref, 
  constructors_1.constructorid
from 
  constructor_results as constructor_results_1
      inner join constructors as constructors_1
      on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
    inner join constructor_results as constructor_results_2
      inner join races as races_1
      on (constructor_results_2.raceid = races_1.raceid )
    on (constructor_results_1.raceid = constructor_results_2.constructorresultsid )
where races_1.date = constructor_results_2.date
group by races_1.circuitid, constructors_1.constructorref, constructors_1.constructorid
limit 24;
select  
  constructor_results_1.raceid, 
  min(
    cast(constructor_results_1.date as "timestamp")), 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.raceid, constructor_results_1.points
limit 39;
select  
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  constructor_standings_1.points, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
limit 25;
select distinct 
  count(*), 
  results_1.grid, 
  results_1.statusid, 
  results_1.driverid, 
  results_1.positionorder, 
  results_1.fastestlap, 
  results_1.number, 
  results_1.laps, 
  results_1.constructorid, 
  results_1.number, 
  results_1.driverid, 
  avg(
    cast(results_1.driverid as int8)), 
  results_1.rank, 
  results_1.driverid, 
  sum(
    cast(results_1.resultid as int8)), 
  results_1.constructorid, 
  results_1.laps
from 
  results as results_1
where results_1.rank > results_1.fastestlap
group by results_1.grid, results_1.statusid, results_1.driverid, results_1.positionorder, results_1.fastestlap, results_1.number, results_1.laps, results_1.constructorid, results_1.number, results_1.driverid, results_1.rank, results_1.driverid, results_1.constructorid, results_1.laps
limit 1;
select  
  constructor_standings_1.date, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
limit 3;
select distinct 
  qualifying_1.position, 
  qualifying_1.raceid, 
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  qualifying_1.raceid, 
  qualifying_1.raceid, 
  qualifying_1.constructorid, 
  qualifying_1.date, 
  qualifying_1.constructorid, 
  qualifying_1.driverid, 
  qualifying_1.date, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
limit 10;
select  
  count(
    cast(qualifying_1.constructorid as int8))
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
limit 22;
select  
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  max(
    cast(constructors_1.constructorref as text))
from 
  constructors as constructors_1
where constructors_1.name <= constructors_1.nationality
group by constructors_1.constructorref, constructors_1.constructorref, constructors_1.constructorid, constructors_1.constructorid
limit 33;
select  
  constructors_1.constructorref, 
  circuits_1.country, 
  constructors_1.constructorid, 
  circuits_1.circuitref, 
  max(
    cast(results_1.date as "timestamp")), 
  constructors_1.nationality, 
  circuits_1.circuitref, 
  circuits_1.circuitref, 
  constructors_1.name
from 
  constructors as constructors_1
    inner join results as results_1
      inner join circuits as circuits_1
      on (results_1.number = circuits_1.lat )
    on (constructors_1.nationality = circuits_1.circuitref )
where constructors_1.name is not NULL
group by constructors_1.constructorref, circuits_1.country, constructors_1.constructorid, circuits_1.circuitref, constructors_1.nationality, circuits_1.circuitref, circuits_1.circuitref, constructors_1.name
limit 9;
select  
  constructors_2.nationality, 
  drivers_1.nationality, 
  drivers_1.nationality
from 
  constructors as constructors_1
      inner join drivers as drivers_1
      on (constructors_1.nationality = drivers_1.driverref )
    inner join constructors as constructors_2
      inner join qualifying as qualifying_1
      on (constructors_2.constructorid = qualifying_1.qualifyid )
    on (drivers_1.dob = qualifying_1.date )
where constructors_1.nationality is not NULL
limit 19;
select  
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
      inner join circuits as circuits_1
      on (qualifying_1.position = circuits_1.circuitid )
    inner join constructors as constructors_1
    on (circuits_1.circuitref = constructors_1.constructorref )
where circuits_1.alt > circuits_1.lat
limit 37;
select  
  qualifying_1.date, 
  results_1.positionorder, 
  max(
    cast(results_1.date as "timestamp"))
from 
  results as results_1
    inner join qualifying as qualifying_1
    on (results_1.date = qualifying_1.date )
where results_1.fastestlap is not NULL
group by qualifying_1.date, results_1.positionorder
limit 18;
select  
  constructor_standings_1.constructorid, 
  results_1.milliseconds
from 
  results as results_1
    inner join constructor_standings as constructor_standings_1
      inner join constructor_results as constructor_results_1
      on (constructor_standings_1.points = constructor_results_1.points )
    on (results_1.positionorder = constructor_results_1.constructorresultsid )
where constructor_standings_1.wins is not NULL
limit 14;
select  
  standings_1.driverid
from 
  constructors as constructors_1
    inner join standings as standings_1
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where standings_1.driverid > constructors_1.constructorid
limit 19;
select  
  circuits_1.lng, 
  max(
    cast(circuits_1.location as text)), 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
group by circuits_1.lng, circuits_1.circuitid
limit 24;
select  
  circuits_1.location, 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.alt is not NULL
limit 10;
select  
  standings_1.wins, 
  standings_1.points, 
  standings_1.date, 
  standings_1.raceid, 
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.date = standings_1.date
limit 23;
select  
  standings_1.position, 
  standings_1.date
from 
  standings as standings_1
where standings_1.date is not NULL
limit 25;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
limit 24;
select  
  circuits_1.name, 
  circuits_1.circuitref, 
  circuits_2.lng, 
  count(*), 
  circuits_2.name, 
  sum(
    cast(circuits_1.lng as float8))
from 
  circuits as circuits_1
    inner join circuits as circuits_2
    on (circuits_1.location = circuits_2.circuitref )
where circuits_1.country >= circuits_2.circuitref
group by circuits_1.name, circuits_1.circuitref, circuits_2.lng, circuits_2.name
limit 24;
select  
  constructor_results_1.raceid, 
  qualifying_1.number, 
  qualifying_1.driverid, 
  qualifying_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  qualifying_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  qualifying_1.raceid, 
  count(
    cast(qualifying_1.qualifyid as int8)), 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  qualifying_1.raceid, 
  qualifying_1.position, 
  qualifying_1.position, 
  constructor_results_1.date, 
  qualifying_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  qualifying_1.qualifyid, 
  constructor_results_1.constructorid, 
  qualifying_1.position, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  max(
    cast(qualifying_1.date as "timestamp")), 
  constructor_results_1.date, 
  qualifying_1.position, 
  constructor_results_1.raceid, 
  min(
    cast(qualifying_1.date as "timestamp"))
from 
  constructor_results as constructor_results_1
    inner join qualifying as qualifying_1
    on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
where constructor_results_1.date is not NULL
group by constructor_results_1.raceid, qualifying_1.number, qualifying_1.driverid, qualifying_1.constructorid, constructor_results_1.points, constructor_results_1.raceid, qualifying_1.date, constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_results_1.constructorresultsid, qualifying_1.raceid, constructor_results_1.constructorid, constructor_results_1.raceid, constructor_results_1.raceid, qualifying_1.raceid, qualifying_1.position, qualifying_1.position, constructor_results_1.date, qualifying_1.date, constructor_results_1.raceid, constructor_results_1.date, constructor_results_1.raceid, constructor_results_1.date, qualifying_1.qualifyid, constructor_results_1.constructorid, qualifying_1.position, constructor_results_1.points, constructor_results_1.constructorid, constructor_results_1.date, qualifying_1.position, constructor_results_1.raceid
limit 27;
select  
  results_1.laps, 
  count(
    cast(circuits_1.lat as float8)), 
  circuits_1.alt
from 
  races as races_1
    inner join circuits as circuits_1
      inner join constructor_results as constructor_results_1
          inner join constructor_standings as constructor_standings_1
          on (constructor_results_1.date = constructor_standings_1.date )
        inner join results as results_1
        on (constructor_standings_1.constructorid = results_1.resultid )
      on (circuits_1.lat = constructor_results_1.points )
    on (races_1.raceid = circuits_1.circuitid )
where constructor_results_1.constructorresultsid is not NULL
group by results_1.laps, circuits_1.alt
limit 18;
select  
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.name, 
  avg(
    cast(constructors_1.constructorid as int8)), 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  max(
    cast(constructors_1.constructorid as int8))
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.constructorid, constructors_1.nationality, constructors_1.constructorref, constructors_1.constructorref, constructors_1.nationality, constructors_1.name, constructors_1.name, constructors_1.nationality, constructors_1.constructorid, constructors_1.constructorid
limit 35;
select  
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  count(
    cast(constructors_1.constructorref as text))
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.nationality, constructors_1.name, constructors_1.constructorref, constructors_1.constructorref, constructors_1.nationality
limit 26;
select  
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
limit 1;
select  
  standings_1.date
from 
  standings as standings_1
where standings_1.points is not NULL
limit 42;
select  
  results_1.raceid, 
  results_1.laps, 
  results_1.position, 
  results_1.resultid, 
  results_1.resultid, 
  results_1.number, 
  results_1.grid, 
  min(
    cast(results_1.milliseconds as float8)), 
  results_1.points, 
  max(
    cast(results_1.positionorder as int8)), 
  results_1.milliseconds
from 
  results as results_1
where results_1.raceid = results_1.driverid
group by results_1.raceid, results_1.laps, results_1.position, results_1.resultid, results_1.resultid, results_1.number, results_1.grid, results_1.points, results_1.milliseconds
limit 34;
select  
  results_1.position, 
  results_1.grid
from 
  results as results_1
    inner join standings as standings_1
    on (results_1.grid = standings_1.driverstandingsid )
where standings_1.position <= results_1.grid
limit 22;
select  
  results_3.fastestlap, 
  qualifying_1.qualifyid, 
  results_1.grid, 
  qualifying_2.raceid, 
  results_3.fastestlap, 
  results_3.constructorid, 
  results_1.points, 
  results_1.points, 
  results_3.positionorder, 
  results_1.constructorid
from 
  results as results_1
          inner join results as results_2
          on (results_1.grid = results_2.resultid )
        inner join constructors as constructors_1
        on (results_2.resultid = constructors_1.constructorid )
      inner join results as results_3
        inner join qualifying as qualifying_1
        on (results_3.driverid = qualifying_1.qualifyid )
      on (results_2.resultid = results_3.resultid )
    inner join qualifying as qualifying_2
    on (results_2.positionorder = qualifying_2.qualifyid )
where constructors_1.nationality is not NULL
limit 39;
select  
  standings_1.points, 
  max(
    cast(standings_1.points as float8))
from 
  standings as standings_1
where standings_1.wins is not NULL
group by standings_1.points
limit 26;
select  
  races_1.round, 
  races_1.circuitid, 
  races_1.time, 
  races_1.round
from 
  races as races_1
where races_1.circuitid = races_1.year
limit 19;
select  
  avg(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  count(*), 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_results_1.raceid, constructor_results_1.date
limit 3;
select  
  qualifying_1.position, 
  qualifying_1.raceid, 
  qualifying_1.constructorid, 
  qualifying_1.date, 
  qualifying_1.raceid, 
  min(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.position, 
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
group by qualifying_1.position, qualifying_1.raceid, qualifying_1.constructorid, qualifying_1.date, qualifying_1.raceid, qualifying_1.position, qualifying_1.constructorid, qualifying_1.constructorid, qualifying_1.date
limit 20;
select  
  qualifying_1.raceid, 
  standings_1.driverid, 
  max(
    cast(standings_1.date as "timestamp")), 
  standings_1.points
from 
  standings as standings_1
    inner join qualifying as qualifying_1
    on (standings_1.raceid = qualifying_1.qualifyid )
where standings_1.position is not NULL
group by qualifying_1.raceid, standings_1.driverid, standings_1.points
limit 3;
select  
  qualifying_1.date, 
  qualifying_1.driverid, 
  qualifying_1.raceid, 
  qualifying_1.driverid, 
  qualifying_1.raceid, 
  qualifying_1.position, 
  qualifying_1.date, 
  qualifying_1.raceid, 
  avg(
    cast(qualifying_1.qualifyid as int8)), 
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
group by qualifying_1.date, qualifying_1.driverid, qualifying_1.raceid, qualifying_1.driverid, qualifying_1.raceid, qualifying_1.position, qualifying_1.date, qualifying_1.raceid, qualifying_1.position
limit 41;
select  
  qualifying_1.position, 
  max(
    cast(qualifying_1.date as "timestamp")), 
  min(
    cast(qualifying_1.date as "timestamp")), 
  max(
    cast(qualifying_1.position as int8))
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.position
limit 42;
select  
  races_1.name, 
  races_1.raceid, 
  races_1.year
from 
  races as races_1
where races_1.year is not NULL
limit 37;
select  
  standings_1.raceid, 
  constructor_results_2.raceid, 
  standings_1.points, 
  standings_1.raceid
from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
      inner join constructor_results as constructor_results_2
      on (constructor_results_1.raceid = constructor_results_2.constructorresultsid )
    on (standings_1.points = constructor_results_2.points )
where constructor_results_2.points is not NULL
limit 38;
select  
  qualifying_1.constructorid
from 
  constructors as constructors_1
        inner join qualifying as qualifying_1
        on (constructors_1.constructorid = qualifying_1.qualifyid )
      inner join circuits as circuits_1
        inner join constructors as constructors_2
        on (circuits_1.name = constructors_2.constructorref )
      on (constructors_1.constructorid = circuits_1.circuitid )
    inner join qualifying as qualifying_2
    on (qualifying_1.position = qualifying_2.qualifyid )
where qualifying_1.number is not NULL
limit 42;
select  
  standings_1.points, 
  standings_1.points, 
  max(
    cast(standings_1.date as "timestamp"))
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
group by standings_1.points, standings_1.points
limit 4;
select  
  constructor_results_1.date, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.points < constructor_results_1.points
limit 21;
select  
  constructors_1.name, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 13;
select  
  results_1.position, 
  results_1.laps, 
  results_1.date, 
  results_1.date, 
  results_1.resultid, 
  results_1.constructorid, 
  results_1.fastestlap, 
  results_1.number, 
  results_1.raceid, 
  results_1.constructorid, 
  results_1.resultid, 
  results_1.resultid, 
  results_1.grid, 
  results_1.statusid, 
  min(
    cast(results_1.date as "timestamp")), 
  results_1.constructorid, 
  results_1.raceid, 
  results_1.statusid, 
  results_1.fastestlap, 
  results_1.laps, 
  results_1.raceid, 
  sum(
    cast(results_1.number as float8))
from 
  results as results_1
where results_1.statusid is not NULL
group by results_1.position, results_1.laps, results_1.date, results_1.date, results_1.resultid, results_1.constructorid, results_1.fastestlap, results_1.number, results_1.raceid, results_1.constructorid, results_1.resultid, results_1.resultid, results_1.grid, results_1.statusid, results_1.constructorid, results_1.raceid, results_1.statusid, results_1.fastestlap, results_1.laps, results_1.raceid
limit 29;
select  
  min(
    cast(constructor_standings_1.date as "timestamp"))
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
limit 30;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 28;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.date, 
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
limit 11;
select  
  avg(
    cast(results_1.positionorder as int8)), 
  min(
    cast(results_1.milliseconds as float8)), 
  results_1.grid, 
  results_1.milliseconds, 
  results_1.resultid, 
  results_1.positionorder, 
  results_1.number, 
  results_1.driverid, 
  results_1.points, 
  results_1.fastestlap, 
  results_1.statusid, 
  results_1.milliseconds, 
  results_1.grid
from 
  results as results_1
where results_1.positionorder < results_1.statusid
group by results_1.grid, results_1.milliseconds, results_1.resultid, results_1.positionorder, results_1.number, results_1.driverid, results_1.points, results_1.fastestlap, results_1.statusid, results_1.milliseconds, results_1.grid
limit 6;
select  
  count(*), 
  count(*), 
  standings_1.driverstandingsid, 
  standings_1.driverstandingsid, 
  min(
    cast(standings_1.points as float8)), 
  min(
    cast(standings_1.wins as int8))
from 
  standings as standings_1
where standings_1.position is not NULL
group by standings_1.driverstandingsid, standings_1.driverstandingsid
limit 8;
select  
  results_2.date, 
  results_1.constructorid, 
  results_1.resultid, 
  results_2.rank, 
  results_2.statusid
from 
  results as results_1
    inner join results as results_2
    on (results_1.fastestlap = results_2.number )
where results_2.statusid is not NULL
limit 42;
select  
  circuits_1.circuitref, 
  circuits_1.country, 
  constructors_1.name, 
  constructors_1.constructorref, 
  circuits_1.lng, 
  circuits_1.alt, 
  circuits_1.circuitref, 
  constructors_1.name, 
  constructors_2.name, 
  max(
    cast(circuits_1.location as text)), 
  circuits_1.lat, 
  constructors_1.constructorref, 
  circuits_1.lat
from 
  constructors as constructors_1
    inner join constructors as constructors_2
      inner join circuits as circuits_1
      on (constructors_2.constructorid = circuits_1.circuitid )
    on (constructors_1.constructorid = circuits_1.circuitid )
where constructors_1.nationality > constructors_1.name
group by circuits_1.circuitref, circuits_1.country, constructors_1.name, constructors_1.constructorref, circuits_1.lng, circuits_1.alt, circuits_1.circuitref, constructors_1.name, constructors_2.name, circuits_1.lat, constructors_1.constructorref, circuits_1.lat
limit 21;
select  
  drivers_1.dob, 
  drivers_1.code, 
  drivers_1.driverid, 
  max(
    cast(drivers_1.driverid as int8)), 
  drivers_1.code, 
  drivers_1.forename, 
  drivers_1.driverref, 
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.code is not NULL
group by drivers_1.dob, drivers_1.code, drivers_1.driverid, drivers_1.code, drivers_1.forename, drivers_1.driverref, drivers_1.forename
limit 31;
select  
  drivers_1.dob, 
  drivers_1.nationality, 
  drivers_1.nationality, 
  drivers_1.driverid, 
  min(
    cast(drivers_1.driverid as int8))
from 
  drivers as drivers_1
where drivers_1.driverid >= drivers_1.driverid
group by drivers_1.dob, drivers_1.nationality, drivers_1.nationality, drivers_1.driverid
limit 28;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
    inner join races as races_1
    on (constructor_standings_1.constructorstandingsid = races_1.raceid )
where constructor_standings_1.constructorid is not NULL
limit 3;
select  
  max(
    cast(races_1.date as "timestamp")), 
  races_1.year, 
  races_1.year, 
  max(
    cast(races_1.date as "timestamp")), 
  races_1.date
from 
  races as races_1
    inner join circuits as circuits_1
    on (races_1.circuitid = circuits_1.circuitid )
where circuits_1.country is not NULL
group by races_1.year, races_1.year, races_1.date
limit 21;
select  
  drivers_1.surname, 
  drivers_1.code, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
limit 11;
select  
  standings_1.driverid, 
  standings_1.driverid, 
  standings_1.driverid, 
  results_1.number
from 
  standings as standings_1
      inner join results as results_1
      on (standings_1.position = results_1.resultid )
    inner join qualifying as qualifying_1
    on (standings_1.date = qualifying_1.date )
where results_1.points is not NULL
limit 9;
select  
  constructors_1.constructorid, 
  count(*), 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  drivers_1.driverref, 
  drivers_1.driverid, 
  constructors_1.constructorref, 
  drivers_1.driverref, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  min(
    cast(drivers_1.forename as text))
from 
  drivers as drivers_1
    inner join constructors as constructors_1
    on (drivers_1.surname = constructors_1.constructorref )
where constructors_1.nationality >= drivers_1.forename
group by constructors_1.constructorid, constructors_1.constructorid, constructors_1.constructorid, constructors_1.constructorid, drivers_1.driverref, drivers_1.driverid, constructors_1.constructorref, drivers_1.driverref, constructors_1.nationality, constructors_1.constructorid, constructors_1.nationality
limit 13;
select  
  races_1.raceid, 
  min(
    cast(races_1.date as "timestamp")), 
  races_1.date
from 
  races as races_1
where races_1.name is not NULL
group by races_1.raceid, races_1.date
limit 3;
select  
  max(
    cast(races_1.circuitid as int8)), 
  min(
    cast(races_1.round as int8)), 
  races_1.circuitid, 
  races_1.circuitid, 
  max(
    cast(races_1.time as text)), 
  races_1.circuitid, 
  races_1.year, 
  races_1.round, 
  races_1.circuitid, 
  min(
    cast(races_1.raceid as int8)), 
  races_1.circuitid, 
  races_1.date, 
  races_1.circuitid, 
  races_1.round
from 
  races as races_1
where races_1.time < races_1.name
group by races_1.circuitid, races_1.circuitid, races_1.circuitid, races_1.year, races_1.round, races_1.circuitid, races_1.circuitid, races_1.date, races_1.circuitid, races_1.round
limit 18;
select  
  races_1.date, 
  races_1.name
from 
  constructors as constructors_1
    inner join races as races_1
      inner join constructor_results as constructor_results_1
      on (races_1.raceid = constructor_results_1.constructorresultsid )
    on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
where races_1.round is not NULL
limit 32;
select  
  standings_1.raceid, 
  count(
    cast(standings_1.position as int8)), 
  standings_1.date, 
  standings_1.points
from 
  standings as standings_1
where standings_1.raceid is not NULL
group by standings_1.raceid, standings_1.date, standings_1.points
limit 35;
select  
  qualifying_1.date, 
  results_1.laps
from 
  qualifying as qualifying_1
    inner join results as results_1
    on (qualifying_1.driverid = results_1.resultid )
where qualifying_1.qualifyid is not NULL
limit 18;
select  
  sum(
    cast(constructor_standings_1.points as float8)), 
  races_1.year
from 
  constructors as constructors_1
    inner join races as races_1
      inner join constructor_standings as constructor_standings_1
      on (races_1.year = constructor_standings_1.constructorstandingsid )
    on (constructors_1.nationality = races_1.name )
where constructors_1.constructorref is not NULL
group by races_1.year
limit 33;
select  
  constructor_standings_1.position, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  min(
    cast(constructor_standings_1.date as "timestamp")), 
  constructor_standings_1.wins, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
group by constructor_standings_1.position, constructor_standings_1.points, constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.position, constructor_standings_1.wins, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.date, constructor_standings_1.constructorstandingsid, constructor_standings_1.wins, constructor_standings_1.wins, constructor_standings_1.constructorid
limit 20;
select  
  constructors_1.name, 
  constructors_2.nationality, 
  constructor_results_1.points, 
  avg(
    cast(constructor_results_1.points as float8)), 
  constructors_2.nationality, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  standings_1.wins, 
  constructors_2.name, 
  max(
    cast(constructors_1.constructorref as text)), 
  constructor_results_1.points
from 
  constructors as constructors_1
    inner join constructor_results as constructor_results_1
      inner join standings as standings_1
        inner join constructors as constructors_2
        on (standings_1.driverstandingsid = constructors_2.constructorid )
      on (constructor_results_1.raceid = standings_1.driverstandingsid )
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where standings_1.driverid = constructors_2.constructorid
group by constructors_1.name, constructors_2.nationality, constructor_results_1.points, constructors_2.nationality, constructors_1.nationality, constructors_1.constructorref, standings_1.wins, constructors_2.name, constructor_results_1.points
limit 8;
select  
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_2.constructorid, 
  constructors_2.name, 
  constructors_2.constructorref, 
  constructors_2.constructorid, 
  constructors_2.constructorref, 
  constructors_2.constructorid, 
  constructors_2.name, 
  constructors_2.constructorref, 
  constructors_2.constructorid, 
  constructors_1.constructorid, 
  constructors_2.nationality, 
  constructors_2.constructorid, 
  constructors_2.nationality
from 
  constructors as constructors_1
    inner join constructors as constructors_2
    on (constructors_1.nationality = constructors_2.constructorref )
where constructors_1.name is not NULL
limit 8;
select  
  constructors_1.name, 
  sum(
    cast(constructors_1.constructorid as int8)), 
  constructors_1.constructorid, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.name, constructors_1.constructorid, constructors_1.nationality
limit 1;
select  
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.points > constructor_results_1.points
limit 29;
select  
  qualifying_1.driverid, 
  circuits_1.circuitid
from 
  circuits as circuits_1
    inner join qualifying as qualifying_1
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where circuits_1.lat is not NULL
limit 13;
select  
  qualifying_1.driverid, 
  qualifying_1.position, 
  avg(
    cast(qualifying_1.driverid as int8)), 
  max(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.number, 
  max(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.position, 
  qualifying_1.constructorid, 
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  qualifying_1.number, 
  qualifying_1.raceid, 
  min(
    cast(qualifying_1.date as "timestamp")), 
  min(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.qualifyid, 
  min(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.constructorid, 
  sum(
    cast(qualifying_1.number as int8))
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
group by qualifying_1.driverid, qualifying_1.position, qualifying_1.number, qualifying_1.position, qualifying_1.constructorid, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.number, qualifying_1.raceid, qualifying_1.qualifyid, qualifying_1.constructorid
limit 27;
select  
  constructors_1.nationality, 
  constructors_1.constructorid, 
  max(
    cast(constructors_1.constructorid as int8))
from 
  constructor_results as constructor_results_1
      inner join constructors as constructors_1
      on (constructor_results_1.raceid = constructors_1.constructorid )
    inner join constructor_standings as constructor_standings_1
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where constructors_1.constructorid is not NULL
group by constructors_1.nationality, constructors_1.constructorid
limit 41;
select  
  standings_1.driverid, 
  count(*)
from 
  standings as standings_1
    inner join circuits as circuits_1
      inner join standings as standings_2
          inner join circuits as circuits_2
          on (standings_2.driverstandingsid = circuits_2.circuitid )
        inner join constructor_standings as constructor_standings_1
        on (circuits_2.circuitid = constructor_standings_1.constructorstandingsid )
      on (circuits_1.country = circuits_2.circuitref )
    on (standings_1.position = standings_2.driverstandingsid )
where standings_2.driverid is not NULL
group by standings_1.driverid
limit 18;
select  
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  min(
    cast(constructor_results_1.date as "timestamp"))
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.date, constructor_results_1.date, constructor_results_1.raceid, constructor_results_1.constructorid, constructor_results_1.date
limit 35;
select  
  circuits_2.location
from 
  circuits as circuits_1
    inner join qualifying as qualifying_1
      inner join circuits as circuits_2
      on (qualifying_1.number = circuits_2.circuitid )
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where qualifying_1.raceid is not NULL
limit 32;
select  
  constructors_1.nationality, 
  constructors_1.constructorref
from 
  results as results_1
    inner join constructors as constructors_1
    on (results_1.constructorid = constructors_1.constructorid )
where results_1.date is not NULL
limit 8;
select  
  min(
    cast(constructors_1.name as text)), 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  count(
    cast(constructors_1.constructorref as text)), 
  constructors_1.constructorid, 
  constructors_1.name, 
  count(*), 
  count(*), 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  min(
    cast(constructors_1.name as text))
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.name, constructors_1.name, constructors_1.constructorid, constructors_1.constructorid, constructors_1.constructorref, constructors_1.constructorid, constructors_1.constructorid, constructors_1.constructorid, constructors_1.constructorid, constructors_1.name, constructors_1.name, constructors_1.nationality, constructors_1.name, constructors_1.nationality, constructors_1.constructorid
limit 40;
select  
  standings_1.date, 
  standings_1.driverid, 
  standings_1.wins, 
  standings_1.date
from 
  standings as standings_1
where standings_1.wins is not NULL
limit 42;
select  
  constructor_standings_1.constructorid, 
  drivers_1.dob, 
  constructor_standings_1.wins, 
  drivers_1.surname, 
  constructor_standings_1.constructorstandingsid, 
  drivers_1.surname, 
  drivers_1.driverref
from 
  drivers as drivers_1
    inner join constructor_standings as constructor_standings_1
    on (drivers_1.dob = constructor_standings_1.date )
where constructor_standings_1.position is not NULL
limit 28;
select  
  races_2.circuitid, 
  constructor_standings_1.constructorstandingsid, 
  races_2.name, 
  max(
    cast(results_1.number as float8)), 
  results_1.driverid
from 
  races as races_1
      inner join constructor_standings as constructor_standings_1
      on (races_1.round = constructor_standings_1.constructorstandingsid )
    inner join races as races_2
      inner join results as results_1
      on (races_2.date = results_1.date )
    on (constructor_standings_1.constructorstandingsid = results_1.resultid )
where constructor_standings_1.points < results_1.position
group by races_2.circuitid, constructor_standings_1.constructorstandingsid, races_2.name, results_1.driverid
limit 21;
select  
  max(
    cast(constructor_standings_1.constructorid as int8)), 
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.points
limit 40;
select  
  races_1.date, 
  races_1.name, 
  races_1.time, 
  min(
    cast(races_1.circuitid as int8)), 
  races_1.circuitid, 
  races_1.round, 
  max(
    cast(races_1.name as text)), 
  races_1.time, 
  races_1.name, 
  races_1.time, 
  races_1.raceid, 
  max(
    cast(races_1.round as int8))
from 
  races as races_1
where races_1.circuitid is not NULL
group by races_1.date, races_1.name, races_1.time, races_1.circuitid, races_1.round, races_1.time, races_1.name, races_1.time, races_1.raceid
limit 25;
select  
  drivers_1.code, 
  drivers_1.code, 
  drivers_1.nationality, 
  drivers_1.driverid, 
  drivers_1.surname, 
  min(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.dob, 
  drivers_1.code, 
  drivers_1.nationality, 
  drivers_1.nationality, 
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
group by drivers_1.code, drivers_1.code, drivers_1.nationality, drivers_1.driverid, drivers_1.surname, drivers_1.dob, drivers_1.code, drivers_1.nationality, drivers_1.nationality, drivers_1.forename
limit 23;
select  
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  avg(
    cast(constructor_results_1.points as float8)), 
  max(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.points, constructor_results_1.constructorid, constructor_results_1.points, constructor_results_1.points, constructor_results_1.constructorresultsid, constructor_results_1.constructorid, constructor_results_1.raceid, constructor_results_1.date, constructor_results_1.date
limit 38;
select  
  circuits_1.circuitid, 
  circuits_1.alt, 
  circuits_1.name, 
  circuits_1.country, 
  circuits_1.lng, 
  circuits_1.name, 
  circuits_1.lat, 
  circuits_1.lat, 
  circuits_1.location, 
  circuits_1.circuitref, 
  circuits_1.circuitid, 
  circuits_1.location, 
  circuits_1.circuitid, 
  circuits_1.lng, 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.circuitid < circuits_1.circuitid
limit 14;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.date, 
  constructor_standings_1.raceid, 
  constructor_standings_1.points, 
  min(
    cast(constructor_standings_1.date as "timestamp")), 
  constructor_standings_1.points, 
  constructor_standings_1.points, 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
group by constructor_standings_1.wins, constructor_standings_1.date, constructor_standings_1.raceid, constructor_standings_1.points, constructor_standings_1.points, constructor_standings_1.points, constructor_standings_1.wins
limit 35;
select  
  circuits_1.name
from 
  constructors as constructors_1
      inner join circuits as circuits_1
      on (constructors_1.nationality = circuits_1.circuitref )
    inner join standings as standings_1
      inner join constructor_results as constructor_results_1
      on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
    on (circuits_1.circuitid = standings_1.driverstandingsid )
where constructor_results_1.date is not NULL
limit 15;
select  
  qualifying_1.qualifyid, 
  qualifying_1.constructorid, 
  qualifying_1.raceid, 
  qualifying_1.constructorid, 
  min(
    cast(qualifying_1.date as "timestamp"))
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
group by qualifying_1.qualifyid, qualifying_1.constructorid, qualifying_1.raceid, qualifying_1.constructorid
limit 36;
select  
  races_1.name, 
  min(
    cast(races_1.time as text)), 
  races_1.name, 
  races_1.date, 
  races_1.time, 
  races_1.round, 
  races_1.year, 
  races_1.round, 
  races_1.circuitid, 
  avg(
    cast(races_1.raceid as int8)), 
  races_1.round, 
  max(
    cast(races_1.name as text)), 
  races_1.year, 
  min(
    cast(races_1.time as text))
from 
  races as races_1
where races_1.name >= races_1.time
group by races_1.name, races_1.name, races_1.date, races_1.time, races_1.round, races_1.year, races_1.round, races_1.circuitid, races_1.round, races_1.year
limit 1;
select  
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  max(
    cast(constructor_results_1.points as float8))
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.raceid, constructor_results_1.date, constructor_results_1.constructorid, constructor_results_1.constructorid, constructor_results_1.constructorresultsid
limit 37;
select  
  drivers_1.nationality, 
  min(
    cast(drivers_1.driverid as int8)), 
  drivers_1.code, 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
group by drivers_1.nationality, drivers_1.code, drivers_1.nationality
limit 28;
select  
  constructor_results_1.constructorid, 
  max(
    cast(constructor_results_1.date as "timestamp")), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.constructorid, constructor_results_1.raceid, constructor_results_1.constructorid
limit 22;
select  
  circuits_1.country, 
  max(
    cast(circuits_1.name as text)), 
  circuits_1.lat, 
  circuits_1.country, 
  circuits_1.alt, 
  count(
    cast(circuits_1.lng as float8))
from 
  circuits as circuits_1
where circuits_1.alt is not NULL
group by circuits_1.country, circuits_1.lat, circuits_1.country, circuits_1.alt
limit 40;
select  
  standings_1.driverstandingsid, 
  min(
    cast(standings_1.points as float8)), 
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  standings_1.wins
from 
  standings as standings_1
where standings_1.points is not NULL
group by standings_1.driverstandingsid, standings_1.driverid, standings_1.driverstandingsid, standings_1.wins
limit 2;
select  
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 29;
select  
  standings_1.points, 
  standings_1.points, 
  standings_1.driverid, 
  standings_1.position, 
  standings_1.position, 
  min(
    cast(standings_1.date as "timestamp")), 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.date is not NULL
group by standings_1.points, standings_1.points, standings_1.driverid, standings_1.position, standings_1.position, standings_1.driverid
limit 34;
select  
  qualifying_1.date, 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
limit 30;
select  
  constructor_standings_1.date, 
  results_1.points, 
  results_1.constructorid, 
  constructor_standings_2.constructorid
from 
  constructor_standings as constructor_standings_1
    inner join qualifying as qualifying_1
      inner join constructor_standings as constructor_standings_2
          inner join races as races_1
          on (constructor_standings_2.date = races_1.date )
        inner join results as results_1
        on (races_1.year = results_1.resultid )
      on (qualifying_1.driverid = races_1.raceid )
    on (constructor_standings_1.constructorid = races_1.raceid )
where races_1.time is not NULL
limit 24;
select  
  max(
    cast(constructors_1.constructorref as text)), 
  constructor_results_1.date, 
  constructor_results_2.date, 
  constructor_results_1.raceid, 
  constructors_1.nationality, 
  standings_1.date, 
  constructors_1.constructorref, 
  standings_1.date, 
  min(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  standings_1.points, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructor_results_1.raceid, 
  standings_1.position, 
  standings_1.position, 
  standings_1.driverid
from 
  standings as standings_1
      inner join constructor_results as constructor_results_1
      on (standings_1.wins = constructor_results_1.constructorresultsid )
    inner join constructors as constructors_1
      inner join constructor_results as constructor_results_2
      on (constructors_1.constructorid = constructor_results_2.constructorresultsid )
    on (standings_1.driverid = constructors_1.constructorid )
where standings_1.date is not NULL
group by constructor_results_1.date, constructor_results_2.date, constructor_results_1.raceid, constructors_1.nationality, standings_1.date, constructors_1.constructorref, standings_1.date, constructor_results_1.raceid, constructor_results_1.constructorid, standings_1.points, constructors_1.nationality, constructors_1.name, constructor_results_1.raceid, standings_1.position, standings_1.position, standings_1.driverid
limit 34;
select  
  qualifying_1.number, 
  qualifying_1.number, 
  qualifying_1.qualifyid, 
  qualifying_1.number, 
  qualifying_1.raceid, 
  qualifying_1.raceid, 
  qualifying_1.qualifyid, 
  qualifying_1.date, 
  qualifying_1.raceid, 
  qualifying_1.number, 
  qualifying_1.driverid, 
  qualifying_1.position, 
  min(
    cast(qualifying_1.date as "timestamp")), 
  max(
    cast(qualifying_1.date as "timestamp")), 
  min(
    cast(qualifying_1.raceid as int8)), 
  qualifying_1.number, 
  min(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.date, 
  qualifying_1.date, 
  qualifying_1.number, 
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
group by qualifying_1.number, qualifying_1.number, qualifying_1.qualifyid, qualifying_1.number, qualifying_1.raceid, qualifying_1.raceid, qualifying_1.qualifyid, qualifying_1.date, qualifying_1.raceid, qualifying_1.number, qualifying_1.driverid, qualifying_1.position, qualifying_1.number, qualifying_1.date, qualifying_1.date, qualifying_1.number, qualifying_1.qualifyid, qualifying_1.qualifyid
limit 19;
select  
  qualifying_4.number, 
  qualifying_2.position
from 
  standings as standings_1
        inner join qualifying as qualifying_1
          inner join drivers as drivers_1
          on (qualifying_1.raceid = drivers_1.driverid )
        on (standings_1.wins = drivers_1.driverid )
      inner join qualifying as qualifying_2
      on (drivers_1.driverid = qualifying_2.qualifyid )
    inner join qualifying as qualifying_3
      inner join qualifying as qualifying_4
      on (qualifying_3.number = qualifying_4.qualifyid )
    on (standings_1.driverstandingsid = qualifying_4.qualifyid )
where standings_1.date >= qualifying_3.date
limit 40;
select  
  min(
    cast(circuits_1.name as text)), 
  qualifying_1.position, 
  qualifying_1.number, 
  min(
    cast(qualifying_1.date as "timestamp")), 
  constructor_results_1.date, 
  sum(
    cast(circuits_1.alt as float8)), 
  circuits_1.country, 
  constructor_results_1.constructorid
from 
  circuits as circuits_1
      inner join qualifying as qualifying_1
      on (circuits_1.circuitid = qualifying_1.qualifyid )
    inner join constructor_results as constructor_results_1
    on (qualifying_1.position = constructor_results_1.constructorresultsid )
where constructor_results_1.points is not NULL
group by qualifying_1.position, qualifying_1.number, constructor_results_1.date, circuits_1.country, constructor_results_1.constructorid
limit 27;
select  
  max(
    cast(circuits_1.lng as float8)), 
  circuits_1.name, 
  circuits_1.lng, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.circuitid >= circuits_1.circuitid
group by circuits_1.name, circuits_1.lng, circuits_1.name
limit 21;
select  
  circuits_1.country, 
  circuits_1.circuitid, 
  circuits_1.circuitid, 
  circuits_1.location, 
  circuits_1.alt, 
  min(
    cast(circuits_1.alt as float8))
from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
group by circuits_1.country, circuits_1.circuitid, circuits_1.circuitid, circuits_1.location, circuits_1.alt
limit 2;
select  
  races_1.raceid, 
  races_1.circuitid, 
  races_2.circuitid, 
  races_2.circuitid, 
  races_2.date, 
  min(
    cast(races_1.round as int8)), 
  races_1.round, 
  min(
    cast(races_2.date as "timestamp")), 
  races_2.round, 
  races_1.name, 
  races_2.circuitid, 
  races_2.round, 
  min(
    cast(races_2.name as text)), 
  max(
    cast(races_2.date as "timestamp")), 
  races_2.name, 
  races_1.raceid, 
  races_2.time, 
  races_2.date, 
  races_1.time, 
  races_1.name, 
  races_2.time, 
  races_2.year, 
  races_1.round
from 
  races as races_1
    inner join races as races_2
    on (races_1.circuitid = races_2.raceid )
where races_1.time is not NULL
group by races_1.raceid, races_1.circuitid, races_2.circuitid, races_2.circuitid, races_2.date, races_1.round, races_2.round, races_1.name, races_2.circuitid, races_2.round, races_2.name, races_1.raceid, races_2.time, races_2.date, races_1.time, races_1.name, races_2.time, races_2.year, races_1.round
limit 41;
select  
  constructor_standings_1.date, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date, 
  avg(
    cast(constructor_standings_1.position as int8)), 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  max(
    cast(constructor_standings_1.date as "timestamp")), 
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points <= constructor_standings_1.points
group by constructor_standings_1.date, constructor_standings_1.date, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.wins, constructor_standings_1.constructorid, constructor_standings_1.raceid, constructor_standings_1.constructorstandingsid, constructor_standings_1.wins, constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.constructorstandingsid
limit 31;
select  
  races_1.round, 
  max(
    cast(qualifying_2.date as "timestamp")), 
  races_2.year, 
  qualifying_1.driverid, 
  drivers_1.driverref, 
  races_1.time, 
  races_2.circuitid, 
  max(
    cast(circuits_1.lng as float8)), 
  races_2.date, 
  qualifying_1.qualifyid, 
  races_2.name, 
  qualifying_1.position, 
  qualifying_1.number, 
  qualifying_1.position, 
  races_1.date, 
  races_2.circuitid, 
  qualifying_1.date, 
  min(
    cast(circuits_1.lat as float8)), 
  qualifying_2.driverid, 
  circuits_1.alt, 
  circuits_1.circuitid, 
  races_2.raceid, 
  qualifying_1.date, 
  drivers_1.driverid, 
  drivers_1.forename, 
  circuits_1.location
from 
  qualifying as qualifying_1
    inner join qualifying as qualifying_2
        inner join races as races_1
          inner join races as races_2
            inner join circuits as circuits_1
            on (races_2.raceid = circuits_1.circuitid )
          on (races_1.time = circuits_1.circuitref )
        on (qualifying_2.constructorid = races_2.raceid )
      inner join drivers as drivers_1
      on (races_1.year = drivers_1.driverid )
    on (qualifying_1.constructorid = races_2.raceid )
where qualifying_1.position is not NULL
group by races_1.round, races_2.year, qualifying_1.driverid, drivers_1.driverref, races_1.time, races_2.circuitid, races_2.date, qualifying_1.qualifyid, races_2.name, qualifying_1.position, qualifying_1.number, qualifying_1.position, races_1.date, races_2.circuitid, qualifying_1.date, qualifying_2.driverid, circuits_1.alt, circuits_1.circuitid, races_2.raceid, qualifying_1.date, drivers_1.driverid, drivers_1.forename, circuits_1.location
limit 40;
select  
  min(
    cast(standings_1.raceid as int8)), 
  min(
    cast(standings_1.date as "timestamp")), 
  standings_1.position, 
  standings_1.position
from 
  standings as standings_1
where standings_1.date is not NULL
group by standings_1.position, standings_1.position
limit 23;
select  
  min(
    cast(standings_1.date as "timestamp")), 
  standings_1.points, 
  standings_1.raceid, 
  standings_1.raceid, 
  standings_1.driverid, 
  standings_1.driverid, 
  standings_1.raceid, 
  standings_1.wins, 
  standings_1.driverstandingsid, 
  sum(
    cast(standings_1.driverid as int8)), 
  standings_1.driverstandingsid, 
  standings_1.points, 
  standings_1.raceid, 
  standings_1.raceid, 
  standings_1.position, 
  standings_1.raceid, 
  standings_1.driverid, 
  standings_1.points, 
  standings_1.raceid, 
  max(
    cast(standings_1.date as "timestamp")), 
  standings_1.points, 
  count(
    cast(standings_1.raceid as int8))
from 
  standings as standings_1
where standings_1.date is not NULL
group by standings_1.points, standings_1.raceid, standings_1.raceid, standings_1.driverid, standings_1.driverid, standings_1.raceid, standings_1.wins, standings_1.driverstandingsid, standings_1.driverstandingsid, standings_1.points, standings_1.raceid, standings_1.raceid, standings_1.position, standings_1.raceid, standings_1.driverid, standings_1.points, standings_1.raceid, standings_1.points
limit 40;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
limit 13;
select  
  races_1.date, 
  races_1.date, 
  races_1.date, 
  races_1.time, 
  races_1.circuitid, 
  races_1.date, 
  races_1.year, 
  constructors_1.nationality, 
  races_1.raceid
from 
  constructors as constructors_1
    inner join races as races_1
    on (constructors_1.nationality = races_1.name )
where constructors_1.name is not NULL
limit 27;
select  
  max(
    cast(constructors_1.constructorref as text)), 
  avg(
    cast(constructors_1.constructorid as int8)), 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorref, constructors_1.name, constructors_1.name, constructors_1.constructorid, constructors_1.constructorref
limit 14;
select  
  constructor_results_1.date, 
  max(
    cast(constructor_results_1.date as "timestamp")), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  count(*), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.date, constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.date, constructor_results_1.raceid, constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, constructor_results_1.raceid
limit 36;
select  
  qualifying_1.position, 
  min(
    cast(qualifying_1.date as "timestamp"))
from 
  standings as standings_1
    inner join qualifying as qualifying_1
    on (standings_1.driverid = qualifying_1.qualifyid )
where standings_1.points <= standings_1.points
group by qualifying_1.position
limit 42;
select  
  min(
    cast(constructors_1.nationality as text)), 
  constructor_standings_1.points, 
  constructors_1.constructorid, 
  constructor_results_1.date, 
  constructors_1.nationality, 
  constructor_standings_1.date
from 
  constructor_results as constructor_results_1
      inner join constructor_standings as constructor_standings_1
      on (constructor_results_1.date = constructor_standings_1.date )
    inner join constructors as constructors_1
    on (constructor_standings_1.constructorid = constructors_1.constructorid )
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.points, constructors_1.constructorid, constructor_results_1.date, constructors_1.nationality, constructor_standings_1.date
limit 42;
select  
  circuits_1.name, 
  min(
    cast(circuits_1.circuitref as text)), 
  max(
    cast(circuits_1.name as text)), 
  constructors_1.nationality, 
  drivers_1.surname, 
  standings_1.date, 
  constructors_1.constructorid, 
  qualifying_1.driverid, 
  circuits_1.alt
from 
  qualifying as qualifying_1
    inner join constructors as constructors_1
      inner join drivers as drivers_1
          inner join standings as standings_1
          on (drivers_1.dob = standings_1.date )
        inner join circuits as circuits_1
        on (drivers_1.driverid = circuits_1.circuitid )
      on (constructors_1.constructorid = standings_1.driverstandingsid )
    on (qualifying_1.constructorid = drivers_1.driverid )
where circuits_1.location = drivers_1.driverref
group by circuits_1.name, constructors_1.nationality, drivers_1.surname, standings_1.date, constructors_1.constructorid, qualifying_1.driverid, circuits_1.alt
limit 34;
select  
  drivers_1.surname, 
  drivers_1.driverref, 
  drivers_1.surname, 
  drivers_1.dob, 
  drivers_1.dob, 
  drivers_1.driverid, 
  drivers_1.dob, 
  drivers_1.driverref, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.dob > drivers_1.dob
limit 21;
select  
  qualifying_1.raceid, 
  qualifying_1.raceid, 
  qualifying_1.qualifyid, 
  qualifying_1.position, 
  qualifying_1.raceid, 
  qualifying_1.position, 
  qualifying_1.date, 
  qualifying_1.number, 
  qualifying_1.position, 
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  qualifying_1.position, 
  min(
    cast(qualifying_1.qualifyid as int8)), 
  qualifying_1.qualifyid, 
  qualifying_1.position, 
  qualifying_1.position, 
  qualifying_1.raceid, 
  qualifying_1.constructorid, 
  qualifying_1.date, 
  qualifying_1.qualifyid, 
  min(
    cast(qualifying_1.date as "timestamp")), 
  min(
    cast(qualifying_1.number as int8)), 
  qualifying_1.raceid, 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid = qualifying_1.number
group by qualifying_1.raceid, qualifying_1.raceid, qualifying_1.qualifyid, qualifying_1.position, qualifying_1.raceid, qualifying_1.position, qualifying_1.date, qualifying_1.number, qualifying_1.position, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.position, qualifying_1.position, qualifying_1.raceid, qualifying_1.constructorid, qualifying_1.date, qualifying_1.qualifyid, qualifying_1.raceid, qualifying_1.driverid
limit 40;
select  
  avg(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.constructorid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
    inner join qualifying as qualifying_1
      inner join constructor_standings as constructor_standings_1
      on (qualifying_1.raceid = constructor_standings_1.constructorstandingsid )
    on (constructor_results_1.constructorid = qualifying_1.qualifyid )
where constructor_standings_1.position is not NULL
group by constructor_results_1.constructorid, constructor_results_1.date
limit 23;
select  
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  avg(
    cast(constructors_1.constructorid as int8)), 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.name, constructors_1.nationality, constructors_1.constructorid, constructors_1.constructorid
limit 35;
select  
  constructor_standings_1.constructorstandingsid, 
  count(
    cast(constructor_standings_1.raceid as int8)), 
  constructor_standings_1.raceid, 
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.raceid, constructor_standings_1.date, constructor_standings_1.wins, constructor_standings_1.raceid, constructor_standings_1.constructorstandingsid
limit 38;
select  
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
    inner join constructor_standings as constructor_standings_2
    on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
where constructor_standings_1.points >= constructor_standings_2.points
limit 38;
select  
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  results_1.resultid
from 
  results as results_1
    inner join constructor_results as constructor_results_1
      inner join circuits as circuits_1
      on (constructor_results_1.raceid = circuits_1.circuitid )
    on (results_1.driverid = circuits_1.circuitid )
where circuits_1.circuitid is not NULL
limit 21;
select  
  max(
    cast(constructor_results_1.date as "timestamp")), 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.points
limit 31;
select  
  min(
    cast(standings_1.points as float8)), 
  standings_1.raceid, 
  standings_1.date, 
  standings_1.position, 
  standings_1.wins
from 
  standings as standings_1
where standings_1.driverstandingsid < standings_1.driverid
group by standings_1.raceid, standings_1.date, standings_1.position, standings_1.wins
limit 25;
select  
  standings_1.position, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  standings_1.raceid, 
  avg(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  standings_1.points, 
  standings_1.position, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  standings_1.points, 
  constructor_results_1.date, 
  standings_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  standings_1.points, 
  min(
    cast(constructor_results_1.date as "timestamp")), 
  standings_1.wins, 
  count(*), 
  standings_1.raceid
from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
    on (standings_1.position = constructor_results_1.constructorresultsid )
where constructor_results_1.date is not NULL
group by standings_1.position, constructor_results_1.constructorid, constructor_results_1.constructorid, constructor_results_1.points, constructor_results_1.date, constructor_results_1.points, standings_1.raceid, constructor_results_1.constructorresultsid, constructor_results_1.constructorid, standings_1.points, standings_1.position, constructor_results_1.raceid, constructor_results_1.raceid, standings_1.points, constructor_results_1.date, standings_1.raceid, constructor_results_1.date, constructor_results_1.constructorid, constructor_results_1.points, standings_1.points, standings_1.wins, standings_1.raceid
limit 12;
select  
  standings_1.date, 
  standings_1.date
from 
  standings as standings_1
where standings_1.points < standings_1.points
limit 13;
select  
  standings_2.raceid, 
  races_1.round
from 
  drivers as drivers_1
      inner join races as races_1
      on (drivers_1.nationality = races_1.name )
    inner join standings as standings_1
        inner join standings as standings_2
        on (standings_1.points = standings_2.points )
      inner join drivers as drivers_2
      on (standings_2.raceid = drivers_2.driverid )
    on (races_1.round = standings_1.driverstandingsid )
where races_1.raceid is not NULL
limit 29;
select  
  qualifying_1.constructorid, 
  qualifying_1.date, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
limit 3;
select  
  drivers_1.code, 
  races_1.round
from 
  races as races_1
    inner join drivers as drivers_1
    on (races_1.date = drivers_1.dob )
where drivers_1.driverid is not NULL
limit 31;
select  
  qualifying_1.qualifyid, 
  min(
    cast(qualifying_1.constructorid as int8))
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
group by qualifying_1.qualifyid
limit 31;
select  
  qualifying_1.raceid, 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
limit 2;
select  
  standings_1.driverstandingsid
from 
  standings as standings_1
    inner join constructors as constructors_1
      inner join drivers as drivers_1
      on (constructors_1.constructorref = drivers_1.driverref )
    on (standings_1.raceid = drivers_1.driverid )
where drivers_1.forename is not NULL
limit 18;
select  
  qualifying_1.raceid
from 
  qualifying as qualifying_1
    inner join circuits as circuits_1
    on (qualifying_1.driverid = circuits_1.circuitid )
where circuits_1.country <= circuits_1.name
limit 1;
select  
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
limit 21;
select  
  constructor_standings_1.position, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.position, 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
limit 36;
select  
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
    inner join standings as standings_1
      inner join constructor_results as constructor_results_1
      on (standings_1.date = constructor_results_1.date )
    on (constructor_standings_1.wins = constructor_results_1.constructorresultsid )
where constructor_results_1.date < standings_1.date
limit 8;
select  
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins, 
  min(
    cast(constructor_standings_1.date as "timestamp")), 
  constructor_standings_1.date, 
  count(*), 
  max(
    cast(constructor_standings_1.date as "timestamp")), 
  constructor_standings_1.wins, 
  constructor_standings_1.date, 
  constructor_standings_1.points, 
  constructor_standings_1.position, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  avg(
    cast(constructor_standings_1.points as float8)), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  max(
    cast(constructor_standings_1.date as "timestamp")), 
  constructor_standings_1.raceid, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  min(
    cast(constructor_standings_1.date as "timestamp")), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.raceid, 
  min(
    cast(constructor_standings_1.points as float8))
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.position, constructor_standings_1.constructorid, constructor_standings_1.wins, constructor_standings_1.date, constructor_standings_1.wins, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.date, constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.raceid, constructor_standings_1.points, constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.wins, constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.constructorstandingsid, constructor_standings_1.raceid
limit 30;
select  
  races_1.round, 
  races_2.round, 
  races_1.round
from 
  circuits as circuits_1
    inner join races as races_1
      inner join races as races_2
      on (races_1.round = races_2.raceid )
    on (circuits_1.name = races_2.name )
where races_1.circuitid is not NULL
limit 20;
select  
  races_1.year, 
  max(
    cast(races_1.time as text)), 
  races_1.name, 
  races_1.time
from 
  races as races_1
where races_1.name > races_1.time
group by races_1.year, races_1.name, races_1.time
limit 11;
select  
  min(
    cast(results_1.date as "timestamp")), 
  results_1.laps, 
  results_1.rank, 
  races_1.raceid, 
  races_1.time
from 
  constructor_results as constructor_results_1
        inner join circuits as circuits_1
        on (constructor_results_1.constructorid = circuits_1.circuitid )
      inner join races as races_1
      on (circuits_1.country = races_1.name )
    inner join results as results_1
    on (races_1.circuitid = results_1.resultid )
where races_1.name = circuits_1.location
group by results_1.laps, results_1.rank, races_1.raceid, races_1.time
limit 13;
select  
  drivers_1.forename, 
  max(
    cast(drivers_1.forename as text)), 
  max(
    cast(drivers_1.dob as "timestamp")), 
  avg(
    cast(drivers_1.driverid as int8)), 
  drivers_1.forename, 
  drivers_1.driverid, 
  drivers_1.driverid, 
  drivers_1.surname, 
  drivers_1.forename, 
  drivers_1.driverref, 
  drivers_1.surname, 
  drivers_1.forename, 
  max(
    cast(drivers_1.driverid as int8)), 
  min(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.surname, 
  min(
    cast(drivers_1.forename as text))
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
group by drivers_1.forename, drivers_1.forename, drivers_1.driverid, drivers_1.driverid, drivers_1.surname, drivers_1.forename, drivers_1.driverref, drivers_1.surname, drivers_1.forename, drivers_1.surname
limit 39;
select  
  constructor_results_3.raceid
from 
  constructor_results as constructor_results_1
          inner join constructor_standings as constructor_standings_1
          on (constructor_results_1.constructorid = constructor_standings_1.constructorstandingsid )
        inner join constructor_standings as constructor_standings_2
        on (constructor_results_1.date = constructor_standings_2.date )
      inner join constructor_results as constructor_results_2
      on (constructor_results_1.raceid = constructor_results_2.constructorresultsid )
    inner join constructor_results as constructor_results_3
    on (constructor_standings_2.position = constructor_results_3.constructorresultsid )
where constructor_results_1.date < constructor_results_3.date
limit 34;
select  
  races_1.date, 
  races_1.circuitid
from 
  races as races_1
where races_1.round is not NULL
limit 37;
select  
  circuits_1.location, 
  min(
    cast(circuits_1.circuitid as int8)), 
  circuits_1.lat, 
  circuits_1.lng, 
  circuits_1.lat, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
group by circuits_1.location, circuits_1.lat, circuits_1.lng, circuits_1.lat, circuits_1.name
limit 9;
select  
  qualifying_1.driverid, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.position > qualifying_1.constructorid
limit 40;
select  
  results_1.points, 
  min(
    cast(races_1.date as "timestamp")), 
  drivers_1.surname, 
  avg(
    cast(results_1.milliseconds as float8)), 
  min(
    cast(drivers_2.surname as text)), 
  sum(
    cast(results_1.points as float8)), 
  drivers_1.code
from 
  drivers as drivers_1
    inner join drivers as drivers_2
      inner join results as results_1
          inner join standings as standings_1
          on (results_1.driverid = standings_1.driverstandingsid )
        inner join races as races_1
        on (standings_1.raceid = races_1.raceid )
      on (drivers_2.surname = races_1.name )
    on (drivers_1.forename = drivers_2.driverref )
where drivers_2.dob is not NULL
group by results_1.points, drivers_1.surname, drivers_1.code
limit 36;
select  
  min(
    cast(constructor_standings_1.raceid as int8)), 
  constructor_standings_1.date, 
  constructor_standings_1.points, 
  constructor_standings_1.date, 
  constructor_standings_1.position, 
  sum(
    cast(constructor_standings_1.constructorid as int8)), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.points, 
  constructor_standings_1.points, 
  min(
    cast(constructor_standings_1.date as "timestamp")), 
  count(
    cast(constructor_standings_1.wins as int8))
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
group by constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.constructorid, constructor_standings_1.points, constructor_standings_1.points
limit 27;
select  
  max(
    cast(constructor_standings_1.date as "timestamp")), 
  races_1.date, 
  circuits_1.circuitref, 
  races_1.time, 
  constructor_standings_1.points
from 
  races as races_1
          inner join constructor_standings as constructor_standings_1
          on (races_1.raceid = constructor_standings_1.constructorstandingsid )
        inner join circuits as circuits_1
          inner join drivers as drivers_1
          on (circuits_1.name = drivers_1.driverref )
        on (constructor_standings_1.constructorid = circuits_1.circuitid )
      inner join races as races_2
      on (constructor_standings_1.date = races_2.date )
    inner join standings as standings_1
      inner join drivers as drivers_2
      on (standings_1.date = drivers_2.dob )
    on (races_2.circuitid = standings_1.driverstandingsid )
where circuits_1.lat is not NULL
group by races_1.date, circuits_1.circuitref, races_1.time, constructor_standings_1.points
limit 6;
select  
  min(
    cast(constructor_results_1.date as "timestamp")), 
  sum(
    cast(constructor_results_1.constructorid as int8)), 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.raceid, constructor_results_1.raceid, constructor_results_1.raceid, constructor_results_1.constructorresultsid, constructor_results_1.constructorid, constructor_results_1.raceid
limit 21;
select  
  results_1.position, 
  results_1.date, 
  results_1.points, 
  results_1.milliseconds, 
  min(
    cast(results_1.date as "timestamp")), 
  results_1.date, 
  results_1.milliseconds
from 
  results as results_1
where results_1.milliseconds is not NULL
group by results_1.position, results_1.date, results_1.points, results_1.milliseconds, results_1.date, results_1.milliseconds
limit 27;
select  
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 1;
select  
  standings_1.driverid, 
  standings_1.raceid
from 
  constructors as constructors_1
    inner join standings as standings_1
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where constructors_1.constructorid is not NULL
limit 11;
select  
  max(
    cast(standings_1.date as "timestamp")), 
  standings_1.points, 
  max(
    cast(standings_1.driverstandingsid as int8)), 
  max(
    cast(standings_1.date as "timestamp")), 
  max(
    cast(standings_1.date as "timestamp"))
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
group by standings_1.points
limit 24;
select  
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 14;
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date, 
  constructor_standings_1.date, 
  constructor_standings_1.points, 
  count(
    cast(constructor_standings_1.position as int8)), 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins, 
  sum(
    cast(constructor_standings_1.points as float8)), 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.wins, constructor_standings_1.constructorid, constructor_standings_1.wins, constructor_standings_1.raceid
limit 37;
select  
  results_1.statusid, 
  results_1.date, 
  results_1.statusid, 
  results_1.statusid
from 
  results as results_1
where results_1.statusid > results_1.raceid
limit 23;
select  
  max(
    cast(results_1.date as "timestamp")), 
  results_1.points, 
  results_1.statusid, 
  results_1.grid, 
  results_1.number
from 
  results as results_1
where results_1.fastestlap is not NULL
group by results_1.points, results_1.statusid, results_1.grid, results_1.number
limit 20;
select  
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
limit 1;
select  
  constructors_1.constructorid, 
  constructors_1.nationality, 
  min(
    cast(constructors_1.constructorid as int8))
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorid, constructors_1.nationality
limit 28;
select  
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.circuitref < circuits_1.location
limit 13;
select  
  circuits_1.circuitref, 
  circuits_1.country
from 
  circuits as circuits_1
where circuits_1.country is not NULL
limit 5;
select  
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  avg(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.date, constructor_results_1.raceid, constructor_results_1.raceid
limit 18;
select  
  circuits_1.circuitid, 
  circuits_1.circuitid, 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.country > circuits_1.location
limit 1;
select  
  drivers_1.code, 
  drivers_1.nationality, 
  drivers_1.driverid, 
  drivers_1.dob, 
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.code is not NULL
limit 11;
select  
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 7;
select  
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  count(
    cast(constructors_1.name as text))
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.name, constructors_1.constructorid, constructors_1.constructorref, constructors_1.constructorref
limit 11;
select  
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  max(
    cast(constructors_1.constructorid as int8)), 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.nationality, constructors_1.name, constructors_1.nationality, constructors_1.nationality, constructors_1.constructorref, constructors_1.name, constructors_1.nationality, constructors_1.constructorid, constructors_1.constructorid, constructors_1.nationality, constructors_1.constructorid
limit 26;
select  
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 14;
select  
  circuits_1.country, 
  circuits_1.name, 
  circuits_1.lat, 
  circuits_1.lat, 
  circuits_1.country, 
  circuits_1.lng, 
  circuits_1.lng, 
  circuits_1.country, 
  circuits_1.circuitref, 
  circuits_1.location, 
  circuits_1.name, 
  circuits_1.lng, 
  circuits_1.country, 
  circuits_1.location, 
  circuits_1.location, 
  count(
    cast(circuits_1.lng as float8)), 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.lat <= circuits_1.alt
group by circuits_1.country, circuits_1.name, circuits_1.lat, circuits_1.lat, circuits_1.country, circuits_1.lng, circuits_1.lng, circuits_1.country, circuits_1.circuitref, circuits_1.location, circuits_1.name, circuits_1.lng, circuits_1.country, circuits_1.location, circuits_1.location, circuits_1.name
limit 18;
select  
  drivers_1.surname, 
  drivers_1.driverid, 
  drivers_1.surname, 
  drivers_1.code, 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
limit 28;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  max(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  sum(
    cast(constructor_results_1.constructorresultsid as int8)), 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.date, constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.points
limit 32;
select  
  results_1.rank, 
  drivers_1.forename, 
  results_1.grid
from 
  results as results_1
      inner join qualifying as qualifying_1
      on (results_1.positionorder = qualifying_1.qualifyid )
    inner join drivers as drivers_1
    on (results_1.resultid = drivers_1.driverid )
where qualifying_1.number is not NULL
limit 19;
select  
  max(
    cast(results_1.constructorid as int8)), 
  results_1.driverid, 
  results_1.number, 
  results_1.constructorid
from 
  results as results_1
where results_1.date > results_1.date
group by results_1.driverid, results_1.number, results_1.constructorid
limit 29;
select  
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  max(
    cast(constructors_1.constructorid as int8)), 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.name, constructors_1.name, constructors_1.constructorref, constructors_1.name, constructors_1.name, constructors_1.constructorref, constructors_1.nationality, constructors_1.constructorref, constructors_1.name, constructors_1.constructorid, constructors_1.name, constructors_1.constructorid, constructors_1.name, constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality, constructors_1.nationality, constructors_1.nationality, constructors_1.nationality, constructors_1.constructorref
limit 42;
select  
  races_1.year
from 
  races as races_1
where races_1.time is not NULL
limit 26;
select  
  drivers_1.dob, 
  drivers_1.nationality, 
  sum(
    cast(drivers_1.driverid as int8))
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
group by drivers_1.dob, drivers_1.nationality
limit 24;
select  
  min(
    cast(circuits_1.location as text)), 
  circuits_1.alt, 
  circuits_1.alt, 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.name is not NULL
group by circuits_1.alt, circuits_1.alt, circuits_1.circuitid
limit 8;
select  
  races_1.name, 
  races_1.name, 
  races_1.circuitid, 
  races_1.raceid, 
  races_1.year, 
  races_1.time, 
  races_1.raceid, 
  races_1.raceid, 
  races_1.year, 
  max(
    cast(races_1.name as text))
from 
  races as races_1
where races_1.round is not NULL
group by races_1.name, races_1.name, races_1.circuitid, races_1.raceid, races_1.year, races_1.time, races_1.raceid, races_1.raceid, races_1.year
limit 11;
select  
  drivers_1.dob, 
  drivers_1.nationality, 
  circuits_1.lat, 
  circuits_1.lng, 
  drivers_1.driverref, 
  drivers_1.nationality, 
  drivers_1.driverref, 
  circuits_1.circuitid, 
  circuits_1.country, 
  drivers_1.driverid, 
  min(
    cast(circuits_1.circuitid as int8)), 
  drivers_2.nationality, 
  drivers_1.forename, 
  drivers_1.forename, 
  drivers_2.driverid, 
  circuits_1.name
from 
  circuits as circuits_1
    inner join drivers as drivers_1
      inner join drivers as drivers_2
      on (drivers_1.driverref = drivers_2.driverref )
    on (circuits_1.location = drivers_2.driverref )
where drivers_1.driverref is not NULL
group by drivers_1.dob, drivers_1.nationality, circuits_1.lat, circuits_1.lng, drivers_1.driverref, drivers_1.nationality, drivers_1.driverref, circuits_1.circuitid, circuits_1.country, drivers_1.driverid, drivers_2.nationality, drivers_1.forename, drivers_1.forename, drivers_2.driverid, circuits_1.name
limit 22;
select  
  qualifying_1.date, 
  drivers_1.code, 
  drivers_1.dob, 
  standings_2.driverstandingsid, 
  drivers_1.code, 
  standings_2.points, 
  standings_1.raceid, 
  drivers_1.driverid, 
  standings_2.points, 
  min(
    cast(standings_2.date as "timestamp"))
from 
  drivers as drivers_1
          inner join qualifying as qualifying_1
          on (drivers_1.dob = qualifying_1.date )
        inner join standings as standings_1
        on (qualifying_1.number = standings_1.driverstandingsid )
      inner join standings as standings_2
      on (qualifying_1.driverid = standings_2.driverstandingsid )
    inner join constructor_standings as constructor_standings_1
    on (standings_2.driverstandingsid = constructor_standings_1.constructorstandingsid )
where drivers_1.driverref > drivers_1.surname
group by qualifying_1.date, drivers_1.code, drivers_1.dob, standings_2.driverstandingsid, drivers_1.code, standings_2.points, standings_1.raceid, drivers_1.driverid, standings_2.points
limit 23;
select  
  races_1.round, 
  races_1.time
from 
  races as races_1
where races_1.date = races_1.date
limit 24;
select distinct 
  min(
    cast(drivers_1.dob as "timestamp")), 
  max(
    cast(constructor_standings_1.position as int8)), 
  qualifying_1.position, 
  circuits_1.country
from 
  constructor_standings as constructor_standings_1
      inner join circuits as circuits_1
        inner join qualifying as qualifying_1
        on (circuits_1.circuitid = qualifying_1.qualifyid )
      on (constructor_standings_1.wins = qualifying_1.qualifyid )
    inner join constructor_results as constructor_results_1
      inner join drivers as drivers_1
      on (constructor_results_1.raceid = drivers_1.driverid )
    on (constructor_standings_1.raceid = drivers_1.driverid )
where qualifying_1.constructorid is not NULL
group by qualifying_1.position, circuits_1.country
limit 20;
select  
  circuits_1.name, 
  circuits_1.lat, 
  circuits_1.lat, 
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.alt is not NULL
limit 2;
select  
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid <= constructor_results_1.constructorresultsid
limit 22;
select  
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 28;
select  
  constructor_standings_1.points, 
  constructor_standings_1.date, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 10;
select  
  max(
    cast(drivers_1.nationality as text)), 
  max(
    cast(races_1.name as text)), 
  races_1.time, 
  drivers_1.surname, 
  races_1.circuitid, 
  drivers_1.nationality, 
  races_1.circuitid, 
  races_1.time, 
  races_1.raceid, 
  races_1.name
from 
  drivers as drivers_1
    inner join races as races_1
    on (drivers_1.nationality = races_1.name )
where races_1.year is not NULL
group by races_1.time, drivers_1.surname, races_1.circuitid, drivers_1.nationality, races_1.circuitid, races_1.time, races_1.raceid, races_1.name
limit 29;
select  
  standings_1.driverstandingsid, 
  standings_1.wins, 
  standings_1.position
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
limit 5;
select  
  constructors_1.constructorref
from 
  constructors as constructors_1
      inner join races as races_1
      on (constructors_1.constructorref = races_1.name )
    inner join circuits as circuits_1
    on (races_1.name = circuits_1.circuitref )
where races_1.raceid < circuits_1.circuitid
limit 4;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.date = constructor_results_1.date
limit 16;
select  
  circuits_1.lat, 
  circuits_1.lng, 
  circuits_1.country
from 
  circuits as circuits_1
    inner join results as results_1
    on (circuits_1.lng = results_1.number )
where results_1.date < results_1.date
limit 6;
select  
  races_1.year, 
  races_1.round, 
  races_1.time, 
  max(
    cast(races_1.date as "timestamp")), 
  races_1.round, 
  min(
    cast(races_1.name as text))
from 
  races as races_1
where races_1.name is not NULL
group by races_1.year, races_1.round, races_1.time, races_1.round
limit 10;
select  
  results_2.grid
from 
  results as results_1
      inner join results as results_2
        inner join constructors as constructors_1
        on (results_2.grid = constructors_1.constructorid )
      on (results_1.constructorid = results_2.resultid )
    inner join standings as standings_1
    on (results_1.constructorid = standings_1.driverstandingsid )
where results_2.resultid is not NULL
limit 6;
select  
  constructor_standings_1.constructorstandingsid
from 
  qualifying as qualifying_1
    inner join constructor_results as constructor_results_1
      inner join standings as standings_1
          inner join constructor_standings as constructor_standings_1
          on (standings_1.raceid = constructor_standings_1.constructorstandingsid )
        inner join results as results_1
        on (constructor_standings_1.constructorid = results_1.resultid )
      on (constructor_results_1.points = constructor_standings_1.points )
    on (qualifying_1.raceid = constructor_standings_1.constructorstandingsid )
where results_1.fastestlap = results_1.rank
limit 2;
select  
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.points > constructor_results_1.points
limit 12;
select  
  max(
    cast(qualifying_1.constructorid as int8))
from 
  qualifying as qualifying_1
    inner join races as races_1
    on (qualifying_1.raceid = races_1.raceid )
where races_1.date > qualifying_1.date
limit 2;
select  
  avg(
    cast(drivers_1.driverid as int8))
from 
  qualifying as qualifying_1
        inner join constructor_results as constructor_results_1
        on (qualifying_1.date = constructor_results_1.date )
      inner join drivers as drivers_1
          inner join constructor_results as constructor_results_2
          on (drivers_1.dob = constructor_results_2.date )
        inner join constructor_results as constructor_results_3
        on (constructor_results_2.constructorresultsid = constructor_results_3.constructorresultsid )
      on (qualifying_1.qualifyid = constructor_results_2.constructorresultsid )
    inner join constructor_standings as constructor_standings_1
      inner join standings as standings_1
      on (constructor_standings_1.position = standings_1.driverstandingsid )
    on (constructor_results_1.constructorid = constructor_standings_1.constructorstandingsid )
where constructor_results_3.date is not NULL
limit 14;
select  
  results_1.rank
from 
  results as results_1
where results_1.position is not NULL
limit 25;
select  
  standings_1.date, 
  sum(
    cast(standings_1.driverid as int8))
from 
  standings as standings_1
where standings_1.driverid is not NULL
group by standings_1.date
limit 21;
select  
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  standings_1.wins, 
  standings_1.position
from 
  standings as standings_1
where standings_1.wins < standings_1.position
limit 12;
select  
  results_1.laps, 
  results_1.milliseconds
from 
  results as results_1
where results_1.position is not NULL
limit 20;
select  
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.name is not NULL
limit 9;
select  
  results_1.number, 
  count(
    cast(results_1.resultid as int8)), 
  max(
    cast(results_1.date as "timestamp")), 
  results_1.laps, 
  max(
    cast(results_1.date as "timestamp")), 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
    inner join results as results_1
    on (qualifying_1.raceid = results_1.resultid )
where qualifying_1.date > results_1.date
group by results_1.number, results_1.laps, qualifying_1.qualifyid
limit 5;
select  
  drivers_1.forename, 
  drivers_1.nationality, 
  drivers_1.nationality, 
  drivers_1.nationality, 
  drivers_1.driverref, 
  drivers_1.nationality, 
  drivers_1.dob, 
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
limit 35;
select  
  max(
    cast(races_1.date as "timestamp")), 
  races_1.date
from 
  races as races_1
where races_1.time is not NULL
group by races_1.date
limit 41;
select  
  circuits_1.circuitid, 
  circuits_1.location, 
  circuits_1.lat, 
  circuits_1.circuitid, 
  drivers_2.forename, 
  drivers_1.surname, 
  min(
    cast(circuits_1.lat as float8)), 
  min(
    cast(drivers_1.code as text)), 
  standings_1.driverid, 
  standings_1.wins, 
  drivers_1.driverid, 
  standings_1.driverstandingsid, 
  circuits_1.alt, 
  circuits_1.lat, 
  drivers_1.nationality, 
  constructor_results_1.constructorid
from 
  standings as standings_1
    inner join circuits as circuits_1
          inner join races as races_1
          on (circuits_1.location = races_1.name )
        inner join constructor_results as constructor_results_1
          inner join drivers as drivers_1
          on (constructor_results_1.raceid = drivers_1.driverid )
        on (circuits_1.circuitid = drivers_1.driverid )
      inner join drivers as drivers_2
      on (constructor_results_1.raceid = drivers_2.driverid )
    on (standings_1.position = drivers_1.driverid )
where drivers_1.surname is not NULL
group by circuits_1.circuitid, circuits_1.location, circuits_1.lat, circuits_1.circuitid, drivers_2.forename, drivers_1.surname, standings_1.driverid, standings_1.wins, drivers_1.driverid, standings_1.driverstandingsid, circuits_1.alt, circuits_1.lat, drivers_1.nationality, constructor_results_1.constructorid
limit 38;
select  
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.position is not NULL
limit 6;
select  
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 1;
select  
  results_1.resultid
from 
  results as results_1
where results_1.laps is not NULL
limit 5;
select  
  qualifying_1.position, 
  qualifying_1.driverid, 
  qualifying_1.date, 
  qualifying_1.driverid, 
  max(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.constructorid, 
  qualifying_1.date, 
  qualifying_1.date, 
  qualifying_1.number, 
  max(
    cast(qualifying_1.date as "timestamp")), 
  max(
    cast(qualifying_1.position as int8)), 
  qualifying_1.qualifyid, 
  sum(
    cast(qualifying_1.constructorid as int8)), 
  qualifying_1.raceid, 
  qualifying_1.constructorid, 
  min(
    cast(qualifying_1.qualifyid as int8))
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
group by qualifying_1.position, qualifying_1.driverid, qualifying_1.date, qualifying_1.driverid, qualifying_1.constructorid, qualifying_1.date, qualifying_1.date, qualifying_1.number, qualifying_1.qualifyid, qualifying_1.raceid, qualifying_1.constructorid
limit 3;
select  
  max(
    cast(results_1.date as "timestamp")), 
  results_1.points, 
  results_1.resultid, 
  results_1.date, 
  results_1.grid, 
  count(
    cast(results_1.raceid as int8)), 
  results_1.constructorid, 
  avg(
    cast(results_1.milliseconds as float8)), 
  results_1.points, 
  results_1.positionorder, 
  results_1.position, 
  results_1.milliseconds, 
  avg(
    cast(results_1.milliseconds as float8)), 
  results_1.positionorder, 
  results_1.date, 
  results_1.grid, 
  results_1.grid
from 
  results as results_1
where results_1.rank is not NULL
group by results_1.points, results_1.resultid, results_1.date, results_1.grid, results_1.constructorid, results_1.points, results_1.positionorder, results_1.position, results_1.milliseconds, results_1.positionorder, results_1.date, results_1.grid, results_1.grid
limit 35;
select  
  circuits_1.country, 
  races_1.date, 
  races_1.name, 
  circuits_1.lng
from 
  races as races_1
    inner join circuits as circuits_1
    on (races_1.round = circuits_1.circuitid )
where races_1.round is not NULL
limit 11;
select  
  qualifying_2.qualifyid
from 
  qualifying as qualifying_1
    inner join standings as standings_1
        inner join qualifying as qualifying_2
        on (standings_1.date = qualifying_2.date )
      inner join constructor_standings as constructor_standings_1
      on (qualifying_2.date = constructor_standings_1.date )
    on (qualifying_1.driverid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.position is not NULL
limit 24;
select  
  results_1.points, 
  results_1.fastestlap, 
  results_1.points, 
  results_1.statusid, 
  results_1.resultid, 
  avg(
    cast(results_1.number as float8)), 
  results_1.resultid, 
  max(
    cast(results_1.date as "timestamp")), 
  sum(
    cast(results_1.rank as float8)), 
  results_1.number, 
  results_1.constructorid, 
  results_1.grid, 
  results_1.constructorid, 
  min(
    cast(results_1.date as "timestamp"))
from 
  results as results_1
where results_1.fastestlap <= results_1.milliseconds
group by results_1.points, results_1.fastestlap, results_1.points, results_1.statusid, results_1.resultid, results_1.resultid, results_1.number, results_1.constructorid, results_1.grid, results_1.constructorid
limit 11;
select  
  constructor_results_1.points, 
  qualifying_1.number, 
  constructor_results_1.date, 
  qualifying_1.driverid
from 
  constructor_results as constructor_results_1
    inner join qualifying as qualifying_1
    on (constructor_results_1.constructorid = qualifying_1.qualifyid )
where constructor_results_1.raceid is not NULL
limit 2;
select  
  races_2.year
from 
  races as races_1
      inner join races as races_2
        inner join constructor_standings as constructor_standings_1
        on (races_2.round = constructor_standings_1.constructorstandingsid )
      on (races_1.raceid = races_2.raceid )
    inner join standings as standings_1
    on (races_2.year = standings_1.driverstandingsid )
where constructor_standings_1.date >= standings_1.date
limit 25;
select  
  races_1.round, 
  races_1.year, 
  min(
    cast(races_1.name as text)), 
  races_1.date, 
  races_1.round, 
  races_1.date, 
  races_1.year, 
  races_1.date, 
  races_1.circuitid, 
  races_1.year, 
  races_1.date, 
  races_1.circuitid, 
  races_1.time, 
  races_1.round, 
  races_1.date, 
  max(
    cast(races_1.date as "timestamp")), 
  races_1.time, 
  races_1.raceid, 
  races_1.round
from 
  races as races_1
where races_1.time is not NULL
group by races_1.round, races_1.year, races_1.date, races_1.round, races_1.date, races_1.year, races_1.date, races_1.circuitid, races_1.year, races_1.date, races_1.circuitid, races_1.time, races_1.round, races_1.date, races_1.time, races_1.raceid, races_1.round
limit 31;
select  
  constructor_standings_1.constructorid, 
  sum(
    cast(standings_1.raceid as int8)), 
  standings_1.points
from 
  constructor_standings as constructor_standings_1
      inner join standings as standings_1
        inner join constructor_results as constructor_results_1
        on (standings_1.position = constructor_results_1.constructorresultsid )
      on (constructor_standings_1.position = constructor_results_1.constructorresultsid )
    inner join constructor_results as constructor_results_2
    on (constructor_standings_1.constructorstandingsid = constructor_results_2.constructorresultsid )
where constructor_results_2.constructorid is not NULL
group by constructor_standings_1.constructorid, standings_1.points
limit 17;
select  
  circuits_2.circuitid, 
  circuits_2.name
from 
  circuits as circuits_1
      inner join standings as standings_1
        inner join constructor_results as constructor_results_1
        on (standings_1.raceid = constructor_results_1.constructorresultsid )
      on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
    inner join circuits as circuits_2
    on (standings_1.driverstandingsid = circuits_2.circuitid )
where circuits_2.alt is not NULL
limit 17;
select  
  races_1.round, 
  races_1.name, 
  max(
    cast(races_1.date as "timestamp")), 
  races_1.round, 
  min(
    cast(races_1.date as "timestamp")), 
  races_1.round, 
  races_1.time, 
  races_1.round, 
  races_1.year, 
  races_1.circuitid, 
  races_1.time, 
  races_1.circuitid
from 
  races as races_1
where races_1.circuitid is not NULL
group by races_1.round, races_1.name, races_1.round, races_1.round, races_1.time, races_1.round, races_1.year, races_1.circuitid, races_1.time, races_1.circuitid
limit 13;
select  
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
limit 23;
select  
  constructor_standings_1.date, 
  constructor_results_1.constructorid, 
  constructor_standings_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_standings_1.points, 
  constructor_results_1.constructorid, 
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  constructor_results_1.raceid, 
  avg(
    cast(constructor_standings_1.points as float8)), 
  constructor_standings_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_standings_1.position, 
  constructor_results_1.constructorid
from 
  constructor_standings as constructor_standings_1
    inner join constructor_results as constructor_results_1
    on (constructor_standings_1.date = constructor_results_1.date )
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.date, constructor_results_1.constructorid, constructor_standings_1.date, constructor_results_1.constructorresultsid, constructor_results_1.constructorid, constructor_standings_1.points, constructor_results_1.constructorid, constructor_standings_1.position, constructor_standings_1.raceid, constructor_results_1.raceid, constructor_standings_1.constructorid, constructor_results_1.constructorid, constructor_standings_1.position, constructor_results_1.constructorid
limit 22;
select  
  results_1.rank, 
  min(
    cast(results_1.points as float8)), 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid, 
  min(
    cast(results_1.rank as float8)), 
  results_1.statusid
from 
  results as results_1
      inner join qualifying as qualifying_1
      on (results_1.resultid = qualifying_1.qualifyid )
    inner join constructor_standings as constructor_standings_1
    on (results_1.positionorder = constructor_standings_1.constructorstandingsid )
where results_1.statusid > constructor_standings_1.wins
group by results_1.rank, constructor_standings_1.date, constructor_standings_1.constructorid, results_1.statusid
limit 21;
select  
  standings_1.wins
from 
  standings as standings_1
    inner join qualifying as qualifying_1
      inner join constructor_standings as constructor_standings_1
      on (qualifying_1.raceid = constructor_standings_1.constructorstandingsid )
    on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.wins is not NULL
limit 33;
select  
  qualifying_1.number, 
  count(
    cast(standings_1.wins as int8)), 
  qualifying_1.raceid, 
  results_1.statusid
from 
  standings as standings_1
    inner join results as results_1
      inner join qualifying as qualifying_1
      on (results_1.laps = qualifying_1.qualifyid )
    on (standings_1.raceid = qualifying_1.qualifyid )
where standings_1.raceid is not NULL
group by qualifying_1.number, qualifying_1.raceid, results_1.statusid
limit 18;
select  
  qualifying_1.raceid, 
  count(
    cast(qualifying_1.date as "timestamp")), 
  circuits_1.name, 
  circuits_1.lng, 
  qualifying_1.raceid, 
  qualifying_1.date, 
  races_2.date, 
  min(
    cast(races_1.year as int8)), 
  races_2.round, 
  races_2.year
from 
  races as races_1
      inner join races as races_2
      on (races_1.round = races_2.raceid )
    inner join qualifying as qualifying_1
      inner join circuits as circuits_1
      on (qualifying_1.qualifyid = circuits_1.circuitid )
    on (races_2.raceid = qualifying_1.qualifyid )
where qualifying_1.raceid <= races_2.raceid
group by qualifying_1.raceid, circuits_1.name, circuits_1.lng, qualifying_1.raceid, qualifying_1.date, races_2.date, races_2.round, races_2.year
limit 12;
select  
  results_1.statusid, 
  qualifying_1.driverid, 
  results_1.fastestlap, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
    inner join results as results_1
    on (qualifying_1.qualifyid = results_1.resultid )
where results_1.date is not NULL
limit 25;
select  
  min(
    cast(results_1.number as float8)), 
  results_1.positionorder
from 
  circuits as circuits_1
    inner join results as results_1
      inner join circuits as circuits_2
      on (results_1.rank = circuits_2.lat )
    on (circuits_1.lat = results_1.number )
where circuits_2.country is not NULL
group by results_1.positionorder
limit 2;
select  
  standings_1.wins, 
  standings_1.driverid, 
  standings_1.driverid, 
  sum(
    cast(standings_1.points as float8)), 
  standings_1.driverid, 
  max(
    cast(standings_1.date as "timestamp"))
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
group by standings_1.wins, standings_1.driverid, standings_1.driverid, standings_1.driverid
limit 3;
select  
  races_1.circuitid, 
  races_1.raceid, 
  races_1.round, 
  races_1.circuitid, 
  races_1.time, 
  max(
    cast(races_1.date as "timestamp")), 
  races_1.time, 
  races_1.circuitid, 
  races_1.time
from 
  races as races_1
where races_1.time is not NULL
group by races_1.circuitid, races_1.raceid, races_1.round, races_1.circuitid, races_1.time, races_1.time, races_1.circuitid, races_1.time
limit 13;
select  
  min(
    cast(constructor_results_1.date as "timestamp"))
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
limit 1;
select  
  standings_1.wins, 
  min(
    cast(standings_1.position as int8))
from 
  standings as standings_1
where standings_1.raceid is not NULL
group by standings_1.wins
limit 15;
select  
  min(
    cast(circuits_1.circuitref as text)), 
  min(
    cast(circuits_1.lat as float8)), 
  circuits_1.circuitid, 
  circuits_1.circuitid, 
  circuits_1.lat, 
  circuits_1.name, 
  max(
    cast(circuits_1.circuitid as int8))
from 
  circuits as circuits_1
where circuits_1.name is not NULL
group by circuits_1.circuitid, circuits_1.circuitid, circuits_1.lat, circuits_1.name
limit 21;
select  
  circuits_1.circuitref, 
  circuits_1.name, 
  circuits_1.location, 
  max(
    cast(circuits_1.lng as float8)), 
  circuits_1.lat, 
  circuits_1.lng, 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.name > circuits_1.circuitref
group by circuits_1.circuitref, circuits_1.name, circuits_1.location, circuits_1.lat, circuits_1.lng, circuits_1.alt
limit 3;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  min(
    cast(constructor_standings_1.date as "timestamp"))
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date <= constructor_standings_1.date
group by constructor_standings_1.wins, constructor_standings_1.points
limit 8;
select  
  drivers_2.nationality, 
  drivers_2.nationality, 
  max(
    cast(drivers_1.dob as "timestamp"))
from 
  drivers as drivers_1
    inner join drivers as drivers_2
    on (drivers_1.driverref = drivers_2.driverref )
where drivers_2.surname is not NULL
group by drivers_2.nationality, drivers_2.nationality
limit 34;
select  
  qualifying_1.qualifyid, 
  constructors_1.name, 
  constructors_1.constructorref, 
  max(
    cast(qualifying_1.date as "timestamp")), 
  constructors_1.constructorid, 
  qualifying_1.date, 
  qualifying_1.date, 
  qualifying_1.driverid, 
  count(*)
from 
  qualifying as qualifying_1
    inner join constructors as constructors_1
    on (qualifying_1.number = constructors_1.constructorid )
where qualifying_1.qualifyid is not NULL
group by qualifying_1.qualifyid, constructors_1.name, constructors_1.constructorref, constructors_1.constructorid, qualifying_1.date, qualifying_1.date, qualifying_1.driverid
limit 7;
select  
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 1;
select  
  circuits_1.location, 
  circuits_1.location
from 
  circuits as circuits_1
    inner join constructor_standings as constructor_standings_1
    on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
where circuits_1.circuitid is not NULL
limit 31;
select  
  drivers_1.code
from 
  circuits as circuits_1
        inner join drivers as drivers_1
        on (circuits_1.name = drivers_1.driverref )
      inner join constructor_results as constructor_results_1
      on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
    inner join races as races_1
    on (constructor_results_1.constructorid = races_1.raceid )
where drivers_1.code is not NULL
limit 15;
select  
  circuits_1.lat, 
  circuits_1.alt, 
  max(
    cast(drivers_1.driverid as int8)), 
  drivers_1.forename
from 
  drivers as drivers_1
    inner join circuits as circuits_1
    on (drivers_1.driverid = circuits_1.circuitid )
where circuits_1.alt = circuits_1.lat
group by circuits_1.lat, circuits_1.alt, drivers_1.forename
limit 31;
select  
  races_1.round, 
  races_1.round, 
  races_1.date, 
  races_1.round, 
  races_1.date, 
  races_1.circuitid
from 
  races as races_1
where races_1.date is not NULL
limit 32;
select  
  min(
    cast(constructor_standings_1.date as "timestamp")), 
  constructor_standings_1.points, 
  constructor_standings_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_standings_1.wins
from 
  constructor_results as constructor_results_1
    inner join constructor_standings as constructor_standings_1
    on (constructor_results_1.raceid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.points >= constructor_results_1.points
group by constructor_standings_1.points, constructor_standings_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.points, constructor_standings_1.wins
limit 5;
select  
  min(
    cast(qualifying_1.date as "timestamp")), 
  count(
    cast(qualifying_1.raceid as int8)), 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
group by qualifying_1.driverid
limit 4;
select  
  results_1.laps, 
  count(*), 
  results_1.grid, 
  results_1.points
from 
  results as results_1
where results_1.positionorder is not NULL
group by results_1.laps, results_1.grid, results_1.points
limit 29;
select  
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.name
from 
  circuits as circuits_1
    inner join constructors as constructors_1
      inner join constructor_results as constructor_results_1
      on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
    on (circuits_1.lat = constructor_results_1.points )
where constructor_results_1.constructorresultsid >= circuits_1.circuitid
limit 18;
select  
  constructor_results_1.points, 
  circuits_1.name, 
  constructor_results_1.raceid, 
  circuits_1.circuitref, 
  circuits_1.alt, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  circuits_1.location, 
  circuits_1.location, 
  constructor_results_1.points
from 
  circuits as circuits_1
    inner join constructor_results as constructor_results_1
    on (circuits_1.alt = constructor_results_1.points )
where constructor_results_1.points <= circuits_1.alt
limit 9;
select  
  races_1.name, 
  sum(
    cast(races_1.year as int8)), 
  races_1.raceid, 
  races_1.date, 
  races_1.year
from 
  races as races_1
where races_1.date >= races_1.date
group by races_1.name, races_1.raceid, races_1.date, races_1.year
limit 7;
select  
  min(
    cast(constructor_results_1.points as float8))
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
limit 5;
select  
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
limit 5;
select  
  races_1.time, 
  constructors_1.nationality, 
  races_1.round, 
  count(*), 
  constructors_1.name, 
  circuits_1.name, 
  constructors_1.constructorid, 
  circuits_1.alt
from 
  circuits as circuits_1
      inner join constructors as constructors_1
      on (circuits_1.country = constructors_1.constructorref )
    inner join races as races_1
    on (circuits_1.location = races_1.name )
where races_1.date is not NULL
group by races_1.time, constructors_1.nationality, races_1.round, constructors_1.name, circuits_1.name, constructors_1.constructorid, circuits_1.alt
limit 8;
select  
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.driverid > drivers_1.driverid
limit 18;
select  
  count(*)
from 
  results as results_1
where results_1.grid is not NULL
limit 30;
select  
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.name, 
  count(
    cast(constructors_1.nationality as text)), 
  max(
    cast(constructors_1.constructorref as text)), 
  min(
    cast(constructors_1.constructorref as text)), 
  constructors_1.name, 
  sum(
    cast(constructors_1.constructorid as int8)), 
  constructors_1.name, 
  max(
    cast(constructors_1.constructorid as int8)), 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality, constructors_1.name, constructors_1.name, constructors_1.name, constructors_1.constructorid, constructors_1.name, constructors_1.nationality, constructors_1.constructorid, constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality
limit 24;
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date, 
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
limit 3;
select  
  standings_1.wins, 
  constructors_1.nationality, 
  circuits_1.location, 
  standings_1.driverstandingsid, 
  standings_1.position, 
  circuits_1.name, 
  constructors_1.constructorref, 
  constructors_1.nationality
from 
  circuits as circuits_1
    inner join standings as standings_1
      inner join constructors as constructors_1
      on (standings_1.wins = constructors_1.constructorid )
    on (circuits_1.circuitref = constructors_1.constructorref )
where standings_1.position is not NULL
limit 13;
select  
  count(
    cast(constructor_results_1.constructorresultsid as int8)), 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  max(
    cast(constructor_results_1.date as "timestamp")), 
  sum(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid = constructor_results_1.raceid
group by constructor_results_1.raceid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid, constructor_results_1.raceid, constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.raceid
limit 29;
select  
  standings_1.driverid, 
  constructor_standings_1.raceid, 
  races_1.round
from 
  constructor_results as constructor_results_1
        inner join standings as standings_1
        on (constructor_results_1.points = standings_1.points )
      inner join races as races_1
      on (constructor_results_1.date = races_1.date )
    inner join constructor_standings as constructor_standings_1
    on (races_1.round = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.position is not NULL
limit 1;
select  
  constructor_standings_2.constructorid, 
  drivers_1.driverid
from 
  constructor_standings as constructor_standings_1
        inner join qualifying as qualifying_1
        on (constructor_standings_1.wins = qualifying_1.qualifyid )
      inner join standings as standings_1
      on (constructor_standings_1.points = standings_1.points )
    inner join drivers as drivers_1
      inner join constructor_standings as constructor_standings_2
      on (drivers_1.dob = constructor_standings_2.date )
    on (standings_1.points = constructor_standings_2.points )
where standings_1.position is not NULL
limit 37;
select  
  circuits_1.country, 
  circuits_1.alt, 
  circuits_1.name, 
  circuits_1.lat, 
  circuits_1.circuitid
from 
  circuits as circuits_1
    inner join qualifying as qualifying_1
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where circuits_1.location >= circuits_1.name
limit 36;
select  
  constructors_1.name, 
  min(
    cast(standings_1.points as float8)), 
  constructors_1.name, 
  avg(
    cast(drivers_1.driverid as int8)), 
  standings_1.driverid, 
  drivers_1.nationality, 
  standings_1.driverid, 
  drivers_1.code, 
  drivers_1.forename, 
  drivers_1.driverid, 
  min(
    cast(standings_1.points as float8)), 
  drivers_1.nationality, 
  drivers_1.driverref, 
  standings_1.raceid, 
  standings_1.wins, 
  constructors_1.name, 
  constructors_1.nationality, 
  drivers_1.dob, 
  drivers_1.driverid, 
  standings_1.wins, 
  min(
    cast(standings_1.date as "timestamp")), 
  drivers_1.code, 
  drivers_1.driverref
from 
  drivers as drivers_1
      inner join standings as standings_1
      on (drivers_1.dob = standings_1.date )
    inner join constructors as constructors_1
    on (drivers_1.surname = constructors_1.constructorref )
where constructors_1.name >= drivers_1.nationality
group by constructors_1.name, constructors_1.name, standings_1.driverid, drivers_1.nationality, standings_1.driverid, drivers_1.code, drivers_1.forename, drivers_1.driverid, drivers_1.nationality, drivers_1.driverref, standings_1.raceid, standings_1.wins, constructors_1.name, constructors_1.nationality, drivers_1.dob, drivers_1.driverid, standings_1.wins, drivers_1.code, drivers_1.driverref
limit 26;
select  
  constructor_results_1.points, 
  drivers_1.dob, 
  constructor_results_1.constructorid, 
  drivers_1.surname, 
  drivers_1.code, 
  drivers_1.forename, 
  drivers_1.nationality
from 
  constructor_results as constructor_results_1
    inner join drivers as drivers_1
    on (constructor_results_1.raceid = drivers_1.driverid )
where constructor_results_1.constructorid < constructor_results_1.raceid
limit 20;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date <= constructor_standings_1.date
limit 41;
select  
  races_1.date
from 
  drivers as drivers_1
    inner join races as races_1
      inner join races as races_2
      on (races_1.circuitid = races_2.raceid )
    on (drivers_1.driverid = races_1.raceid )
where races_2.raceid is not NULL
limit 37;
select  
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  standings_1.wins, 
  min(
    cast(standings_1.date as "timestamp")), 
  standings_1.driverid, 
  max(
    cast(standings_1.points as float8)), 
  standings_1.position, 
  standings_1.date, 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.wins is not NULL
group by standings_1.driverid, standings_1.driverstandingsid, standings_1.wins, standings_1.driverid, standings_1.position, standings_1.date, standings_1.raceid
limit 10;
select  
  constructors_1.constructorref, 
  races_1.name, 
  constructors_1.constructorref, 
  races_1.name, 
  avg(
    cast(circuits_1.lat as float8)), 
  circuits_1.location, 
  races_1.name, 
  circuits_1.circuitid, 
  races_1.year
from 
  circuits as circuits_1
      inner join constructors as constructors_1
      on (circuits_1.circuitid = constructors_1.constructorid )
    inner join races as races_1
    on (circuits_1.circuitref = races_1.name )
where races_1.date <= races_1.date
group by constructors_1.constructorref, races_1.name, constructors_1.constructorref, races_1.name, circuits_1.location, races_1.name, circuits_1.circuitid, races_1.year
limit 4;
select  
  standings_1.raceid, 
  constructor_results_1.date, 
  max(
    cast(standings_1.raceid as int8)), 
  races_1.year, 
  min(
    cast(constructor_results_1.constructorid as int8)), 
  constructor_results_1.date, 
  constructor_results_1.date, 
  races_1.raceid, 
  min(
    cast(races_1.date as "timestamp")), 
  races_1.round, 
  constructor_results_1.points, 
  races_1.year, 
  count(
    cast(races_1.raceid as int8))
from 
  races as races_1
      inner join standings as standings_1
      on (races_1.round = standings_1.driverstandingsid )
    inner join constructor_results as constructor_results_1
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where constructor_results_1.constructorresultsid is not NULL
group by standings_1.raceid, constructor_results_1.date, races_1.year, constructor_results_1.date, constructor_results_1.date, races_1.raceid, races_1.round, constructor_results_1.points, races_1.year
limit 30;
select  
  circuits_1.circuitref, 
  circuits_1.alt, 
  circuits_1.location, 
  circuits_1.alt, 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.circuitid <= circuits_1.circuitid
limit 21;
select  
  constructors_1.constructorid, 
  drivers_1.nationality, 
  drivers_2.surname, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  drivers_1.forename, 
  drivers_1.dob, 
  races_1.circuitid, 
  races_1.round, 
  races_1.year
from 
  constructors as constructors_1
    inner join drivers as drivers_1
      inner join drivers as drivers_2
        inner join races as races_1
        on (drivers_2.driverref = races_1.name )
      on (drivers_1.surname = races_1.name )
    on (constructors_1.nationality = drivers_2.driverref )
where constructors_1.constructorref is not NULL
limit 25;
select  
  drivers_1.driverid, 
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
limit 32;
select  
  drivers_1.forename, 
  drivers_1.driverid, 
  drivers_1.driverref, 
  drivers_1.nationality, 
  drivers_1.surname, 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.dob >= drivers_1.dob
limit 39;
select  
  drivers_1.driverref, 
  drivers_1.surname, 
  drivers_1.driverref, 
  drivers_1.dob, 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.forename is not NULL
limit 9;
select  
  qualifying_1.qualifyid, 
  constructor_standings_1.constructorid, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
    inner join constructor_standings as constructor_standings_1
    on (qualifying_1.driverid = constructor_standings_1.constructorstandingsid )
where qualifying_1.driverid is not NULL
limit 19;
select  
  constructor_results_1.constructorid, 
  circuits_2.name
from 
  constructor_results as constructor_results_1
    inner join races as races_1
      inner join circuits as circuits_1
        inner join circuits as circuits_2
        on (circuits_1.location = circuits_2.circuitref )
      on (races_1.round = circuits_2.circuitid )
    on (constructor_results_1.raceid = circuits_1.circuitid )
where circuits_2.circuitid = races_1.year
limit 6;
select  
  drivers_1.nationality, 
  drivers_1.forename, 
  drivers_1.nationality, 
  drivers_1.driverid, 
  drivers_1.dob, 
  max(
    cast(drivers_1.nationality as text)), 
  drivers_1.surname, 
  drivers_1.driverid, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
group by drivers_1.nationality, drivers_1.forename, drivers_1.nationality, drivers_1.driverid, drivers_1.dob, drivers_1.surname, drivers_1.driverid, drivers_1.driverid
limit 37;
select  
  races_1.time
from 
  races as races_1
where races_1.round is not NULL
limit 12;
select  
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 26;
select  
  standings_1.driverstandingsid, 
  standings_1.wins, 
  standings_1.points, 
  standings_1.date, 
  count(
    cast(standings_1.position as int8)), 
  standings_1.date, 
  avg(
    cast(standings_1.driverid as int8)), 
  max(
    cast(standings_1.wins as int8))
from 
  standings as standings_1
where standings_1.date >= standings_1.date
group by standings_1.driverstandingsid, standings_1.wins, standings_1.points, standings_1.date, standings_1.date
limit 35;
select  
  sum(
    cast(circuits_1.lat as float8))
from 
  circuits as circuits_1
    inner join constructors as constructors_1
    on (circuits_1.circuitid = constructors_1.constructorid )
where constructors_1.constructorid = circuits_1.circuitid
limit 16;
select  
  circuits_1.country, 
  circuits_1.alt, 
  results_1.rank, 
  circuits_1.location, 
  circuits_1.circuitref, 
  min(
    cast(results_1.resultid as int8))
from 
  circuits as circuits_1
    inner join results as results_1
    on (circuits_1.lng = results_1.number )
where results_1.date <= results_1.date
group by circuits_1.country, circuits_1.alt, results_1.rank, circuits_1.location, circuits_1.circuitref
limit 24;
select  
  standings_1.wins, 
  races_3.round, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points
from 
  circuits as circuits_1
      inner join constructors as constructors_1
      on (circuits_1.circuitref = constructors_1.constructorref )
    inner join races as races_1
      inner join races as races_2
            inner join qualifying as qualifying_1
            on (races_2.circuitid = qualifying_1.qualifyid )
          inner join standings as standings_1
          on (qualifying_1.date = standings_1.date )
        inner join races as races_3
          inner join constructor_results as constructor_results_1
          on (races_3.date = constructor_results_1.date )
        on (races_2.year = constructor_results_1.constructorresultsid )
      on (races_1.year = standings_1.driverstandingsid )
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where races_3.year is not NULL
limit 17;
select  
  qualifying_2.constructorid, 
  drivers_2.surname, 
  drivers_2.forename, 
  circuits_1.alt, 
  drivers_1.code, 
  drivers_1.forename, 
  constructors_1.constructorid, 
  qualifying_2.position, 
  circuits_1.name, 
  drivers_1.dob, 
  count(*), 
  constructors_1.name, 
  constructor_standings_1.constructorstandingsid
from 
  qualifying as qualifying_1
        inner join constructors as constructors_1
        on (qualifying_1.qualifyid = constructors_1.constructorid )
      inner join drivers as drivers_1
      on (qualifying_1.position = drivers_1.driverid )
    inner join circuits as circuits_1
        inner join drivers as drivers_2
        on (circuits_1.country = drivers_2.driverref )
      inner join qualifying as qualifying_2
        inner join constructor_standings as constructor_standings_1
        on (qualifying_2.qualifyid = constructor_standings_1.constructorstandingsid )
      on (drivers_2.dob = constructor_standings_1.date )
    on (drivers_1.dob = constructor_standings_1.date )
where circuits_1.lat < circuits_1.alt
group by qualifying_2.constructorid, drivers_2.surname, drivers_2.forename, circuits_1.alt, drivers_1.code, drivers_1.forename, constructors_1.constructorid, qualifying_2.position, circuits_1.name, drivers_1.dob, constructors_1.name, constructor_standings_1.constructorstandingsid
limit 31;
select  
  constructors_1.constructorref, 
  constructors_1.nationality, 
  min(
    cast(constructors_1.nationality as text)), 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  max(
    cast(constructors_1.name as text)), 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  max(
    cast(constructors_1.constructorid as int8)), 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorref, constructors_1.nationality, constructors_1.nationality, constructors_1.name, constructors_1.nationality, constructors_1.name, constructors_1.nationality, constructors_1.name, constructors_1.nationality, constructors_1.constructorid, constructors_1.nationality, constructors_1.constructorid, constructors_1.constructorid, constructors_1.nationality
limit 41;
select  
  standings_1.driverid
from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
    on (standings_1.wins = constructor_results_1.constructorresultsid )
where standings_1.date is not NULL
limit 4;
select  
  sum(
    cast(constructor_standings_1.constructorstandingsid as int8)), 
  standings_1.position, 
  max(
    cast(drivers_1.dob as "timestamp")), 
  standings_1.raceid, 
  standings_1.driverstandingsid, 
  drivers_1.forename
from 
  standings as standings_1
    inner join circuits as circuits_1
      inner join constructor_standings as constructor_standings_1
        inner join drivers as drivers_1
        on (constructor_standings_1.raceid = drivers_1.driverid )
      on (circuits_1.lat = constructor_standings_1.points )
    on (standings_1.position = drivers_1.driverid )
where circuits_1.country is not NULL
group by standings_1.position, standings_1.raceid, standings_1.driverstandingsid, drivers_1.forename
limit 11;
select  
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 22;
select  
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.points, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
limit 29;
select  
  qualifying_2.constructorid, 
  qualifying_2.driverid
from 
  qualifying as qualifying_1
    inner join qualifying as qualifying_2
    on (qualifying_1.driverid = qualifying_2.qualifyid )
where qualifying_1.driverid > qualifying_1.constructorid
limit 34;
select  
  results_1.points, 
  min(
    cast(results_1.fastestlap as float8)), 
  results_1.raceid, 
  results_1.positionorder, 
  results_1.fastestlap
from 
  results as results_1
where results_1.milliseconds is not NULL
group by results_1.points, results_1.raceid, results_1.positionorder, results_1.fastestlap
limit 33;
select  
  max(
    cast(standings_1.points as float8)), 
  standings_1.driverid, 
  standings_1.points, 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.wins is not NULL
group by standings_1.driverid, standings_1.points, standings_1.driverid
limit 30;
select  
  circuits_1.alt, 
  circuits_1.circuitref, 
  circuits_1.name, 
  circuits_1.country, 
  circuits_1.alt, 
  circuits_1.circuitid, 
  min(
    cast(circuits_1.circuitid as int8)), 
  circuits_1.alt, 
  count(*), 
  circuits_1.circuitid, 
  circuits_1.lng, 
  circuits_1.location, 
  circuits_1.name, 
  circuits_1.country, 
  circuits_1.circuitref, 
  max(
    cast(circuits_1.circuitid as int8)), 
  circuits_1.circuitref, 
  min(
    cast(circuits_1.lat as float8)), 
  circuits_1.alt, 
  circuits_1.name, 
  circuits_1.location, 
  circuits_1.lat, 
  circuits_1.lat, 
  max(
    cast(circuits_1.alt as float8)), 
  circuits_1.alt, 
  circuits_1.country, 
  max(
    cast(circuits_1.circuitid as int8))
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
group by circuits_1.alt, circuits_1.circuitref, circuits_1.name, circuits_1.country, circuits_1.alt, circuits_1.circuitid, circuits_1.alt, circuits_1.circuitid, circuits_1.lng, circuits_1.location, circuits_1.name, circuits_1.country, circuits_1.circuitref, circuits_1.circuitref, circuits_1.alt, circuits_1.name, circuits_1.location, circuits_1.lat, circuits_1.lat, circuits_1.alt, circuits_1.country
limit 20;
select  
  races_1.round, 
  max(
    cast(races_1.raceid as int8)), 
  races_1.name, 
  avg(
    cast(races_1.raceid as int8)), 
  races_1.raceid, 
  max(
    cast(races_1.name as text)), 
  races_1.round, 
  max(
    cast(races_1.name as text)), 
  races_1.time, 
  races_1.time, 
  races_1.round, 
  races_1.date, 
  count(
    cast(races_1.year as int8)), 
  races_1.time, 
  races_1.circuitid, 
  races_1.name, 
  races_1.circuitid
from 
  races as races_1
where races_1.circuitid is not NULL
group by races_1.round, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.time, races_1.round, races_1.date, races_1.time, races_1.circuitid, races_1.name, races_1.circuitid
limit 24;
select  
  standings_2.driverid
from 
  standings as standings_1
        inner join drivers as drivers_1
        on (standings_1.date = drivers_1.dob )
      inner join standings as standings_2
      on (standings_1.position = standings_2.driverstandingsid )
    inner join constructor_results as constructor_results_1
    on (standings_2.driverid = constructor_results_1.constructorresultsid )
where standings_2.driverstandingsid is not NULL
limit 10;
select  
  drivers_1.driverid, 
  drivers_1.nationality, 
  drivers_1.driverid, 
  max(
    cast(drivers_1.nationality as text)), 
  drivers_1.driverref, 
  drivers_1.code, 
  drivers_1.driverid, 
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.dob = drivers_1.dob
group by drivers_1.driverid, drivers_1.nationality, drivers_1.driverid, drivers_1.driverref, drivers_1.code, drivers_1.driverid, drivers_1.dob
limit 8;
select  
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
limit 4;
select  
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.circuitref = circuits_1.location
limit 34;
select  
  races_2.date, 
  count(
    cast(races_2.date as "timestamp"))
from 
  races as races_1
    inner join races as races_2
    on (races_1.date = races_2.date )
where races_2.year is not NULL
group by races_2.date
limit 42;
select distinct 
  drivers_1.surname, 
  drivers_1.code, 
  max(
    cast(drivers_2.driverref as text)), 
  max(
    cast(standings_1.points as float8)), 
  min(
    cast(drivers_2.code as text)), 
  drivers_2.nationality, 
  standings_1.points
from 
  drivers as drivers_1
      inner join standings as standings_1
      on (drivers_1.dob = standings_1.date )
    inner join drivers as drivers_2
    on (standings_1.raceid = drivers_2.driverid )
where standings_1.raceid >= drivers_2.driverid
group by drivers_1.surname, drivers_1.code, drivers_2.nationality, standings_1.points
limit 40;
select  
  races_1.round, 
  races_1.year
from 
  races as races_1
where races_1.name is not NULL
limit 33;
select  
  max(
    cast(circuits_1.circuitref as text)), 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.lng < circuits_1.lat
group by circuits_1.circuitid
limit 7;
select  
  constructor_standings_2.position, 
  constructor_standings_2.constructorid, 
  min(
    cast(constructor_standings_2.date as "timestamp")), 
  constructor_standings_2.position
from 
  constructor_standings as constructor_standings_1
    inner join constructor_results as constructor_results_1
      inner join constructor_standings as constructor_standings_2
      on (constructor_results_1.constructorresultsid = constructor_standings_2.constructorstandingsid )
    on (constructor_standings_1.points = constructor_standings_2.points )
where constructor_standings_2.wins is not NULL
group by constructor_standings_2.position, constructor_standings_2.constructorid, constructor_standings_2.position
limit 8;
select  
  circuits_1.circuitref, 
  circuits_1.circuitid, 
  circuits_1.circuitid, 
  max(
    cast(circuits_1.location as text)), 
  circuits_1.alt, 
  circuits_1.alt, 
  circuits_1.location, 
  max(
    cast(circuits_1.circuitid as int8)), 
  max(
    cast(circuits_1.country as text)), 
  circuits_1.circuitid, 
  circuits_1.lat, 
  circuits_1.circuitid, 
  circuits_1.name, 
  circuits_1.lat, 
  circuits_1.lat, 
  circuits_1.location, 
  circuits_1.circuitref, 
  count(
    cast(circuits_1.location as text)), 
  circuits_1.alt, 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
group by circuits_1.circuitref, circuits_1.circuitid, circuits_1.circuitid, circuits_1.alt, circuits_1.alt, circuits_1.location, circuits_1.circuitid, circuits_1.lat, circuits_1.circuitid, circuits_1.name, circuits_1.lat, circuits_1.lat, circuits_1.location, circuits_1.circuitref, circuits_1.alt, circuits_1.lng
limit 32;
select  
  results_1.fastestlap, 
  results_1.driverid, 
  results_1.number, 
  results_1.driverid, 
  results_1.raceid, 
  results_1.position, 
  results_1.number
from 
  results as results_1
where results_1.resultid is not NULL
limit 32;
select  
  constructors_1.nationality, 
  constructor_results_2.raceid, 
  constructors_1.name, 
  constructors_1.name, 
  count(
    cast(constructor_results_1.constructorresultsid as int8)), 
  constructor_results_2.constructorresultsid, 
  constructor_results_2.date, 
  constructors_1.constructorid, 
  constructor_results_1.constructorid
from 
  constructors as constructors_1
      inner join constructor_results as constructor_results_1
      on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
    inner join constructor_results as constructor_results_2
    on (constructors_1.constructorid = constructor_results_2.constructorresultsid )
where constructors_1.name is not NULL
group by constructors_1.nationality, constructor_results_2.raceid, constructors_1.name, constructors_1.name, constructor_results_2.constructorresultsid, constructor_results_2.date, constructors_1.constructorid, constructor_results_1.constructorid
limit 13;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points < constructor_standings_1.points
limit 36;
select  
  drivers_1.nationality, 
  drivers_1.code, 
  drivers_1.driverref, 
  drivers_1.driverid, 
  drivers_1.code, 
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.driverid = drivers_1.driverid
limit 3;
select  
  races_1.raceid, 
  races_1.round
from 
  races as races_1
where races_1.date is not NULL
limit 12;
select  
  min(
    cast(qualifying_2.position as int8)), 
  races_1.circuitid, 
  races_1.year, 
  circuits_1.lat
from 
  races as races_1
      inner join qualifying as qualifying_1
      on (races_1.circuitid = qualifying_1.qualifyid )
    inner join drivers as drivers_1
          inner join circuits as circuits_1
          on (drivers_1.driverref = circuits_1.circuitref )
        inner join races as races_2
        on (circuits_1.name = races_2.name )
      inner join qualifying as qualifying_2
      on (circuits_1.circuitid = qualifying_2.qualifyid )
    on (races_1.name = drivers_1.driverref )
where races_2.circuitid is not NULL
group by races_1.circuitid, races_1.year, circuits_1.lat
limit 6;
select  
  races_1.date, 
  races_1.circuitid, 
  races_1.name, 
  constructors_1.nationality, 
  races_1.year, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.nationality, 
  max(
    cast(constructors_1.nationality as text))
from 
  races as races_1
    inner join constructors as constructors_1
    on (races_1.circuitid = constructors_1.constructorid )
where constructors_1.constructorref is not NULL
group by races_1.date, races_1.circuitid, races_1.name, constructors_1.nationality, races_1.year, constructors_1.constructorref, constructors_1.constructorid, constructors_1.name, constructors_1.nationality
limit 36;
select  
  constructors_1.constructorref, 
  qualifying_1.date, 
  circuits_1.circuitref
from 
  circuits as circuits_1
    inner join standings as standings_1
      inner join constructors as constructors_1
          inner join qualifying as qualifying_1
          on (constructors_1.constructorid = qualifying_1.qualifyid )
        inner join constructors as constructors_2
        on (constructors_1.constructorref = constructors_2.constructorref )
      on (standings_1.driverstandingsid = constructors_2.constructorid )
    on (circuits_1.circuitid = constructors_2.constructorid )
where standings_1.position is not NULL
limit 37;
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_results_1.constructorresultsid, 
  constructor_standings_1.wins, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_results_1.points, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_standings_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
    inner join constructor_results as constructor_results_1
    on (constructor_standings_1.points = constructor_results_1.points )
where constructor_results_1.raceid is not NULL
limit 31;
select  
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  count(*), 
  max(
    cast(constructors_1.name as text)), 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.constructorref, constructors_1.constructorid, constructors_1.constructorid, constructors_1.nationality, constructors_1.name, constructors_1.constructorref, constructors_1.constructorref, constructors_1.nationality, constructors_1.constructorid, constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality, constructors_1.constructorid, constructors_1.constructorref, constructors_1.constructorid, constructors_1.name
limit 25;
select  
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
limit 28;
select  
  max(
    cast(circuits_1.lng as float8)), 
  circuits_1.circuitref, 
  circuits_1.location, 
  circuits_1.name, 
  circuits_1.circuitid, 
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
group by circuits_1.circuitref, circuits_1.location, circuits_1.name, circuits_1.circuitid, circuits_1.circuitref
limit 1;
select  
  drivers_1.nationality, 
  circuits_1.alt, 
  drivers_1.surname, 
  drivers_1.nationality, 
  drivers_1.code, 
  circuits_1.lng
from 
  drivers as drivers_1
    inner join circuits as circuits_1
    on (drivers_1.driverid = circuits_1.circuitid )
where circuits_1.location is not NULL
limit 18;
select  
  avg(
    cast(circuits_1.lat as float8)), 
  circuits_1.alt, 
  min(
    cast(circuits_1.country as text)), 
  circuits_1.country, 
  circuits_1.location, 
  circuits_1.lng, 
  min(
    cast(circuits_1.lng as float8)), 
  max(
    cast(circuits_1.country as text))
from 
  circuits as circuits_1
where circuits_1.country is not NULL
group by circuits_1.alt, circuits_1.country, circuits_1.location, circuits_1.lng
limit 23;
select  
  standings_1.driverid, 
  standings_1.points, 
  min(
    cast(constructor_results_1.points as float8)), 
  standings_1.wins, 
  standings_1.points, 
  constructor_results_1.constructorid, 
  max(
    cast(standings_1.driverid as int8)), 
  standings_1.position
from 
  constructor_results as constructor_results_1
    inner join standings as standings_1
    on (constructor_results_1.raceid = standings_1.driverstandingsid )
where standings_1.position is not NULL
group by standings_1.driverid, standings_1.points, standings_1.wins, standings_1.points, constructor_results_1.constructorid, standings_1.position
limit 7;
select  
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 18;
select  
  results_1.number, 
  qualifying_1.raceid, 
  qualifying_1.driverid, 
  results_1.number, 
  qualifying_1.driverid, 
  results_1.constructorid
from 
  results as results_1
    inner join qualifying as qualifying_1
    on (results_1.laps = qualifying_1.qualifyid )
where qualifying_1.number is not NULL
limit 37;
select  
  results_1.rank, 
  results_1.grid, 
  drivers_1.driverref, 
  drivers_1.driverid, 
  max(
    cast(drivers_1.surname as text)), 
  results_1.driverid
from 
  results as results_1
    inner join drivers as drivers_1
    on (results_1.resultid = drivers_1.driverid )
where results_1.statusid is not NULL
group by results_1.rank, results_1.grid, drivers_1.driverref, drivers_1.driverid, results_1.driverid
limit 9;
select  
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 26;
select  
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  min(
    cast(races_1.name as text)), 
  races_1.date
from 
  constructor_results as constructor_results_1
    inner join races as races_1
    on (constructor_results_1.constructorresultsid = races_1.raceid )
where constructor_results_1.points <= constructor_results_1.points
group by constructor_results_1.date, constructor_results_1.date, constructor_results_1.points, constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, constructor_results_1.raceid, races_1.date
limit 30;
select  
  constructor_results_1.points, 
  max(
    cast(circuits_1.country as text))
from 
  circuits as circuits_1
    inner join constructor_results as constructor_results_1
    on (circuits_1.alt = constructor_results_1.points )
where circuits_1.circuitid <= constructor_results_1.constructorresultsid
group by constructor_results_1.points
limit 30;
select  
  drivers_1.surname, 
  max(
    cast(constructor_results_1.date as "timestamp")), 
  races_1.round
from 
  constructors as constructors_1
        inner join drivers as drivers_1
        on (constructors_1.name = drivers_1.driverref )
      inner join constructors as constructors_2
            inner join constructor_results as constructor_results_1
            on (constructors_2.constructorid = constructor_results_1.constructorresultsid )
          inner join races as races_1
            inner join qualifying as qualifying_1
            on (races_1.circuitid = qualifying_1.qualifyid )
          on (constructor_results_1.constructorid = races_1.raceid )
        inner join standings as standings_1
        on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
      on (constructors_1.nationality = constructors_2.constructorref )
    inner join standings as standings_2
    on (standings_1.driverid = standings_2.driverstandingsid )
where constructors_2.nationality is not NULL
group by drivers_1.surname, races_1.round
limit 23;
select  
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 31;
select  
  results_1.positionorder, 
  min(
    cast(results_1.statusid as int8))
from 
  results as results_1
where results_1.driverid is not NULL
group by results_1.positionorder
limit 26;
select  
  races_2.date, 
  races_1.circuitid, 
  min(
    cast(races_2.circuitid as int8)), 
  races_2.date
from 
  races as races_1
    inner join races as races_2
    on (races_1.year = races_2.raceid )
where races_2.round is not NULL
group by races_2.date, races_1.circuitid, races_2.date
limit 33;
select  
  constructor_results_1.points, 
  constructor_standings_1.constructorid
from 
  constructor_results as constructor_results_1
          inner join constructor_standings as constructor_standings_1
          on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
        inner join circuits as circuits_1
        on (constructor_standings_1.constructorid = circuits_1.circuitid )
      inner join circuits as circuits_2
      on (constructor_standings_1.constructorid = circuits_2.circuitid )
    inner join constructor_standings as constructor_standings_2
    on (constructor_results_1.raceid = constructor_standings_2.constructorstandingsid )
where constructor_standings_1.constructorstandingsid is not NULL
limit 33;
select  
  max(
    cast(constructor_standings_1.raceid as int8))
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date >= constructor_standings_1.date
limit 25;
select  
  max(
    cast(circuits_1.circuitref as text)), 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
group by circuits_1.name
limit 35;
select  
  constructors_1.name, 
  constructors_1.name, 
  count(*), 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.name, constructors_1.name, constructors_1.constructorid, constructors_1.nationality, constructors_1.nationality, constructors_1.constructorid, constructors_1.nationality
limit 7;
select  
  circuits_1.circuitref, 
  max(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.constructorid, 
  min(
    cast(circuits_1.country as text)), 
  circuits_1.name, 
  circuits_2.lng
from 
  circuits as circuits_1
      inner join circuits as circuits_2
      on (circuits_1.circuitid = circuits_2.circuitid )
    inner join qualifying as qualifying_1
    on (circuits_2.circuitid = qualifying_1.qualifyid )
where circuits_2.location is not NULL
group by circuits_1.circuitref, qualifying_1.constructorid, circuits_1.name, circuits_2.lng
limit 18;
select  
  drivers_1.dob, 
  drivers_1.dob, 
  max(
    cast(drivers_1.dob as "timestamp"))
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
group by drivers_1.dob, drivers_1.dob
limit 1;
select  
  circuits_1.alt, 
  circuits_1.circuitref, 
  circuits_2.country, 
  drivers_1.forename, 
  drivers_1.driverref
from 
  drivers as drivers_1
      inner join circuits as circuits_1
      on (drivers_1.nationality = circuits_1.circuitref )
    inner join circuits as circuits_2
    on (circuits_1.circuitid = circuits_2.circuitid )
where drivers_1.driverref is not NULL
limit 39;
select  
  races_1.date
from 
  circuits as circuits_1
      inner join races as races_1
      on (circuits_1.circuitid = races_1.raceid )
    inner join drivers as drivers_1
      inner join standings as standings_1
      on (drivers_1.driverid = standings_1.driverstandingsid )
    on (races_1.round = drivers_1.driverid )
where circuits_1.circuitid is not NULL
limit 36;
select  
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
limit 41;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  constructor_standings_1.raceid, 
  max(
    cast(constructor_standings_1.date as "timestamp")), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.raceid, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins, constructor_standings_1.raceid, constructor_standings_1.constructorid, constructor_standings_1.raceid, constructor_standings_1.raceid
limit 9;
select  
  races_1.circuitid, 
  races_1.year, 
  races_1.raceid, 
  races_1.date, 
  races_1.circuitid, 
  races_1.year, 
  races_1.round, 
  max(
    cast(races_1.name as text)), 
  min(
    cast(races_1.name as text))
from 
  races as races_1
where races_1.year is not NULL
group by races_1.circuitid, races_1.year, races_1.raceid, races_1.date, races_1.circuitid, races_1.year, races_1.round
limit 16;
select  
  races_1.circuitid, 
  races_1.circuitid, 
  races_1.year
from 
  races as races_1
    inner join drivers as drivers_1
    on (races_1.time = drivers_1.driverref )
where races_1.round is not NULL
limit 22;
select  
  standings_1.raceid, 
  max(
    cast(standings_1.date as "timestamp")), 
  standings_1.points, 
  standings_1.driverid, 
  standings_1.driverid, 
  standings_1.position, 
  standings_1.raceid, 
  max(
    cast(standings_1.date as "timestamp")), 
  count(*), 
  standings_1.points, 
  standings_1.wins, 
  standings_1.date, 
  standings_1.points, 
  standings_1.points, 
  standings_1.driverid, 
  standings_1.raceid, 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.date < standings_1.date
group by standings_1.raceid, standings_1.points, standings_1.driverid, standings_1.driverid, standings_1.position, standings_1.raceid, standings_1.points, standings_1.wins, standings_1.date, standings_1.points, standings_1.points, standings_1.driverid, standings_1.raceid, standings_1.driverid
limit 8;
select  
  results_1.rank, 
  results_1.positionorder, 
  results_1.positionorder, 
  max(
    cast(circuits_1.name as text)), 
  circuits_1.lat, 
  results_1.milliseconds, 
  min(
    cast(circuits_1.circuitref as text)), 
  results_1.fastestlap, 
  circuits_1.location, 
  circuits_1.circuitref, 
  count(
    cast(results_1.position as float8)), 
  results_1.points, 
  results_1.resultid, 
  results_1.grid
from 
  circuits as circuits_1
    inner join results as results_1
    on (circuits_1.alt = results_1.number )
where results_1.date > results_1.date
group by results_1.rank, results_1.positionorder, results_1.positionorder, circuits_1.lat, results_1.milliseconds, results_1.fastestlap, circuits_1.location, circuits_1.circuitref, results_1.points, results_1.resultid, results_1.grid
limit 17;
select  
  count(*), 
  constructors_1.name, 
  min(
    cast(constructor_standings_1.date as "timestamp")), 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructor_standings_1.constructorstandingsid, 
  constructors_1.name
from 
  constructor_standings as constructor_standings_1
    inner join constructors as constructors_1
    on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
where constructors_1.constructorref is not NULL
group by constructors_1.name, constructors_1.constructorref, constructors_1.nationality, constructor_standings_1.constructorstandingsid, constructors_1.name
limit 42;
select  
  qualifying_1.number, 
  standings_1.driverid
from 
  standings as standings_1
          inner join constructor_results as constructor_results_1
          on (standings_1.position = constructor_results_1.constructorresultsid )
        inner join circuits as circuits_1
        on (constructor_results_1.points = circuits_1.lat )
      inner join constructor_results as constructor_results_2
      on (circuits_1.alt = constructor_results_2.points )
    inner join qualifying as qualifying_1
      inner join results as results_1
          inner join constructor_results as constructor_results_3
          on (results_1.number = constructor_results_3.points )
        inner join results as results_2
        on (constructor_results_3.raceid = results_2.resultid )
      on (qualifying_1.date = results_2.date )
    on (standings_1.date = constructor_results_3.date )
where results_1.constructorid is not NULL
limit 41;
select  
  drivers_1.driverref, 
  min(
    cast(drivers_1.driverref as text)), 
  sum(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.raceid, 
  min(
    cast(drivers_1.nationality as text)), 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  drivers_1.surname, 
  drivers_1.nationality
from 
  drivers as drivers_1
    inner join constructor_results as constructor_results_1
    on (drivers_1.driverid = constructor_results_1.constructorresultsid )
where drivers_1.code = drivers_1.surname
group by drivers_1.driverref, constructor_results_1.raceid, constructor_results_1.date, constructor_results_1.raceid, drivers_1.surname, drivers_1.nationality
limit 13;
select  
  max(
    cast(results_1.date as "timestamp"))
from 
  results as results_1
where results_1.milliseconds is not NULL
limit 11;
select  
  results_1.raceid, 
  results_1.constructorid, 
  results_1.raceid, 
  results_1.driverid, 
  results_1.fastestlap, 
  results_1.rank, 
  results_1.points, 
  results_1.resultid, 
  results_1.constructorid, 
  results_1.rank, 
  results_1.points, 
  results_1.fastestlap, 
  results_1.points, 
  results_1.driverid, 
  results_1.positionorder, 
  results_1.fastestlap, 
  results_1.constructorid, 
  results_1.rank, 
  results_1.points, 
  results_1.laps
from 
  results as results_1
where results_1.raceid is not NULL
limit 39;
select  
  races_1.name, 
  count(
    cast(drivers_1.dob as "timestamp")), 
  max(
    cast(drivers_1.dob as "timestamp")), 
  races_1.time, 
  constructor_results_2.constructorid, 
  drivers_1.nationality, 
  constructor_results_2.points, 
  constructor_results_2.raceid, 
  races_1.date
from 
  constructor_results as constructor_results_1
        inner join constructor_results as constructor_results_2
        on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
      inner join drivers as drivers_1
      on (constructor_results_2.constructorresultsid = drivers_1.driverid )
    inner join races as races_1
    on (drivers_1.code = races_1.name )
where constructor_results_1.constructorresultsid is not NULL
group by races_1.name, races_1.time, constructor_results_2.constructorid, drivers_1.nationality, constructor_results_2.points, constructor_results_2.raceid, races_1.date
limit 4;
select  
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 38;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date < constructor_standings_1.date
limit 20;
select  
  max(
    cast(constructor_results_1.date as "timestamp")), 
  constructor_results_1.points
from 
  constructor_standings as constructor_standings_1
      inner join constructor_results as constructor_results_1
        inner join races as races_1
        on (constructor_results_1.constructorresultsid = races_1.raceid )
      on (constructor_standings_1.raceid = constructor_results_1.constructorresultsid )
    inner join drivers as drivers_1
    on (constructor_standings_1.position = drivers_1.driverid )
where constructor_standings_1.date is not NULL
group by constructor_results_1.points
limit 15;
select  
  races_1.circuitid, 
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  races_1.name, 
  races_1.time, 
  races_1.name, 
  constructor_standings_1.constructorstandingsid, 
  drivers_1.code, 
  races_1.date, 
  races_1.year, 
  constructor_standings_1.raceid, 
  min(
    cast(constructor_standings_1.raceid as int8)), 
  drivers_1.surname, 
  constructor_standings_1.position, 
  avg(
    cast(constructor_standings_1.points as float8))
from 
  drivers as drivers_1
      inner join constructor_standings as constructor_standings_1
      on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
    inner join races as races_1
    on (constructor_standings_1.wins = races_1.raceid )
where constructor_standings_1.constructorstandingsid is not NULL
group by races_1.circuitid, constructor_standings_1.position, constructor_standings_1.wins, constructor_standings_1.constructorstandingsid, races_1.name, races_1.time, races_1.name, constructor_standings_1.constructorstandingsid, drivers_1.code, races_1.date, races_1.year, constructor_standings_1.raceid, drivers_1.surname, constructor_standings_1.position
limit 11;
select  
  count(
    cast(constructors_1.constructorref as text)), 
  constructors_1.constructorref, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.constructorref, constructors_1.name
limit 16;
select  
  min(
    cast(constructor_standings_1.points as float8)), 
  constructor_standings_1.points, 
  max(
    cast(constructor_standings_1.date as "timestamp")), 
  constructors_1.nationality, 
  avg(
    cast(constructor_standings_1.constructorid as int8)), 
  constructors_1.constructorref, 
  constructor_standings_1.position, 
  constructors_1.nationality, 
  constructors_1.constructorid
from 
  constructor_standings as constructor_standings_1
    inner join constructors as constructors_1
    on (constructor_standings_1.raceid = constructors_1.constructorid )
where constructors_1.nationality is not NULL
group by constructor_standings_1.points, constructors_1.nationality, constructors_1.constructorref, constructor_standings_1.position, constructors_1.nationality, constructors_1.constructorid
limit 15;
select  
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 22;
select  
  sum(
    cast(results_1.milliseconds as float8)), 
  results_1.fastestlap, 
  results_1.position, 
  results_1.milliseconds, 
  avg(
    cast(results_1.constructorid as int8)), 
  results_1.statusid
from 
  results as results_1
where results_1.raceid is not NULL
group by results_1.fastestlap, results_1.position, results_1.milliseconds, results_1.statusid
limit 25;
select  
  circuits_1.circuitid, 
  circuits_1.alt, 
  count(*), 
  count(
    cast(circuits_1.circuitref as text)), 
  avg(
    cast(circuits_1.circuitid as int8)), 
  circuits_1.name, 
  circuits_1.country, 
  circuits_1.alt, 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.lat < circuits_1.lng
group by circuits_1.circuitid, circuits_1.alt, circuits_1.name, circuits_1.country, circuits_1.alt, circuits_1.location
limit 42;
select  
  qualifying_2.number, 
  max(
    cast(qualifying_2.date as "timestamp")), 
  qualifying_1.raceid, 
  qualifying_2.driverid, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
    inner join constructor_results as constructor_results_1
      inner join qualifying as qualifying_2
      on (constructor_results_1.constructorresultsid = qualifying_2.qualifyid )
    on (qualifying_1.date = qualifying_2.date )
where qualifying_1.constructorid is not NULL
group by qualifying_2.number, qualifying_1.raceid, qualifying_2.driverid, qualifying_1.raceid
limit 4;
select  
  results_1.laps, 
  max(
    cast(results_1.date as "timestamp")), 
  results_1.statusid, 
  qualifying_1.driverid, 
  results_1.positionorder, 
  results_1.statusid
from 
  qualifying as qualifying_1
    inner join results as results_1
    on (qualifying_1.driverid = results_1.resultid )
where results_1.grid is not NULL
group by results_1.laps, results_1.statusid, qualifying_1.driverid, results_1.positionorder, results_1.statusid
limit 6;
select  
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 2;
select  
  max(
    cast(standings_1.date as "timestamp")), 
  standings_1.points, 
  standings_1.driverstandingsid, 
  standings_1.points, 
  standings_1.driverstandingsid, 
  standings_1.driverstandingsid, 
  standings_1.driverstandingsid, 
  standings_1.position, 
  sum(
    cast(standings_1.driverid as int8)), 
  standings_1.driverid, 
  max(
    cast(standings_1.date as "timestamp")), 
  count(*)
from 
  standings as standings_1
where standings_1.wins is not NULL
group by standings_1.points, standings_1.driverstandingsid, standings_1.points, standings_1.driverstandingsid, standings_1.driverstandingsid, standings_1.driverstandingsid, standings_1.position, standings_1.driverid
limit 37;
select  
  standings_2.position, 
  standings_1.points, 
  standings_2.date, 
  standings_1.driverid, 
  constructor_standings_1.constructorid, 
  standings_1.raceid, 
  constructor_standings_1.points, 
  constructor_standings_1.date, 
  standings_2.driverid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.points, 
  avg(
    cast(constructor_standings_1.points as float8)), 
  constructor_standings_1.position, 
  standings_1.date, 
  constructor_standings_1.date, 
  standings_1.wins, 
  standings_2.wins, 
  constructor_standings_1.wins, 
  standings_2.driverid, 
  standings_2.driverstandingsid, 
  standings_2.date, 
  standings_2.driverid, 
  standings_2.driverstandingsid
from 
  standings as standings_1
    inner join constructor_standings as constructor_standings_1
      inner join standings as standings_2
      on (constructor_standings_1.constructorstandingsid = standings_2.driverstandingsid )
    on (standings_1.driverid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.constructorstandingsid is not NULL
group by standings_2.position, standings_1.points, standings_2.date, standings_1.driverid, constructor_standings_1.constructorid, standings_1.raceid, constructor_standings_1.points, constructor_standings_1.date, standings_2.driverid, constructor_standings_1.constructorid, constructor_standings_1.points, constructor_standings_1.position, standings_1.date, constructor_standings_1.date, standings_1.wins, standings_2.wins, constructor_standings_1.wins, standings_2.driverid, standings_2.driverstandingsid, standings_2.date, standings_2.driverid, standings_2.driverstandingsid
limit 13;
select  
  results_1.grid
from 
  constructors as constructors_1
    inner join results as results_1
    on (constructors_1.constructorid = results_1.resultid )
where results_1.rank is not NULL
limit 34;
select  
  constructor_results_1.constructorresultsid
from 
  results as results_1
      inner join circuits as circuits_1
      on (results_1.rank = circuits_1.lat )
    inner join constructor_results as constructor_results_1
    on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
where results_1.grid is not NULL
limit 15;
select  
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid, 
  qualifying_1.driverid, 
  qualifying_1.constructorid, 
  qualifying_1.date, 
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.driverid = qualifying_1.qualifyid
limit 2;
select  
  constructor_standings_1.position, 
  constructors_1.constructorref, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
    inner join constructors as constructors_1
    on (constructor_standings_1.constructorid = constructors_1.constructorid )
where constructors_1.name > constructors_1.constructorref
limit 40;
select  
  avg(
    cast(constructor_results_1.constructorresultsid as int8)), 
  max(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.driverref, 
  constructor_results_1.points, 
  drivers_1.forename, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  drivers_1.driverid, 
  constructor_results_1.constructorresultsid, 
  drivers_1.nationality, 
  drivers_1.surname, 
  constructor_results_1.date, 
  drivers_1.nationality, 
  count(*), 
  drivers_1.driverid, 
  constructor_results_1.constructorid, 
  drivers_1.driverid
from 
  drivers as drivers_1
    inner join constructor_results as constructor_results_1
    on (drivers_1.driverid = constructor_results_1.constructorresultsid )
where drivers_1.nationality is not NULL
group by drivers_1.driverref, constructor_results_1.points, drivers_1.forename, constructor_results_1.date, constructor_results_1.constructorresultsid, drivers_1.driverid, constructor_results_1.constructorresultsid, drivers_1.nationality, drivers_1.surname, constructor_results_1.date, drivers_1.nationality, drivers_1.driverid, constructor_results_1.constructorid, drivers_1.driverid
limit 39;
select  
  constructor_standings_1.raceid, 
  min(
    cast(constructor_standings_1.date as "timestamp")), 
  constructor_standings_1.date, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins, 
  constructor_standings_1.date, 
  constructor_standings_1.date, 
  constructor_standings_1.date, 
  max(
    cast(constructor_standings_1.points as float8)), 
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  sum(
    cast(constructor_standings_1.constructorid as int8)), 
  constructor_standings_1.position, 
  constructor_standings_1.position, 
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.raceid, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorid, constructor_standings_1.wins, constructor_standings_1.date, constructor_standings_1.date, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins, constructor_standings_1.position, constructor_standings_1.position, constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.wins, constructor_standings_1.position, constructor_standings_1.constructorid
limit 12;
select  
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 37;
select  
  qualifying_1.position, 
  qualifying_1.raceid, 
  count(
    cast(qualifying_1.number as int8))
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
group by qualifying_1.position, qualifying_1.raceid
limit 3;
select  
  qualifying_2.qualifyid, 
  max(
    cast(qualifying_1.driverid as int8)), 
  qualifying_2.position, 
  qualifying_2.number, 
  qualifying_1.constructorid, 
  qualifying_2.number, 
  qualifying_1.date, 
  qualifying_1.position
from 
  qualifying as qualifying_1
    inner join qualifying as qualifying_2
    on (qualifying_1.position = qualifying_2.qualifyid )
where qualifying_2.date = qualifying_1.date
group by qualifying_2.qualifyid, qualifying_2.position, qualifying_2.number, qualifying_1.constructorid, qualifying_2.number, qualifying_1.date, qualifying_1.position
limit 24;
select  
  drivers_1.surname, 
  drivers_1.dob, 
  constructors_1.nationality, 
  constructors_1.name
from 
  constructors as constructors_1
    inner join drivers as drivers_1
    on (constructors_1.nationality = drivers_1.driverref )
where drivers_1.nationality is not NULL
limit 18;
select  
  max(
    cast(results_1.statusid as int8))
from 
  results as results_1
where results_1.points < results_1.fastestlap
limit 34;
select  
  standings_1.wins, 
  constructor_standings_1.points, 
  constructor_standings_1.date, 
  results_1.positionorder, 
  avg(
    cast(constructor_standings_1.points as float8)), 
  results_1.rank, 
  constructor_standings_1.points, 
  max(
    cast(standings_1.date as "timestamp")), 
  results_1.milliseconds, 
  standings_1.driverstandingsid, 
  results_1.grid, 
  results_1.rank, 
  drivers_1.dob, 
  standings_1.date, 
  results_1.number, 
  constructor_standings_1.constructorid, 
  max(
    cast(standings_1.points as float8)), 
  standings_1.driverstandingsid, 
  drivers_1.forename, 
  constructor_standings_1.wins, 
  results_1.fastestlap, 
  max(
    cast(constructor_standings_1.position as int8)), 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
      inner join drivers as drivers_1
      on (constructor_standings_1.raceid = drivers_1.driverid )
    inner join results as results_1
      inner join standings as standings_1
      on (results_1.driverid = standings_1.driverstandingsid )
    on (constructor_standings_1.wins = results_1.resultid )
where constructor_standings_1.wins is not NULL
group by standings_1.wins, constructor_standings_1.points, constructor_standings_1.date, results_1.positionorder, results_1.rank, constructor_standings_1.points, results_1.milliseconds, standings_1.driverstandingsid, results_1.grid, results_1.rank, drivers_1.dob, standings_1.date, results_1.number, constructor_standings_1.constructorid, standings_1.driverstandingsid, drivers_1.forename, constructor_standings_1.wins, results_1.fastestlap, constructor_standings_1.date
limit 40;
select  
  constructors_2.nationality, 
  constructor_results_1.constructorresultsid, 
  constructors_1.nationality, 
  min(
    cast(standings_1.date as "timestamp")), 
  standings_1.wins
from 
  drivers as drivers_1
        inner join constructor_standings as constructor_standings_1
          inner join constructor_results as constructor_results_1
          on (constructor_standings_1.constructorid = constructor_results_1.constructorresultsid )
        on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
      inner join constructors as constructors_1
        inner join constructors as constructors_2
        on (constructors_1.name = constructors_2.constructorref )
      on (constructor_results_1.constructorid = constructors_2.constructorid )
    inner join standings as standings_1
      inner join results as results_1
      on (standings_1.points = results_1.number )
    on (constructor_results_1.points = standings_1.points )
where constructor_standings_1.points > constructor_results_1.points
group by constructors_2.nationality, constructor_results_1.constructorresultsid, constructors_1.nationality, standings_1.wins
limit 34;
select  
  constructors_1.name, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 16;
select  
  results_1.number
from 
  results as results_1
where results_1.raceid is not NULL
limit 2;
select  
  constructors_1.nationality, 
  drivers_2.nationality, 
  qualifying_1.number, 
  min(
    cast(qualifying_1.number as int8)), 
  constructors_1.constructorid, 
  drivers_2.nationality, 
  drivers_2.forename, 
  qualifying_1.number, 
  constructors_1.constructorref, 
  qualifying_1.date, 
  drivers_1.dob, 
  drivers_1.nationality, 
  drivers_1.dob, 
  races_1.year
from 
  drivers as drivers_1
    inner join races as races_1
      inner join constructors as constructors_1
        inner join drivers as drivers_2
          inner join qualifying as qualifying_1
          on (drivers_2.driverid = qualifying_1.qualifyid )
        on (constructors_1.constructorref = drivers_2.driverref )
      on (races_1.round = constructors_1.constructorid )
    on (drivers_1.driverref = drivers_2.driverref )
where drivers_1.dob <= races_1.date
group by constructors_1.nationality, drivers_2.nationality, qualifying_1.number, constructors_1.constructorid, drivers_2.nationality, drivers_2.forename, qualifying_1.number, constructors_1.constructorref, qualifying_1.date, drivers_1.dob, drivers_1.nationality, drivers_1.dob, races_1.year
limit 29;
select  
  drivers_1.surname, 
  max(
    cast(races_1.time as text)), 
  races_1.circuitid, 
  results_1.fastestlap, 
  results_1.milliseconds, 
  races_1.circuitid
from 
  races as races_1
    inner join drivers as drivers_1
      inner join qualifying as qualifying_1
        inner join results as results_1
        on (qualifying_1.number = results_1.resultid )
      on (drivers_1.driverid = results_1.resultid )
    on (races_1.year = drivers_1.driverid )
where drivers_1.surname is not NULL
group by drivers_1.surname, races_1.circuitid, results_1.fastestlap, results_1.milliseconds, races_1.circuitid
limit 19;
select  
  races_1.year, 
  avg(
    cast(constructor_standings_1.constructorid as int8)), 
  constructors_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid, 
  qualifying_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  min(
    cast(constructors_1.name as text)), 
  qualifying_1.driverid, 
  qualifying_1.number, 
  min(
    cast(constructor_standings_1.date as "timestamp")), 
  qualifying_1.driverid
from 
  constructor_standings as constructor_standings_1
        inner join constructors as constructors_1
        on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
      inner join races as races_1
      on (constructors_1.nationality = races_1.name )
    inner join qualifying as qualifying_1
    on (races_1.raceid = qualifying_1.qualifyid )
where constructors_1.nationality = races_1.time
group by races_1.year, constructors_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorid, qualifying_1.raceid, constructor_standings_1.constructorstandingsid, qualifying_1.driverid, qualifying_1.number, qualifying_1.driverid
limit 15;
select  
  constructors_1.nationality, 
  constructors_1.name, 
  min(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.constructorresultsid, 
  constructors_1.constructorid
from 
  constructors as constructors_1
    inner join constructor_results as constructor_results_1
    on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
where constructors_1.constructorref is not NULL
group by constructors_1.nationality, constructors_1.name, constructor_results_1.constructorresultsid, constructors_1.constructorid
limit 2;
select  
  qualifying_2.position
from 
  qualifying as qualifying_1
    inner join qualifying as qualifying_2
    on (qualifying_1.qualifyid = qualifying_2.qualifyid )
where qualifying_2.date <= qualifying_1.date
limit 21;
select  
  constructor_results_1.points, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  min(
    cast(constructor_results_1.date as "timestamp")), 
  constructor_results_1.points, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.points, constructor_results_1.date, constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_results_1.points, constructor_results_1.points
limit 8;
select  
  races_1.date
from 
  races as races_1
    inner join standings as standings_1
    on (races_1.raceid = standings_1.driverstandingsid )
where races_1.circuitid is not NULL
limit 30;
select  
  standings_1.wins, 
  standings_1.points, 
  standings_1.points, 
  standings_1.position, 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.date >= standings_1.date
limit 3;
select  
  min(
    cast(drivers_1.forename as text)), 
  standings_1.raceid, 
  min(
    cast(constructor_standings_1.points as float8)), 
  sum(
    cast(standings_1.points as float8)), 
  standings_2.driverstandingsid, 
  qualifying_1.raceid, 
  constructor_standings_1.points, 
  constructor_standings_1.points, 
  drivers_1.dob, 
  max(
    cast(drivers_1.driverref as text))
from 
  qualifying as qualifying_1
        inner join constructor_standings as constructor_standings_1
        on (qualifying_1.raceid = constructor_standings_1.constructorstandingsid )
      inner join standings as standings_1
        inner join drivers as drivers_1
        on (standings_1.wins = drivers_1.driverid )
      on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
    inner join standings as standings_2
    on (qualifying_1.driverid = standings_2.driverstandingsid )
where standings_1.points is not NULL
group by standings_1.raceid, standings_2.driverstandingsid, qualifying_1.raceid, constructor_standings_1.points, constructor_standings_1.points, drivers_1.dob
limit 26;
select  
  constructor_standings_1.points, 
  results_1.constructorid, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorid
from 
  results as results_1
      inner join constructor_standings as constructor_standings_1
      on (results_1.date = constructor_standings_1.date )
    inner join circuits as circuits_1
    on (constructor_standings_1.points = circuits_1.lat )
where constructor_standings_1.constructorstandingsid is not NULL
limit 26;
select  
  min(
    cast(standings_1.date as "timestamp")), 
  standings_1.position, 
  standings_1.points, 
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  standings_1.date, 
  standings_1.raceid, 
  min(
    cast(standings_1.date as "timestamp")), 
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  standings_1.driverstandingsid, 
  standings_1.wins, 
  standings_1.points, 
  standings_1.wins, 
  min(
    cast(standings_1.date as "timestamp")), 
  standings_1.points, 
  standings_1.position, 
  standings_1.points, 
  standings_1.points, 
  standings_1.points
from 
  standings as standings_1
where standings_1.wins is not NULL
group by standings_1.position, standings_1.points, standings_1.driverid, standings_1.driverstandingsid, standings_1.date, standings_1.raceid, standings_1.driverstandingsid, standings_1.raceid, standings_1.driverstandingsid, standings_1.wins, standings_1.points, standings_1.wins, standings_1.points, standings_1.position, standings_1.points, standings_1.points, standings_1.points
limit 33;
select  
  drivers_1.forename, 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.driverid = drivers_1.driverid
limit 37;
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points, 
  constructor_standings_1.points, 
  constructor_standings_1.date, 
  constructor_standings_1.raceid, 
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  sum(
    cast(constructor_standings_1.wins as int8))
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points < constructor_standings_1.points
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.points, constructor_standings_1.date, constructor_standings_1.raceid, constructor_standings_1.points, constructor_standings_1.raceid
limit 38;
select  
  races_1.raceid, 
  drivers_1.driverid
from 
  drivers as drivers_1
        inner join races as races_1
        on (drivers_1.driverid = races_1.raceid )
      inner join constructors as constructors_1
      on (drivers_1.driverref = constructors_1.constructorref )
    inner join circuits as circuits_1
    on (drivers_1.code = circuits_1.circuitref )
where circuits_1.circuitref >= circuits_1.country
limit 5;
select  
  results_1.driverid, 
  results_1.constructorid
from 
  results as results_1
where results_1.positionorder is not NULL
limit 33;
select  
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  max(
    cast(constructor_results_1.date as "timestamp")), 
  constructor_results_1.points, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid >= constructor_results_1.raceid
group by constructor_results_1.points, constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_results_1.points, constructor_results_1.raceid
limit 38;
select  
  drivers_1.driverref
from 
  qualifying as qualifying_1
      inner join constructor_standings as constructor_standings_1
      on (qualifying_1.driverid = constructor_standings_1.constructorstandingsid )
    inner join circuits as circuits_1
      inner join drivers as drivers_1
      on (circuits_1.country = drivers_1.driverref )
    on (constructor_standings_1.position = circuits_1.circuitid )
where qualifying_1.constructorid is not NULL
limit 38;
select  
  results_1.constructorid, 
  drivers_1.nationality, 
  max(
    cast(results_1.date as "timestamp")), 
  drivers_1.forename, 
  results_1.milliseconds, 
  constructor_standings_1.points, 
  constructor_standings_1.points
from 
  results as results_1
    inner join constructor_standings as constructor_standings_1
      inner join drivers as drivers_1
      on (constructor_standings_1.raceid = drivers_1.driverid )
    on (results_1.grid = drivers_1.driverid )
where drivers_1.driverid <= results_1.constructorid
group by results_1.constructorid, drivers_1.nationality, drivers_1.forename, results_1.milliseconds, constructor_standings_1.points, constructor_standings_1.points
limit 30;
select  
  circuits_1.name, 
  min(
    cast(circuits_1.location as text)), 
  circuits_1.location, 
  circuits_1.alt, 
  circuits_1.circuitref, 
  circuits_1.alt, 
  avg(
    cast(circuits_1.lng as float8)), 
  circuits_1.location, 
  circuits_1.circuitref, 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
group by circuits_1.name, circuits_1.location, circuits_1.alt, circuits_1.circuitref, circuits_1.alt, circuits_1.location, circuits_1.circuitref, circuits_1.circuitid
limit 9;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.date, 
  avg(
    cast(constructor_standings_1.points as float8))
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
group by constructor_standings_1.wins, constructor_standings_1.date
limit 41;
select  
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.lng = circuits_1.lat
limit 8;
select  
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  min(
    cast(constructor_results_1.date as "timestamp")), 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  min(
    cast(constructor_results_1.constructorresultsid as int8))
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.points, constructor_results_1.points, constructor_results_1.date, constructor_results_1.points, constructor_results_1.date, constructor_results_1.date, constructor_results_1.raceid, constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, constructor_results_1.raceid
limit 35;
select  
  drivers_1.nationality, 
  drivers_1.nationality, 
  count(*), 
  max(
    cast(drivers_1.dob as "timestamp"))
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
group by drivers_1.nationality, drivers_1.nationality
limit 37;
select  
  max(
    cast(constructors_1.name as text)), 
  constructors_1.constructorid, 
  qualifying_1.constructorid, 
  results_1.driverid, 
  min(
    cast(constructor_results_1.date as "timestamp")), 
  results_1.positionorder, 
  constructors_1.name, 
  qualifying_1.constructorid, 
  constructors_1.constructorref, 
  qualifying_1.position, 
  min(
    cast(constructors_1.constructorref as text)), 
  constructors_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructors_1.name, 
  constructors_1.nationality
from 
  results as results_1
    inner join constructor_results as constructor_results_1
      inner join qualifying as qualifying_1
        inner join constructors as constructors_1
        on (qualifying_1.raceid = constructors_1.constructorid )
      on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
    on (results_1.laps = constructor_results_1.constructorresultsid )
where constructors_1.nationality is not NULL
group by constructors_1.constructorid, qualifying_1.constructorid, results_1.driverid, results_1.positionorder, constructors_1.name, qualifying_1.constructorid, constructors_1.constructorref, qualifying_1.position, constructors_1.constructorid, constructor_results_1.raceid, constructor_results_1.points, constructors_1.name, constructors_1.nationality
limit 22;
select  
  standings_1.driverid
from 
  standings as standings_1
where standings_1.date = standings_1.date
limit 10;
select  
  standings_3.position, 
  standings_2.wins, 
  max(
    cast(standings_3.points as float8)), 
  min(
    cast(standings_3.date as "timestamp"))
from 
  constructor_results as constructor_results_1
    inner join results as results_1
      inner join standings as standings_1
          inner join standings as standings_2
          on (standings_1.position = standings_2.driverstandingsid )
        inner join standings as standings_3
        on (standings_2.raceid = standings_3.driverstandingsid )
      on (results_1.points = standings_2.points )
    on (constructor_results_1.raceid = standings_1.driverstandingsid )
where results_1.points is not NULL
group by standings_3.position, standings_2.wins
limit 13;
select distinct 
  max(
    cast(constructors_1.name as text)), 
  constructors_1.name, 
  constructors_1.constructorid, 
  count(
    cast(constructors_1.constructorid as int8)), 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.name, constructors_1.constructorid, constructors_1.name
limit 31;
select  
  circuits_1.lat, 
  min(
    cast(constructor_standings_1.points as float8)), 
  max(
    cast(constructor_standings_1.date as "timestamp")), 
  standings_3.points, 
  standings_1.driverid, 
  standings_2.raceid, 
  circuits_1.circuitid, 
  sum(
    cast(standings_2.points as float8))
from 
  standings as standings_1
        inner join standings as standings_2
        on (standings_1.position = standings_2.driverstandingsid )
      inner join circuits as circuits_1
      on (standings_2.wins = circuits_1.circuitid )
    inner join constructor_standings as constructor_standings_1
      inner join constructors as constructors_1
        inner join standings as standings_3
        on (constructors_1.constructorid = standings_3.driverstandingsid )
      on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
    on (circuits_1.alt = standings_3.points )
where standings_2.date > constructor_standings_1.date
group by circuits_1.lat, standings_3.points, standings_1.driverid, standings_2.raceid, circuits_1.circuitid
limit 2;
select  
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  min(
    cast(constructor_results_1.constructorid as int8))
from 
  constructor_results as constructor_results_1
where constructor_results_1.points <= constructor_results_1.points
group by constructor_results_1.date, constructor_results_1.constructorresultsid, constructor_results_1.date
limit 8;
select  
  constructor_results_1.points, 
  constructor_results_1.points, 
  min(
    cast(constructor_results_1.constructorid as int8)), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  min(
    cast(constructor_results_1.date as "timestamp")), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.points, constructor_results_1.points, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid
limit 42;
select  
  constructor_standings_1.wins, 
  min(
    cast(constructor_standings_1.points as float8)), 
  constructor_standings_1.date, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
group by constructor_standings_1.wins, constructor_standings_1.date, constructor_standings_1.position
limit 29;
select  
  qualifying_1.qualifyid, 
  constructors_1.nationality, 
  qualifying_1.raceid, 
  qualifying_1.raceid, 
  max(
    cast(constructors_1.constructorref as text)), 
  constructors_1.constructorid, 
  max(
    cast(constructors_1.constructorref as text)), 
  max(
    cast(constructors_1.nationality as text)), 
  constructors_1.name
from 
  qualifying as qualifying_1
    inner join constructors as constructors_1
    on (qualifying_1.position = constructors_1.constructorid )
where constructors_1.name is not NULL
group by qualifying_1.qualifyid, constructors_1.nationality, qualifying_1.raceid, qualifying_1.raceid, constructors_1.constructorid, constructors_1.name
limit 17;
select  
  standings_1.raceid, 
  max(
    cast(constructor_standings_1.raceid as int8)), 
  standings_1.date, 
  constructor_standings_1.date, 
  standings_1.points, 
  sum(
    cast(constructor_standings_1.constructorid as int8)), 
  constructor_standings_1.constructorstandingsid
from 
  standings as standings_1
    inner join constructor_standings as constructor_standings_1
    on (standings_1.position = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.constructorid is not NULL
group by standings_1.raceid, standings_1.date, constructor_standings_1.date, standings_1.points, constructor_standings_1.constructorstandingsid
limit 12;
select  
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 2;
select  
  standings_1.date, 
  standings_1.date, 
  max(
    cast(standings_1.date as "timestamp")), 
  standings_1.points, 
  max(
    cast(standings_1.date as "timestamp")), 
  standings_1.raceid, 
  min(
    cast(standings_1.position as int8)), 
  max(
    cast(standings_1.date as "timestamp"))
from 
  standings as standings_1
where standings_1.driverstandingsid = standings_1.position
group by standings_1.date, standings_1.date, standings_1.points, standings_1.raceid
limit 18;
select  
  count(
    cast(results_1.raceid as int8)), 
  results_1.position, 
  results_1.laps
from 
  circuits as circuits_1
      inner join results as results_1
      on (circuits_1.circuitid = results_1.resultid )
    inner join races as races_1
      inner join constructor_results as constructor_results_1
      on (races_1.date = constructor_results_1.date )
    on (circuits_1.country = races_1.name )
where races_1.time >= circuits_1.name
group by results_1.position, results_1.laps
limit 22;
select  
  drivers_1.code, 
  drivers_1.nationality, 
  drivers_1.surname, 
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
limit 29;
select  
  qualifying_1.constructorid, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
limit 39;
select  
  count(*), 
  circuits_1.circuitref, 
  avg(
    cast(circuits_1.lng as float8)), 
  circuits_1.lng, 
  min(
    cast(constructor_standings_1.date as "timestamp")), 
  constructor_standings_1.wins, 
  circuits_1.lat, 
  circuits_1.lng
from 
  constructor_standings as constructor_standings_1
    inner join circuits as circuits_1
    on (constructor_standings_1.raceid = circuits_1.circuitid )
where circuits_1.lat is not NULL
group by circuits_1.circuitref, circuits_1.lng, constructor_standings_1.wins, circuits_1.lat, circuits_1.lng
limit 23;
select  
  races_1.round, 
  races_2.raceid, 
  races_1.round, 
  races_2.circuitid, 
  races_1.time, 
  races_1.circuitid
from 
  races as races_1
    inner join races as races_2
    on (races_1.name = races_2.name )
where races_1.year is not NULL
limit 22;
select  
  drivers_1.driverid
from 
  circuits as circuits_1
    inner join drivers as drivers_1
      inner join results as results_1
      on (drivers_1.dob = results_1.date )
    on (circuits_1.circuitref = drivers_1.driverref )
where circuits_1.circuitid is not NULL
limit 14;
select  
  races_1.date
from 
  races as races_1
where races_1.round is not NULL
limit 10;
select  
  drivers_1.nationality, 
  constructors_1.constructorref
from 
  constructors as constructors_1
      inner join standings as standings_1
      on (constructors_1.constructorid = standings_1.driverstandingsid )
    inner join constructor_results as constructor_results_1
        inner join drivers as drivers_1
          inner join constructors as constructors_2
          on (drivers_1.forename = constructors_2.constructorref )
        on (constructor_results_1.constructorresultsid = constructors_2.constructorid )
      inner join constructor_standings as constructor_standings_1
      on (constructor_results_1.constructorid = constructor_standings_1.constructorstandingsid )
    on (standings_1.driverstandingsid = constructors_2.constructorid )
where constructor_standings_1.constructorid >= constructor_standings_1.raceid
limit 32;
select  
  min(
    cast(constructor_results_1.constructorid as int8)), 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorid, constructor_results_1.raceid, constructor_results_1.raceid, constructor_results_1.date
limit 21;
select  
  constructors_1.constructorref, 
  standings_1.position, 
  constructor_standings_1.date, 
  results_1.statusid, 
  races_1.year, 
  standings_1.date, 
  constructor_standings_1.date, 
  min(
    cast(races_1.date as "timestamp")), 
  results_1.date, 
  constructors_1.name
from 
  results as results_1
      inner join races as races_1
      on (results_1.date = races_1.date )
    inner join constructor_standings as constructor_standings_1
      inner join standings as standings_1
        inner join constructors as constructors_1
        on (standings_1.wins = constructors_1.constructorid )
      on (constructor_standings_1.raceid = standings_1.driverstandingsid )
    on (races_1.date = standings_1.date )
where constructors_1.constructorref is not NULL
group by constructors_1.constructorref, standings_1.position, constructor_standings_1.date, results_1.statusid, races_1.year, standings_1.date, constructor_standings_1.date, results_1.date, constructors_1.name
limit 35;
select  
  circuits_1.lng, 
  circuits_1.circuitref, 
  circuits_1.name, 
  circuits_1.alt, 
  sum(
    cast(circuits_1.circuitid as int8)), 
  circuits_1.country, 
  circuits_1.country
from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
group by circuits_1.lng, circuits_1.circuitref, circuits_1.name, circuits_1.alt, circuits_1.country, circuits_1.country
limit 16;
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_2.position, 
  constructor_standings_2.constructorid, 
  circuits_1.country, 
  constructor_standings_1.points, 
  constructor_standings_2.date, 
  constructor_standings_1.raceid, 
  constructor_standings_1.points, 
  max(
    cast(constructor_standings_1.date as "timestamp")), 
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  constructor_standings_2.raceid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_2.date, 
  constructor_standings_1.constructorid, 
  constructor_standings_2.raceid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  circuits_1.lat
from 
  constructor_standings as constructor_standings_1
    inner join constructor_standings as constructor_standings_2
      inner join circuits as circuits_1
      on (constructor_standings_2.raceid = circuits_1.circuitid )
    on (constructor_standings_1.position = circuits_1.circuitid )
where constructor_standings_2.date = constructor_standings_1.date
group by constructor_standings_1.constructorstandingsid, constructor_standings_2.position, constructor_standings_2.constructorid, circuits_1.country, constructor_standings_1.points, constructor_standings_2.date, constructor_standings_1.raceid, constructor_standings_1.points, constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.constructorid, constructor_standings_2.raceid, constructor_standings_1.constructorstandingsid, constructor_standings_2.date, constructor_standings_1.constructorid, constructor_standings_2.raceid, constructor_standings_1.raceid, constructor_standings_1.constructorid, circuits_1.lat
limit 8;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.points, 
  max(
    cast(constructor_results_1.date as "timestamp")), 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_results_1.date, 
  sum(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid <= constructor_results_1.raceid
group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid, constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.points, constructor_results_1.points, constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.raceid, constructor_results_1.points, constructor_results_1.points, constructor_results_1.date, constructor_results_1.constructorid, constructor_results_1.points, constructor_results_1.raceid, constructor_results_1.date
limit 36;
select  
  constructors_1.constructorref, 
  qualifying_1.constructorid
from 
  constructors as constructors_1
    inner join qualifying as qualifying_1
    on (constructors_1.constructorid = qualifying_1.qualifyid )
where qualifying_1.date > qualifying_1.date
limit 24;
select  
  qualifying_1.number, 
  qualifying_1.raceid, 
  qualifying_1.constructorid, 
  qualifying_1.date, 
  qualifying_1.position, 
  qualifying_1.driverid, 
  qualifying_1.position, 
  min(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  qualifying_1.date, 
  qualifying_1.number, 
  min(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid, 
  qualifying_1.constructorid, 
  count(
    cast(qualifying_1.number as int8))
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
group by qualifying_1.number, qualifying_1.raceid, qualifying_1.constructorid, qualifying_1.date, qualifying_1.position, qualifying_1.driverid, qualifying_1.position, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.date, qualifying_1.number, qualifying_1.qualifyid, qualifying_1.qualifyid, qualifying_1.constructorid
limit 39;
select  
  circuits_1.circuitref, 
  races_1.time, 
  max(
    cast(circuits_1.circuitref as text)), 
  circuits_1.alt, 
  races_1.year, 
  races_1.date, 
  races_1.time, 
  qualifying_1.constructorid, 
  circuits_1.alt, 
  min(
    cast(circuits_1.alt as float8)), 
  max(
    cast(circuits_1.location as text)), 
  races_1.round
from 
  circuits as circuits_1
      inner join qualifying as qualifying_1
      on (circuits_1.circuitid = qualifying_1.qualifyid )
    inner join races as races_1
    on (qualifying_1.qualifyid = races_1.raceid )
where circuits_1.circuitref is not NULL
group by circuits_1.circuitref, races_1.time, circuits_1.alt, races_1.year, races_1.date, races_1.time, qualifying_1.constructorid, circuits_1.alt, races_1.round
limit 35;
select distinct 
  results_1.milliseconds, 
  max(
    cast(races_1.time as text)), 
  min(
    cast(races_1.time as text)), 
  standings_1.wins, 
  results_1.grid, 
  standings_1.position, 
  standings_1.points, 
  races_1.circuitid
from 
  results as results_1
      inner join standings as standings_1
        inner join races as races_1
        on (standings_1.position = races_1.raceid )
      on (results_1.position = standings_1.points )
    inner join standings as standings_2
    on (results_1.positionorder = standings_2.driverstandingsid )
where standings_2.driverstandingsid is not NULL
group by results_1.milliseconds, standings_1.wins, results_1.grid, standings_1.position, standings_1.points, races_1.circuitid
limit 28;
select  
  qualifying_1.qualifyid, 
  circuits_1.country, 
  circuits_1.lat, 
  qualifying_1.position
from 
  qualifying as qualifying_1
    inner join circuits as circuits_1
    on (qualifying_1.position = circuits_1.circuitid )
where circuits_1.country is not NULL
limit 13;
select  
  standings_1.driverstandingsid, 
  standings_1.driverstandingsid, 
  standings_1.wins, 
  standings_1.date
from 
  results as results_1
    inner join standings as standings_1
    on (results_1.fastestlap = standings_1.points )
where results_1.number is not NULL
limit 15;
select  
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  max(
    cast(constructors_1.constructorid as int8))
from 
  constructors as constructors_1
where constructors_1.nationality < constructors_1.name
group by constructors_1.constructorid, constructors_1.nationality, constructors_1.nationality
limit 24;
select  
  drivers_1.code, 
  drivers_2.code, 
  max(
    cast(results_1.laps as int8)), 
  results_1.resultid, 
  results_1.driverid, 
  results_1.resultid, 
  drivers_1.code, 
  drivers_1.driverid, 
  drivers_1.driverref, 
  drivers_1.driverref, 
  max(
    cast(results_1.points as float8)), 
  drivers_1.driverid, 
  results_1.fastestlap, 
  drivers_2.code, 
  drivers_1.nationality, 
  results_1.fastestlap, 
  drivers_1.driverref, 
  drivers_1.surname, 
  drivers_1.dob
from 
  results as results_1
    inner join drivers as drivers_1
      inner join drivers as drivers_2
      on (drivers_1.forename = drivers_2.driverref )
    on (results_1.grid = drivers_1.driverid )
where drivers_1.dob is not NULL
group by drivers_1.code, drivers_2.code, results_1.resultid, results_1.driverid, results_1.resultid, drivers_1.code, drivers_1.driverid, drivers_1.driverref, drivers_1.driverref, drivers_1.driverid, results_1.fastestlap, drivers_2.code, drivers_1.nationality, results_1.fastestlap, drivers_1.driverref, drivers_1.surname, drivers_1.dob
limit 25;
select  
  drivers_1.dob, 
  max(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.nationality, 
  drivers_1.nationality, 
  drivers_1.dob, 
  drivers_1.dob, 
  drivers_1.code, 
  drivers_1.surname, 
  drivers_1.dob, 
  drivers_1.dob, 
  sum(
    cast(drivers_1.driverid as int8))
from 
  drivers as drivers_1
where drivers_1.code is not NULL
group by drivers_1.dob, drivers_1.nationality, drivers_1.nationality, drivers_1.dob, drivers_1.dob, drivers_1.code, drivers_1.surname, drivers_1.dob, drivers_1.dob
limit 12;
select  
  circuits_2.circuitid, 
  constructor_standings_1.wins, 
  circuits_2.lat
from 
  circuits as circuits_1
    inner join circuits as circuits_2
      inner join constructor_standings as constructor_standings_1
      on (circuits_2.lat = constructor_standings_1.points )
    on (circuits_1.alt = circuits_2.lat )
where circuits_2.country is not NULL
limit 42;
select  
  standings_1.raceid
from 
  standings as standings_1
where standings_1.date >= standings_1.date
limit 22;
select  
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.name > constructors_1.constructorref
limit 39;
select  
  qualifying_1.date, 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
limit 38;
select  
  qualifying_1.driverid, 
  min(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid, 
  max(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
group by qualifying_1.driverid, qualifying_1.qualifyid, qualifying_1.qualifyid, qualifying_1.raceid
limit 17;
select  
  constructors_2.constructorref, 
  qualifying_1.date
from 
  constructors as constructors_1
      inner join results as results_1
        inner join qualifying as qualifying_1
          inner join constructor_results as constructor_results_1
          on (qualifying_1.driverid = constructor_results_1.constructorresultsid )
        on (results_1.rank = constructor_results_1.points )
      on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
    inner join qualifying as qualifying_2
      inner join constructors as constructors_2
      on (qualifying_2.driverid = constructors_2.constructorid )
    on (qualifying_1.qualifyid = constructors_2.constructorid )
where results_1.position is not NULL
limit 31;
select  
  max(
    cast(drivers_1.code as text)), 
  drivers_1.dob, 
  drivers_1.surname, 
  drivers_1.driverref, 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.dob < drivers_1.dob
group by drivers_1.dob, drivers_1.surname, drivers_1.driverref, drivers_1.nationality
limit 5;
select  
  drivers_1.forename, 
  max(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.driverref, 
  drivers_1.driverid, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
group by drivers_1.forename, drivers_1.driverref, drivers_1.driverid, drivers_1.driverid
limit 17;
select  
  standings_1.position, 
  standings_1.points, 
  standings_1.wins, 
  standings_1.wins, 
  standings_1.raceid, 
  standings_1.points, 
  standings_1.points, 
  standings_1.points, 
  sum(
    cast(standings_1.points as float8))
from 
  standings as standings_1
where standings_1.raceid is not NULL
group by standings_1.position, standings_1.points, standings_1.wins, standings_1.wins, standings_1.raceid, standings_1.points, standings_1.points, standings_1.points
limit 5;
select  
  races_1.year, 
  races_1.date
from 
  races as races_1
where races_1.date <= races_1.date
limit 19;
select  
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  standings_1.points, 
  results_1.date, 
  constructor_results_1.points, 
  standings_1.raceid, 
  standings_1.points
from 
  standings as standings_1
        inner join constructors as constructors_1
        on (standings_1.position = constructors_1.constructorid )
      inner join results as results_1
      on (standings_1.date = results_1.date )
    inner join constructor_results as constructor_results_1
    on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
where constructors_1.name is not NULL
limit 16;
select  
  constructor_results_1.date, 
  count(
    cast(constructor_results_1.constructorresultsid as int8)), 
  constructor_results_1.points, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  avg(
    cast(constructor_results_1.points as float8)), 
  min(
    cast(constructor_results_1.points as float8))
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.date, constructor_results_1.points, constructor_results_1.date, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points
limit 29;
select  
  qualifying_1.position, 
  max(
    cast(qualifying_1.date as "timestamp"))
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.position
limit 25;
select  
  constructors_1.constructorid, 
  qualifying_2.qualifyid, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
        inner join drivers as drivers_1
        on (qualifying_1.driverid = drivers_1.driverid )
      inner join qualifying as qualifying_2
      on (qualifying_1.date = qualifying_2.date )
    inner join constructors as constructors_1
    on (qualifying_1.raceid = constructors_1.constructorid )
where qualifying_1.number is not NULL
limit 12;
select  
  max(
    cast(drivers_1.dob as "timestamp")), 
  max(
    cast(drivers_1.driverid as int8)), 
  drivers_1.surname, 
  min(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.code, 
  max(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.nationality, 
  max(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.code is not NULL
group by drivers_1.surname, drivers_1.code, drivers_1.nationality, drivers_1.surname
limit 5;
select  
  max(
    cast(results_1.statusid as int8)), 
  standings_1.driverstandingsid, 
  constructors_1.nationality, 
  results_1.resultid, 
  max(
    cast(constructors_1.constructorid as int8)), 
  standings_1.driverid, 
  races_1.year, 
  results_1.milliseconds, 
  constructors_1.constructorid
from 
  standings as standings_1
        inner join results as results_1
        on (standings_1.driverid = results_1.resultid )
      inner join circuits as circuits_1
      on (results_1.number = circuits_1.lat )
    inner join standings as standings_2
        inner join constructors as constructors_1
        on (standings_2.wins = constructors_1.constructorid )
      inner join races as races_1
      on (constructors_1.nationality = races_1.name )
    on (standings_1.raceid = standings_2.driverstandingsid )
where standings_2.date >= standings_1.date
group by standings_1.driverstandingsid, constructors_1.nationality, results_1.resultid, standings_1.driverid, races_1.year, results_1.milliseconds, constructors_1.constructorid
limit 1;
select  
  races_1.circuitid
from 
  races as races_1
where races_1.circuitid is not NULL
limit 33;
select  
  races_1.year, 
  races_1.year, 
  races_1.circuitid, 
  max(
    cast(races_1.year as int8)), 
  races_1.round, 
  races_1.date, 
  races_1.time, 
  races_1.year, 
  races_1.name, 
  races_1.date, 
  count(
    cast(races_1.time as text)), 
  races_1.raceid, 
  min(
    cast(races_1.date as "timestamp")), 
  races_1.raceid, 
  races_1.time, 
  races_1.raceid, 
  races_1.raceid, 
  races_1.round, 
  races_1.date, 
  count(*)
from 
  races as races_1
where races_1.raceid is not NULL
group by races_1.year, races_1.year, races_1.circuitid, races_1.round, races_1.date, races_1.time, races_1.year, races_1.name, races_1.date, races_1.raceid, races_1.raceid, races_1.time, races_1.raceid, races_1.raceid, races_1.round, races_1.date
limit 28;
select  
  constructors_2.constructorref, 
  standings_1.position
from 
  constructors as constructors_1
    inner join circuits as circuits_1
        inner join constructor_standings as constructor_standings_1
          inner join standings as standings_1
          on (constructor_standings_1.wins = standings_1.driverstandingsid )
        on (circuits_1.lng = constructor_standings_1.points )
      inner join constructors as constructors_2
      on (circuits_1.country = constructors_2.constructorref )
    on (constructors_1.name = constructors_2.constructorref )
where constructors_2.constructorref is not NULL
limit 24;
select  
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  count(
    cast(constructors_1.constructorid as int8))
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.constructorid, constructors_1.nationality, constructors_1.constructorid, constructors_1.constructorref
limit 9;
select  
  max(
    cast(drivers_1.driverref as text)), 
  constructor_standings_1.position, 
  standings_1.position, 
  constructor_standings_1.date
from 
  constructor_results as constructor_results_1
    inner join drivers as drivers_1
        inner join standings as standings_1
        on (drivers_1.dob = standings_1.date )
      inner join constructors as constructors_1
        inner join constructor_standings as constructor_standings_1
        on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
      on (drivers_1.driverref = constructors_1.constructorref )
    on (constructor_results_1.raceid = constructors_1.constructorid )
where constructor_standings_1.constructorstandingsid > constructor_standings_1.constructorid
group by constructor_standings_1.position, standings_1.position, constructor_standings_1.date
limit 14;
select  
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 24;
select  
  qualifying_1.position, 
  constructors_1.name, 
  max(
    cast(constructors_1.name as text)), 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
    inner join constructors as constructors_1
    on (qualifying_1.position = constructors_1.constructorid )
where constructors_1.nationality is not NULL
group by qualifying_1.position, constructors_1.name, qualifying_1.constructorid, qualifying_1.qualifyid, qualifying_1.qualifyid
limit 39;
select  
  qualifying_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points
from 
  qualifying as qualifying_1
    inner join constructor_results as constructor_results_1
    on (qualifying_1.position = constructor_results_1.constructorresultsid )
where qualifying_1.qualifyid is not NULL
limit 31;
select  
  standings_1.wins, 
  standings_1.wins, 
  standings_1.raceid, 
  standings_1.driverstandingsid, 
  standings_1.driverstandingsid, 
  sum(
    cast(standings_1.points as float8)), 
  standings_1.raceid, 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
group by standings_1.wins, standings_1.wins, standings_1.raceid, standings_1.driverstandingsid, standings_1.driverstandingsid, standings_1.raceid, standings_1.driverid
limit 20;
select  
  constructor_standings_1.wins, 
  races_1.date
from 
  constructor_standings as constructor_standings_1
    inner join races as races_1
      inner join races as races_2
      on (races_1.circuitid = races_2.raceid )
    on (constructor_standings_1.constructorstandingsid = races_1.raceid )
where races_2.time > races_2.name
limit 39;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.points, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points >= constructor_standings_1.points
limit 32;
select  
  drivers_1.driverref, 
  standings_1.date, 
  circuits_1.alt, 
  circuits_2.lng, 
  constructors_1.nationality
from 
  constructors as constructors_1
        inner join standings as standings_1
          inner join qualifying as qualifying_1
          on (standings_1.raceid = qualifying_1.qualifyid )
        on (constructors_1.constructorid = qualifying_1.qualifyid )
      inner join results as results_1
        inner join circuits as circuits_1
          inner join drivers as drivers_1
          on (circuits_1.circuitref = drivers_1.driverref )
        on (results_1.positionorder = drivers_1.driverid )
      on (constructors_1.constructorid = circuits_1.circuitid )
    inner join circuits as circuits_2
    on (constructors_1.constructorref = circuits_2.circuitref )
where constructors_1.constructorid is not NULL
limit 14;
select  
  standings_1.points, 
  standings_1.date, 
  standings_1.date
from 
  standings as standings_1
where standings_1.wins is not NULL
limit 20;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_2.points
from 
  constructor_results as constructor_results_1
    inner join constructor_results as constructor_results_2
    on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
where constructor_results_2.constructorresultsid is not NULL
limit 5;
select  
  drivers_1.nationality, 
  races_1.circuitid, 
  drivers_1.code
from 
  constructor_results as constructor_results_1
    inner join drivers as drivers_1
      inner join races as races_1
      on (drivers_1.surname = races_1.name )
    on (constructor_results_1.date = drivers_1.dob )
where drivers_1.nationality is not NULL
limit 16;
select  
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.nationality, 
  min(
    cast(constructors_1.constructorid as int8)), 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  sum(
    cast(constructors_1.constructorid as int8)), 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  max(
    cast(constructors_1.nationality as text)), 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorid, 
  avg(
    cast(constructors_1.constructorid as int8)), 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.nationality, constructors_1.nationality, constructors_1.name, constructors_1.nationality, constructors_1.constructorid, constructors_1.name, constructors_1.constructorref, constructors_1.nationality, constructors_1.name, constructors_1.constructorref, constructors_1.nationality, constructors_1.constructorid, constructors_1.name, constructors_1.nationality, constructors_1.constructorid, constructors_1.constructorid, constructors_1.name, constructors_1.nationality, constructors_1.constructorid, constructors_1.constructorid, constructors_1.constructorref, constructors_1.constructorid, constructors_1.name, constructors_1.constructorref, constructors_1.nationality, constructors_1.name, constructors_1.name, constructors_1.nationality, constructors_1.nationality, constructors_1.name, constructors_1.constructorid, constructors_1.constructorid
limit 34;
select  
  drivers_1.dob, 
  drivers_1.driverid, 
  drivers_1.driverid, 
  drivers_1.driverid, 
  drivers_1.nationality, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.forename is not NULL
limit 20;
select  
  circuits_1.circuitref, 
  circuits_1.alt, 
  circuits_1.circuitref, 
  max(
    cast(circuits_1.lng as float8)), 
  circuits_1.country
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
group by circuits_1.circuitref, circuits_1.alt, circuits_1.circuitref, circuits_1.country
limit 37;
select  
  sum(
    cast(circuits_1.circuitid as int8)), 
  circuits_1.country, 
  circuits_1.alt, 
  circuits_1.alt, 
  circuits_1.country, 
  circuits_1.country, 
  circuits_1.lat, 
  circuits_1.lat, 
  min(
    cast(circuits_1.lng as float8)), 
  circuits_1.lat, 
  circuits_1.alt, 
  circuits_1.alt, 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.name is not NULL
group by circuits_1.country, circuits_1.alt, circuits_1.alt, circuits_1.country, circuits_1.country, circuits_1.lat, circuits_1.lat, circuits_1.lat, circuits_1.alt, circuits_1.alt, circuits_1.alt
limit 15;
select  
  qualifying_1.constructorid, 
  avg(
    cast(qualifying_1.number as int8)), 
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  qualifying_1.raceid, 
  qualifying_1.position, 
  qualifying_1.number, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
group by qualifying_1.constructorid, qualifying_1.qualifyid, qualifying_1.raceid, qualifying_1.raceid, qualifying_1.position, qualifying_1.number, qualifying_1.raceid
limit 21;
select  
  circuits_1.lat, 
  avg(
    cast(standings_1.points as float8)), 
  drivers_1.nationality, 
  circuits_1.circuitref
from 
  drivers as drivers_1
      inner join circuits as circuits_1
      on (drivers_1.nationality = circuits_1.circuitref )
    inner join constructor_results as constructor_results_1
      inner join standings as standings_1
      on (constructor_results_1.points = standings_1.points )
    on (circuits_1.lat = constructor_results_1.points )
where drivers_1.code is not NULL
group by circuits_1.lat, drivers_1.nationality, circuits_1.circuitref
limit 14;
select  
  drivers_1.dob, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  drivers_1.dob, 
  drivers_1.code
from 
  drivers as drivers_1
    inner join constructors as constructors_1
    on (drivers_1.forename = constructors_1.constructorref )
where drivers_1.forename >= drivers_1.surname
limit 5;
select  
  constructor_results_2.date, 
  constructor_results_2.raceid, 
  constructor_results_1.points, 
  min(
    cast(constructor_results_1.date as "timestamp")), 
  min(
    cast(constructor_results_1.date as "timestamp")), 
  constructor_results_2.points, 
  constructor_results_2.raceid, 
  constructor_results_2.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_2.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  avg(
    cast(constructor_results_1.constructorid as int8)), 
  constructor_results_2.points, 
  constructor_results_2.constructorresultsid, 
  min(
    cast(constructor_results_1.date as "timestamp")), 
  constructor_results_2.points, 
  max(
    cast(constructor_results_1.points as float8))
from 
  constructor_results as constructor_results_1
    inner join constructor_results as constructor_results_2
    on (constructor_results_1.constructorid = constructor_results_2.constructorresultsid )
where constructor_results_1.points is not NULL
group by constructor_results_2.date, constructor_results_2.raceid, constructor_results_1.points, constructor_results_2.points, constructor_results_2.raceid, constructor_results_2.constructorresultsid, constructor_results_1.constructorid, constructor_results_2.raceid, constructor_results_1.raceid, constructor_results_1.raceid, constructor_results_2.points, constructor_results_2.constructorresultsid, constructor_results_2.points
limit 35;
select  
  results_1.driverid, 
  results_1.driverid
from 
  results as results_1
where results_1.driverid is not NULL
limit 9;
select  
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.location > circuits_1.name
limit 4;
select  
  standings_1.wins, 
  standings_1.wins, 
  standings_1.driverstandingsid, 
  standings_1.wins, 
  avg(
    cast(standings_1.points as float8))
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
group by standings_1.wins, standings_1.wins, standings_1.driverstandingsid, standings_1.wins
limit 13;
select  
  min(
    cast(standings_1.points as float8)), 
  min(
    cast(drivers_1.nationality as text)), 
  standings_1.points, 
  standings_1.date, 
  drivers_1.surname, 
  max(
    cast(drivers_1.code as text)), 
  drivers_1.forename, 
  drivers_1.surname, 
  standings_1.raceid, 
  standings_1.points, 
  drivers_1.code, 
  drivers_1.nationality, 
  drivers_1.surname, 
  max(
    cast(drivers_1.surname as text))
from 
  standings as standings_1
    inner join drivers as drivers_1
    on (standings_1.raceid = drivers_1.driverid )
where standings_1.driverstandingsid is not NULL
group by standings_1.points, standings_1.date, drivers_1.surname, drivers_1.forename, drivers_1.surname, standings_1.raceid, standings_1.points, drivers_1.code, drivers_1.nationality, drivers_1.surname
limit 32;
select  
  races_1.year
from 
  races as races_1
    inner join drivers as drivers_1
      inner join constructors as constructors_1
      on (drivers_1.driverid = constructors_1.constructorid )
    on (races_1.round = constructors_1.constructorid )
where races_1.circuitid is not NULL
limit 29;
select  
  results_1.raceid
from 
  standings as standings_1
      inner join drivers as drivers_1
      on (standings_1.driverstandingsid = drivers_1.driverid )
    inner join qualifying as qualifying_1
        inner join results as results_1
        on (qualifying_1.qualifyid = results_1.resultid )
      inner join results as results_2
      on (results_1.statusid = results_2.resultid )
    on (drivers_1.dob = qualifying_1.date )
where results_2.fastestlap <= results_2.number
limit 42;
select  
  races_1.time, 
  races_1.year, 
  races_1.circuitid, 
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  races_1.date, 
  standings_1.driverid, 
  races_1.year, 
  standings_1.driverstandingsid, 
  standings_1.driverid, 
  standings_1.date, 
  races_1.circuitid, 
  races_1.raceid, 
  min(
    cast(races_1.name as text)), 
  min(
    cast(standings_1.raceid as int8)), 
  count(
    cast(standings_1.driverid as int8)), 
  races_1.time, 
  races_1.raceid, 
  min(
    cast(races_1.time as text)), 
  standings_1.points, 
  standings_1.date, 
  count(
    cast(races_1.time as text)), 
  races_1.date, 
  min(
    cast(standings_1.points as float8)), 
  standings_1.raceid, 
  standings_1.position, 
  min(
    cast(races_1.date as "timestamp")), 
  standings_1.date, 
  races_1.time, 
  races_1.year, 
  races_1.circuitid, 
  races_1.round
from 
  standings as standings_1
    inner join races as races_1
    on (standings_1.driverid = races_1.raceid )
where standings_1.position is not NULL
group by races_1.time, races_1.year, races_1.circuitid, standings_1.driverid, standings_1.driverstandingsid, races_1.date, standings_1.driverid, races_1.year, standings_1.driverstandingsid, standings_1.driverid, standings_1.date, races_1.circuitid, races_1.raceid, races_1.time, races_1.raceid, standings_1.points, standings_1.date, races_1.date, standings_1.raceid, standings_1.position, standings_1.date, races_1.time, races_1.year, races_1.circuitid, races_1.round
limit 9;
select  
  results_1.driverid, 
  drivers_1.dob, 
  drivers_1.forename, 
  results_1.constructorid, 
  results_1.resultid, 
  drivers_1.driverid, 
  drivers_1.driverid, 
  drivers_1.forename
from 
  results as results_1
    inner join drivers as drivers_1
    on (results_1.date = drivers_1.dob )
where results_1.position is not NULL
limit 10;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins, 
  constructor_standings_1.wins, 
  max(
    cast(constructor_standings_1.points as float8))
from 
  constructor_standings as constructor_standings_1
    inner join drivers as drivers_1
    on (constructor_standings_1.constructorid = drivers_1.driverid )
where drivers_1.surname > drivers_1.forename
group by constructor_standings_1.constructorid, constructor_standings_1.wins, constructor_standings_1.wins
limit 39;
select  
  standings_3.driverstandingsid, 
  standings_1.position, 
  standings_2.position, 
  standings_1.date, 
  standings_1.points, 
  max(
    cast(circuits_1.country as text)), 
  max(
    cast(circuits_1.circuitid as int8)), 
  standings_2.position, 
  circuits_1.country
from 
  standings as standings_1
    inner join standings as standings_2
        inner join standings as standings_3
          inner join circuits as circuits_1
          on (standings_3.position = circuits_1.circuitid )
        on (standings_2.driverstandingsid = standings_3.driverstandingsid )
      inner join results as results_1
      on (standings_2.driverid = results_1.resultid )
    on (standings_1.position = results_1.resultid )
where standings_1.points is not NULL
group by standings_3.driverstandingsid, standings_1.position, standings_2.position, standings_1.date, standings_1.points, standings_2.position, circuits_1.country
limit 39;
select  
  min(
    cast(constructors_1.constructorref as text)), 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.constructorref, 
  min(
    cast(constructors_1.nationality as text)), 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.name, constructors_1.name, constructors_1.constructorref, constructors_1.constructorid
limit 22;
select  
  standings_1.points, 
  standings_1.date, 
  avg(
    cast(standings_1.points as float8)), 
  standings_1.wins, 
  standings_1.wins, 
  standings_1.raceid, 
  standings_1.driverid, 
  standings_1.wins, 
  standings_1.wins, 
  standings_1.points, 
  standings_1.position, 
  standings_1.date, 
  avg(
    cast(standings_1.driverid as int8)), 
  standings_1.position, 
  standings_1.wins, 
  standings_1.driverstandingsid, 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.raceid is not NULL
group by standings_1.points, standings_1.date, standings_1.wins, standings_1.wins, standings_1.raceid, standings_1.driverid, standings_1.wins, standings_1.wins, standings_1.points, standings_1.position, standings_1.date, standings_1.position, standings_1.wins, standings_1.driverstandingsid, standings_1.raceid
limit 13;
select  
  drivers_1.driverid, 
  standings_1.driverid
from 
  circuits as circuits_1
        inner join drivers as drivers_1
        on (circuits_1.name = drivers_1.driverref )
      inner join qualifying as qualifying_1
      on (drivers_1.dob = qualifying_1.date )
    inner join standings as standings_1
    on (drivers_1.dob = standings_1.date )
where circuits_1.lat < circuits_1.alt
limit 4;
select  
  count(*), 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.date, constructor_standings_1.constructorstandingsid, constructor_standings_1.position
limit 41;
select  
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.circuitid <= circuits_1.circuitid
limit 4;
select  
  sum(
    cast(constructor_standings_1.points as float8)), 
  min(
    cast(constructor_standings_1.date as "timestamp")), 
  count(
    cast(constructor_standings_1.constructorstandingsid as int8)), 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  min(
    cast(constructor_standings_1.date as "timestamp")), 
  count(
    cast(constructor_standings_1.points as float8)), 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
group by constructor_standings_1.raceid, constructor_standings_1.constructorstandingsid, constructor_standings_1.raceid, constructor_standings_1.constructorstandingsid, constructor_standings_1.position
limit 30;
select  
  constructor_standings_1.date, 
  constructor_standings_1.date, 
  constructor_standings_1.raceid, 
  sum(
    cast(constructor_standings_1.points as float8)), 
  max(
    cast(constructor_standings_1.points as float8)), 
  max(
    cast(constructor_standings_1.date as "timestamp")), 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  min(
    cast(constructor_standings_1.points as float8)), 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
group by constructor_standings_1.date, constructor_standings_1.date, constructor_standings_1.raceid, constructor_standings_1.date, constructor_standings_1.constructorstandingsid, constructor_standings_1.wins, constructor_standings_1.constructorstandingsid
limit 9;
select  
  standings_1.raceid, 
  standings_1.wins, 
  circuits_1.name, 
  standings_1.points, 
  standings_1.driverid, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorid, 
  avg(
    cast(circuits_1.alt as float8)), 
  constructor_standings_1.constructorid
from 
  standings as standings_1
    inner join constructor_standings as constructor_standings_1
      inner join circuits as circuits_1
      on (constructor_standings_1.position = circuits_1.circuitid )
    on (standings_1.wins = constructor_standings_1.constructorstandingsid )
where standings_1.position is not NULL
group by standings_1.raceid, standings_1.wins, circuits_1.name, standings_1.points, standings_1.driverid, constructor_standings_1.position, constructor_standings_1.constructorid, constructor_standings_1.constructorid
limit 37;
select  
  qualifying_1.number, 
  qualifying_1.constructorid, 
  count(
    cast(qualifying_1.driverid as int8))
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
group by qualifying_1.number, qualifying_1.constructorid
limit 30;
select  
  standings_1.driverid, 
  standings_1.raceid, 
  standings_1.raceid, 
  sum(
    cast(standings_1.points as float8)), 
  standings_1.driverstandingsid, 
  standings_1.driverid, 
  avg(
    cast(standings_1.points as float8)), 
  standings_1.points, 
  standings_1.driverid, 
  standings_1.points, 
  standings_1.points, 
  sum(
    cast(standings_1.driverstandingsid as int8)), 
  standings_1.driverstandingsid, 
  standings_1.points, 
  standings_1.raceid, 
  standings_1.position, 
  standings_1.date, 
  standings_1.position, 
  avg(
    cast(standings_1.raceid as int8)), 
  standings_1.driverid, 
  avg(
    cast(standings_1.points as float8)), 
  avg(
    cast(standings_1.points as float8)), 
  standings_1.driverid, 
  standings_1.raceid, 
  standings_1.date, 
  standings_1.raceid, 
  standings_1.position, 
  standings_1.position
from 
  standings as standings_1
where standings_1.points is not NULL
group by standings_1.driverid, standings_1.raceid, standings_1.raceid, standings_1.driverstandingsid, standings_1.driverid, standings_1.points, standings_1.driverid, standings_1.points, standings_1.points, standings_1.driverstandingsid, standings_1.points, standings_1.raceid, standings_1.position, standings_1.date, standings_1.position, standings_1.driverid, standings_1.driverid, standings_1.raceid, standings_1.date, standings_1.raceid, standings_1.position, standings_1.position
limit 13;
select  
  standings_1.points
from 
  standings as standings_1
where standings_1.driverid = standings_1.wins
limit 37;
select  
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
    inner join races as races_1
    on (constructor_standings_1.raceid = races_1.raceid )
where constructor_standings_1.date is not NULL
limit 16;
select  
  constructor_standings_1.wins, 
  min(
    cast(constructor_standings_1.date as "timestamp"))
from 
  drivers as drivers_1
    inner join constructor_standings as constructor_standings_1
      inner join constructor_results as constructor_results_1
      on (constructor_standings_1.position = constructor_results_1.constructorresultsid )
    on (drivers_1.dob = constructor_results_1.date )
where constructor_standings_1.points is not NULL
group by constructor_standings_1.wins
limit 37;
select  
  qualifying_1.number, 
  qualifying_1.driverid, 
  qualifying_1.position, 
  qualifying_1.date, 
  qualifying_1.constructorid, 
  qualifying_1.position, 
  qualifying_1.date, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
limit 24;
select  
  circuits_1.circuitref, 
  circuits_1.lng, 
  circuits_1.name, 
  min(
    cast(circuits_1.country as text)), 
  circuits_1.lng, 
  circuits_1.lat, 
  circuits_1.circuitid, 
  circuits_1.location, 
  circuits_1.lat, 
  circuits_1.circuitref, 
  circuits_1.country
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
group by circuits_1.circuitref, circuits_1.lng, circuits_1.name, circuits_1.lng, circuits_1.lat, circuits_1.circuitid, circuits_1.location, circuits_1.lat, circuits_1.circuitref, circuits_1.country
limit 37;
select  
  standings_1.driverid, 
  max(
    cast(standings_1.date as "timestamp")), 
  standings_1.date, 
  standings_1.raceid, 
  circuits_1.lng, 
  max(
    cast(standings_1.driverstandingsid as int8)), 
  standings_1.wins, 
  circuits_1.lat, 
  circuits_1.country, 
  standings_1.raceid, 
  standings_1.driverid, 
  standings_1.position, 
  circuits_1.circuitref, 
  circuits_1.country, 
  standings_1.points, 
  circuits_1.lng, 
  circuits_1.lng
from 
  standings as standings_1
    inner join circuits as circuits_1
    on (standings_1.driverstandingsid = circuits_1.circuitid )
where circuits_1.circuitid is not NULL
group by standings_1.driverid, standings_1.date, standings_1.raceid, circuits_1.lng, standings_1.wins, circuits_1.lat, circuits_1.country, standings_1.raceid, standings_1.driverid, standings_1.position, circuits_1.circuitref, circuits_1.country, standings_1.points, circuits_1.lng, circuits_1.lng
limit 41;
select  
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
limit 2;
select  
  circuits_1.alt, 
  circuits_1.name, 
  avg(
    cast(circuits_1.circuitid as int8)), 
  circuits_1.location, 
  min(
    cast(circuits_1.lng as float8)), 
  circuits_1.lng, 
  min(
    cast(circuits_1.name as text)), 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.circuitid < circuits_1.circuitid
group by circuits_1.alt, circuits_1.name, circuits_1.location, circuits_1.lng, circuits_1.circuitid
limit 15;
select  
  standings_1.points
from 
  standings as standings_1
      inner join races as races_1
      on (standings_1.wins = races_1.raceid )
    inner join standings as standings_2
    on (standings_1.position = standings_2.driverstandingsid )
where races_1.time is not NULL
limit 31;
select  
  qualifying_1.constructorid, 
  qualifying_1.raceid, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid > qualifying_1.number
limit 30;
select  
  max(
    cast(drivers_1.code as text)), 
  drivers_1.forename, 
  drivers_1.nationality, 
  drivers_1.driverref, 
  drivers_1.surname, 
  drivers_1.code, 
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.surname = drivers_1.forename
group by drivers_1.forename, drivers_1.nationality, drivers_1.driverref, drivers_1.surname, drivers_1.code, drivers_1.code
limit 4;
select  
  standings_1.driverstandingsid, 
  avg(
    cast(standings_1.position as int8)), 
  sum(
    cast(standings_1.raceid as int8))
from 
  standings as standings_1
where standings_1.points is not NULL
group by standings_1.driverstandingsid
limit 13;
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
limit 28;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.position, 
  min(
    cast(constructor_standings_1.date as "timestamp")), 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructor_standings_1.position, 
  sum(
    cast(constructor_standings_1.position as int8)), 
  constructor_standings_1.raceid
from 
  constructors as constructors_1
    inner join constructor_standings as constructor_standings_1
    on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.points is not NULL
group by constructor_standings_1.raceid, constructor_standings_1.position, constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructor_standings_1.position, constructor_standings_1.raceid
limit 3;
select  
  min(
    cast(constructor_standings_1.date as "timestamp"))
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
limit 7;
select  
  constructor_standings_1.points
from 
  qualifying as qualifying_1
    inner join constructor_standings as constructor_standings_1
    on (qualifying_1.raceid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.points < constructor_standings_1.points
limit 27;
select  
  standings_1.driverid, 
  standings_1.driverid, 
  standings_1.position, 
  standings_1.raceid, 
  constructor_standings_1.position, 
  max(
    cast(constructor_standings_1.date as "timestamp"))
from 
  constructor_results as constructor_results_1
    inner join constructor_standings as constructor_standings_1
      inner join standings as standings_1
      on (constructor_standings_1.position = standings_1.driverstandingsid )
    on (constructor_results_1.raceid = constructor_standings_1.constructorstandingsid )
where standings_1.raceid is not NULL
group by standings_1.driverid, standings_1.driverid, standings_1.position, standings_1.raceid, constructor_standings_1.position
limit 25;
select  
  max(
    cast(drivers_1.dob as "timestamp")), 
  min(
    cast(drivers_1.nationality as text)), 
  circuits_1.lat, 
  drivers_1.surname, 
  drivers_1.driverref, 
  circuits_1.location, 
  drivers_1.forename, 
  drivers_1.code, 
  drivers_1.code, 
  min(
    cast(circuits_1.circuitref as text))
from 
  circuits as circuits_1
    inner join constructors as constructors_1
      inner join drivers as drivers_1
      on (constructors_1.name = drivers_1.driverref )
    on (circuits_1.circuitid = drivers_1.driverid )
where drivers_1.dob > drivers_1.dob
group by circuits_1.lat, drivers_1.surname, drivers_1.driverref, circuits_1.location, drivers_1.forename, drivers_1.code, drivers_1.code
limit 13;
select  
  qualifying_1.number, 
  qualifying_1.position, 
  qualifying_1.date, 
  qualifying_1.constructorid, 
  qualifying_1.number, 
  max(
    cast(qualifying_1.date as "timestamp")), 
  max(
    cast(qualifying_1.raceid as int8)), 
  qualifying_1.constructorid, 
  qualifying_1.raceid, 
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  qualifying_1.position, 
  qualifying_1.date, 
  max(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.qualifyid, 
  min(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
group by qualifying_1.number, qualifying_1.position, qualifying_1.date, qualifying_1.constructorid, qualifying_1.number, qualifying_1.constructorid, qualifying_1.raceid, qualifying_1.driverid, qualifying_1.driverid, qualifying_1.position, qualifying_1.date, qualifying_1.qualifyid, qualifying_1.driverid
limit 34;
select  
  max(
    cast(races_1.time as text))
from 
  qualifying as qualifying_1
          inner join circuits as circuits_1
            inner join qualifying as qualifying_2
            on (circuits_1.circuitid = qualifying_2.qualifyid )
          on (qualifying_1.qualifyid = qualifying_2.qualifyid )
        inner join qualifying as qualifying_3
          inner join races as races_1
          on (qualifying_3.position = races_1.raceid )
        on (circuits_1.location = races_1.name )
      inner join drivers as drivers_1
      on (qualifying_3.qualifyid = drivers_1.driverid )
    inner join constructor_standings as constructor_standings_1
    on (qualifying_1.position = constructor_standings_1.constructorstandingsid )
where circuits_1.name >= drivers_1.nationality
limit 24;
select  
  races_1.time, 
  min(
    cast(races_1.date as "timestamp")), 
  sum(
    cast(races_1.year as int8)), 
  races_1.name, 
  max(
    cast(races_1.time as text))
from 
  races as races_1
where races_1.round is not NULL
group by races_1.time, races_1.name
limit 13;
select  
  constructor_standings_1.constructorid
from 
  qualifying as qualifying_1
      inner join circuits as circuits_1
      on (qualifying_1.position = circuits_1.circuitid )
    inner join races as races_1
        inner join constructor_results as constructor_results_1
        on (races_1.date = constructor_results_1.date )
      inner join constructor_standings as constructor_standings_1
      on (constructor_results_1.constructorid = constructor_standings_1.constructorstandingsid )
    on (circuits_1.lng = constructor_results_1.points )
where qualifying_1.driverid is not NULL
limit 36;
select  
  results_1.positionorder, 
  qualifying_1.number, 
  results_1.fastestlap, 
  qualifying_1.position, 
  avg(
    cast(constructor_standings_2.position as int8)), 
  circuits_1.country, 
  constructor_standings_2.wins, 
  qualifying_1.qualifyid, 
  qualifying_1.driverid, 
  circuits_1.alt, 
  constructor_standings_2.constructorstandingsid, 
  min(
    cast(circuits_1.circuitref as text)), 
  circuits_1.lng, 
  qualifying_1.constructorid, 
  circuits_1.alt, 
  constructor_standings_2.points, 
  results_1.date, 
  min(
    cast(qualifying_1.date as "timestamp")), 
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  constructor_standings_2.points
from 
  constructor_standings as constructor_standings_1
      inner join qualifying as qualifying_1
      on (constructor_standings_1.date = qualifying_1.date )
    inner join circuits as circuits_1
      inner join results as results_1
        inner join constructor_standings as constructor_standings_2
        on (results_1.milliseconds = constructor_standings_2.points )
      on (circuits_1.lng = results_1.number )
    on (constructor_standings_1.raceid = constructor_standings_2.constructorstandingsid )
where circuits_1.name is not NULL
group by results_1.positionorder, qualifying_1.number, results_1.fastestlap, qualifying_1.position, circuits_1.country, constructor_standings_2.wins, qualifying_1.qualifyid, qualifying_1.driverid, circuits_1.alt, constructor_standings_2.constructorstandingsid, circuits_1.lng, qualifying_1.constructorid, circuits_1.alt, constructor_standings_2.points, results_1.date, constructor_standings_1.wins, constructor_standings_1.position, constructor_standings_2.points
limit 25;
select  
  min(
    cast(drivers_1.surname as text)), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorid, 
  drivers_1.driverid, 
  max(
    cast(constructor_standings_1.position as int8))
from 
  drivers as drivers_1
    inner join constructor_standings as constructor_standings_1
    on (drivers_1.dob = constructor_standings_1.date )
where drivers_1.driverref is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorid, drivers_1.driverid
limit 25;
select  
  results_3.raceid
from 
  constructors as constructors_1
      inner join results as results_1
          inner join constructor_standings as constructor_standings_1
          on (results_1.date = constructor_standings_1.date )
        inner join standings as standings_1
          inner join results as results_2
          on (standings_1.points = results_2.number )
        on (constructor_standings_1.position = standings_1.driverstandingsid )
      on (constructors_1.constructorid = results_2.resultid )
    inner join results as results_3
      inner join races as races_1
      on (results_3.constructorid = races_1.raceid )
    on (results_2.fastestlap = results_3.number )
where results_1.laps is not NULL
limit 9;
select  
  min(
    cast(drivers_1.driverref as text)), 
  drivers_1.driverid, 
  drivers_1.driverref, 
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.dob < drivers_1.dob
group by drivers_1.driverid, drivers_1.driverref, drivers_1.forename
limit 1;
select  
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  sum(
    cast(constructors_1.constructorid as int8)), 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.constructorref, 
  min(
    cast(constructors_1.name as text)), 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  min(
    cast(constructors_1.constructorref as text))
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorref, constructors_1.constructorref, constructors_1.nationality, constructors_1.constructorid, constructors_1.name, constructors_1.constructorref, constructors_1.nationality, constructors_1.nationality, constructors_1.name, constructors_1.constructorref, constructors_1.nationality
limit 19;
select  
  min(
    cast(drivers_1.dob as "timestamp")), 
  sum(
    cast(results_1.statusid as int8)), 
  constructors_1.constructorref, 
  circuits_2.location, 
  constructors_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  results_1.resultid, 
  sum(
    cast(constructor_standings_1.position as int8)), 
  constructors_2.nationality, 
  constructors_2.constructorid, 
  circuits_2.circuitref, 
  circuits_2.lat, 
  constructors_2.constructorid, 
  drivers_1.forename, 
  avg(
    cast(circuits_1.lat as float8)), 
  circuits_3.lat, 
  constructors_2.constructorid, 
  circuits_1.location, 
  constructors_1.constructorref
from 
  circuits as circuits_1
      inner join circuits as circuits_2
        inner join constructor_standings as constructor_standings_1
          inner join constructors as constructors_1
          on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
        on (circuits_2.name = constructors_1.constructorref )
      on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
    inner join drivers as drivers_1
        inner join results as results_1
        on (drivers_1.dob = results_1.date )
      inner join constructors as constructors_2
        inner join circuits as circuits_3
        on (constructors_2.nationality = circuits_3.circuitref )
      on (results_1.resultid = constructors_2.constructorid )
    on (constructors_1.constructorref = drivers_1.driverref )
where circuits_1.location is not NULL
group by constructors_1.constructorref, circuits_2.location, constructors_1.constructorid, constructor_standings_1.constructorstandingsid, results_1.resultid, constructors_2.nationality, constructors_2.constructorid, circuits_2.circuitref, circuits_2.lat, constructors_2.constructorid, drivers_1.forename, circuits_3.lat, constructors_2.constructorid, circuits_1.location, constructors_1.constructorref
limit 30;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 19;
select  
  min(
    cast(constructor_standings_1.date as "timestamp"))
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
limit 41;
select  
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  max(
    cast(constructors_1.constructorid as int8)), 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  count(*), 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  max(
    cast(constructors_1.nationality as text)), 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.name, constructors_1.constructorref, constructors_1.nationality, constructors_1.constructorid, constructors_1.constructorid, constructors_1.constructorref, constructors_1.constructorref, constructors_1.nationality, constructors_1.nationality, constructors_1.name, constructors_1.constructorid, constructors_1.constructorid, constructors_1.constructorref, constructors_1.constructorid, constructors_1.name, constructors_1.nationality, constructors_1.name
limit 33;
select  
  sum(
    cast(circuits_1.lng as float8)), 
  circuits_1.country, 
  circuits_1.country, 
  circuits_1.circuitid, 
  circuits_1.alt, 
  circuits_1.circuitref, 
  circuits_1.country
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
group by circuits_1.country, circuits_1.country, circuits_1.circuitid, circuits_1.alt, circuits_1.circuitref, circuits_1.country
limit 15;
select  
  circuits_1.location, 
  circuits_1.name, 
  circuits_1.lng, 
  circuits_1.lat
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
limit 24;
select  
  results_1.fastestlap
from 
  drivers as drivers_1
      inner join constructors as constructors_1
      on (drivers_1.forename = constructors_1.constructorref )
    inner join results as results_1
    on (constructors_1.constructorid = results_1.resultid )
where constructors_1.constructorid is not NULL
limit 16;
select  
  standings_1.driverid, 
  standings_1.position, 
  standings_1.wins, 
  standings_1.raceid, 
  standings_1.driverstandingsid, 
  standings_1.driverstandingsid, 
  standings_1.position
from 
  standings as standings_1
where standings_1.date is not NULL
limit 11;
select  
  avg(
    cast(constructor_standings_1.points as float8))
from 
  constructor_standings as constructor_standings_1
    inner join constructor_standings as constructor_standings_2
    on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
where constructor_standings_1.constructorid is not NULL
limit 9;
select  
  standings_1.driverid
from 
  standings as standings_1
where standings_1.points is not NULL
limit 36;
select  
  constructor_results_1.raceid, 
  sum(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.constructorresultsid, 
  avg(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.raceid, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.constructorresultsid, constructor_results_1.date
limit 21;
select  
  drivers_1.dob
from 
  results as results_1
    inner join drivers as drivers_1
    on (results_1.statusid = drivers_1.driverid )
where drivers_1.driverref is not NULL
limit 22;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  sum(
    cast(constructor_results_1.constructorresultsid as int8)), 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.points <= constructor_results_1.points
group by constructor_results_1.constructorresultsid, constructor_results_1.constructorid, constructor_results_1.raceid, constructor_results_1.points, constructor_results_1.raceid, constructor_results_1.constructorresultsid, constructor_results_1.constructorid, constructor_results_1.raceid
limit 9;
select  
  constructor_standings_1.date, 
  circuits_1.circuitid, 
  races_1.year, 
  avg(
    cast(constructor_results_1.points as float8))
from 
  constructor_standings as constructor_standings_1
      inner join circuits as circuits_1
      on (constructor_standings_1.position = circuits_1.circuitid )
    inner join races as races_1
      inner join constructor_results as constructor_results_1
      on (races_1.round = constructor_results_1.constructorresultsid )
    on (constructor_standings_1.constructorid = races_1.raceid )
where races_1.name <= circuits_1.circuitref
group by constructor_standings_1.date, circuits_1.circuitid, races_1.year
limit 9;
select  
  results_1.points, 
  results_1.positionorder, 
  circuits_1.circuitref, 
  sum(
    cast(results_1.grid as int8)), 
  qualifying_1.constructorid, 
  qualifying_1.driverid, 
  qualifying_1.number, 
  circuits_1.name
from 
  qualifying as qualifying_1
    inner join circuits as circuits_1
      inner join results as results_1
      on (circuits_1.circuitid = results_1.resultid )
    on (qualifying_1.driverid = results_1.resultid )
where results_1.resultid >= results_1.driverid
group by results_1.points, results_1.positionorder, circuits_1.circuitref, qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.number, circuits_1.name
limit 32;
select  
  races_1.circuitid, 
  races_1.time, 
  races_1.time, 
  races_1.circuitid, 
  races_1.circuitid, 
  races_1.year, 
  count(
    cast(races_1.circuitid as int8))
from 
  races as races_1
where races_1.raceid is not NULL
group by races_1.circuitid, races_1.time, races_1.time, races_1.circuitid, races_1.circuitid, races_1.year
limit 5;
select  
  circuits_1.country, 
  circuits_1.alt, 
  circuits_1.location, 
  circuits_1.name, 
  circuits_1.lng, 
  circuits_1.lng, 
  circuits_1.lng, 
  circuits_1.country, 
  circuits_1.lat, 
  circuits_1.alt, 
  max(
    cast(circuits_1.circuitref as text)), 
  circuits_1.lng, 
  max(
    cast(circuits_1.lng as float8)), 
  circuits_1.alt, 
  circuits_1.circuitid, 
  circuits_1.circuitid, 
  circuits_1.circuitid, 
  circuits_1.lng, 
  circuits_1.circuitref, 
  circuits_1.name, 
  circuits_1.circuitref, 
  max(
    cast(circuits_1.circuitid as int8)), 
  circuits_1.circuitid, 
  circuits_1.alt, 
  circuits_1.alt, 
  circuits_1.lng, 
  circuits_1.lat, 
  circuits_1.location, 
  circuits_1.country, 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.alt <= circuits_1.lat
group by circuits_1.country, circuits_1.alt, circuits_1.location, circuits_1.name, circuits_1.lng, circuits_1.lng, circuits_1.lng, circuits_1.country, circuits_1.lat, circuits_1.alt, circuits_1.lng, circuits_1.alt, circuits_1.circuitid, circuits_1.circuitid, circuits_1.circuitid, circuits_1.lng, circuits_1.circuitref, circuits_1.name, circuits_1.circuitref, circuits_1.circuitid, circuits_1.alt, circuits_1.alt, circuits_1.lng, circuits_1.lat, circuits_1.location, circuits_1.country, circuits_1.lng
limit 42;
select  
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.constructorid, 
  avg(
    cast(constructors_1.constructorid as int8))
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.constructorid, constructors_1.name, constructors_1.constructorid, constructors_1.name, constructors_1.name, constructors_1.constructorid
limit 16;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins, 
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  constructor_standings_1.raceid, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  avg(
    cast(constructor_standings_1.constructorstandingsid as int8)), 
  constructor_standings_1.raceid, 
  max(
    cast(constructor_standings_1.points as float8)), 
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.wins, constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.position, constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.constructorid, constructor_standings_1.wins, constructor_standings_1.date, constructor_standings_1.wins, constructor_standings_1.raceid, constructor_standings_1.position, constructor_standings_1.constructorstandingsid, constructor_standings_1.raceid, constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.raceid
limit 15;
select  
  results_1.date, 
  min(
    cast(circuits_1.country as text)), 
  results_1.raceid, 
  circuits_1.location, 
  results_1.grid, 
  results_1.resultid, 
  circuits_1.lng
from 
  circuits as circuits_1
    inner join results as results_1
    on (circuits_1.lng = results_1.number )
where circuits_1.country is not NULL
group by results_1.date, results_1.raceid, circuits_1.location, results_1.grid, results_1.resultid, circuits_1.lng
limit 15;
select  
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  count(*)
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.constructorid, constructors_1.nationality, constructors_1.nationality, constructors_1.constructorid, constructors_1.nationality, constructors_1.nationality, constructors_1.constructorid, constructors_1.constructorid
limit 26;
select  
  standings_1.position, 
  standings_1.points, 
  drivers_1.forename, 
  standings_1.driverid, 
  standings_1.date, 
  drivers_1.nationality, 
  standings_1.raceid, 
  standings_1.driverid
from 
  standings as standings_1
    inner join drivers as drivers_1
    on (standings_1.position = drivers_1.driverid )
where drivers_1.nationality >= drivers_1.driverref
limit 13;
select  
  sum(
    cast(constructor_standings_1.raceid as int8)), 
  standings_2.date, 
  results_1.milliseconds, 
  standings_2.wins
from 
  drivers as drivers_1
        inner join standings as standings_1
        on (drivers_1.driverid = standings_1.driverstandingsid )
      inner join results as results_1
        inner join standings as standings_2
        on (results_1.points = standings_2.points )
      on (drivers_1.driverid = standings_2.driverstandingsid )
    inner join constructor_standings as constructor_standings_1
      inner join qualifying as qualifying_1
      on (constructor_standings_1.position = qualifying_1.qualifyid )
    on (results_1.laps = constructor_standings_1.constructorstandingsid )
where standings_1.wins is not NULL
group by standings_2.date, results_1.milliseconds, standings_2.wins
limit 9;
select  
  min(
    cast(constructor_standings_1.date as "timestamp")), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.points, 
  sum(
    cast(constructor_standings_1.points as float8))
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.constructorid, constructor_standings_1.constructorid, constructor_standings_1.position, constructor_standings_1.wins, constructor_standings_1.constructorid, constructor_standings_1.points, constructor_standings_1.constructorid, constructor_standings_1.points
limit 30;
select  
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
limit 10;
select  
  qualifying_1.driverid, 
  races_1.name, 
  races_1.time, 
  races_1.year, 
  races_1.round, 
  races_1.round, 
  qualifying_1.date, 
  races_1.time
from 
  qualifying as qualifying_1
    inner join races as races_1
    on (qualifying_1.number = races_1.raceid )
where races_1.date is not NULL
limit 39;
select  
  drivers_1.nationality, 
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
limit 22;
select  
  races_1.year, 
  races_1.date, 
  races_1.date, 
  races_1.circuitid
from 
  races as races_1
where races_1.raceid is not NULL
limit 9;
select  
  standings_1.raceid
from 
  results as results_1
    inner join standings as standings_1
      inner join results as results_2
      on (standings_1.wins = results_2.resultid )
    on (results_1.date = standings_1.date )
where results_1.statusid is not NULL
limit 40;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
    inner join constructor_results as constructor_results_2
    on (constructor_results_1.points = constructor_results_2.points )
where constructor_results_2.points > constructor_results_1.points
limit 3;
select  
  circuits_1.location, 
  circuits_1.lat, 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.name is not NULL
limit 12;
select  
  races_1.name, 
  races_1.round, 
  drivers_1.dob, 
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  races_1.circuitid, 
  drivers_1.dob, 
  races_1.date, 
  races_1.raceid, 
  races_1.name, 
  constructor_standings_1.position, 
  max(
    cast(drivers_1.nationality as text)), 
  constructor_standings_1.points
from 
  races as races_1
    inner join constructor_standings as constructor_standings_1
      inner join drivers as drivers_1
      on (constructor_standings_1.position = drivers_1.driverid )
    on (races_1.date = constructor_standings_1.date )
where constructor_standings_1.points > constructor_standings_1.points
group by races_1.name, races_1.round, drivers_1.dob, constructor_standings_1.wins, constructor_standings_1.points, races_1.circuitid, drivers_1.dob, races_1.date, races_1.raceid, races_1.name, constructor_standings_1.position, constructor_standings_1.points
limit 38;
select  
  count(*), 
  qualifying_1.constructorid, 
  qualifying_1.position, 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
group by qualifying_1.constructorid, qualifying_1.position, qualifying_1.constructorid, qualifying_1.qualifyid
limit 4;
select  
  standings_1.raceid, 
  qualifying_1.date, 
  qualifying_1.date, 
  qualifying_1.driverid
from 
  standings as standings_1
    inner join qualifying as qualifying_1
    on (standings_1.wins = qualifying_1.qualifyid )
where standings_1.wins is not NULL
limit 22;
select  
  sum(
    cast(results_1.statusid as int8)), 
  qualifying_1.date, 
  sum(
    cast(qualifying_1.raceid as int8)), 
  results_1.number
from 
  results as results_1
    inner join constructor_standings as constructor_standings_1
      inner join qualifying as qualifying_1
      on (constructor_standings_1.constructorid = qualifying_1.qualifyid )
    on (results_1.rank = constructor_standings_1.points )
where qualifying_1.driverid <= results_1.resultid
group by qualifying_1.date, results_1.number
limit 35;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 41;
select  
  races_1.time, 
  results_1.positionorder, 
  standings_1.date, 
  standings_1.date, 
  max(
    cast(races_1.date as "timestamp"))
from 
  qualifying as qualifying_1
    inner join standings as standings_1
      inner join races as races_1
        inner join results as results_1
        on (races_1.date = results_1.date )
      on (standings_1.date = races_1.date )
    on (qualifying_1.number = standings_1.driverstandingsid )
where qualifying_1.raceid is not NULL
group by races_1.time, results_1.positionorder, standings_1.date, standings_1.date
limit 22;
select  
  min(
    cast(constructor_results_1.date as "timestamp")), 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  count(*), 
  avg(
    cast(constructor_results_1.points as float8)), 
  min(
    cast(constructor_results_1.date as "timestamp")), 
  constructor_results_1.constructorresultsid, 
  min(
    cast(constructor_results_1.constructorid as int8)), 
  constructor_results_1.date, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points
limit 42;
select  
  constructors_1.nationality, 
  min(
    cast(constructor_standings_1.date as "timestamp"))
from 
  constructor_standings as constructor_standings_1
        inner join results as results_1
        on (constructor_standings_1.position = results_1.resultid )
      inner join circuits as circuits_1
      on (results_1.statusid = circuits_1.circuitid )
    inner join constructors as constructors_1
    on (constructor_standings_1.raceid = constructors_1.constructorid )
where constructors_1.name = constructors_1.constructorref
group by constructors_1.nationality
limit 30;
select  
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 10;
select  
  count(*), 
  qualifying_1.position, 
  qualifying_1.date, 
  qualifying_1.constructorid, 
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.position, qualifying_1.date, qualifying_1.constructorid, qualifying_1.number
limit 11;
select  
  standings_1.date, 
  standings_1.points, 
  min(
    cast(standings_1.raceid as int8)), 
  standings_1.points
from 
  standings as standings_1
where standings_1.raceid is not NULL
group by standings_1.date, standings_1.points, standings_1.points
limit 37;
select  
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.alt is not NULL
limit 1;
select  
  constructor_standings_3.date, 
  races_1.name, 
  constructor_standings_4.wins, 
  constructor_standings_3.date, 
  constructor_standings_4.raceid, 
  races_1.year, 
  min(
    cast(races_1.name as text)), 
  max(
    cast(races_1.name as text))
from 
  constructor_standings as constructor_standings_1
      inner join constructor_standings as constructor_standings_2
        inner join constructor_standings as constructor_standings_3
        on (constructor_standings_2.constructorstandingsid = constructor_standings_3.constructorstandingsid )
      on (constructor_standings_1.wins = constructor_standings_2.constructorstandingsid )
    inner join races as races_1
      inner join constructor_standings as constructor_standings_4
      on (races_1.round = constructor_standings_4.constructorstandingsid )
    on (constructor_standings_3.points = constructor_standings_4.points )
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_3.date, races_1.name, constructor_standings_4.wins, constructor_standings_3.date, constructor_standings_4.raceid, races_1.year
limit 38;
select  
  max(
    cast(circuits_1.alt as float8)), 
  standings_1.raceid
from 
  qualifying as qualifying_1
    inner join circuits as circuits_1
        inner join drivers as drivers_1
        on (circuits_1.name = drivers_1.driverref )
      inner join standings as standings_1
        inner join constructor_standings as constructor_standings_1
        on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
      on (drivers_1.dob = constructor_standings_1.date )
    on (qualifying_1.position = drivers_1.driverid )
where drivers_1.dob < standings_1.date
group by standings_1.raceid
limit 31;
select  
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  avg(
    cast(constructors_1.constructorid as int8))
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorref, constructors_1.constructorid, constructors_1.constructorid
limit 25;
select  
  circuits_1.lat, 
  max(
    cast(circuits_2.country as text)), 
  circuits_2.circuitref, 
  circuits_1.country, 
  circuits_1.circuitref, 
  circuits_2.lng, 
  avg(
    cast(circuits_2.circuitid as int8)), 
  circuits_2.lng, 
  circuits_1.lng
from 
  circuits as circuits_1
    inner join circuits as circuits_2
    on (circuits_1.lat = circuits_2.lat )
where circuits_1.country is not NULL
group by circuits_1.lat, circuits_2.circuitref, circuits_1.country, circuits_1.circuitref, circuits_2.lng, circuits_2.lng, circuits_1.lng
limit 15;
select  
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 28;
select  
  constructor_standings_1.date, 
  constructor_standings_1.position, 
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points <= constructor_standings_1.points
limit 8;
select  
  results_1.date, 
  min(
    cast(results_1.positionorder as int8)), 
  drivers_1.driverref, 
  drivers_1.code, 
  min(
    cast(drivers_1.nationality as text)), 
  drivers_1.surname, 
  drivers_1.forename, 
  max(
    cast(drivers_1.driverid as int8)), 
  max(
    cast(drivers_1.nationality as text)), 
  count(*), 
  max(
    cast(results_1.date as "timestamp")), 
  min(
    cast(drivers_1.forename as text)), 
  drivers_1.surname, 
  drivers_1.dob
from 
  drivers as drivers_1
    inner join results as results_1
    on (drivers_1.driverid = results_1.resultid )
where results_1.rank >= results_1.points
group by results_1.date, drivers_1.driverref, drivers_1.code, drivers_1.surname, drivers_1.forename, drivers_1.surname, drivers_1.dob
limit 38;
select  
  constructors_1.constructorid, 
  count(
    cast(constructors_1.name as text)), 
  constructors_1.nationality, 
  sum(
    cast(constructors_1.constructorid as int8)), 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.nationality, 
  min(
    cast(constructors_1.constructorid as int8)), 
  min(
    cast(constructors_1.name as text)), 
  constructors_1.name, 
  constructors_1.nationality, 
  sum(
    cast(constructors_1.constructorid as int8))
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorid, constructors_1.nationality, constructors_1.nationality, constructors_1.name, constructors_1.constructorid, constructors_1.name, constructors_1.constructorid, constructors_1.name, constructors_1.nationality, constructors_1.name, constructors_1.nationality
limit 18;
select  
  constructor_results_1.constructorresultsid, 
  constructor_standings_1.raceid, 
  avg(
    cast(constructor_results_1.points as float8)), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  constructors_1.constructorid
from 
  constructor_results as constructor_results_1
    inner join constructor_standings as constructor_standings_1
      inner join constructors as constructors_1
      on (constructor_standings_1.constructorid = constructors_1.constructorid )
    on (constructor_results_1.points = constructor_standings_1.points )
where constructors_1.name > constructors_1.constructorref
group by constructor_results_1.constructorresultsid, constructor_standings_1.raceid, constructor_standings_1.constructorid, constructor_standings_1.raceid, constructors_1.constructorid
limit 10;
select  
  circuits_2.lng, 
  sum(
    cast(constructor_standings_1.constructorstandingsid as int8)), 
  max(
    cast(circuits_2.location as text))
from 
  constructor_results as constructor_results_1
      inner join circuits as circuits_1
      on (constructor_results_1.raceid = circuits_1.circuitid )
    inner join circuits as circuits_2
      inner join constructor_standings as constructor_standings_1
      on (circuits_2.lng = constructor_standings_1.points )
    on (circuits_1.lng = constructor_standings_1.points )
where circuits_2.alt is not NULL
group by circuits_2.lng
limit 13;
select  
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
limit 14;
select  
  standings_1.wins, 
  standings_1.position, 
  standings_1.driverid, 
  races_1.circuitid, 
  min(
    cast(races_1.date as "timestamp"))
from 
  races as races_1
    inner join standings as standings_1
    on (races_1.round = standings_1.driverstandingsid )
where races_1.round is not NULL
group by standings_1.wins, standings_1.position, standings_1.driverid, races_1.circuitid
limit 8;
select  
  races_1.circuitid, 
  circuits_1.location, 
  races_1.raceid, 
  results_1.fastestlap
from 
  results as results_1
      inner join circuits as circuits_1
      on (results_1.position = circuits_1.lat )
    inner join races as races_1
        inner join circuits as circuits_2
        on (races_1.year = circuits_2.circuitid )
      inner join circuits as circuits_3
      on (circuits_2.alt = circuits_3.lat )
    on (circuits_1.name = races_1.name )
where circuits_2.alt is not NULL
limit 27;
select  
  constructors_1.nationality, 
  min(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.driverid, 
  races_1.date, 
  drivers_1.code, 
  races_1.name, 
  constructors_1.name, 
  drivers_1.forename, 
  drivers_1.surname, 
  constructors_1.name
from 
  races as races_1
      inner join constructors as constructors_1
      on (races_1.year = constructors_1.constructorid )
    inner join drivers as drivers_1
    on (constructors_1.constructorid = drivers_1.driverid )
where drivers_1.forename is not NULL
group by constructors_1.nationality, drivers_1.driverid, races_1.date, drivers_1.code, races_1.name, constructors_1.name, drivers_1.forename, drivers_1.surname, constructors_1.name
limit 10;
select distinct 
  races_1.round
from 
  races as races_1
where races_1.circuitid is not NULL
limit 4;
select  
  results_1.positionorder, 
  circuits_1.alt, 
  circuits_1.country, 
  circuits_1.lng
from 
  results as results_1
    inner join circuits as circuits_1
    on (results_1.statusid = circuits_1.circuitid )
where circuits_1.alt is not NULL
limit 17;
select  
  standings_1.points
from 
  drivers as drivers_1
    inner join standings as standings_1
      inner join standings as standings_2
      on (standings_1.date = standings_2.date )
    on (drivers_1.driverid = standings_1.driverstandingsid )
where drivers_1.driverref is not NULL
limit 20;
select  
  standings_2.raceid, 
  standings_1.position, 
  standings_1.points
from 
  standings as standings_1
    inner join standings as standings_2
    on (standings_1.wins = standings_2.driverstandingsid )
where standings_2.points is not NULL
limit 27;
select  
  constructor_standings_1.raceid, 
  count(
    cast(constructor_standings_1.constructorid as int8)), 
  sum(
    cast(constructor_standings_1.points as float8)), 
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  constructor_standings_1.points, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid <= constructor_standings_1.wins
group by constructor_standings_1.raceid, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.points, constructor_standings_1.wins, constructor_standings_1.constructorstandingsid, constructor_standings_1.position
limit 2;
select  
  results_1.driverid, 
  drivers_1.nationality, 
  drivers_1.code
from 
  results as results_1
    inner join drivers as drivers_1
    on (results_1.resultid = drivers_1.driverid )
where results_1.number is not NULL
limit 31;
select  
  results_1.resultid, 
  results_1.driverid, 
  results_1.date, 
  results_1.grid, 
  results_1.positionorder, 
  results_1.raceid, 
  results_1.number
from 
  results as results_1
where results_1.statusid is not NULL
limit 32;
select  
  standings_1.driverstandingsid, 
  standings_1.wins, 
  standings_1.position, 
  max(
    cast(standings_1.driverstandingsid as int8)), 
  standings_1.date, 
  standings_1.driverstandingsid, 
  standings_1.position, 
  standings_1.raceid, 
  standings_1.points, 
  standings_1.points, 
  standings_1.driverid, 
  max(
    cast(standings_1.raceid as int8)), 
  standings_1.driverstandingsid, 
  standings_1.points, 
  standings_1.points, 
  standings_1.points, 
  standings_1.raceid, 
  standings_1.wins, 
  standings_1.points, 
  avg(
    cast(standings_1.wins as int8))
from 
  standings as standings_1
where standings_1.points = standings_1.points
group by standings_1.driverstandingsid, standings_1.wins, standings_1.position, standings_1.date, standings_1.driverstandingsid, standings_1.position, standings_1.raceid, standings_1.points, standings_1.points, standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.points, standings_1.points, standings_1.raceid, standings_1.wins, standings_1.points
limit 18;
select  
  count(*), 
  races_1.date, 
  min(
    cast(races_1.date as "timestamp")), 
  races_1.time, 
  races_1.date, 
  max(
    cast(races_1.date as "timestamp")), 
  races_1.year, 
  races_1.date
from 
  races as races_1
where races_1.date is not NULL
group by races_1.date, races_1.time, races_1.date, races_1.year, races_1.date
limit 10;
select  
  qualifying_1.date
from 
  qualifying as qualifying_1
    inner join standings as standings_1
    on (qualifying_1.constructorid = standings_1.driverstandingsid )
where standings_1.date < qualifying_1.date
limit 13;
select  
  drivers_1.nationality, 
  drivers_1.forename, 
  drivers_1.driverref, 
  drivers_1.nationality, 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
limit 3;
select  
  constructor_results_1.date, 
  constructor_standings_1.position, 
  races_1.year
from 
  constructor_results as constructor_results_1
        inner join races as races_1
        on (constructor_results_1.date = races_1.date )
      inner join constructors as constructors_1
      on (constructor_results_1.constructorid = constructors_1.constructorid )
    inner join constructor_standings as constructor_standings_1
    on (constructor_results_1.points = constructor_standings_1.points )
where constructor_results_1.date >= races_1.date
limit 32;
select  
  qualifying_1.qualifyid, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  constructors_1.constructorid, 
  max(
    cast(constructors_1.constructorref as text))
from 
  qualifying as qualifying_1
    inner join constructors as constructors_1
    on (qualifying_1.position = constructors_1.constructorid )
where constructors_1.nationality is not NULL
group by qualifying_1.qualifyid, constructors_1.nationality, constructors_1.nationality, constructors_1.nationality, qualifying_1.driverid, qualifying_1.driverid, constructors_1.constructorid
limit 10;
select  
  avg(
    cast(drivers_1.driverid as int8)), 
  drivers_1.driverref, 
  drivers_1.nationality, 
  drivers_1.forename, 
  min(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.forename, 
  drivers_1.dob, 
  drivers_1.surname
from 
  circuits as circuits_1
    inner join drivers as drivers_1
    on (circuits_1.circuitid = drivers_1.driverid )
where circuits_1.lat is not NULL
group by drivers_1.driverref, drivers_1.nationality, drivers_1.forename, drivers_1.forename, drivers_1.dob, drivers_1.surname
limit 23;
select  
  results_1.grid, 
  results_1.milliseconds
from 
  results as results_1
where results_1.date is not NULL
limit 37;
select  
  circuits_1.circuitid
from 
  standings as standings_1
    inner join circuits as circuits_1
    on (standings_1.driverstandingsid = circuits_1.circuitid )
where standings_1.date = standings_1.date
limit 5;
select  
  qualifying_1.qualifyid, 
  qualifying_1.driverid, 
  qualifying_1.raceid, 
  qualifying_1.raceid, 
  qualifying_1.number, 
  min(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.driverid, 
  qualifying_1.qualifyid, 
  qualifying_1.constructorid, 
  qualifying_1.date, 
  qualifying_1.qualifyid, 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  qualifying_1.driverid, 
  avg(
    cast(qualifying_1.position as int8)), 
  min(
    cast(qualifying_1.date as "timestamp")), 
  count(
    cast(qualifying_1.qualifyid as int8)), 
  qualifying_1.position, 
  qualifying_1.position, 
  qualifying_1.raceid, 
  qualifying_1.driverid, 
  max(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
group by qualifying_1.qualifyid, qualifying_1.driverid, qualifying_1.raceid, qualifying_1.raceid, qualifying_1.number, qualifying_1.driverid, qualifying_1.qualifyid, qualifying_1.constructorid, qualifying_1.date, qualifying_1.qualifyid, qualifying_1.constructorid, qualifying_1.qualifyid, qualifying_1.driverid, qualifying_1.position, qualifying_1.position, qualifying_1.raceid, qualifying_1.driverid, qualifying_1.constructorid
limit 21;
select  
  qualifying_1.constructorid, 
  results_1.resultid, 
  results_1.laps, 
  avg(
    cast(standings_1.points as float8)), 
  standings_2.wins, 
  standings_2.driverid, 
  standings_2.wins, 
  standings_1.raceid, 
  max(
    cast(results_1.points as float8)), 
  max(
    cast(results_1.rank as float8)), 
  qualifying_1.position, 
  min(
    cast(results_1.position as float8)), 
  results_1.constructorid, 
  standings_1.position
from 
  results as results_1
      inner join qualifying as qualifying_1
        inner join standings as standings_1
        on (qualifying_1.date = standings_1.date )
      on (results_1.driverid = standings_1.driverstandingsid )
    inner join standings as standings_2
    on (results_1.rank = standings_2.points )
where standings_2.date is not NULL
group by qualifying_1.constructorid, results_1.resultid, results_1.laps, standings_2.wins, standings_2.driverid, standings_2.wins, standings_1.raceid, qualifying_1.position, results_1.constructorid, standings_1.position
limit 33;
select  
  qualifying_1.date, 
  qualifying_1.date, 
  qualifying_1.date, 
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid, 
  qualifying_1.date, 
  qualifying_1.raceid, 
  qualifying_1.date, 
  qualifying_1.qualifyid, 
  min(
    cast(qualifying_1.qualifyid as int8)), 
  qualifying_1.date, 
  qualifying_1.driverid, 
  max(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  qualifying_1.constructorid, 
  qualifying_1.driverid, 
  max(
    cast(qualifying_1.constructorid as int8))
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
group by qualifying_1.date, qualifying_1.date, qualifying_1.date, qualifying_1.qualifyid, qualifying_1.qualifyid, qualifying_1.date, qualifying_1.raceid, qualifying_1.date, qualifying_1.qualifyid, qualifying_1.date, qualifying_1.driverid, qualifying_1.driverid, qualifying_1.driverid, qualifying_1.constructorid, qualifying_1.driverid
limit 3;
select  
  constructor_results_1.date, 
  sum(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.date, constructor_results_1.constructorid, constructor_results_1.points, constructor_results_1.constructorid, constructor_results_1.raceid
limit 10;
select  
  qualifying_1.raceid, 
  qualifying_1.date, 
  qualifying_1.constructorid
from 
  drivers as drivers_1
    inner join qualifying as qualifying_1
    on (drivers_1.dob = qualifying_1.date )
where qualifying_1.raceid < qualifying_1.number
limit 10;
select  
  standings_1.driverid
from 
  circuits as circuits_1
    inner join standings as standings_1
    on (circuits_1.alt = standings_1.points )
where circuits_1.circuitref is not NULL
limit 31;
select  
  max(
    cast(races_1.time as text)), 
  constructor_results_1.raceid, 
  results_2.laps, 
  avg(
    cast(results_2.resultid as int8)), 
  results_2.driverid, 
  races_1.circuitid, 
  constructor_standings_1.date, 
  results_1.resultid, 
  min(
    cast(races_1.name as text)), 
  constructor_results_1.points
from 
  results as results_1
        inner join standings as standings_1
          inner join races as races_1
          on (standings_1.date = races_1.date )
        on (results_1.raceid = races_1.raceid )
      inner join standings as standings_2
          inner join constructor_results as constructor_results_1
            inner join constructor_standings as constructor_standings_1
            on (constructor_results_1.points = constructor_standings_1.points )
          on (standings_2.date = constructor_standings_1.date )
        inner join constructor_results as constructor_results_2
        on (constructor_standings_1.constructorstandingsid = constructor_results_2.constructorresultsid )
      on (results_1.statusid = constructor_results_2.constructorresultsid )
    inner join results as results_2
    on (races_1.date = results_2.date )
where results_1.milliseconds = standings_1.points
group by constructor_results_1.raceid, results_2.laps, results_2.driverid, races_1.circuitid, constructor_standings_1.date, results_1.resultid, constructor_results_1.points
limit 29;
select  
  qualifying_1.position, 
  qualifying_1.position, 
  qualifying_1.date, 
  count(
    cast(qualifying_1.position as int8)), 
  qualifying_1.raceid, 
  qualifying_1.position, 
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
group by qualifying_1.position, qualifying_1.position, qualifying_1.date, qualifying_1.raceid, qualifying_1.position, qualifying_1.position
limit 8;
select  
  drivers_1.code, 
  drivers_1.surname, 
  drivers_1.nationality, 
  drivers_1.forename, 
  drivers_1.nationality, 
  drivers_1.nationality, 
  drivers_1.surname, 
  drivers_1.driverref, 
  max(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.surname, 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.forename is not NULL
group by drivers_1.code, drivers_1.surname, drivers_1.nationality, drivers_1.forename, drivers_1.nationality, drivers_1.nationality, drivers_1.surname, drivers_1.driverref, drivers_1.surname, drivers_1.surname
limit 34;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
limit 22;
select  
  max(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.driverref, 
  drivers_1.nationality, 
  max(
    cast(drivers_1.driverid as int8)), 
  drivers_1.driverid, 
  drivers_1.forename, 
  drivers_1.forename, 
  min(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
group by drivers_1.driverref, drivers_1.nationality, drivers_1.driverid, drivers_1.forename, drivers_1.forename, drivers_1.forename
limit 2;
select  
  avg(
    cast(standings_1.driverstandingsid as int8)), 
  standings_1.date, 
  standings_1.position, 
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  standings_1.points, 
  standings_1.driverid, 
  standings_1.date, 
  standings_1.position, 
  standings_1.driverid, 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.wins is not NULL
group by standings_1.date, standings_1.position, standings_1.driverstandingsid, standings_1.raceid, standings_1.points, standings_1.driverid, standings_1.date, standings_1.position, standings_1.driverid, standings_1.raceid
limit 19;
select  
  circuits_1.name, 
  max(
    cast(circuits_2.name as text)), 
  circuits_1.circuitref, 
  circuits_1.lat, 
  circuits_1.country, 
  circuits_2.name, 
  circuits_2.lng, 
  circuits_1.alt, 
  circuits_2.circuitref, 
  circuits_1.lat, 
  circuits_2.country, 
  circuits_1.circuitref, 
  circuits_2.country, 
  circuits_2.circuitid, 
  circuits_2.name, 
  circuits_1.alt, 
  circuits_2.country, 
  circuits_1.alt, 
  circuits_2.alt, 
  circuits_2.country, 
  circuits_2.lat, 
  circuits_1.country, 
  circuits_1.circuitid, 
  circuits_1.alt, 
  circuits_1.circuitid, 
  circuits_1.name, 
  circuits_2.circuitref, 
  circuits_1.name
from 
  circuits as circuits_1
    inner join circuits as circuits_2
    on (circuits_1.circuitid = circuits_2.circuitid )
where circuits_2.circuitid is not NULL
group by circuits_1.name, circuits_1.circuitref, circuits_1.lat, circuits_1.country, circuits_2.name, circuits_2.lng, circuits_1.alt, circuits_2.circuitref, circuits_1.lat, circuits_2.country, circuits_1.circuitref, circuits_2.country, circuits_2.circuitid, circuits_2.name, circuits_1.alt, circuits_2.country, circuits_1.alt, circuits_2.alt, circuits_2.country, circuits_2.lat, circuits_1.country, circuits_1.circuitid, circuits_1.alt, circuits_1.circuitid, circuits_1.name, circuits_2.circuitref, circuits_1.name
limit 8;
select  
  max(
    cast(results_1.fastestlap as float8)), 
  results_1.position
from 
  results as results_1
where results_1.rank >= results_1.number
group by results_1.position
limit 37;
select  
  constructor_standings_1.wins, 
  qualifying_1.number, 
  circuits_1.lat, 
  max(
    cast(circuits_1.name as text)), 
  constructor_standings_1.constructorstandingsid, 
  circuits_1.circuitid, 
  constructor_standings_1.raceid, 
  qualifying_1.date
from 
  circuits as circuits_1
    inner join qualifying as qualifying_1
      inner join constructor_standings as constructor_standings_1
      on (qualifying_1.constructorid = constructor_standings_1.constructorstandingsid )
    on (circuits_1.alt = constructor_standings_1.points )
where constructor_standings_1.raceid is not NULL
group by constructor_standings_1.wins, qualifying_1.number, circuits_1.lat, constructor_standings_1.constructorstandingsid, circuits_1.circuitid, constructor_standings_1.raceid, qualifying_1.date
limit 1;
select  
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  standings_1.date, 
  standings_1.driverstandingsid
from 
  constructor_results as constructor_results_1
    inner join standings as standings_1
    on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
where standings_1.points = constructor_results_1.points
limit 4;
select  
  qualifying_1.constructorid, 
  qualifying_1.number, 
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid, 
  sum(
    cast(qualifying_1.constructorid as int8)), 
  qualifying_1.qualifyid, 
  qualifying_1.driverid, 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
group by qualifying_1.constructorid, qualifying_1.number, qualifying_1.qualifyid, qualifying_1.qualifyid, qualifying_1.qualifyid, qualifying_1.driverid, qualifying_1.date
limit 23;
select  
  drivers_1.dob, 
  drivers_1.driverid, 
  drivers_1.code, 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
limit 20;
select  
  standings_1.raceid, 
  standings_1.driverstandingsid, 
  sum(
    cast(standings_1.points as float8)), 
  min(
    cast(standings_1.driverstandingsid as int8)), 
  standings_1.date
from 
  standings as standings_1
where standings_1.points >= standings_1.points
group by standings_1.raceid, standings_1.driverstandingsid, standings_1.date
limit 24;
select  
  races_1.year, 
  races_1.time, 
  drivers_1.driverid
from 
  races as races_1
    inner join drivers as drivers_1
      inner join drivers as drivers_2
      on (drivers_1.driverid = drivers_2.driverid )
    on (races_1.raceid = drivers_2.driverid )
where races_1.time is not NULL
limit 9;
select  
  drivers_1.driverref, 
  drivers_1.dob, 
  standings_1.raceid, 
  drivers_1.code, 
  standings_1.driverid, 
  min(
    cast(drivers_1.dob as "timestamp"))
from 
  drivers as drivers_1
    inner join standings as standings_1
    on (drivers_1.dob = standings_1.date )
where drivers_1.nationality is not NULL
group by drivers_1.driverref, drivers_1.dob, standings_1.raceid, drivers_1.code, standings_1.driverid
limit 18;
select  
  circuits_1.name, 
  circuits_1.lat, 
  circuits_1.circuitref, 
  constructor_standings_1.constructorid, 
  circuits_1.lat, 
  constructor_standings_1.points, 
  min(
    cast(circuits_1.alt as float8)), 
  circuits_1.lng, 
  avg(
    cast(constructor_standings_1.constructorstandingsid as int8)), 
  circuits_1.circuitref
from 
  circuits as circuits_1
    inner join constructor_standings as constructor_standings_1
    on (circuits_1.lat = constructor_standings_1.points )
where constructor_standings_1.constructorid is not NULL
group by circuits_1.name, circuits_1.lat, circuits_1.circuitref, constructor_standings_1.constructorid, circuits_1.lat, constructor_standings_1.points, circuits_1.lng, circuits_1.circuitref
limit 31;
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_results_1.constructorid, 
  avg(
    cast(results_1.milliseconds as float8)), 
  results_1.fastestlap, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid, 
  constructor_results_1.points, 
  results_1.milliseconds, 
  constructor_standings_1.constructorstandingsid, 
  results_1.laps, 
  constructor_results_1.points, 
  constructor_results_1.constructorid
from 
  constructor_standings as constructor_standings_1
    inner join constructor_results as constructor_results_1
      inner join results as results_1
      on (constructor_results_1.points = results_1.number )
    on (constructor_standings_1.raceid = constructor_results_1.constructorresultsid )
where constructor_standings_1.constructorid >= constructor_results_1.raceid
group by constructor_standings_1.constructorstandingsid, constructor_results_1.constructorid, results_1.fastestlap, constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorid, constructor_results_1.points, results_1.milliseconds, constructor_standings_1.constructorstandingsid, results_1.laps, constructor_results_1.points, constructor_results_1.constructorid
limit 12;
select  
  min(
    cast(constructor_results_1.constructorresultsid as int8)), 
  constructor_results_1.constructorresultsid, 
  races_1.name, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.nationality
from 
  constructor_results as constructor_results_1
      inner join constructors as constructors_1
      on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
    inner join races as races_1
    on (constructor_results_1.raceid = races_1.raceid )
where constructors_1.constructorref is not NULL
group by constructor_results_1.constructorresultsid, races_1.name, constructor_results_1.constructorid, constructor_results_1.date, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 15;
select  
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  qualifying_1.position, 
  qualifying_1.driverid, 
  max(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  qualifying_1.number, 
  qualifying_1.number, 
  qualifying_1.raceid, 
  qualifying_1.raceid, 
  min(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.raceid, 
  count(
    cast(qualifying_1.number as int8)), 
  count(*), 
  min(
    cast(qualifying_1.position as int8)), 
  qualifying_1.constructorid, 
  max(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.driverid, 
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
group by qualifying_1.driverid, qualifying_1.driverid, qualifying_1.position, qualifying_1.driverid, qualifying_1.qualifyid, qualifying_1.raceid, qualifying_1.number, qualifying_1.number, qualifying_1.raceid, qualifying_1.raceid, qualifying_1.raceid, qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.number
limit 32;
select  
  results_1.number, 
  drivers_1.forename, 
  standings_1.date, 
  results_1.fastestlap, 
  drivers_1.dob, 
  drivers_1.dob, 
  results_1.positionorder, 
  standings_1.driverstandingsid, 
  results_1.statusid, 
  max(
    cast(standings_1.driverid as int8))
from 
  results as results_1
    inner join standings as standings_1
      inner join drivers as drivers_1
      on (standings_1.driverid = drivers_1.driverid )
    on (results_1.resultid = standings_1.driverstandingsid )
where standings_1.driverstandingsid is not NULL
group by results_1.number, drivers_1.forename, standings_1.date, results_1.fastestlap, drivers_1.dob, drivers_1.dob, results_1.positionorder, standings_1.driverstandingsid, results_1.statusid
limit 23;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  min(
    cast(constructor_results_1.date as "timestamp")), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid >= constructor_results_1.raceid
group by constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.points
limit 39;
select  
  results_1.grid, 
  min(
    cast(races_1.date as "timestamp")), 
  count(
    cast(results_1.positionorder as int8)), 
  results_1.grid, 
  min(
    cast(races_1.date as "timestamp")), 
  results_1.laps, 
  races_1.circuitid, 
  results_1.position, 
  results_1.number, 
  results_1.grid, 
  results_1.date, 
  races_1.raceid, 
  results_1.positionorder
from 
  races as races_1
    inner join results as results_1
    on (races_1.circuitid = results_1.resultid )
where races_1.time > races_1.name
group by results_1.grid, results_1.grid, results_1.laps, races_1.circuitid, results_1.position, results_1.number, results_1.grid, results_1.date, races_1.raceid, results_1.positionorder
limit 23;
select  
  results_1.laps, 
  results_1.constructorid, 
  qualifying_1.constructorid, 
  results_1.driverid, 
  qualifying_1.driverid, 
  qualifying_1.number, 
  qualifying_1.date
from 
  qualifying as qualifying_1
    inner join results as results_1
      inner join constructor_results as constructor_results_1
      on (results_1.resultid = constructor_results_1.constructorresultsid )
    on (qualifying_1.number = constructor_results_1.constructorresultsid )
where results_1.milliseconds is not NULL
limit 4;
select  
  standings_1.wins, 
  circuits_1.lat, 
  constructor_results_1.points
from 
  circuits as circuits_1
        inner join constructor_results as constructor_results_1
          inner join standings as standings_1
          on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
        on (circuits_1.alt = standings_1.points )
      inner join circuits as circuits_2
      on (constructor_results_1.constructorid = circuits_2.circuitid )
    inner join qualifying as qualifying_1
    on (standings_1.raceid = qualifying_1.qualifyid )
where constructor_results_1.constructorid is not NULL
limit 34;
select  
  constructors_1.constructorref, 
  constructors_1.name, 
  results_1.date, 
  avg(
    cast(results_1.position as float8))
from 
  constructors as constructors_1
      inner join standings as standings_1
      on (constructors_1.constructorid = standings_1.driverstandingsid )
    inner join results as results_1
    on (standings_1.points = results_1.number )
where results_1.milliseconds is not NULL
group by constructors_1.constructorref, constructors_1.name, results_1.date
limit 29;
select  
  circuits_1.circuitid, 
  circuits_1.lng, 
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  constructors_1.constructorref, 
  qualifying_1.date, 
  qualifying_1.raceid, 
  constructors_1.name, 
  min(
    cast(qualifying_1.number as int8))
from 
  qualifying as qualifying_1
      inner join constructors as constructors_1
      on (qualifying_1.driverid = constructors_1.constructorid )
    inner join circuits as circuits_1
    on (constructors_1.name = circuits_1.circuitref )
where constructors_1.nationality is not NULL
group by circuits_1.circuitid, circuits_1.lng, qualifying_1.driverid, qualifying_1.driverid, qualifying_1.driverid, constructors_1.constructorref, qualifying_1.date, qualifying_1.raceid, constructors_1.name
limit 2;
select  
  standings_1.raceid, 
  races_1.name, 
  races_1.circuitid, 
  standings_1.wins, 
  standings_1.points, 
  races_1.round, 
  circuits_1.name, 
  constructors_1.name
from 
  standings as standings_1
      inner join circuits as circuits_1
      on (standings_1.driverstandingsid = circuits_1.circuitid )
    inner join results as results_1
        inner join constructors as constructors_1
        on (results_1.constructorid = constructors_1.constructorid )
      inner join races as races_1
      on (results_1.raceid = races_1.raceid )
    on (standings_1.driverstandingsid = results_1.resultid )
where standings_1.driverid is not NULL
limit 2;
select  
  races_1.round
from 
  races as races_1
where races_1.date is not NULL
limit 14;
select  
  constructors_1.constructorid, 
  constructor_standings_1.constructorid, 
  races_1.raceid, 
  max(
    cast(constructors_1.nationality as text)), 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  max(
    cast(constructors_1.nationality as text))
from 
  constructors as constructors_1
      inner join races as races_1
      on (constructors_1.constructorref = races_1.name )
    inner join constructor_standings as constructor_standings_1
    on (races_1.raceid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.position is not NULL
group by constructors_1.constructorid, constructor_standings_1.constructorid, races_1.raceid, constructors_1.constructorid, constructors_1.constructorid, constructor_standings_1.date, constructor_standings_1.constructorstandingsid
limit 11;
select  
  constructor_standings_1.raceid, 
  avg(
    cast(constructor_standings_1.wins as int8)), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  max(
    cast(constructor_standings_1.raceid as int8))
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
group by constructor_standings_1.raceid, constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid
limit 5;
select  
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
limit 34;
select  
  races_1.date, 
  constructors_1.constructorref, 
  races_1.date, 
  constructors_1.constructorid, 
  constructors_2.name
from 
  constructors as constructors_1
      inner join races as races_1
      on (constructors_1.constructorref = races_1.name )
    inner join constructors as constructors_2
    on (constructors_1.name = constructors_2.constructorref )
where races_1.time is not NULL
limit 39;
select  
  min(
    cast(races_1.name as text)), 
  results_1.constructorid, 
  avg(
    cast(results_1.positionorder as int8)), 
  max(
    cast(results_1.date as "timestamp")), 
  races_1.year, 
  results_1.date, 
  results_1.driverid, 
  results_1.rank, 
  results_1.constructorid
from 
  results as results_1
    inner join races as races_1
    on (results_1.date = races_1.date )
where results_1.grid is not NULL
group by results_1.constructorid, races_1.year, results_1.date, results_1.driverid, results_1.rank, results_1.constructorid
limit 25;
select  
  qualifying_1.position
from 
  qualifying as qualifying_1
      inner join qualifying as qualifying_2
      on (qualifying_1.qualifyid = qualifying_2.qualifyid )
    inner join constructors as constructors_1
    on (qualifying_2.raceid = constructors_1.constructorid )
where constructors_1.nationality is not NULL
limit 5;
select  
  races_1.time, 
  races_1.time, 
  races_1.name, 
  max(
    cast(races_1.name as text)), 
  races_1.date, 
  races_1.raceid, 
  races_1.name
from 
  races as races_1
where races_1.circuitid < races_1.raceid
group by races_1.time, races_1.time, races_1.name, races_1.date, races_1.raceid, races_1.name
limit 22;
select  
  count(
    cast(qualifying_1.constructorid as int8)), 
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  qualifying_1.position, 
  max(
    cast(constructor_results_1.points as float8)), 
  qualifying_1.constructorid, 
  constructor_results_1.points, 
  sum(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.raceid, 
  avg(
    cast(constructor_results_1.points as float8))
from 
  constructor_results as constructor_results_1
    inner join qualifying as qualifying_1
    on (constructor_results_1.constructorid = qualifying_1.qualifyid )
where constructor_results_1.constructorresultsid is not NULL
group by qualifying_1.qualifyid, qualifying_1.raceid, qualifying_1.position, qualifying_1.constructorid, constructor_results_1.points, constructor_results_1.raceid
limit 39;
select  
  drivers_1.dob
from 
  constructor_standings as constructor_standings_1
    inner join drivers as drivers_1
    on (constructor_standings_1.raceid = drivers_1.driverid )
where drivers_1.dob > constructor_standings_1.date
limit 39;
select  
  constructor_standings_1.wins
from 
  results as results_1
      inner join constructors as constructors_1
      on (results_1.resultid = constructors_1.constructorid )
    inner join constructor_standings as constructor_standings_1
    on (results_1.positionorder = constructor_standings_1.constructorstandingsid )
where constructors_1.constructorid is not NULL
limit 35;
select  
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.driverid <= qualifying_1.position
limit 13;
select  
  count(
    cast(drivers_1.code as text))
from 
  drivers as drivers_1
where drivers_1.code is not NULL
limit 4;
select  
  races_1.name, 
  races_1.circuitid, 
  races_1.round, 
  races_1.year
from 
  races as races_1
where races_1.raceid is not NULL
limit 26;
select  
  standings_1.wins, 
  standings_1.wins, 
  max(
    cast(standings_1.points as float8))
from 
  standings as standings_1
where standings_1.position is not NULL
group by standings_1.wins, standings_1.wins
limit 31;
select  
  drivers_1.forename, 
  drivers_1.dob, 
  drivers_1.code, 
  drivers_1.driverid, 
  min(
    cast(drivers_1.forename as text)), 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.driverid >= drivers_1.driverid
group by drivers_1.forename, drivers_1.dob, drivers_1.code, drivers_1.driverid, drivers_1.nationality
limit 19;
select  
  qualifying_1.qualifyid, 
  qualifying_1.position, 
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.driverid = qualifying_1.number
limit 30;
select  
  standings_1.wins
from 
  standings as standings_1
where standings_1.wins is not NULL
limit 25;
select  
  standings_1.raceid, 
  standings_1.points, 
  standings_1.position, 
  standings_1.raceid, 
  standings_1.driverid, 
  standings_1.driverid, 
  standings_1.raceid, 
  standings_1.position, 
  standings_1.points, 
  max(
    cast(standings_1.date as "timestamp")), 
  standings_1.driverid, 
  standings_1.date, 
  standings_1.driverstandingsid, 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
group by standings_1.raceid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.driverid, standings_1.driverid, standings_1.raceid, standings_1.position, standings_1.points, standings_1.driverid, standings_1.date, standings_1.driverstandingsid, standings_1.raceid
limit 23;
select  
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
limit 16;
select  
  qualifying_1.date, 
  circuits_1.lat, 
  circuits_1.name, 
  constructors_1.nationality, 
  circuits_1.lat, 
  constructors_1.constructorref, 
  circuits_1.circuitref, 
  circuits_1.circuitid, 
  standings_1.raceid, 
  max(
    cast(circuits_1.lat as float8)), 
  circuits_1.lat, 
  standings_1.raceid, 
  count(
    cast(circuits_1.circuitref as text)), 
  qualifying_1.constructorid, 
  sum(
    cast(standings_1.points as float8)), 
  standings_1.wins, 
  circuits_1.lat, 
  constructors_1.nationality, 
  qualifying_1.number
from 
  standings as standings_1
      inner join circuits as circuits_1
        inner join constructors as constructors_1
        on (circuits_1.circuitid = constructors_1.constructorid )
      on (standings_1.position = circuits_1.circuitid )
    inner join qualifying as qualifying_1
    on (standings_1.position = qualifying_1.qualifyid )
where standings_1.date > qualifying_1.date
group by qualifying_1.date, circuits_1.lat, circuits_1.name, constructors_1.nationality, circuits_1.lat, constructors_1.constructorref, circuits_1.circuitref, circuits_1.circuitid, standings_1.raceid, circuits_1.lat, standings_1.raceid, qualifying_1.constructorid, standings_1.wins, circuits_1.lat, constructors_1.nationality, qualifying_1.number
limit 21;
select  
  races_1.name, 
  races_1.time
from 
  races as races_1
where races_1.circuitid >= races_1.year
limit 37;
select  
  max(
    cast(drivers_1.driverid as int8))
from 
  drivers as drivers_1
where drivers_1.code is not NULL
limit 32;
select  
  drivers_1.driverref, 
  drivers_1.nationality, 
  max(
    cast(qualifying_2.date as "timestamp")), 
  drivers_1.code
from 
  qualifying as qualifying_1
      inner join drivers as drivers_1
      on (qualifying_1.raceid = drivers_1.driverid )
    inner join qualifying as qualifying_2
    on (drivers_1.dob = qualifying_2.date )
where qualifying_2.position is not NULL
group by drivers_1.driverref, drivers_1.nationality, drivers_1.code
limit 42;
select  
  standings_1.position, 
  standings_1.driverid, 
  circuits_1.lng, 
  standings_1.driverid, 
  circuits_1.location, 
  circuits_1.country, 
  qualifying_1.date, 
  max(
    cast(circuits_1.location as text)), 
  circuits_1.circuitid, 
  qualifying_1.driverid, 
  circuits_1.alt, 
  qualifying_1.qualifyid
from 
  standings as standings_1
      inner join qualifying as qualifying_1
      on (standings_1.driverstandingsid = qualifying_1.qualifyid )
    inner join circuits as circuits_1
    on (standings_1.driverid = circuits_1.circuitid )
where circuits_1.location < circuits_1.name
group by standings_1.position, standings_1.driverid, circuits_1.lng, standings_1.driverid, circuits_1.location, circuits_1.country, qualifying_1.date, circuits_1.circuitid, qualifying_1.driverid, circuits_1.alt, qualifying_1.qualifyid
limit 25;
select  
  max(
    cast(results_1.constructorid as int8))
from 
  results as results_1
where results_1.resultid is not NULL
limit 18;
select  
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
limit 26;
select  
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
limit 16;
select  
  constructor_results_1.constructorid, 
  avg(
    cast(constructor_results_1.constructorresultsid as int8))
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid < constructor_results_1.constructorresultsid
group by constructor_results_1.constructorid
limit 28;
select  
  drivers_1.code, 
  drivers_2.driverid, 
  drivers_2.dob, 
  drivers_1.surname, 
  min(
    cast(drivers_1.driverid as int8))
from 
  drivers as drivers_1
    inner join drivers as drivers_2
    on (drivers_1.dob = drivers_2.dob )
where drivers_2.nationality is not NULL
group by drivers_1.code, drivers_2.driverid, drivers_2.dob, drivers_1.surname
limit 41;
select  
  constructor_results_1.raceid, 
  circuits_1.lng, 
  constructor_results_1.date, 
  drivers_1.code, 
  drivers_1.driverid, 
  constructor_results_1.points, 
  constructor_results_1.date, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
      inner join circuits as circuits_1
      on (constructor_results_1.constructorid = circuits_1.circuitid )
    inner join drivers as drivers_1
    on (constructor_results_1.raceid = drivers_1.driverid )
where circuits_1.location < circuits_1.country
limit 38;
select  
  races_1.name, 
  races_1.year, 
  races_1.year, 
  min(
    cast(races_1.date as "timestamp")), 
  min(
    cast(races_1.round as int8)), 
  races_1.round
from 
  races as races_1
where races_1.name is not NULL
group by races_1.name, races_1.year, races_1.year, races_1.round
limit 19;
select  
  constructor_standings_1.points, 
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  constructor_standings_1.date, 
  sum(
    cast(constructor_standings_1.constructorid as int8))
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
group by constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.wins, constructor_standings_1.date
limit 3;
select  
  constructor_standings_1.position, 
  max(
    cast(constructor_standings_1.points as float8)), 
  constructor_standings_1.points, 
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
group by constructor_standings_1.position, constructor_standings_1.points, constructor_standings_1.wins, constructor_standings_1.points, constructor_standings_1.date, constructor_standings_1.wins, constructor_standings_1.constructorid, constructor_standings_1.wins
limit 34;
select  
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  min(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.qualifyid, 
  max(
    cast(qualifying_1.raceid as int8)), 
  qualifying_1.raceid, 
  max(
    cast(qualifying_1.raceid as int8)), 
  qualifying_1.driverid, 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
group by qualifying_1.constructorid, qualifying_1.qualifyid, qualifying_1.qualifyid, qualifying_1.raceid, qualifying_1.driverid, qualifying_1.driverid
limit 14;
select  
  avg(
    cast(constructors_1.constructorid as int8)), 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorid >= constructors_1.constructorid
group by constructors_1.constructorref, constructors_1.nationality, constructors_1.name, constructors_1.name, constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality, constructors_1.nationality, constructors_1.constructorref, constructors_1.constructorref
limit 2;
select  
  drivers_1.surname, 
  drivers_1.driverref, 
  drivers_1.dob, 
  drivers_1.driverid, 
  drivers_1.driverid, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
limit 40;
select  
  races_1.date
from 
  races as races_1
where races_1.circuitid is not NULL
limit 13;
select  
  results_1.grid, 
  constructor_standings_1.constructorid, 
  results_1.laps, 
  constructor_standings_1.wins, 
  results_1.rank
from 
  standings as standings_1
    inner join results as results_1
      inner join constructor_standings as constructor_standings_1
      on (results_1.positionorder = constructor_standings_1.constructorstandingsid )
    on (standings_1.raceid = results_1.resultid )
where standings_1.driverstandingsid is not NULL
limit 26;
select  
  circuits_1.lat, 
  circuits_1.lng, 
  circuits_1.circuitref, 
  circuits_1.circuitref, 
  circuits_1.location, 
  avg(
    cast(circuits_1.alt as float8)), 
  circuits_1.location, 
  max(
    cast(circuits_1.country as text))
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
group by circuits_1.lat, circuits_1.lng, circuits_1.circuitref, circuits_1.circuitref, circuits_1.location, circuits_1.location
limit 27;
select  
  drivers_1.dob
from 
  circuits as circuits_1
        inner join circuits as circuits_2
        on (circuits_1.lat = circuits_2.lat )
      inner join drivers as drivers_1
      on (circuits_2.country = drivers_1.driverref )
    inner join results as results_1
      inner join results as results_2
        inner join qualifying as qualifying_1
        on (results_2.raceid = qualifying_1.qualifyid )
      on (results_1.driverid = results_2.resultid )
    on (drivers_1.driverid = results_2.resultid )
where circuits_2.location is not NULL
limit 42;
select  
  constructor_standings_1.wins
from 
  drivers as drivers_1
      inner join constructors as constructors_1
        inner join results as results_1
        on (constructors_1.constructorid = results_1.resultid )
      on (drivers_1.forename = constructors_1.constructorref )
    inner join constructor_standings as constructor_standings_1
    on (results_1.constructorid = constructor_standings_1.constructorstandingsid )
where drivers_1.nationality < constructors_1.constructorref
limit 5;
select  
  drivers_2.dob, 
  min(
    cast(constructor_standings_1.date as "timestamp")), 
  drivers_1.dob, 
  constructor_standings_1.raceid, 
  count(
    cast(drivers_1.nationality as text))
from 
  circuits as circuits_1
      inner join drivers as drivers_1
        inner join drivers as drivers_2
        on (drivers_1.surname = drivers_2.driverref )
      on (circuits_1.location = drivers_1.driverref )
    inner join constructor_standings as constructor_standings_1
    on (circuits_1.lat = constructor_standings_1.points )
where circuits_1.lat is not NULL
group by drivers_2.dob, drivers_1.dob, constructor_standings_1.raceid
limit 26;
select  
  races_1.circuitid, 
  races_1.year, 
  standings_1.wins, 
  count(
    cast(standings_1.driverstandingsid as int8)), 
  races_1.raceid, 
  standings_1.wins
from 
  races as races_1
    inner join standings as standings_1
    on (races_1.raceid = standings_1.driverstandingsid )
where standings_1.wins is not NULL
group by races_1.circuitid, races_1.year, standings_1.wins, races_1.raceid, standings_1.wins
limit 7;
select  
  max(
    cast(drivers_1.nationality as text)), 
  qualifying_1.number
from 
  drivers as drivers_1
      inner join qualifying as qualifying_1
      on (drivers_1.dob = qualifying_1.date )
    inner join constructor_standings as constructor_standings_1
    on (qualifying_1.driverid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.raceid is not NULL
group by qualifying_1.number
limit 37;
select  
  qualifying_1.date, 
  qualifying_1.position, 
  qualifying_1.number, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
limit 32;
select  
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid >= constructor_standings_1.position
limit 36;
select  
  constructors_1.nationality, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 6;
select  
  constructor_standings_1.wins, 
  races_1.date, 
  races_1.time, 
  races_1.round, 
  races_1.date, 
  races_1.circuitid
from 
  races as races_1
    inner join constructor_standings as constructor_standings_1
    on (races_1.round = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.date = races_1.date
limit 30;
select  
  drivers_1.code
from 
  drivers as drivers_1
    inner join qualifying as qualifying_1
    on (drivers_1.dob = qualifying_1.date )
where drivers_1.dob is not NULL
limit 33;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  avg(
    cast(constructor_standings_1.constructorid as int8)), 
  constructor_standings_1.constructorstandingsid, 
  min(
    cast(constructor_standings_1.date as "timestamp")), 
  min(
    cast(constructor_standings_1.points as float8)), 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorstandingsid, constructor_standings_1.raceid, constructor_standings_1.constructorstandingsid, constructor_standings_1.position, constructor_standings_1.constructorstandingsid
limit 35;
select  
  constructors_1.constructorid, 
  standings_1.date, 
  constructors_1.constructorref, 
  standings_1.points, 
  min(
    cast(standings_1.date as "timestamp")), 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  standings_1.wins, 
  standings_1.raceid, 
  constructors_1.nationality, 
  standings_1.points, 
  standings_1.driverstandingsid
from 
  standings as standings_1
    inner join constructors as constructors_1
    on (standings_1.driverstandingsid = constructors_1.constructorid )
where constructors_1.nationality = constructors_1.constructorref
group by constructors_1.constructorid, standings_1.date, constructors_1.constructorref, standings_1.points, constructors_1.name, constructors_1.nationality, constructors_1.constructorid, standings_1.wins, standings_1.raceid, constructors_1.nationality, standings_1.points, standings_1.driverstandingsid
limit 27;
select  
  constructor_results_1.constructorresultsid, 
  max(
    cast(standings_1.date as "timestamp")), 
  sum(
    cast(standings_1.raceid as int8)), 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  standings_1.driverstandingsid, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  standings_1.driverstandingsid, 
  constructor_results_1.raceid, 
  standings_1.driverid, 
  max(
    cast(constructor_results_1.date as "timestamp")), 
  standings_1.date
from 
  constructor_results as constructor_results_1
    inner join standings as standings_1
    on (constructor_results_1.raceid = standings_1.driverstandingsid )
where standings_1.date is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.raceid, constructor_results_1.points, standings_1.driverstandingsid, constructor_results_1.date, constructor_results_1.points, standings_1.driverstandingsid, constructor_results_1.raceid, standings_1.driverid, standings_1.date
limit 3;
select  
  standings_1.driverid, 
  min(
    cast(standings_1.date as "timestamp")), 
  standings_1.driverstandingsid, 
  standings_1.driverstandingsid, 
  standings_1.driverid, 
  standings_1.points, 
  standings_1.driverstandingsid, 
  standings_1.position, 
  standings_1.driverid, 
  standings_1.driverid, 
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  standings_1.wins
from 
  standings as standings_1
where standings_1.raceid is not NULL
group by standings_1.driverid, standings_1.driverstandingsid, standings_1.driverstandingsid, standings_1.driverid, standings_1.points, standings_1.driverstandingsid, standings_1.position, standings_1.driverid, standings_1.driverid, standings_1.driverid, standings_1.driverstandingsid, standings_1.wins
limit 31;
select  
  constructor_results_1.date, 
  results_1.resultid, 
  results_1.resultid
from 
  results as results_1
    inner join constructor_results as constructor_results_1
    on (results_1.rank = constructor_results_1.points )
where constructor_results_1.constructorid is not NULL
limit 4;
select  
  results_1.positionorder, 
  results_1.raceid, 
  min(
    cast(results_1.date as "timestamp")), 
  results_1.date, 
  results_1.laps, 
  results_1.constructorid, 
  results_1.points, 
  results_1.statusid, 
  count(
    cast(results_1.resultid as int8)), 
  results_1.rank, 
  results_1.constructorid, 
  results_1.points, 
  results_1.fastestlap
from 
  results as results_1
where results_1.date <= results_1.date
group by results_1.positionorder, results_1.raceid, results_1.date, results_1.laps, results_1.constructorid, results_1.points, results_1.statusid, results_1.rank, results_1.constructorid, results_1.points, results_1.fastestlap
limit 30;
select  
  count(*), 
  constructor_results_1.raceid, 
  circuits_1.alt, 
  circuits_1.circuitid, 
  drivers_1.code, 
  drivers_1.driverid, 
  max(
    cast(constructor_results_1.raceid as int8)), 
  circuits_1.lat, 
  circuits_1.circuitref
from 
  circuits as circuits_1
    inner join constructor_results as constructor_results_1
      inner join drivers as drivers_1
      on (constructor_results_1.raceid = drivers_1.driverid )
    on (circuits_1.alt = constructor_results_1.points )
where circuits_1.circuitref < circuits_1.country
group by constructor_results_1.raceid, circuits_1.alt, circuits_1.circuitid, drivers_1.code, drivers_1.driverid, circuits_1.lat, circuits_1.circuitref
limit 6;
select  
  constructor_results_1.constructorid, 
  max(
    cast(circuits_1.country as text)), 
  circuits_1.circuitref, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  max(
    cast(circuits_1.location as text)), 
  max(
    cast(circuits_1.name as text)), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  max(
    cast(circuits_1.country as text)), 
  constructor_results_1.points, 
  min(
    cast(constructor_results_1.constructorid as int8)), 
  circuits_1.lng, 
  circuits_1.name
from 
  circuits as circuits_1
    inner join constructor_results as constructor_results_1
    on (circuits_1.lat = constructor_results_1.points )
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorid, circuits_1.circuitref, constructor_results_1.raceid, constructor_results_1.points, constructor_results_1.raceid, constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_results_1.points, circuits_1.lng, circuits_1.name
limit 25;
select  
  constructor_standings_1.position, 
  circuits_1.circuitref, 
  qualifying_1.driverid, 
  circuits_1.location
from 
  constructor_standings as constructor_standings_1
      inner join circuits as circuits_1
      on (constructor_standings_1.constructorid = circuits_1.circuitid )
    inner join qualifying as qualifying_1
    on (constructor_standings_1.constructorid = qualifying_1.qualifyid )
where qualifying_1.raceid is not NULL
limit 10;
select  
  drivers_1.surname, 
  drivers_1.dob, 
  max(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.driverref, 
  drivers_1.surname, 
  drivers_1.driverid, 
  min(
    cast(drivers_1.nationality as text)), 
  drivers_1.nationality, 
  max(
    cast(drivers_1.code as text)), 
  min(
    cast(drivers_1.driverid as int8)), 
  drivers_1.nationality, 
  drivers_1.nationality, 
  drivers_1.dob, 
  drivers_1.forename, 
  drivers_1.driverid, 
  drivers_1.dob, 
  drivers_1.code, 
  drivers_1.code, 
  drivers_1.surname, 
  drivers_1.code, 
  drivers_1.driverid, 
  count(
    cast(drivers_1.driverid as int8))
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
group by drivers_1.surname, drivers_1.dob, drivers_1.driverref, drivers_1.surname, drivers_1.driverid, drivers_1.nationality, drivers_1.nationality, drivers_1.nationality, drivers_1.dob, drivers_1.forename, drivers_1.driverid, drivers_1.dob, drivers_1.code, drivers_1.code, drivers_1.surname, drivers_1.code, drivers_1.driverid
limit 40;
select  
  drivers_1.dob, 
  drivers_1.driverid, 
  max(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.surname, 
  drivers_1.surname, 
  min(
    cast(drivers_1.nationality as text)), 
  drivers_1.nationality, 
  max(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.code is not NULL
group by drivers_1.dob, drivers_1.driverid, drivers_1.surname, drivers_1.surname, drivers_1.nationality, drivers_1.driverref
limit 14;
select  
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
      inner join circuits as circuits_1
      on (constructor_standings_1.raceid = circuits_1.circuitid )
    inner join constructor_standings as constructor_standings_2
    on (circuits_1.alt = constructor_standings_2.points )
where circuits_1.circuitref <= circuits_1.country
limit 42;
select  
  circuits_2.name, 
  circuits_2.country, 
  constructor_standings_1.date, 
  circuits_2.lat, 
  circuits_2.circuitref
from 
  circuits as circuits_1
      inner join races as races_1
      on (circuits_1.name = races_1.name )
    inner join circuits as circuits_2
      inner join constructor_standings as constructor_standings_1
      on (circuits_2.circuitid = constructor_standings_1.constructorstandingsid )
    on (races_1.circuitid = constructor_standings_1.constructorstandingsid )
where circuits_2.location is not NULL
limit 36;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  avg(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorid, constructor_results_1.points, constructor_results_1.constructorid, constructor_results_1.raceid, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.constructorresultsid, constructor_results_1.constructorid
limit 16;
select  
  qualifying_1.qualifyid
from 
  constructors as constructors_1
    inner join constructor_standings as constructor_standings_1
      inner join qualifying as qualifying_1
      on (constructor_standings_1.date = qualifying_1.date )
    on (constructors_1.constructorid = qualifying_1.qualifyid )
where qualifying_1.driverid is not NULL
limit 34;
select  
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.constructorref
from 
  results as results_1
    inner join constructors as constructors_1
    on (results_1.statusid = constructors_1.constructorid )
where constructors_1.name is not NULL
limit 31;
select  
  circuits_1.alt
from 
  constructors as constructors_1
    inner join circuits as circuits_1
    on (constructors_1.constructorref = circuits_1.circuitref )
where constructors_1.constructorid <= circuits_1.circuitid
limit 39;
select  
  standings_1.raceid
from 
  races as races_1
    inner join constructors as constructors_1
      inner join standings as standings_1
      on (constructors_1.constructorid = standings_1.driverstandingsid )
    on (races_1.round = standings_1.driverstandingsid )
where races_1.name is not NULL
limit 36;
select  
  drivers_1.dob
from 
  drivers as drivers_1
      inner join constructors as constructors_1
      on (drivers_1.nationality = constructors_1.constructorref )
    inner join races as races_1
    on (constructors_1.constructorid = races_1.raceid )
where drivers_1.dob is not NULL
limit 5;
select  
  qualifying_1.position, 
  qualifying_1.number, 
  qualifying_1.qualifyid, 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
limit 31;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 17;
select  
  races_1.name, 
  races_1.date, 
  races_1.year
from 
  races as races_1
    inner join standings as standings_1
    on (races_1.year = standings_1.driverstandingsid )
where races_1.time < races_1.name
limit 17;
select  
  drivers_2.dob
from 
  drivers as drivers_1
    inner join drivers as drivers_2
    on (drivers_1.surname = drivers_2.driverref )
where drivers_1.driverid is not NULL
limit 34;
select  
  qualifying_1.raceid, 
  qualifying_1.number, 
  qualifying_1.qualifyid, 
  qualifying_1.date, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
limit 12;
select  
  circuits_1.country, 
  qualifying_1.date, 
  qualifying_1.raceid, 
  circuits_1.country, 
  count(
    cast(qualifying_1.date as "timestamp")), 
  max(
    cast(circuits_1.name as text)), 
  max(
    cast(qualifying_1.date as "timestamp")), 
  sum(
    cast(qualifying_1.driverid as int8)), 
  circuits_1.name
from 
  qualifying as qualifying_1
    inner join circuits as circuits_1
    on (qualifying_1.number = circuits_1.circuitid )
where circuits_1.circuitid is not NULL
group by circuits_1.country, qualifying_1.date, qualifying_1.raceid, circuits_1.country, circuits_1.name
limit 35;
select  
  constructor_standings_1.constructorstandingsid, 
  drivers_1.driverref, 
  count(*), 
  constructor_results_1.constructorresultsid, 
  drivers_1.surname, 
  qualifying_1.constructorid, 
  avg(
    cast(constructor_results_1.points as float8)), 
  max(
    cast(standings_1.points as float8)), 
  standings_1.date, 
  constructor_results_1.points, 
  drivers_1.driverref, 
  max(
    cast(constructor_standings_1.date as "timestamp")), 
  constructor_standings_1.date, 
  drivers_1.dob, 
  qualifying_1.driverid, 
  drivers_1.code, 
  drivers_1.driverid, 
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  constructor_results_1.points, 
  constructor_standings_1.constructorid, 
  standings_1.driverid, 
  constructor_standings_1.points, 
  qualifying_1.constructorid, 
  constructor_results_1.date, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
        inner join qualifying as qualifying_1
        on (constructor_standings_1.date = qualifying_1.date )
      inner join drivers as drivers_1
        inner join constructor_results as constructor_results_1
        on (drivers_1.driverid = constructor_results_1.constructorresultsid )
      on (constructor_standings_1.points = constructor_results_1.points )
    inner join standings as standings_1
    on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.constructorstandingsid, drivers_1.driverref, constructor_results_1.constructorresultsid, drivers_1.surname, qualifying_1.constructorid, standings_1.date, constructor_results_1.points, drivers_1.driverref, constructor_standings_1.date, drivers_1.dob, qualifying_1.driverid, drivers_1.code, drivers_1.driverid, standings_1.driverstandingsid, standings_1.raceid, constructor_results_1.points, constructor_standings_1.constructorid, standings_1.driverid, constructor_standings_1.points, qualifying_1.constructorid, constructor_results_1.date, constructor_standings_1.position
limit 27;
select  
  qualifying_1.constructorid, 
  qualifying_1.driverid, 
  qualifying_1.number, 
  max(
    cast(qualifying_1.date as "timestamp")), 
  min(
    cast(qualifying_1.raceid as int8)), 
  qualifying_1.qualifyid, 
  qualifying_1.position, 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
group by qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.number, qualifying_1.qualifyid, qualifying_1.position, qualifying_1.driverid
limit 30;
select  
  sum(
    cast(constructor_standings_1.points as float8)), 
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
group by constructor_standings_1.position, constructor_standings_1.wins, constructor_standings_1.position
limit 24;
select  
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
limit 30;
select  
  races_1.circuitid, 
  max(
    cast(constructor_standings_1.wins as int8)), 
  constructor_standings_1.position, 
  min(
    cast(races_1.date as "timestamp")), 
  races_1.circuitid, 
  races_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins, 
  races_1.year, 
  races_1.year, 
  max(
    cast(constructor_standings_1.position as int8))
from 
  constructor_standings as constructor_standings_1
    inner join races as races_1
    on (constructor_standings_1.date = races_1.date )
where races_1.time <= races_1.name
group by races_1.circuitid, constructor_standings_1.position, races_1.circuitid, races_1.raceid, constructor_standings_1.constructorstandingsid, constructor_standings_1.wins, races_1.year, races_1.year
limit 25;
select  
  standings_1.wins
from 
  standings as standings_1
    inner join circuits as circuits_1
    on (standings_1.points = circuits_1.lat )
where circuits_1.lng < standings_1.points
limit 6;
select  
  races_1.date, 
  qualifying_1.number
from 
  qualifying as qualifying_1
    inner join races as races_1
    on (qualifying_1.qualifyid = races_1.raceid )
where races_1.round is not NULL
limit 31;
select  
  races_1.time, 
  races_1.year, 
  races_1.year, 
  min(
    cast(races_1.name as text)), 
  races_1.date, 
  races_1.circuitid, 
  races_1.round, 
  races_1.time, 
  races_1.date, 
  races_1.year, 
  races_1.date, 
  races_1.round, 
  races_1.time, 
  max(
    cast(races_1.raceid as int8)), 
  races_1.name, 
  races_1.raceid, 
  races_1.date, 
  races_1.year, 
  min(
    cast(races_1.circuitid as int8)), 
  races_1.time, 
  races_1.year
from 
  races as races_1
where races_1.year is not NULL
group by races_1.time, races_1.year, races_1.year, races_1.date, races_1.circuitid, races_1.round, races_1.time, races_1.date, races_1.year, races_1.date, races_1.round, races_1.time, races_1.name, races_1.raceid, races_1.date, races_1.year, races_1.time, races_1.year
limit 19;
select  
  count(
    cast(results_1.rank as float8)), 
  results_2.number, 
  results_1.constructorid, 
  results_1.raceid, 
  results_1.number, 
  results_2.resultid, 
  min(
    cast(results_2.date as "timestamp")), 
  results_1.fastestlap, 
  results_1.laps
from 
  results as results_1
      inner join standings as standings_1
      on (results_1.number = standings_1.points )
    inner join results as results_2
    on (standings_1.driverstandingsid = results_2.resultid )
where results_2.constructorid is not NULL
group by results_2.number, results_1.constructorid, results_1.raceid, results_1.number, results_2.resultid, results_1.fastestlap, results_1.laps
limit 26;
select  
  constructors_1.nationality, 
  max(
    cast(constructors_1.constructorid as int8)), 
  constructors_1.name, 
  avg(
    cast(constructors_1.constructorid as int8)), 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.nationality, constructors_1.name, constructors_1.name, constructors_1.constructorref, constructors_1.constructorref
limit 18;
select  
  drivers_1.code, 
  drivers_1.surname, 
  drivers_1.nationality, 
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.code is not NULL
limit 11;
select  
  sum(
    cast(qualifying_1.number as int8))
from 
  constructor_standings as constructor_standings_1
      inner join qualifying as qualifying_1
      on (constructor_standings_1.raceid = qualifying_1.qualifyid )
    inner join results as results_1
    on (qualifying_1.date = results_1.date )
where results_1.position <= results_1.number
limit 38;
select  
  min(
    cast(circuits_1.name as text)), 
  max(
    cast(circuits_1.lng as float8)), 
  circuits_1.circuitid, 
  circuits_1.lat, 
  circuits_1.name, 
  circuits_1.name, 
  circuits_1.lng, 
  circuits_1.alt, 
  circuits_1.country, 
  circuits_1.alt, 
  circuits_1.circuitref, 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.alt is not NULL
group by circuits_1.circuitid, circuits_1.lat, circuits_1.name, circuits_1.name, circuits_1.lng, circuits_1.alt, circuits_1.country, circuits_1.alt, circuits_1.circuitref, circuits_1.alt
limit 21;
select  
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
limit 8;
select  
  constructor_standings_1.constructorid, 
  sum(
    cast(constructor_standings_1.points as float8))
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points > constructor_standings_1.points
group by constructor_standings_1.constructorid
limit 19;
select  
  sum(
    cast(standings_1.driverid as int8)), 
  drivers_1.code, 
  standings_1.driverid, 
  constructors_1.name, 
  drivers_1.surname, 
  standings_1.points, 
  constructors_1.constructorref, 
  max(
    cast(standings_1.date as "timestamp")), 
  drivers_1.dob, 
  standings_1.driverid, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  max(
    cast(standings_1.points as float8)), 
  constructors_1.name, 
  constructors_1.name
from 
  drivers as drivers_1
    inner join standings as standings_1
      inner join constructors as constructors_1
      on (standings_1.driverstandingsid = constructors_1.constructorid )
    on (drivers_1.code = constructors_1.constructorref )
where standings_1.driverstandingsid > standings_1.position
group by drivers_1.code, standings_1.driverid, constructors_1.name, drivers_1.surname, standings_1.points, constructors_1.constructorref, drivers_1.dob, standings_1.driverid, constructors_1.constructorid, constructors_1.nationality, constructors_1.constructorref, constructors_1.name, constructors_1.name
limit 7;
select  
  drivers_1.driverid
from 
  constructor_results as constructor_results_1
    inner join constructor_standings as constructor_standings_1
      inner join drivers as drivers_1
      on (constructor_standings_1.constructorid = drivers_1.driverid )
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where constructor_results_1.raceid is not NULL
limit 26;
select  
  standings_1.wins, 
  constructor_standings_1.wins, 
  min(
    cast(standings_1.position as int8)), 
  constructor_standings_1.position, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
      inner join standings as standings_1
      on (constructor_standings_1.position = standings_1.driverstandingsid )
    inner join races as races_1
    on (constructor_standings_1.wins = races_1.raceid )
where standings_1.wins is not NULL
group by standings_1.wins, constructor_standings_1.wins, constructor_standings_1.position, constructor_standings_1.constructorid
limit 20;
select  
  constructors_1.nationality, 
  constructors_1.name, 
  standings_1.raceid, 
  constructors_1.nationality
from 
  races as races_1
      inner join standings as standings_1
        inner join constructors as constructors_1
        on (standings_1.position = constructors_1.constructorid )
      on (races_1.circuitid = standings_1.driverstandingsid )
    inner join circuits as circuits_1
    on (races_1.name = circuits_1.circuitref )
where races_1.round is not NULL
limit 41;
select  
  results_1.constructorid, 
  results_1.statusid, 
  results_1.number, 
  results_1.statusid
from 
  results as results_1
where results_1.resultid >= results_1.constructorid
limit 1;
select  
  standings_1.points, 
  standings_2.driverid, 
  max(
    cast(standings_1.date as "timestamp")), 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructor_standings_1.wins, 
  standings_2.points
from 
  standings as standings_1
    inner join standings as standings_2
        inner join constructors as constructors_1
        on (standings_2.driverid = constructors_1.constructorid )
      inner join constructor_standings as constructor_standings_1
      on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
    on (standings_1.wins = standings_2.driverstandingsid )
where constructors_1.constructorref is not NULL
group by standings_1.points, standings_2.driverid, constructors_1.nationality, constructors_1.constructorid, constructor_standings_1.wins, standings_2.points
limit 14;
select  
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
limit 1;
select  
  results_1.fastestlap, 
  results_1.positionorder, 
  results_1.resultid, 
  results_1.raceid, 
  results_1.constructorid, 
  sum(
    cast(results_1.fastestlap as float8)), 
  results_1.positionorder, 
  results_1.driverid, 
  results_1.number, 
  results_1.fastestlap, 
  results_1.fastestlap
from 
  results as results_1
where results_1.grid is not NULL
group by results_1.fastestlap, results_1.positionorder, results_1.resultid, results_1.raceid, results_1.constructorid, results_1.positionorder, results_1.driverid, results_1.number, results_1.fastestlap, results_1.fastestlap
limit 7;
select  
  min(
    cast(standings_1.date as "timestamp")), 
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
group by standings_1.driverid, standings_1.driverstandingsid, standings_1.raceid, standings_1.driverid
limit 3;
select  
  count(*), 
  min(
    cast(drivers_1.nationality as text)), 
  drivers_1.code, 
  drivers_1.driverid, 
  drivers_1.dob, 
  drivers_1.dob, 
  drivers_1.driverref, 
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.driverid < drivers_1.driverid
group by drivers_1.code, drivers_1.driverid, drivers_1.dob, drivers_1.dob, drivers_1.driverref, drivers_1.dob
limit 31;
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_standings_1.wins, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_standings_1.wins, 
  min(
    cast(constructor_standings_2.date as "timestamp")), 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
    inner join constructor_standings as constructor_standings_1
      inner join constructor_standings as constructor_standings_2
      on (constructor_standings_1.date = constructor_standings_2.date )
    on (constructor_results_1.constructorresultsid = constructor_standings_2.constructorstandingsid )
where constructor_results_1.points = constructor_standings_2.points
group by constructor_results_1.raceid, constructor_results_1.constructorresultsid, constructor_standings_1.wins, constructor_results_1.constructorid, constructor_results_1.date, constructor_standings_1.wins, constructor_results_1.date
limit 1;
select  
  drivers_1.dob, 
  drivers_1.forename, 
  drivers_1.driverref, 
  drivers_1.forename, 
  drivers_1.driverref, 
  drivers_1.nationality, 
  drivers_1.surname, 
  drivers_1.surname, 
  drivers_1.driverref, 
  drivers_1.code, 
  drivers_1.driverref, 
  drivers_1.nationality, 
  max(
    cast(drivers_1.surname as text))
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
group by drivers_1.dob, drivers_1.forename, drivers_1.driverref, drivers_1.forename, drivers_1.driverref, drivers_1.nationality, drivers_1.surname, drivers_1.surname, drivers_1.driverref, drivers_1.code, drivers_1.driverref, drivers_1.nationality
limit 7;
select  
  constructor_results_1.raceid, 
  min(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  min(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  sum(
    cast(constructor_results_1.constructorid as int8)), 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  max(
    cast(constructor_results_1.raceid as int8)), 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.raceid, constructor_results_1.points, constructor_results_1.raceid, constructor_results_1.date, constructor_results_1.date, constructor_results_1.raceid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.raceid, constructor_results_1.points, constructor_results_1.raceid, constructor_results_1.constructorresultsid, constructor_results_1.constructorid, constructor_results_1.points, constructor_results_1.points, constructor_results_1.date
limit 9;
select  
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 37;
select  
  races_1.date, 
  races_1.raceid, 
  races_1.date, 
  races_1.date, 
  races_1.circuitid, 
  races_1.round, 
  races_1.name
from 
  races as races_1
where races_1.date >= races_1.date
limit 25;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid, 
  min(
    cast(constructor_standings_1.constructorstandingsid as int8)), 
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
group by constructor_standings_1.raceid, constructor_standings_1.date, constructor_standings_1.constructorid, constructor_standings_1.raceid, constructor_standings_1.raceid, constructor_standings_1.constructorstandingsid, constructor_standings_1.position
limit 9;
select  
  constructor_standings_1.points, 
  constructor_results_1.points, 
  qualifying_1.raceid, 
  max(
    cast(qualifying_1.number as int8)), 
  standings_1.raceid, 
  constructor_results_2.constructorresultsid, 
  constructor_results_1.points, 
  max(
    cast(constructor_standings_1.date as "timestamp")), 
  constructor_results_1.raceid, 
  constructor_standings_1.constructorid, 
  circuits_1.circuitid
from 
  constructor_results as constructor_results_1
      inner join constructor_standings as constructor_standings_1
      on (constructor_results_1.raceid = constructor_standings_1.constructorstandingsid )
    inner join standings as standings_1
      inner join circuits as circuits_1
          inner join constructor_results as constructor_results_2
          on (circuits_1.alt = constructor_results_2.points )
        inner join qualifying as qualifying_1
        on (constructor_results_2.constructorresultsid = qualifying_1.qualifyid )
      on (standings_1.points = constructor_results_2.points )
    on (constructor_results_1.raceid = qualifying_1.qualifyid )
where qualifying_1.driverid is not NULL
group by constructor_standings_1.points, constructor_results_1.points, qualifying_1.raceid, standings_1.raceid, constructor_results_2.constructorresultsid, constructor_results_1.points, constructor_results_1.raceid, constructor_standings_1.constructorid, circuits_1.circuitid
limit 24;
select  
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorref <= constructors_1.nationality
limit 22;
select  
  races_1.year, 
  races_1.date, 
  constructor_standings_1.position, 
  constructors_1.constructorid, 
  constructors_1.constructorref
from 
  constructor_standings as constructor_standings_1
        inner join constructors as constructors_1
        on (constructor_standings_1.position = constructors_1.constructorid )
      inner join standings as standings_1
      on (constructors_1.constructorid = standings_1.driverstandingsid )
    inner join races as races_1
      inner join qualifying as qualifying_1
      on (races_1.circuitid = qualifying_1.qualifyid )
    on (standings_1.raceid = races_1.raceid )
where constructors_1.name is not NULL
limit 25;
select  
  standings_1.points, 
  standings_1.wins, 
  avg(
    cast(standings_1.points as float8)), 
  standings_1.wins, 
  standings_1.raceid, 
  standings_1.date, 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.date is not NULL
group by standings_1.points, standings_1.wins, standings_1.wins, standings_1.raceid, standings_1.date, standings_1.raceid
limit 37;
select  
  constructor_standings_1.date, 
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 2;
select  
  results_1.resultid, 
  min(
    cast(results_1.grid as int8)), 
  constructors_2.nationality, 
  constructors_1.constructorref
from 
  constructors as constructors_1
    inner join constructors as constructors_2
      inner join results as results_1
      on (constructors_2.constructorid = results_1.resultid )
    on (constructors_1.nationality = constructors_2.constructorref )
where results_1.milliseconds is not NULL
group by results_1.resultid, constructors_2.nationality, constructors_1.constructorref
limit 8;
select  
  avg(
    cast(results_1.position as float8))
from 
  results as results_1
where results_1.points is not NULL
limit 40;
select  
  circuits_1.circuitid, 
  circuits_1.alt, 
  circuits_1.lat, 
  circuits_1.name, 
  circuits_1.name, 
  sum(
    cast(circuits_1.lng as float8)), 
  circuits_1.country
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
group by circuits_1.circuitid, circuits_1.alt, circuits_1.lat, circuits_1.name, circuits_1.name, circuits_1.country
limit 35;
select  
  races_1.year, 
  races_1.name, 
  races_1.round, 
  races_1.name, 
  races_1.year
from 
  races as races_1
where races_1.time > races_1.name
limit 14;
select  
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 42;
select  
  max(
    cast(constructor_standings_1.points as float8)), 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date = constructor_standings_1.date
group by constructor_standings_1.constructorid
limit 4;
select  
  constructor_results_1.date, 
  max(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  count(*), 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.date, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.date
limit 25;
select  
  standings_1.raceid, 
  standings_1.points, 
  sum(
    cast(standings_1.points as float8)), 
  standings_1.driverid, 
  standings_1.points, 
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.driverid is not NULL
group by standings_1.raceid, standings_1.points, standings_1.driverid, standings_1.points, standings_1.driverstandingsid
limit 13;
select  
  constructor_results_1.constructorid, 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
      inner join constructor_results as constructor_results_1
      on (constructor_standings_1.raceid = constructor_results_1.constructorresultsid )
    inner join constructor_results as constructor_results_2
    on (constructor_results_1.points = constructor_results_2.points )
where constructor_standings_1.points < constructor_results_2.points
limit 30;
select  
  standings_1.wins, 
  standings_1.position, 
  standings_1.position, 
  standings_1.date, 
  avg(
    cast(standings_1.position as int8)), 
  standings_1.driverstandingsid, 
  standings_1.date, 
  standings_1.position, 
  min(
    cast(standings_1.date as "timestamp")), 
  standings_1.raceid, 
  standings_1.position, 
  standings_1.position, 
  standings_1.points, 
  standings_1.driverid, 
  standings_1.position, 
  standings_1.position, 
  standings_1.driverstandingsid, 
  standings_1.date
from 
  standings as standings_1
where standings_1.date >= standings_1.date
group by standings_1.wins, standings_1.position, standings_1.position, standings_1.date, standings_1.driverstandingsid, standings_1.date, standings_1.position, standings_1.raceid, standings_1.position, standings_1.position, standings_1.points, standings_1.driverid, standings_1.position, standings_1.position, standings_1.driverstandingsid, standings_1.date
limit 32;
select  
  constructors_1.nationality, 
  races_1.year, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  min(
    cast(races_1.time as text)), 
  constructors_1.constructorref, 
  constructors_1.name, 
  max(
    cast(constructors_1.constructorid as int8)), 
  races_1.name, 
  constructors_1.nationality, 
  max(
    cast(races_1.date as "timestamp")), 
  constructors_1.nationality, 
  races_1.time, 
  constructors_1.constructorid, 
  races_1.round, 
  constructors_1.constructorref, 
  races_1.raceid
from 
  constructors as constructors_1
    inner join races as races_1
    on (constructors_1.nationality = races_1.name )
where constructors_1.constructorref is not NULL
group by constructors_1.nationality, races_1.year, constructors_1.nationality, constructors_1.nationality, constructors_1.constructorref, constructors_1.name, races_1.name, constructors_1.nationality, constructors_1.nationality, races_1.time, constructors_1.constructorid, races_1.round, constructors_1.constructorref, races_1.raceid
limit 9;
select  
  drivers_1.code, 
  circuits_1.name, 
  circuits_1.name, 
  avg(
    cast(circuits_1.alt as float8)), 
  min(
    cast(drivers_2.nationality as text)), 
  circuits_1.location, 
  min(
    cast(drivers_2.dob as "timestamp")), 
  drivers_1.surname, 
  drivers_2.code
from 
  drivers as drivers_1
      inner join circuits as circuits_1
      on (drivers_1.surname = circuits_1.circuitref )
    inner join drivers as drivers_2
    on (drivers_1.code = drivers_2.driverref )
where circuits_1.lat <= circuits_1.lng
group by drivers_1.code, circuits_1.name, circuits_1.name, circuits_1.location, drivers_1.surname, drivers_2.code
limit 21;
select  
  max(
    cast(constructor_results_2.raceid as int8))
from 
  constructor_results as constructor_results_1
      inner join circuits as circuits_1
      on (constructor_results_1.raceid = circuits_1.circuitid )
    inner join constructor_standings as constructor_standings_1
      inner join constructor_results as constructor_results_2
          inner join standings as standings_1
          on (constructor_results_2.raceid = standings_1.driverstandingsid )
        inner join circuits as circuits_2
        on (standings_1.wins = circuits_2.circuitid )
      on (constructor_standings_1.points = constructor_results_2.points )
    on (constructor_results_1.constructorid = circuits_2.circuitid )
where constructor_results_1.date is not NULL
limit 6;
select  
  drivers_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.name, 
  qualifying_1.qualifyid, 
  constructors_1.constructorid, 
  max(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  min(
    cast(drivers_1.surname as text)), 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  max(
    cast(drivers_1.driverid as int8)), 
  max(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.qualifyid
from 
  drivers as drivers_1
      inner join qualifying as qualifying_1
      on (drivers_1.dob = qualifying_1.date )
    inner join constructors as constructors_1
    on (drivers_1.nationality = constructors_1.constructorref )
where drivers_1.forename is not NULL
group by drivers_1.nationality, constructors_1.constructorid, constructors_1.name, qualifying_1.qualifyid, constructors_1.constructorid, qualifying_1.constructorid, qualifying_1.qualifyid, constructors_1.name, constructors_1.constructorref, constructors_1.constructorid, qualifying_1.qualifyid
limit 36;
select  
  constructors_1.constructorid, 
  qualifying_1.position, 
  qualifying_1.raceid, 
  constructors_1.constructorid, 
  constructors_1.name, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
    inner join constructors as constructors_1
    on (qualifying_1.qualifyid = constructors_1.constructorid )
where qualifying_1.constructorid is not NULL
limit 4;
select  
  min(
    cast(constructor_standings_1.points as float8)), 
  drivers_1.driverid, 
  drivers_1.nationality, 
  constructor_standings_1.constructorid, 
  max(
    cast(drivers_1.dob as "timestamp")), 
  constructor_standings_1.raceid, 
  drivers_1.nationality, 
  drivers_1.nationality, 
  min(
    cast(drivers_1.dob as "timestamp")), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.position, 
  max(
    cast(constructor_standings_1.raceid as int8)), 
  constructor_standings_1.constructorid, 
  drivers_1.dob, 
  constructor_standings_1.raceid, 
  constructor_standings_1.date, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
    inner join drivers as drivers_1
    on (constructor_standings_1.date = drivers_1.dob )
where constructor_standings_1.wins is not NULL
group by drivers_1.driverid, drivers_1.nationality, constructor_standings_1.constructorid, constructor_standings_1.raceid, drivers_1.nationality, drivers_1.nationality, constructor_standings_1.constructorid, constructor_standings_1.position, constructor_standings_1.constructorid, drivers_1.dob, constructor_standings_1.raceid, constructor_standings_1.date, constructor_standings_1.date
limit 18;
select  
  max(
    cast(constructor_results_1.date as "timestamp")), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.date < constructor_results_1.date
group by constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, constructor_results_1.date
limit 36;
select  
  results_1.laps
from 
  results as results_1
where results_1.raceid is not NULL
limit 37;
select  
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 35;
select  
  max(
    cast(constructor_standings_1.date as "timestamp")), 
  constructor_standings_1.wins, 
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  constructor_standings_1.date, 
  constructor_standings_1.points, 
  constructor_standings_1.wins, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  min(
    cast(constructor_standings_1.date as "timestamp"))
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.wins, constructor_standings_1.wins, constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.wins, constructor_standings_1.raceid, constructor_standings_1.constructorid, constructor_standings_1.date
limit 4;
select  
  avg(
    cast(drivers_2.driverid as int8))
from 
  drivers as drivers_1
    inner join drivers as drivers_2
      inner join constructor_standings as constructor_standings_1
        inner join drivers as drivers_3
        on (constructor_standings_1.wins = drivers_3.driverid )
      on (drivers_2.forename = drivers_3.driverref )
    on (drivers_1.dob = drivers_2.dob )
where drivers_3.nationality is not NULL
limit 9;
select  
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid <= constructor_standings_1.constructorid
limit 5;
select distinct 
  circuits_1.lat, 
  circuits_1.lng, 
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  circuits_1.lat, 
  circuits_1.alt, 
  qualifying_1.driverid, 
  count(
    cast(circuits_1.circuitid as int8)), 
  circuits_1.lng, 
  circuits_1.circuitref, 
  races_1.circuitid, 
  circuits_1.lng, 
  sum(
    cast(circuits_1.lat as float8)), 
  qualifying_1.constructorid
from 
  circuits as circuits_1
    inner join races as races_1
      inner join qualifying as qualifying_1
      on (races_1.circuitid = qualifying_1.qualifyid )
    on (circuits_1.circuitid = races_1.raceid )
where qualifying_1.date < races_1.date
group by circuits_1.lat, circuits_1.lng, qualifying_1.constructorid, qualifying_1.constructorid, circuits_1.lat, circuits_1.alt, qualifying_1.driverid, circuits_1.lng, circuits_1.circuitref, races_1.circuitid, circuits_1.lng, qualifying_1.constructorid
limit 27;
select  
  standings_1.raceid, 
  drivers_1.code, 
  standings_1.position, 
  max(
    cast(drivers_1.dob as "timestamp")), 
  standings_1.driverid, 
  drivers_1.dob, 
  drivers_1.dob, 
  drivers_1.forename, 
  standings_1.raceid, 
  standings_1.wins, 
  max(
    cast(drivers_1.driverref as text)), 
  drivers_1.surname, 
  drivers_1.code, 
  standings_1.date, 
  drivers_1.surname, 
  min(
    cast(drivers_1.nationality as text)), 
  standings_1.driverid, 
  standings_1.points, 
  drivers_1.driverref, 
  drivers_1.nationality, 
  min(
    cast(standings_1.points as float8)), 
  drivers_1.dob, 
  drivers_1.forename, 
  standings_1.position, 
  drivers_1.driverref, 
  standings_1.driverstandingsid, 
  sum(
    cast(standings_1.wins as int8)), 
  standings_1.wins, 
  max(
    cast(drivers_1.forename as text)), 
  drivers_1.driverid, 
  drivers_1.driverid, 
  standings_1.points, 
  standings_1.date, 
  drivers_1.driverid, 
  max(
    cast(drivers_1.surname as text)), 
  max(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.driverid, 
  standings_1.driverid, 
  drivers_1.surname, 
  max(
    cast(drivers_1.driverref as text)), 
  avg(
    cast(standings_1.points as float8)), 
  min(
    cast(drivers_1.forename as text)), 
  drivers_1.code, 
  standings_1.wins, 
  drivers_1.nationality, 
  standings_1.wins, 
  standings_1.points, 
  min(
    cast(drivers_1.nationality as text))
from 
  drivers as drivers_1
    inner join standings as standings_1
    on (drivers_1.driverid = standings_1.driverstandingsid )
where drivers_1.code is not NULL
group by standings_1.raceid, drivers_1.code, standings_1.position, standings_1.driverid, drivers_1.dob, drivers_1.dob, drivers_1.forename, standings_1.raceid, standings_1.wins, drivers_1.surname, drivers_1.code, standings_1.date, drivers_1.surname, standings_1.driverid, standings_1.points, drivers_1.driverref, drivers_1.nationality, drivers_1.dob, drivers_1.forename, standings_1.position, drivers_1.driverref, standings_1.driverstandingsid, standings_1.wins, drivers_1.driverid, drivers_1.driverid, standings_1.points, standings_1.date, drivers_1.driverid, drivers_1.driverid, standings_1.driverid, drivers_1.surname, drivers_1.code, standings_1.wins, drivers_1.nationality, standings_1.wins, standings_1.points
limit 13;
select  
  qualifying_1.position, 
  qualifying_1.constructorid, 
  count(
    cast(qualifying_1.position as int8)), 
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid, 
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
group by qualifying_1.position, qualifying_1.constructorid, qualifying_1.qualifyid, qualifying_1.qualifyid, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.qualifyid
limit 24;
select  
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
limit 20;
select  
  races_1.year, 
  min(
    cast(races_1.name as text))
from 
  races as races_1
where races_1.time is not NULL
group by races_1.year
limit 1;
select  
  standings_1.driverstandingsid, 
  standings_1.wins, 
  standings_1.raceid, 
  standings_1.raceid, 
  standings_1.driverid, 
  standings_1.position, 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.date = standings_1.date
limit 33;
select  
  max(
    cast(drivers_1.dob as "timestamp")), 
  circuits_1.alt
from 
  drivers as drivers_1
    inner join circuits as circuits_1
    on (drivers_1.nationality = circuits_1.circuitref )
where circuits_1.alt > circuits_1.lat
group by circuits_1.alt
limit 40;
select  
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 19;
select  
  races_1.time, 
  drivers_1.forename, 
  drivers_1.dob, 
  drivers_1.dob
from 
  races as races_1
    inner join drivers as drivers_1
      inner join constructor_standings as constructor_standings_1
      on (drivers_1.dob = constructor_standings_1.date )
    on (races_1.date = constructor_standings_1.date )
where drivers_1.driverref = drivers_1.forename
limit 40;
select  
  max(
    cast(constructor_standings_1.points as float8)), 
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.points
limit 37;
select  
  qualifying_1.constructorid, 
  drivers_1.nationality
from 
  drivers as drivers_1
    inner join constructor_standings as constructor_standings_1
      inner join qualifying as qualifying_1
      on (constructor_standings_1.position = qualifying_1.qualifyid )
    on (drivers_1.dob = constructor_standings_1.date )
where constructor_standings_1.date < drivers_1.dob
limit 16;
select  
  results_1.date, 
  avg(
    cast(races_1.raceid as int8)), 
  circuits_1.circuitid, 
  results_1.number, 
  results_1.constructorid
from 
  results as results_1
        inner join constructors as constructors_1
          inner join circuits as circuits_1
          on (constructors_1.name = circuits_1.circuitref )
        on (results_1.driverid = constructors_1.constructorid )
      inner join races as races_1
      on (circuits_1.circuitid = races_1.raceid )
    inner join races as races_2
    on (races_1.raceid = races_2.raceid )
where results_1.date is not NULL
group by results_1.date, circuits_1.circuitid, results_1.number, results_1.constructorid
limit 14;
select  
  circuits_1.location, 
  circuits_1.location, 
  circuits_1.circuitid, 
  circuits_1.circuitref, 
  circuits_1.location, 
  circuits_1.alt, 
  circuits_1.circuitid, 
  max(
    cast(circuits_1.location as text)), 
  circuits_1.lng, 
  circuits_1.alt, 
  avg(
    cast(circuits_1.alt as float8)), 
  circuits_1.lng, 
  circuits_1.lat, 
  circuits_1.lat, 
  circuits_1.location, 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
group by circuits_1.location, circuits_1.location, circuits_1.circuitid, circuits_1.circuitref, circuits_1.location, circuits_1.alt, circuits_1.circuitid, circuits_1.lng, circuits_1.alt, circuits_1.lng, circuits_1.lat, circuits_1.lat, circuits_1.location, circuits_1.lng
limit 9;
select  
  qualifying_1.date, 
  qualifying_1.number, 
  qualifying_1.date, 
  qualifying_1.date, 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  qualifying_1.date, 
  qualifying_1.position, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
limit 3;
select  
  max(
    cast(constructor_standings_1.points as float8))
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points <= constructor_standings_1.points
limit 27;
select  
  max(
    cast(drivers_1.driverref as text)), 
  drivers_1.dob, 
  drivers_1.code, 
  constructor_results_1.points, 
  constructor_standings_1.date
from 
  circuits as circuits_1
    inner join drivers as drivers_1
        inner join constructor_results as constructor_results_1
        on (drivers_1.driverid = constructor_results_1.constructorresultsid )
      inner join constructor_standings as constructor_standings_1
      on (constructor_results_1.date = constructor_standings_1.date )
    on (circuits_1.alt = constructor_results_1.points )
where constructor_standings_1.points is not NULL
group by drivers_1.dob, drivers_1.code, constructor_results_1.points, constructor_standings_1.date
limit 4;
select  
  drivers_1.driverid, 
  min(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.nationality
from 
  drivers as drivers_1
    inner join constructor_results as constructor_results_1
    on (drivers_1.driverid = constructor_results_1.constructorresultsid )
where constructor_results_1.raceid is not NULL
group by drivers_1.driverid, drivers_1.nationality
limit 21;
select  
  standings_1.position, 
  standings_1.driverid, 
  min(
    cast(standings_1.points as float8))
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
group by standings_1.position, standings_1.driverid
limit 11;
select  
  races_1.name
from 
  races as races_1
where races_1.round is not NULL
limit 27;
select  
  circuits_1.circuitref, 
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.location is not NULL
limit 27;
select  
  races_2.raceid, 
  qualifying_1.number, 
  max(
    cast(races_2.time as text)), 
  avg(
    cast(constructor_results_1.constructorid as int8)), 
  constructor_results_1.date, 
  races_2.time, 
  constructor_results_1.constructorid, 
  qualifying_1.date, 
  constructor_results_1.raceid, 
  races_2.circuitid
from 
  qualifying as qualifying_1
    inner join races as races_1
        inner join races as races_2
        on (races_1.circuitid = races_2.raceid )
      inner join constructor_results as constructor_results_1
      on (races_1.date = constructor_results_1.date )
    on (qualifying_1.raceid = races_2.raceid )
where races_2.name is not NULL
group by races_2.raceid, qualifying_1.number, constructor_results_1.date, races_2.time, constructor_results_1.constructorid, qualifying_1.date, constructor_results_1.raceid, races_2.circuitid
limit 5;
select  
  constructor_standings_1.points, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
      inner join results as results_1
        inner join constructor_standings as constructor_standings_1
        on (results_1.milliseconds = constructor_standings_1.points )
      on (constructor_results_1.points = results_1.number )
    inner join circuits as circuits_1
      inner join races as races_1
      on (circuits_1.name = races_1.name )
    on (constructor_results_1.raceid = circuits_1.circuitid )
where constructor_standings_1.date < results_1.date
limit 16;
select  
  min(
    cast(drivers_2.dob as "timestamp")), 
  drivers_1.surname
from 
  drivers as drivers_1
    inner join drivers as drivers_2
    on (drivers_1.nationality = drivers_2.driverref )
where drivers_1.code is not NULL
group by drivers_1.surname
limit 34;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  min(
    cast(constructor_results_1.date as "timestamp")), 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.constructorresultsid, constructor_results_1.raceid
limit 18;
select  
  circuits_1.country, 
  circuits_1.circuitref, 
  circuits_1.circuitid, 
  circuits_1.circuitid, 
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
limit 14;
select  
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 18;
select  
  circuits_1.country, 
  max(
    cast(circuits_1.circuitid as int8)), 
  circuits_1.circuitid, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.alt is not NULL
group by circuits_1.country, circuits_1.circuitid, circuits_1.name
limit 36;
select  
  standings_1.points, 
  count(
    cast(standings_1.points as float8)), 
  standings_1.wins, 
  standings_1.driverid, 
  standings_1.wins, 
  standings_1.position, 
  sum(
    cast(standings_1.wins as int8)), 
  standings_1.points, 
  count(
    cast(standings_1.points as float8)), 
  standings_1.wins, 
  standings_1.position, 
  standings_1.position, 
  standings_1.driverid, 
  max(
    cast(standings_1.position as int8)), 
  standings_1.wins
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
group by standings_1.points, standings_1.wins, standings_1.driverid, standings_1.wins, standings_1.position, standings_1.points, standings_1.wins, standings_1.position, standings_1.position, standings_1.driverid, standings_1.wins
limit 39;
select  
  min(
    cast(circuits_1.circuitref as text))
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
limit 7;
select  
  max(
    cast(races_2.time as text)), 
  races_2.time
from 
  races as races_1
    inner join races as races_2
    on (races_1.year = races_2.raceid )
where races_2.round is not NULL
group by races_2.time
limit 36;
select  
  races_1.raceid
from 
  races as races_1
where races_1.date = races_1.date
limit 24;
select  
  races_1.name, 
  races_1.round, 
  races_1.name, 
  min(
    cast(races_1.year as int8)), 
  races_1.time
from 
  races as races_1
where races_1.round < races_1.circuitid
group by races_1.name, races_1.round, races_1.name, races_1.time
limit 20;
select  
  standings_1.date, 
  standings_1.date, 
  standings_1.driverid, 
  sum(
    cast(standings_1.points as float8)), 
  standings_1.date, 
  standings_1.position, 
  standings_1.driverstandingsid, 
  standings_1.points
from 
  standings as standings_1
where standings_1.position is not NULL
group by standings_1.date, standings_1.date, standings_1.driverid, standings_1.date, standings_1.position, standings_1.driverstandingsid, standings_1.points
limit 28;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
limit 29;
select  
  circuits_1.name, 
  min(
    cast(circuits_1.country as text)), 
  races_1.time, 
  max(
    cast(circuits_1.lng as float8)), 
  constructor_results_2.date, 
  circuits_1.location, 
  circuits_1.circuitref, 
  constructor_results_2.raceid, 
  circuits_1.lng, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_2.constructorid, 
  constructor_results_2.points
from 
  races as races_1
    inner join constructor_results as constructor_results_1
        inner join constructor_results as constructor_results_2
        on (constructor_results_1.constructorid = constructor_results_2.constructorresultsid )
      inner join circuits as circuits_1
      on (constructor_results_1.points = circuits_1.lat )
    on (races_1.circuitid = circuits_1.circuitid )
where circuits_1.alt = circuits_1.lng
group by circuits_1.name, races_1.time, constructor_results_2.date, circuits_1.location, circuits_1.circuitref, constructor_results_2.raceid, circuits_1.lng, constructor_results_1.raceid, constructor_results_1.date, constructor_results_2.constructorid, constructor_results_2.points
limit 17;
select  
  standings_3.date, 
  standings_3.wins, 
  circuits_1.alt, 
  standings_3.raceid, 
  races_1.name, 
  circuits_1.circuitid, 
  standings_1.points, 
  standings_3.driverid, 
  count(*), 
  standings_1.points
from 
  standings as standings_1
      inner join standings as standings_2
        inner join drivers as drivers_1
        on (standings_2.driverid = drivers_1.driverid )
      on (standings_1.driverstandingsid = drivers_1.driverid )
    inner join circuits as circuits_1
        inner join standings as standings_3
        on (circuits_1.lat = standings_3.points )
      inner join races as races_1
      on (standings_3.position = races_1.raceid )
    on (standings_1.points = circuits_1.lat )
where races_1.name is not NULL
group by standings_3.date, standings_3.wins, circuits_1.alt, standings_3.raceid, races_1.name, circuits_1.circuitid, standings_1.points, standings_3.driverid, standings_1.points
limit 3;
select  
  drivers_1.driverref, 
  drivers_1.dob, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.name
from 
  constructors as constructors_1
    inner join drivers as drivers_1
    on (constructors_1.nationality = drivers_1.driverref )
where drivers_1.driverid is not NULL
limit 20;
select  
  sum(
    cast(qualifying_1.position as int8)), 
  qualifying_1.raceid, 
  qualifying_1.number, 
  qualifying_1.driverid, 
  qualifying_1.constructorid, 
  qualifying_1.raceid, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
group by qualifying_1.raceid, qualifying_1.number, qualifying_1.driverid, qualifying_1.constructorid, qualifying_1.raceid, qualifying_1.qualifyid
limit 34;
select  
  circuits_1.circuitid, 
  circuits_1.lng, 
  circuits_1.circuitid, 
  circuits_1.name, 
  circuits_1.circuitref, 
  circuits_1.country, 
  count(
    cast(circuits_1.alt as float8)), 
  circuits_1.lat, 
  circuits_1.lat, 
  circuits_1.location, 
  circuits_1.alt, 
  circuits_1.lng, 
  circuits_1.circuitid, 
  circuits_1.lng, 
  circuits_1.alt, 
  circuits_1.lng, 
  avg(
    cast(circuits_1.lat as float8)), 
  circuits_1.country, 
  circuits_1.name, 
  circuits_1.location, 
  avg(
    cast(circuits_1.circuitid as int8)), 
  circuits_1.alt, 
  circuits_1.name, 
  circuits_1.lng, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.country >= circuits_1.name
group by circuits_1.circuitid, circuits_1.lng, circuits_1.circuitid, circuits_1.name, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.lat, circuits_1.location, circuits_1.alt, circuits_1.lng, circuits_1.circuitid, circuits_1.lng, circuits_1.alt, circuits_1.lng, circuits_1.country, circuits_1.name, circuits_1.location, circuits_1.alt, circuits_1.name, circuits_1.lng, circuits_1.name
limit 36;
select  
  circuits_1.alt, 
  circuits_1.country, 
  circuits_1.lat, 
  circuits_1.lat, 
  circuits_1.circuitref, 
  min(
    cast(circuits_1.location as text)), 
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
group by circuits_1.alt, circuits_1.country, circuits_1.lat, circuits_1.lat, circuits_1.circuitref, circuits_1.circuitref
limit 29;
select  
  races_1.time, 
  races_1.circuitid, 
  races_1.date, 
  min(
    cast(races_1.time as text)), 
  races_1.year, 
  races_1.raceid, 
  races_1.name
from 
  races as races_1
where races_1.name is not NULL
group by races_1.time, races_1.circuitid, races_1.date, races_1.year, races_1.raceid, races_1.name
limit 35;
select  
  avg(
    cast(results_1.position as float8)), 
  results_1.milliseconds, 
  results_1.milliseconds, 
  circuits_1.lng, 
  circuits_1.alt, 
  constructors_1.constructorref, 
  results_1.resultid, 
  sum(
    cast(results_1.number as float8)), 
  results_1.rank, 
  standings_1.wins, 
  avg(
    cast(standings_1.driverstandingsid as int8))
from 
  circuits as circuits_1
        inner join standings as standings_1
        on (circuits_1.circuitid = standings_1.driverstandingsid )
      inner join results as results_1
      on (standings_1.driverid = results_1.resultid )
    inner join constructors as constructors_1
    on (circuits_1.country = constructors_1.constructorref )
where circuits_1.lat is not NULL
group by results_1.milliseconds, results_1.milliseconds, circuits_1.lng, circuits_1.alt, constructors_1.constructorref, results_1.resultid, results_1.rank, standings_1.wins
limit 13;
select  
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 33;
select  
  constructors_1.nationality, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 31;
select  
  constructor_standings_1.date, 
  results_1.grid, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
    inner join results as results_1
    on (constructor_standings_1.date = results_1.date )
where constructor_standings_1.wins is not NULL
limit 20;
select  
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 29;
select  
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
limit 11;
select  
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
limit 19;
select  
  races_2.circuitid
from 
  races as races_1
      inner join races as races_2
        inner join constructor_results as constructor_results_1
        on (races_2.raceid = constructor_results_1.constructorresultsid )
      on (races_1.time = races_2.name )
    inner join constructor_standings as constructor_standings_1
    on (races_2.year = constructor_standings_1.constructorstandingsid )
where races_2.circuitid <= races_1.circuitid
limit 31;
select  
  max(
    cast(constructors_2.nationality as text)), 
  constructor_standings_1.raceid, 
  constructors_2.nationality, 
  constructor_standings_2.points, 
  constructors_1.name, 
  constructor_standings_1.date
from 
  constructors as constructors_1
    inner join constructors as constructors_2
      inner join constructor_standings as constructor_standings_1
        inner join constructor_standings as constructor_standings_2
        on (constructor_standings_1.constructorid = constructor_standings_2.constructorstandingsid )
      on (constructors_2.constructorid = constructor_standings_1.constructorstandingsid )
    on (constructors_1.constructorref = constructors_2.constructorref )
where constructor_standings_1.date is not NULL
group by constructor_standings_1.raceid, constructors_2.nationality, constructor_standings_2.points, constructors_1.name, constructor_standings_1.date
limit 16;
select  
  races_1.circuitid, 
  races_1.name, 
  races_1.name, 
  races_1.name, 
  constructors_1.constructorid, 
  races_1.circuitid, 
  constructors_2.constructorref, 
  races_1.raceid, 
  circuits_1.alt
from 
  constructors as constructors_1
    inner join constructors as constructors_2
        inner join circuits as circuits_1
          inner join results as results_1
          on (circuits_1.lat = results_1.number )
        on (constructors_2.constructorid = results_1.resultid )
      inner join races as races_1
      on (constructors_2.nationality = races_1.name )
    on (constructors_1.name = circuits_1.circuitref )
where races_1.circuitid <= results_1.laps
limit 39;
select  
  constructors_1.nationality, 
  constructors_1.constructorid, 
  drivers_1.nationality, 
  results_1.grid, 
  constructors_1.constructorref
from 
  constructors as constructors_1
    inner join results as results_1
      inner join drivers as drivers_1
      on (results_1.laps = drivers_1.driverid )
    on (constructors_1.constructorref = drivers_1.driverref )
where drivers_1.surname < drivers_1.driverref
limit 2;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  max(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.constructorresultsid, 
  count(
    cast(constructor_results_1.date as "timestamp")), 
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.points, 
  max(
    cast(constructor_results_1.date as "timestamp")), 
  min(
    cast(constructor_results_1.points as float8)), 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.points, constructor_results_1.points, constructor_results_1.raceid, constructor_results_1.date, constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.points, constructor_results_1.date
limit 21;
select  
  results_1.rank
from 
  qualifying as qualifying_1
    inner join results as results_1
    on (qualifying_1.date = results_1.date )
where qualifying_1.number is not NULL
limit 12;
select  
  races_1.circuitid, 
  qualifying_1.position, 
  qualifying_1.constructorid, 
  results_1.milliseconds, 
  races_1.year, 
  constructors_1.constructorref, 
  qualifying_1.raceid, 
  results_1.points, 
  count(
    cast(races_1.raceid as int8)), 
  qualifying_1.position, 
  constructors_1.constructorref, 
  constructors_1.name, 
  qualifying_1.number, 
  races_1.year, 
  constructors_1.nationality, 
  races_1.circuitid
from 
  qualifying as qualifying_1
      inner join races as races_1
        inner join results as results_1
        on (races_1.raceid = results_1.resultid )
      on (qualifying_1.driverid = results_1.resultid )
    inner join constructors as constructors_1
    on (results_1.resultid = constructors_1.constructorid )
where results_1.milliseconds is not NULL
group by races_1.circuitid, qualifying_1.position, qualifying_1.constructorid, results_1.milliseconds, races_1.year, constructors_1.constructorref, qualifying_1.raceid, results_1.points, qualifying_1.position, constructors_1.constructorref, constructors_1.name, qualifying_1.number, races_1.year, constructors_1.nationality, races_1.circuitid
limit 33;
select  
  races_1.name, 
  races_1.date
from 
  races as races_1
where races_1.year is not NULL
limit 21;
select  
  qualifying_1.number, 
  qualifying_1.position, 
  qualifying_1.driverid, 
  max(
    cast(qualifying_1.position as int8)), 
  min(
    cast(qualifying_1.date as "timestamp")), 
  min(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
group by qualifying_1.number, qualifying_1.position, qualifying_1.driverid, qualifying_1.number
limit 25;
select  
  results_1.constructorid
from 
  results as results_1
where results_1.points is not NULL
limit 22;
select  
  circuits_1.country, 
  circuits_1.name, 
  circuits_1.alt, 
  circuits_1.alt, 
  sum(
    cast(circuits_1.alt as float8))
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
group by circuits_1.country, circuits_1.name, circuits_1.alt, circuits_1.alt
limit 30;
select  
  sum(
    cast(constructor_standings_1.points as float8)), 
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
group by constructor_standings_1.wins, constructor_standings_1.position, constructor_standings_1.position, constructor_standings_1.constructorstandingsid, constructor_standings_1.raceid, constructor_standings_1.position, constructor_standings_1.constructorid, constructor_standings_1.raceid, constructor_standings_1.date, constructor_standings_1.wins, constructor_standings_1.constructorstandingsid, constructor_standings_1.points
limit 6;
select  
  races_1.date, 
  races_1.raceid, 
  races_1.circuitid, 
  min(
    cast(races_1.time as text)), 
  races_1.raceid, 
  races_1.name, 
  races_1.round, 
  races_1.raceid, 
  races_1.round, 
  races_1.year, 
  max(
    cast(races_1.name as text)), 
  count(*), 
  races_1.name, 
  races_1.name, 
  max(
    cast(races_1.date as "timestamp")), 
  races_1.circuitid, 
  races_1.date, 
  races_1.date, 
  races_1.time, 
  races_1.raceid, 
  races_1.date, 
  races_1.circuitid, 
  races_1.round, 
  races_1.time, 
  races_1.year, 
  races_1.date, 
  races_1.circuitid, 
  races_1.year, 
  races_1.round, 
  races_1.round, 
  races_1.round, 
  races_1.raceid, 
  races_1.year, 
  races_1.raceid, 
  races_1.round, 
  races_1.name, 
  races_1.date, 
  max(
    cast(races_1.time as text)), 
  races_1.round, 
  races_1.round, 
  races_1.time, 
  races_1.date, 
  races_1.year, 
  races_1.round, 
  races_1.year, 
  max(
    cast(races_1.time as text)), 
  races_1.time
from 
  races as races_1
where races_1.time is not NULL
group by races_1.date, races_1.raceid, races_1.circuitid, races_1.raceid, races_1.name, races_1.round, races_1.raceid, races_1.round, races_1.year, races_1.name, races_1.name, races_1.circuitid, races_1.date, races_1.date, races_1.time, races_1.raceid, races_1.date, races_1.circuitid, races_1.round, races_1.time, races_1.year, races_1.date, races_1.circuitid, races_1.year, races_1.round, races_1.round, races_1.round, races_1.raceid, races_1.year, races_1.raceid, races_1.round, races_1.name, races_1.date, races_1.round, races_1.round, races_1.time, races_1.date, races_1.year, races_1.round, races_1.year, races_1.time
limit 11;
select  
  drivers_1.code, 
  min(
    cast(drivers_1.forename as text)), 
  drivers_1.code, 
  min(
    cast(drivers_1.dob as "timestamp")), 
  min(
    cast(drivers_1.driverref as text)), 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
group by drivers_1.code, drivers_1.code, drivers_1.nationality
limit 6;
select  
  constructors_1.constructorref, 
  min(
    cast(constructors_1.nationality as text))
from 
  constructor_standings as constructor_standings_1
    inner join constructors as constructors_1
    on (constructor_standings_1.raceid = constructors_1.constructorid )
where constructors_1.constructorref < constructors_1.nationality
group by constructors_1.constructorref
limit 17;
select  
  sum(
    cast(qualifying_1.number as int8)), 
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  qualifying_1.driverid, 
  qualifying_1.raceid, 
  max(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.date, 
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  max(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.driverid, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
group by qualifying_1.position, qualifying_1.qualifyid, qualifying_1.driverid, qualifying_1.raceid, qualifying_1.date, qualifying_1.driverid, qualifying_1.driverid, qualifying_1.driverid, qualifying_1.constructorid
limit 8;
select  
  qualifying_1.position, 
  qualifying_1.position, 
  count(
    cast(qualifying_1.driverid as int8)), 
  qualifying_1.raceid, 
  min(
    cast(qualifying_1.date as "timestamp")), 
  min(
    cast(qualifying_1.driverid as int8)), 
  qualifying_1.raceid, 
  min(
    cast(qualifying_1.raceid as int8)), 
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  min(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.qualifyid, 
  qualifying_1.position, 
  qualifying_1.driverid, 
  qualifying_1.constructorid, 
  qualifying_1.position, 
  qualifying_1.driverid, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
group by qualifying_1.position, qualifying_1.position, qualifying_1.raceid, qualifying_1.raceid, qualifying_1.driverid, qualifying_1.driverid, qualifying_1.qualifyid, qualifying_1.position, qualifying_1.driverid, qualifying_1.constructorid, qualifying_1.position, qualifying_1.driverid, qualifying_1.constructorid
limit 1;
select  
  avg(
    cast(standings_1.driverid as int8)), 
  drivers_1.forename, 
  count(
    cast(standings_1.position as int8)), 
  standings_1.wins, 
  max(
    cast(drivers_1.dob as "timestamp"))
from 
  standings as standings_1
    inner join drivers as drivers_1
    on (standings_1.wins = drivers_1.driverid )
where drivers_1.driverref is not NULL
group by drivers_1.forename, standings_1.wins
limit 5;
select  
  races_1.round, 
  races_1.year, 
  count(
    cast(races_1.name as text)), 
  races_1.circuitid, 
  count(*), 
  races_1.raceid, 
  races_1.round, 
  races_1.raceid, 
  races_1.raceid, 
  races_1.year
from 
  races as races_1
where races_1.name is not NULL
group by races_1.round, races_1.year, races_1.circuitid, races_1.raceid, races_1.round, races_1.raceid, races_1.raceid, races_1.year
limit 10;
select  
  sum(
    cast(results_2.resultid as int8)), 
  results_1.milliseconds, 
  results_2.grid, 
  constructors_1.nationality, 
  constructor_standings_1.date, 
  max(
    cast(constructors_1.nationality as text)), 
  results_2.raceid, 
  results_2.date
from 
  results as results_1
        inner join results as results_2
        on (results_1.fastestlap = results_2.number )
      inner join constructor_standings as constructor_standings_1
      on (results_1.points = constructor_standings_1.points )
    inner join constructors as constructors_1
    on (results_1.grid = constructors_1.constructorid )
where results_1.rank = results_1.position
group by results_1.milliseconds, results_2.grid, constructors_1.nationality, constructor_standings_1.date, results_2.raceid, results_2.date
limit 16;
select  
  count(*)
from 
  constructors as constructors_1
where constructors_1.constructorid > constructors_1.constructorid
limit 36;
select  
  min(
    cast(drivers_1.code as text)), 
  drivers_1.forename, 
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.code is not NULL
group by drivers_1.forename, drivers_1.dob
limit 42;
select  
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
    inner join circuits as circuits_1
    on (constructor_standings_1.constructorid = circuits_1.circuitid )
where constructor_standings_1.points is not NULL
limit 8;
select  
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
    inner join constructors as constructors_1
    on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
where constructors_1.constructorid is not NULL
limit 41;
select  
  constructor_results_1.raceid, 
  results_1.raceid, 
  drivers_1.forename, 
  drivers_1.nationality, 
  standings_1.points, 
  max(
    cast(drivers_1.code as text)), 
  min(
    cast(drivers_1.surname as text)), 
  drivers_1.surname, 
  standings_2.driverstandingsid
from 
  results as results_1
      inner join standings as standings_1
      on (results_1.statusid = standings_1.driverstandingsid )
    inner join races as races_1
          inner join races as races_2
            inner join constructor_results as constructor_results_1
            on (races_2.circuitid = constructor_results_1.constructorresultsid )
          on (races_1.time = races_2.name )
        inner join drivers as drivers_1
        on (constructor_results_1.constructorresultsid = drivers_1.driverid )
      inner join standings as standings_2
      on (races_2.round = standings_2.driverstandingsid )
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where races_1.raceid is not NULL
group by constructor_results_1.raceid, results_1.raceid, drivers_1.forename, drivers_1.nationality, standings_1.points, drivers_1.surname, standings_2.driverstandingsid
limit 38;
select  
  max(
    cast(constructor_standings_2.points as float8)), 
  constructor_standings_2.constructorid
from 
  races as races_1
      inner join constructor_standings as constructor_standings_1
      on (races_1.circuitid = constructor_standings_1.constructorstandingsid )
    inner join constructor_standings as constructor_standings_2
        inner join qualifying as qualifying_1
        on (constructor_standings_2.raceid = qualifying_1.qualifyid )
      inner join constructor_standings as constructor_standings_3
      on (qualifying_1.driverid = constructor_standings_3.constructorstandingsid )
    on (constructor_standings_1.wins = qualifying_1.qualifyid )
where constructor_standings_1.points is not NULL
group by constructor_standings_2.constructorid
limit 26;
select  
  min(
    cast(constructor_results_1.date as "timestamp")), 
  qualifying_1.qualifyid, 
  constructor_standings_1.wins, 
  constructors_1.name, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_standings_1.constructorstandingsid, 
  constructors_1.constructorref, 
  constructor_standings_1.raceid, 
  sum(
    cast(constructor_standings_1.points as float8)), 
  constructors_1.constructorref, 
  constructor_standings_1.date, 
  qualifying_1.qualifyid, 
  max(
    cast(constructor_standings_1.raceid as int8)), 
  min(
    cast(constructors_1.nationality as text)), 
  constructor_standings_1.constructorid, 
  qualifying_1.raceid, 
  qualifying_1.date
from 
  qualifying as qualifying_1
    inner join constructor_standings as constructor_standings_1
      inner join constructors as constructors_1
        inner join constructor_results as constructor_results_1
        on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
      on (constructor_standings_1.points = constructor_results_1.points )
    on (qualifying_1.driverid = constructors_1.constructorid )
where constructor_standings_1.date = qualifying_1.date
group by qualifying_1.qualifyid, constructor_standings_1.wins, constructors_1.name, constructor_results_1.raceid, constructor_results_1.points, constructor_standings_1.constructorstandingsid, constructors_1.constructorref, constructor_standings_1.raceid, constructors_1.constructorref, constructor_standings_1.date, qualifying_1.qualifyid, constructor_standings_1.constructorid, qualifying_1.raceid, qualifying_1.date
limit 1;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.date, 
  constructor_standings_1.raceid, 
  min(
    cast(constructor_standings_1.constructorid as int8)), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins, 
  constructor_standings_1.wins, 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.wins, constructor_standings_1.date, constructor_standings_1.raceid, constructor_standings_1.constructorid, constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.raceid, constructor_standings_1.constructorstandingsid, constructor_standings_1.wins, constructor_standings_1.wins, constructor_standings_1.raceid
limit 10;
select  
  sum(
    cast(qualifying_1.position as int8)), 
  qualifying_1.qualifyid, 
  qualifying_1.driverid, 
  count(
    cast(qualifying_1.date as "timestamp")), 
  qualifying_1.date, 
  qualifying_1.driverid, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.qualifyid, qualifying_1.driverid, qualifying_1.date, qualifying_1.driverid, qualifying_1.qualifyid
limit 39;
select  
  max(
    cast(results_1.position as float8)), 
  results_1.positionorder, 
  qualifying_1.position, 
  constructor_standings_1.date, 
  qualifying_1.driverid, 
  constructor_standings_1.raceid, 
  min(
    cast(results_1.number as float8))
from 
  constructor_standings as constructor_standings_1
      inner join results as results_1
      on (constructor_standings_1.wins = results_1.resultid )
    inner join qualifying as qualifying_1
    on (constructor_standings_1.date = qualifying_1.date )
where results_1.positionorder is not NULL
group by results_1.positionorder, qualifying_1.position, constructor_standings_1.date, qualifying_1.driverid, constructor_standings_1.raceid
limit 5;
select  
  qualifying_1.date
from 
  circuits as circuits_1
    inner join qualifying as qualifying_1
      inner join races as races_1
      on (qualifying_1.driverid = races_1.raceid )
    on (circuits_1.country = races_1.name )
where circuits_1.circuitref is not NULL
limit 17;
select  
  constructor_standings_1.points, 
  races_1.round
from 
  races as races_1
    inner join constructor_standings as constructor_standings_1
    on (races_1.raceid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.points <= constructor_standings_1.points
limit 38;
select  
  results_1.raceid, 
  min(
    cast(races_1.name as text)), 
  results_1.driverid, 
  sum(
    cast(results_1.fastestlap as float8))
from 
  races as races_1
    inner join results as results_1
    on (races_1.round = results_1.resultid )
where races_1.time is not NULL
group by results_1.raceid, results_1.driverid
limit 1;
select  
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 28;
select  
  standings_1.driverid, 
  max(
    cast(standings_1.date as "timestamp")), 
  standings_1.wins, 
  standings_1.driverstandingsid, 
  standings_1.wins, 
  standings_1.driverid, 
  standings_1.position
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
group by standings_1.driverid, standings_1.wins, standings_1.driverstandingsid, standings_1.wins, standings_1.driverid, standings_1.position
limit 12;
select  
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  min(
    cast(constructor_standings_1.points as float8))
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
group by constructor_standings_1.date, constructor_standings_1.wins
limit 24;
select  
  max(
    cast(constructor_standings_1.date as "timestamp"))
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
limit 34;
select  
  races_1.circuitid, 
  races_1.date
from 
  races as races_1
where races_1.date is not NULL
limit 16;
select  
  circuits_1.location, 
  constructor_results_1.constructorresultsid, 
  drivers_1.driverref, 
  constructor_results_1.constructorid, 
  constructor_results_2.date, 
  drivers_1.driverid, 
  qualifying_1.position, 
  circuits_1.location, 
  drivers_1.nationality
from 
  circuits as circuits_1
    inner join constructor_results as constructor_results_1
          inner join constructor_results as constructor_results_2
          on (constructor_results_1.raceid = constructor_results_2.constructorresultsid )
        inner join drivers as drivers_1
        on (constructor_results_2.date = drivers_1.dob )
      inner join qualifying as qualifying_1
      on (constructor_results_1.date = qualifying_1.date )
    on (circuits_1.circuitid = constructor_results_2.constructorresultsid )
where qualifying_1.constructorid <= qualifying_1.position
limit 22;
select  
  sum(
    cast(constructor_results_1.constructorid as int8))
from 
  constructor_results as constructor_results_1
    inner join constructors as constructors_1
    on (constructor_results_1.raceid = constructors_1.constructorid )
where constructors_1.constructorid is not NULL
limit 14;
select  
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  count(*), 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.nationality, constructors_1.nationality, constructors_1.nationality, constructors_1.constructorref
limit 33;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  avg(
    cast(constructor_results_1.constructorid as int8))
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_results_1.constructorid, constructor_results_1.raceid, constructor_results_1.points
limit 27;
select  
  results_1.number, 
  results_1.statusid, 
  results_1.milliseconds, 
  drivers_1.code
from 
  drivers as drivers_1
    inner join results as results_1
    on (drivers_1.driverid = results_1.resultid )
where drivers_1.driverref is not NULL
limit 29;
select  
  constructors_2.constructorid, 
  drivers_1.driverref, 
  qualifying_1.constructorid, 
  drivers_1.driverid, 
  qualifying_1.raceid
from 
  drivers as drivers_1
      inner join constructors as constructors_1
        inner join constructors as constructors_2
        on (constructors_1.constructorid = constructors_2.constructorid )
      on (drivers_1.forename = constructors_2.constructorref )
    inner join qualifying as qualifying_1
    on (constructors_2.constructorid = qualifying_1.qualifyid )
where drivers_1.driverid is not NULL
limit 17;
select  
  results_1.position, 
  results_1.points, 
  results_1.positionorder, 
  results_1.resultid, 
  results_1.position, 
  results_1.position, 
  results_1.driverid, 
  results_1.statusid
from 
  results as results_1
where results_1.date >= results_1.date
limit 13;
select  
  qualifying_1.qualifyid, 
  qualifying_1.date, 
  qualifying_1.raceid, 
  qualifying_1.number, 
  qualifying_1.qualifyid, 
  qualifying_1.date, 
  count(*), 
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  qualifying_1.constructorid, 
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
group by qualifying_1.qualifyid, qualifying_1.date, qualifying_1.raceid, qualifying_1.number, qualifying_1.qualifyid, qualifying_1.date, qualifying_1.constructorid, qualifying_1.constructorid, qualifying_1.qualifyid, qualifying_1.constructorid, qualifying_1.constructorid, qualifying_1.qualifyid, qualifying_1.constructorid, qualifying_1.position
limit 32;
select  
  drivers_1.surname
from 
  standings as standings_1
    inner join constructors as constructors_1
      inner join drivers as drivers_1
      on (constructors_1.name = drivers_1.driverref )
    on (standings_1.driverid = drivers_1.driverid )
where standings_1.date is not NULL
limit 33;
select  
  constructor_standings_1.constructorstandingsid, 
  min(
    cast(constructor_standings_1.date as "timestamp")), 
  constructor_standings_1.raceid, 
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  constructor_standings_1.points, 
  min(
    cast(constructor_standings_1.points as float8)), 
  max(
    cast(constructor_standings_1.date as "timestamp")), 
  constructor_standings_1.points, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.raceid, constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.points, constructor_standings_1.points, constructor_standings_1.constructorid, constructor_standings_1.raceid
limit 21;
select  
  constructors_1.name, 
  min(
    cast(constructors_1.constructorid as int8))
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.name
limit 1;
select  
  races_1.year, 
  results_1.milliseconds
from 
  races as races_1
    inner join results as results_1
    on (races_1.circuitid = results_1.resultid )
where results_1.rank is not NULL
limit 12;
select  
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  min(
    cast(constructors_1.constructorref as text)), 
  max(
    cast(constructors_1.nationality as text)), 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorid >= constructors_1.constructorid
group by constructors_1.nationality, constructors_1.constructorref, constructors_1.nationality, constructors_1.constructorid, constructors_1.constructorid, constructors_1.nationality, constructors_1.constructorid, constructors_1.constructorid, constructors_1.name, constructors_1.name, constructors_1.constructorid, constructors_1.name
limit 22;
select  
  constructors_1.name, 
  max(
    cast(constructors_1.constructorref as text)), 
  races_1.year, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  races_1.time, 
  constructors_1.constructorref, 
  races_1.year, 
  races_1.name, 
  sum(
    cast(races_1.round as int8))
from 
  constructors as constructors_1
    inner join races as races_1
    on (constructors_1.nationality = races_1.name )
where constructors_1.name is not NULL
group by constructors_1.name, races_1.year, constructors_1.nationality, constructors_1.constructorref, constructors_1.constructorref, constructors_1.nationality, races_1.time, constructors_1.constructorref, races_1.year, races_1.name
limit 42;
select  
  sum(
    cast(qualifying_1.qualifyid as int8)), 
  qualifying_1.date, 
  races_1.round, 
  qualifying_1.date, 
  circuits_1.alt, 
  qualifying_1.position, 
  sum(
    cast(races_1.round as int8)), 
  standings_1.raceid, 
  count(
    cast(standings_1.raceid as int8)), 
  races_1.time, 
  standings_1.date, 
  circuits_1.lat, 
  qualifying_1.number, 
  circuits_1.lat
from 
  standings as standings_1
        inner join races as races_1
        on (standings_1.wins = races_1.raceid )
      inner join circuits as circuits_1
      on (races_1.round = circuits_1.circuitid )
    inner join qualifying as qualifying_1
    on (standings_1.date = qualifying_1.date )
where qualifying_1.raceid >= qualifying_1.driverid
group by qualifying_1.date, races_1.round, qualifying_1.date, circuits_1.alt, qualifying_1.position, standings_1.raceid, races_1.time, standings_1.date, circuits_1.lat, qualifying_1.number, circuits_1.lat
limit 22;
select  
  constructor_standings_1.constructorid, 
  standings_1.raceid
from 
  qualifying as qualifying_1
    inner join qualifying as qualifying_2
        inner join constructor_standings as constructor_standings_1
        on (qualifying_2.position = constructor_standings_1.constructorstandingsid )
      inner join standings as standings_1
      on (qualifying_2.constructorid = standings_1.driverstandingsid )
    on (qualifying_1.date = qualifying_2.date )
where constructor_standings_1.points >= standings_1.points
limit 31;
select  
  constructors_1.constructorref, 
  drivers_1.forename
from 
  drivers as drivers_1
    inner join qualifying as qualifying_1
      inner join constructors as constructors_1
      on (qualifying_1.raceid = constructors_1.constructorid )
    on (drivers_1.forename = constructors_1.constructorref )
where qualifying_1.date > drivers_1.dob
limit 30;
select  
  constructors_1.name, 
  max(
    cast(constructors_1.nationality as text)), 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.name, constructors_1.constructorref, constructors_1.nationality, constructors_1.constructorref, constructors_1.nationality, constructors_1.constructorid, constructors_1.constructorref, constructors_1.constructorref, constructors_1.nationality, constructors_1.constructorref
limit 25;
select  
  drivers_1.driverid, 
  drivers_1.driverref, 
  min(
    cast(drivers_1.surname as text)), 
  min(
    cast(drivers_1.dob as "timestamp")), 
  drivers_1.driverid, 
  drivers_1.driverid, 
  drivers_1.dob, 
  drivers_1.driverref, 
  max(
    cast(drivers_1.driverid as int8)), 
  drivers_1.surname, 
  drivers_1.dob, 
  drivers_1.driverid, 
  drivers_1.driverid, 
  drivers_1.code, 
  drivers_1.dob, 
  drivers_1.driverid, 
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.forename is not NULL
group by drivers_1.driverid, drivers_1.driverref, drivers_1.driverid, drivers_1.driverid, drivers_1.dob, drivers_1.driverref, drivers_1.surname, drivers_1.dob, drivers_1.driverid, drivers_1.driverid, drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.code
limit 7;
select  
  drivers_1.dob, 
  circuits_2.circuitid, 
  max(
    cast(qualifying_1.date as "timestamp")), 
  circuits_1.lat, 
  qualifying_1.position, 
  circuits_1.country, 
  drivers_1.driverid, 
  max(
    cast(circuits_1.circuitref as text)), 
  circuits_2.alt, 
  circuits_1.name, 
  max(
    cast(circuits_2.country as text)), 
  circuits_1.location, 
  drivers_1.driverref, 
  circuits_2.lng, 
  qualifying_1.constructorid, 
  qualifying_1.date
from 
  drivers as drivers_1
    inner join circuits as circuits_1
        inner join qualifying as qualifying_1
        on (circuits_1.circuitid = qualifying_1.qualifyid )
      inner join circuits as circuits_2
      on (qualifying_1.qualifyid = circuits_2.circuitid )
    on (drivers_1.surname = circuits_1.circuitref )
where qualifying_1.raceid is not NULL
group by drivers_1.dob, circuits_2.circuitid, circuits_1.lat, qualifying_1.position, circuits_1.country, drivers_1.driverid, circuits_2.alt, circuits_1.name, circuits_1.location, drivers_1.driverref, circuits_2.lng, qualifying_1.constructorid, qualifying_1.date
limit 32;
select  
  constructor_standings_1.points, 
  min(
    cast(constructor_standings_1.date as "timestamp")), 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
group by constructor_standings_1.points, constructor_standings_1.position
limit 38;
select  
  standings_1.driverid, 
  standings_1.raceid, 
  standings_1.wins, 
  standings_1.wins, 
  max(
    cast(standings_1.date as "timestamp")), 
  standings_1.position, 
  standings_1.raceid, 
  standings_1.points, 
  standings_1.driverid, 
  min(
    cast(standings_1.position as int8)), 
  standings_1.wins
from 
  standings as standings_1
where standings_1.points is not NULL
group by standings_1.driverid, standings_1.raceid, standings_1.wins, standings_1.wins, standings_1.position, standings_1.raceid, standings_1.points, standings_1.driverid, standings_1.wins
limit 22;
select  
  circuits_1.country, 
  constructor_results_1.date, 
  circuits_1.location, 
  constructor_results_1.constructorresultsid, 
  circuits_1.lng, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
    inner join circuits as circuits_1
    on (constructor_results_1.constructorid = circuits_1.circuitid )
where circuits_1.country is not NULL
limit 5;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
limit 35;
select  
  results_1.points, 
  sum(
    cast(results_1.resultid as int8)), 
  results_1.resultid, 
  results_1.laps, 
  results_1.number, 
  results_1.statusid, 
  results_1.milliseconds
from 
  results as results_1
where results_1.date < results_1.date
group by results_1.points, results_1.resultid, results_1.laps, results_1.number, results_1.statusid, results_1.milliseconds
limit 13;
select  
  races_1.time, 
  races_1.year, 
  races_1.date, 
  races_1.round
from 
  races as races_1
where races_1.year is not NULL
limit 17;
